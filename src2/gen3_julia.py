
#!/usr/bin/env python3

import hdr_parser, sys, re, os
from string import Template
from pprint import pprint
from collections import namedtuple
from io import StringIO
import os, shutil

from parse_tree import *


jl_cpp_argmap = {"int": "Int32", "float":"Float32", "double":"Float64", "bool":"Bool"}

submodule_template = Template('')
root_template = Template('')
with open("binding_templates_jl/template_cv2_submodule.jl", "r") as f:
    submodule_template = Template(f.read())
with open("binding_templates_jl/template_cv2_root.jl", "r") as f:
    root_template = Template(f.read())

def handle_def_arg(inp):
    if inp=="String()":
            return '""'
    def handle_vector(match):
        return handle_jl_arg("%sCxxWrap.StdVector{%s}()" % (match.group(1), match.group(2)))
    inp = re.sub("std::vector<(.*)>", handle_vector, inp)
    for k in jl_cpp_argmap:
        inp = inp.replace(k, jl_cpp_argmap[k])
    return inp

def handle_jl_arg(inp):
    def handle_vector(match):
        return handle_jl_arg("%svector{%s}" % (match.group(1), match.group(2)))
    def handle_ptr(match):
        return handle_jl_arg("%sPtr{%s}" % (match.group(1), match.group(2)))
    inp = re.sub("(.*)vector<(.*)>", handle_vector, inp)
    inp = re.sub("(.*)Ptr<(.*)>", handle_ptr, inp)
    for k in jl_cpp_argmap:
        inp = inp.replace(k, jl_cpp_argmap[k])
    return inp

class ClassInfo(ClassInfo):

    def get_jl_code(self):
        return self.overload_get()+self.overload_set()

    def overload_get(self):
        stra = "function Base.getproperty(m::%s, s::Symbol)\n" %(self.mapped_name)
        for prop in self.props:
            stra = stra + "    if s==:" + prop.name+"\n"
            stra = stra + "        return cpp_to_julia(%s(m))\n"%self.get_prop_func_cpp("get", prop.name)
            stra = stra + "    end\n" 
        stra = stra + "    return Base.getfield(m, s)\nend\n"
        return stra

    def overload_set(self):
        stra = "function Base.setproperty!(m::%s, s::Symbol, v)\n" %(self.mapped_name)
        for prop in self.props:
        
            stra = stra + "    if s==:" + prop.name+"\n"
            stra = stra + "        %s(m, julia_to_cpp(v, %s))\n"%(self.get_prop_func_cpp("set", prop.name), handle_jl_arg(prop.tp))
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
        str2 =  ", ".join(["%s::%s = %s" % (arg.name, handle_jl_arg(arg.tp), arg.default_value) for arg in self.optlist])
        return str2

    def get_argument_def(self):

        str2 = ", ".join(["%s::%s" %(arg.name, handle_jl_arg(arg.tp)) for arg in self.inlist])
        return str2

    def get_return(self):
        return "return cpp_to_julia(%s(%s))" %(self.get_wrapper_name(), ",".join(["julia_to_cpp(%s)" % x.name for x in self.inlist + self.optlist]))
 
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
                imports = imports + '\nimport("%s_wrap.jl")'%namex.replace('::', '_')
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
