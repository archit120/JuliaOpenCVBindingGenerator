
#!/usr/bin/env python3

import hdr_parser, sys, re, os
from string import Template
from pprint import pprint
from collections import namedtuple
from io import StringIO
import os, shutil

from parse_tree import *


jl_cpp_argmap = {"int": "Int32", "float":"Float32", "double":"Float64", "bool":"Bool", "Mat":"Image", "Point":"Point{Int32}", "string":"String"}

julia_types = ["Int32", "Float32", "Float64", "Bool", "String", "Array", "Any"]
cv_types = []

submodule_template = Template('')
root_template = Template('')
with open("binding_templates_jl/template_cv2_submodule.jl", "r") as f:
    submodule_template = Template(f.read())
with open("binding_templates_jl/template_cv2_root.jl", "r") as f:
    root_template = Template(f.read())

def handle_def_arg(inp, tp = ''):
    if tp in julia_types:
        return inp
    inp = handle_jl_arg(inp)
    if not inp:
        if tp=='Mat' or tp=='Image':
            return 'Mat()'
        return tp+'()'

    if inp=="String()":
            return '""'
    
    # print(inp, tp)
    return inp

def handle_jl_arg(inp):
    if not inp:
        return ''
    inp = inp.replace('std::', '').replace('cv::', '')

    if inp in cv_types:
        inp = 'OpenCVCxx.'+inp

    def handle_vector(match):
        return handle_jl_arg("%sArray{%s, 1}" % (match.group(1), handle_jl_arg(match.group(2))))
    def handle_ptr(match):
        return handle_jl_arg("%sOpenCVCxx.Ptr{%s}" % (match.group(1), handle_jl_arg(match.group(2))))
    inp = re.sub("(.*)vector<(.*)>", handle_vector, inp)
    inp = re.sub("(.*)Ptr<(.*)>", handle_ptr, inp)

    for k in jl_cpp_argmap:
        if inp == k:
            inp = jl_cpp_argmap[k]
            break
        inp = re.sub("(.*[^\w])"+k+"[^\w{](.*)", "\g<1>"+jl_cpp_argmap[k]+"\g<2>", inp)
    
    inp = inp.replace("2f","{Float32}").replace("2d", "{Float64}").replace("3f", "3{Float32}").replace("3d", "3{Float32}")
    return inp
    # return outs

class ClassInfo(ClassInfo):

    def get_jl_code(self):
        if self.ismap:
            return ''
        return self.overload_get()+self.overload_set()

    def overload_get(self):
        stra = "function Base.getproperty(m::OpenCVCxx.%s, s::Symbol)\n" %(self.mapped_name)
        for prop in self.props:
            stra = stra + "    if s==:" + prop.name+"\n"
            stra = stra + "        return OpenCVCxx.cpp_to_julia(OpenCVCxx.%s(m))\n"%self.get_prop_func_cpp("get", prop.name)
            stra = stra + "    end\n" 
        stra = stra + "    return Base.getfield(m, s)\nend\n"
        return stra

    def overload_set(self):
        
        stra = "function Base.setproperty!(m::OpenCVCxx.%s, s::Symbol, v)\n" %(self.mapped_name)
        for prop in self.props:
            if not prop.readonly:
                continue
            stra = stra + "    if s==:" + prop.name+"\n"
            stra = stra + "        OpenCVCxx.%s(m, OpenCVCxx.julia_to_cpp(v, %s))\n"%(self.get_prop_func_cpp("set", prop.name), handle_jl_arg(prop.tp))
            stra = stra + "    end\n" 
        stra = stra + "    return Base.setfield(m, s, v)\nend\n"
        return stra

class FuncVariant(FuncVariant):


    def get_argument_full(self):
        arglist = self.inlist + self.optlist

        argnamelist = [arg.name+"::"+(handle_jl_arg(arg.tp) if handle_jl_arg(arg.tp) not in pass_by_val_types else handle_jl_arg(arg.tp)[:-1]) for arg in arglist]
        argstr = ", ".join(argnamelist)
        return argstr

    def get_argument_opt(self):
        str2 =  ", ".join(["%s::%s = %s" % (arg.name, handle_jl_arg(arg.tp), handle_def_arg(arg.default_value, handle_jl_arg(arg.tp))) for arg in self.optlist])
        return str2

    def get_argument_def(self):

        str2 = ", ".join(["%s::%s" %(arg.name, handle_jl_arg(arg.tp)) for arg in self.inlist])
        return str2

    def get_return(self):
        return "return OpenCVCxx.cpp_to_julia(OpenCVCxx.%s(%s))" %(self.get_wrapper_name(), ",".join(["OpenCVCxx.julia_to_cpp(%s)" % x.name for x in self.inlist + self.optlist]))
 
    def get_complete_code(self):
        outstr = 'function %s(%s)\n\t%s\nend\n' % (self.mapped_name, self.get_argument_full(),self.get_return())
        str2 = ", ".join([x.name for x  in self.inlist + self.optlist])
        # outstr = outstr +
        outstr = outstr + ('%s(%s; %s) = %s(%s)\n' % (self.mapped_name, self.get_argument_def(), self.get_argument_opt(), self.mapped_name, str2))
        return outstr



def gen(srcfiles, output_path='', libpath = 'TODO'):
    namespaces = gen_tree(srcfiles)

    jl_code = StringIO()
    for name, ns in namespaces.items():
        cv_types.extend(ns.registered)
        jl_code = StringIO()
        for cname, cl in ns.classes.items():
            cl.__class__ = ClassInfo
            jl_code.write(cl.get_jl_code())
            for mname, fs in cl.methods.items():
                for f in fs:
                    f.__class__ = FuncVariant
                    if f.classname:
                        f.inlist = [ArgInfo("cobj", "Any")]+f.inlist
                    jl_code.write('\n%s'  % f.get_complete_code())
        for mname, fs in ns.funcs.items():
            for f in fs:
                f.__class__ = FuncVariant
                if f.classname:
                    f.inlist = [ArgInfo("cobj", "Any")]+f.inlist

                jl_code.write('\n%s' % f.get_complete_code())
        
        imports = ''
        for namex in namespaces:
            if namex.startswith(name) and len(namex.split('::')) == 1 + len(name.split('::')):
                imports = imports + '\ninclude("%s_wrap.jl")'%namex.replace('::', '_')
        code = ''
        if name == 'cv':
            code = root_template.substitute(modname = name, code = jl_code.getvalue(), submodule_imports = imports, libpath=libpath)
        else:
            code = submodule_template.substitute(modname = name.replace('::', '_'), code = jl_code.getvalue(), submodule_imports = imports, libpath=libpath)

        with open ('autogen_jl/%s_wrap.jl' % ns.name.replace('::', '_'), 'w') as fd:
            fd.write(code)


    src_files = os.listdir('jl_files')
    for file_name in src_files:
        full_file_name = os.path.join('jl_files', file_name)
        if os.path.isfile(full_file_name):
            shutil.copy(full_file_name, 'autogen_jl')




srcfiles = hdr_parser.opencv_hdr_list
if len(sys.argv) > 1:
    dstdir = sys.argv[1]
if len(sys.argv) > 2:
    with open(sys.argv[2], 'r') as f:
        srcfiles = [l.strip() for l in f.readlines()]
gen(srcfiles)
