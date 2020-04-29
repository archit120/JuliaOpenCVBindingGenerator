
#!/usr/bin/env python3

import hdr_parser, sys, re, os
from string import Template
from pprint import pprint
from collections import namedtuple
from io import StringIO
import os, shutil

from parse_tree import *


jl_cpp_argmap = {"int": "Int32", "float":"Float32", "double":"Float64", "bool":"Bool", "Mat":"Image", "Point":"Point{Int32}", "string":"String", "char":"Char", "FeatureDetector":"Feature2D","DescriptorExtractor":"Feature2D"}

julia_types = ["Int32", "Float32", "Float64", "Bool", "String", "Array", "Any"]
cv_types = ["UMat","Size" ]

submodule_template = Template('')
root_template = Template('')
with open("binding_templates_jl/template_cv2_submodule.jl", "r") as f:
    submodule_template = Template(f.read())
with open("binding_templates_jl/template_cv2_root.jl", "r") as f:
    root_template = Template(f.read())

def handle_def_arg(inp, tp = ''):
    if tp in julia_types:
        return inp
    oinp = inp
    inp = handle_jl_arg(inp)
    if not inp:
        if tp=='Mat' or tp=='Image':
            return 'CxxMat()'
        return tp+'()'

    if inp=="String()":
            return '""'
    
    if '(' in oinp or ':' in oinp:
        return get_var(oinp)
    # print(inp, tp)
    # print(inp, get_var(inp), tp)
    return inp

def handle_jl_arg(inp):
    if not inp:
        return ''
    inp = inp.replace('std::', '').replace('cv::', '')
    oinp = inp

    def handle_vector(match):
        return handle_jl_arg("%sArray{%s, 1}%s" % (match.group(1), handle_jl_arg(match.group(2)), match.group(3)))
    def handle_ptr(match):
        return handle_jl_arg("%scv_Ptr{%s}" % (match.group(1), handle_jl_arg(match.group(2))))
    inp = re.sub("(.*)vector<(.*)>(.*)", handle_vector, inp)
    inp = re.sub("(.*)Ptr<(.*)>(.*)", handle_ptr, inp)

    for k in jl_cpp_argmap:
        if inp == k:
            inp = jl_cpp_argmap[k]
            break
        inp = re.sub("(.*[^\w])"+k+"([^\w{].*)", "\g<1>"+jl_cpp_argmap[k]+"\g<2>", inp)
    
    inp = inp.replace("2f","{Float32}").replace("2d", "{Float64}").replace("3f", "3{Float32}").replace("3d", "3{Float32}")
    return inp
    # return outs

class ClassInfo(ClassInfo):

    def get_jl_code(self):
        if self.ismap:
            return ''
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
            if not prop.readonly:
                continue
            stra = stra + "    if s==:" + prop.name+"\n"
            stra = stra + "        %s(m, julia_to_cpp(v))\n"%(self.get_prop_func_cpp("set", prop.name))
            stra = stra + "    end\n" 
        stra = stra + "    return Base.setfield(m, s, v)\nend\n"
        return stra

class FuncVariant(FuncVariant):


    def get_argument_full(self, classname='', isalgo = False):
        arglist = self.inlist + self.optlist
       
        argnamelist = [arg.name+"::"+(handle_jl_arg(arg.tp) if handle_jl_arg(arg.tp) not in pass_by_val_types else handle_jl_arg(arg.tp)[:-1]) for arg in arglist]
        argstr = ", ".join(argnamelist)
        return argstr

    def get_argument_opt(self):
        str2 =  ", ".join(["%s::%s = %s(%s)" % (arg.name, handle_jl_arg(arg.tp), handle_jl_arg(arg.tp) if (arg.tp == 'int' or arg.tp=='float' or arg.tp=='double') else '', handle_def_arg(arg.default_value, handle_jl_arg(arg.tp))) for arg in self.optlist])
        return str2

    def get_argument_def(self, classname, isalgo):
        arglist = self.inlist
        argnamelist = [arg.name+"::"+(handle_jl_arg(arg.tp) if handle_jl_arg(arg.tp) not in pass_by_val_types else handle_jl_arg(arg.tp)[:-1]) for arg in arglist]
        argstr = ", ".join(argnamelist)
        return argstr

    def get_return(self, classname=''):
        argstr = ''
        arglist = self.inlist + self.optlist
        return "return cpp_to_julia(%s(%s))" %(self.get_wrapper_name(), ",".join(["julia_to_cpp(%s)" % (x.name) for x in arglist]))

    def get_algo_tp(self, classname, isalgo):
        if not isalgo or not classname:
            return ''
        return ' where {T <: %s}' % classname

    def get_complete_code(self, classname='', isalgo = False, iscons = False, gen_default = True):
        if classname and not iscons:
            if isalgo:
                self.inlist = [ArgInfo("cobj", "cv_Ptr{T}")] + self.inlist
            else:
                self.inlist = [ArgInfo("cobj", classname)] + self.inlist

        outstr = 'function %s(%s)%s\n\t%s\nend\n' % (self.mapped_name, self.get_argument_full(classname, isalgo), self.get_algo_tp(classname, isalgo),self.get_return())
        

        str2 = ", ".join([x.name for x  in self.inlist + self.optlist])
        # outstr = outstr +
        if self.get_argument_opt() != '' and gen_default:
            outstr = outstr + ('%s(%s; %s)%s = %s(%s)\n' % (self.mapped_name, self.get_argument_def(classname, isalgo), self.get_argument_opt(), self.get_algo_tp(classname, isalgo), self.mapped_name, str2))
        return outstr



def gen(srcfiles, output_path='', libpath = 'TODO'):
    namespaces, _ = gen_tree(srcfiles)

    jl_code = StringIO()
    for name, ns in namespaces.items():
        cv_types.extend(ns.registered)
        jl_code = StringIO()

        for e1,e2 in ns.enums.items():
            # jl_code.write('\n   const {0} = Int32'.format(e2[0]))
            jl_code.write('\n   const {0} = Int32 \n'.format(e2[1]))
            
        # Do not duplicate functions. This should prevent overwriting of Mat function by UMat functions
        function_signatures = []

        for cname, cl in ns.classes.items():
            cl.__class__ = ClassInfo
            jl_code.write(cl.get_jl_code())
            for mname, fs in cl.methods.items():
                for f in fs:
                    f.__class__ = FuncVariant
                    sign = (f.name, f.mapped_name, f.classname, [x.tp for x in f.args])
                    if sign in function_signatures:
                        print("Skipping entirely: ", f.name)
                        continue
                    sign2 = (f.name, f.mapped_name, f.classname, [x.tp for x in f.inlist])
                    gend = True
                    if sign2 in function_signatures:
                        print("Skipping default declaration: ", f.name)
                        gend = False
                    jl_code.write('\n%s'  % f.get_complete_code(classname = cl.mapped_name, isalgo = cl.isalgorithm, gen_default = gend))
                    function_signatures.append(sign)
                    function_signatures.append(sign2)
            for f in cl.constructors:
                f.__class__ = FuncVariant
                jl_code.write('\n%s'  % f.get_complete_code(classname = cl.mapped_name, isalgo = cl.isalgorithm, iscons = True))
        for mname, fs in ns.funcs.items():
            for f in fs:
                f.__class__ = FuncVariant
                sign = (f.name, f.mapped_name, f.classname, [x.tp for x in f.args])
                if sign in function_signatures:
                    print("Skipping entirely: ", f.name)
                    continue
                gend = True
                sign2 = (f.name, f.mapped_name, f.classname, [x.tp for x in f.inlist])
                if sign2 in function_signatures:
                    print("Skipping default declaration: ", f.name)
                    gend = False

                jl_code.write('\n%s' % f.get_complete_code(gen_default = gend))
                function_signatures.append(sign)
                function_signatures.append(sign2)

        
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


    src_files = os.listdir('jl_cxx_files')
    for file_name in src_files:
        full_file_name = os.path.join('jl_cxx_files', file_name)
        if os.path.isfile(full_file_name):
            shutil.copy(full_file_name, 'autogen_jl')




srcfiles = hdr_parser.opencv_hdr_list
if len(sys.argv) > 1:
    dstdir = sys.argv[1]
if len(sys.argv) > 2:
    with open(sys.argv[2], 'r') as f:
        srcfiles = [l.strip() for l in f.readlines()]
gen(srcfiles)
