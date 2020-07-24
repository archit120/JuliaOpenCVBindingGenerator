
#!/usr/bin/env python3

import hdr_parser, sys, re, os
from string import Template
from pprint import pprint
from collections import namedtuple

import os, shutil

from io import StringIO
from parse_tree import *

mod_template = ""
with open("binding_templates_cpp/cv_core.cpp", "r") as f:
    mod_template = Template(f.read())


def normalize_name(name):
    return name.replace('.', '::')

def normalize_class_name(name):
    _, classes, name = split_decl_name(normalize_name(name))
    return "_".join(classes+[name])

def normalize_full_name(name):
    ns, classes, name = split_decl_name(normalize_name(name))
    return "::".join(ns)+'::'+'_'.join(classes+[name])



def split_decl_name(name):
    chunks = name.split('::')
    namespace = chunks[:-1]
    classes = []
    while namespace and '::'.join(namespace) not in namespaces:
        classes.insert(0, namespace.pop())

    ns = '::'.join(namespace)
    if ns not in namespaces and ns:
        assert(0)

    return namespace, classes, chunks[-1]

def registered_tp_search(tp):
    found = False
    if not tp:
        return True
    for tpx in registered_types:
        if re.findall(tpx, tp):
            found = True
            break
    return found

namespaces = {}
enums = []
classes = {}
functions = {}
registered_types = ["int", "Size.*", "Rect.*", "Scalar", "RotatedRect", "Point.*", "explicit", "string", "bool", "uchar",
                    "Vec.*", "float", "double", "char", "Mat", "size_t", "RNG", "TermCriteria"]

class ClassInfo(ClassInfo):
    def get_cpp_code_header(self):
        if self.ismap:
            return 'mod.map_type<%s>("%s");\n'%(self.name, self.mapped_name)
        if not self.base:
            return 'mod.add_type<%s>("%s");\n' % (self.name, self.mapped_name)
        else:
            return 'mod.add_type<%s>("%s", jlcxx::julia_base_type<%s>());\n' % (self.name, self.mapped_name, self.base)

    def get_cpp_code_body(self):
        if self.ismap:
            return ''
        cpp_code = StringIO()
        for cons in self.constructors:
            cons.__class__ = FuncVariant
            cpp_code.write(cons.get_cons_code(self.name, self.mapped_name))
        #add get/set
        cpp_code.write('\n')
        cpp_code.write(self.get_setters())
        cpp_code.write('\n')
        cpp_code.write(self.get_getters())
        cpp_code.write(';')
        return cpp_code.getvalue()

        # return code for functions and setters and getters if simple class or functions and map type

    def get_prop_func_cpp(self, mode, propname):
        return "jlopencv_" + self.mapped_name + "_"+mode+"_"+propname

    def get_getters(self):
        stra = ""
        for prop in self.props:
            if not self.isalgorithm:
                stra = stra + '\nmod.method("%s", [](const %s &cobj) {return %scobj.%s;});' % (self.get_prop_func_cpp("get", prop.name), self.name, '(int)' if prop.tp in enums else '', prop.name)
            else:
                stra = stra + '\nmod.method("%s", [](const cv::Ptr<%s> &cobj) {return %scobj->%s;});' % (self.get_prop_func_cpp("get", prop.name), self.name,'(int)' if prop.tp in enums else '',  prop.name)
        return stra

    def get_setters(self):
        stra = ""
        for prop in self.props:
            if prop.readonly:
                continue
            if not self.isalgorithm:
                stra = stra + '\nmod.method("%s", [](%s &cobj,const force_enum_int<%s>::Type &v) {cobj.%s=(%s)v;});' % (self.get_prop_func_cpp("set", prop.name), self.name, prop.tp, prop.name, prop.tp)
            else:
                stra = stra + '\nmod.method("%s", [](cv::Ptr<%s> cobj, const force_enum_int<%s>::Type &v) {cobj->%s=(%s)v;});' % (self.get_prop_func_cpp("set", prop.name), self.name, prop.tp, prop.name, prop.tp)
        return stra

class FuncVariant(FuncVariant):

    def get_return(self):
        if len(self.outlist)==0:
            return ";"
        elif len(self.outlist)==1:
            return "return %s;" % ( ('(int)' if self.outlist[0].tp in enums else '') + self.outlist[0].name)
        return "return make_tuple(%s);" %  ",".join(["move(%s)" %  (('(int)' if x.tp in enums else '') +x.name) for x in self.outlist])

    def get_argument(self, isalgo):
        args = self.inlist + self.optlist
        if self.classname!="" and not self.isconstructor and not self.isstatic:
            if isalgo:
                args = [ArgInfo("cobj", ("cv::Ptr<%s>" % self.classname))] + args
            else:
                args = [ArgInfo("cobj", self.classname)] + args

        argnamelist = []
        for arg in args:
            if arg.tp in pass_by_val_types:
                print("PATHWAY NOT TESTED")
                argnamelist.append(arg.tp[:-1] +"& "+arg.name)
            elif arg.tp in enums:
                argnamelist.append("int& " + arg.name)
            else:
                if arg.tp=='bool':
                    # Bool pass-by-reference is broken
                    argnamelist.append(arg.tp+" " +arg.name)
                else:
                    argnamelist.append(arg.tp + "& "+arg.name)
        # argnamelist = [(arg.tp if arg.tp not in pass_by_val_types else arg.tp[:-1]) +"& "+arg.name for arg in args]
        argstr = ", ".join(argnamelist)
        return argstr

    def get_def_outtypes(self):
        outstr = ""
        for arg in self.deflist:
            outstr = outstr + "%s %s;"%(arg.tp if arg.tp not in pass_by_val_types else arg.tp[:-1], arg.name)
        return outstr

    def get_retval(self, isalgo):
        if self.rettype:
            stra = "auto retval = "
        else:
            stra = ""
        arlist = []
        for x in self.args:
            if x.tp in pass_by_val_types:
                arlist.append("&"+x.name)
            elif x.tp in enums:
                arlist.append("(%s)%s" %(x.tp, x.name))
            else:
                arlist.append(x.name)
        argstr = ", ".join(arlist)
        if self.classname and not self.isstatic:
            stra = stra + "cobj%s%s(%s); " %("->" if isalgo else ".",self.name.split('::')[-1], argstr)
        else:
            stra = stra + "%s(%s);" % (self.name, argstr)
        return stra

    def get_cons_code(self, name, mapped_name):
        # if self.get_argument(False) == '':
        #     return ''
        arglist = []
        for x in self.args:
            if x.tp in pass_by_val_types:
                arglist.append("&"+x.name)
            elif x.tp in enums:
                arglist.append("(%s)%s" %(x.tp, x.name))
            else:
                arglist.append(x.name)

        return 'mod.method("%s", [](%s) { %s return jlcxx::create<%s>(%s);});' % (self.get_wrapper_name(), self.get_argument(False), self.get_def_outtypes(), name, " ,".join(arglist))

    def get_complete_code(self, classname, isalgo=False):
        outstr = '.method("%s",  [](%s) {%s %s %s})' % (self.get_wrapper_name(), self.get_argument(isalgo),self.get_def_outtypes(), self.get_retval(isalgo), self.get_return())
        return outstr



def gen(srcfiles, output_path):
    namespaces, default_values = gen_tree(srcfiles)
    cpp_code = StringIO()
    include_code = StringIO()
    for name, ns in namespaces.items():
        cpp_code.write("using namespace %s;\n" % name.replace(".", "::"))

        if name.split('.')[-1] == '':
            continue
        nsname = name
        nsprefix = '_'.join(nsname.split('::')[1:])
        for name, cl in ns.classes.items():
            cl.__class__ = ClassInfo
            cpp_code.write(cl.get_cpp_code_header())
            if cl.base:
                include_code.write("""
template <>
struct SuperType<%s>
{
    typedef %s type;
};
                                    """ % (cl.name.replace('.', '::'), cl.base.replace('.', '::')))

        for e1,e2 in ns.enums.items():
            # cpp_code.write('\n    mod.add_bits<{0}>("{1}", jlcxx::julia_type("CppEnum"));'.format(e2[0], e2[1]))
            enums.append(e2[0])
            enums.append(e2[1])
            enums.append(e2[0].replace("cv::", ""))


        for tp in ns.register_types:
            cpp_code.write('   mod.add_type<%s>("%s");\n' %(tp, normalize_class_name(tp)))


    for name, ns in namespaces.items():

        nsname = name.replace("::", "_")
        for name, cl in ns.classes.items():
            cl.__class__ = ClassInfo
            cpp_code.write(cl.get_cpp_code_body())
            for mname, fs in cl.methods.items():
                for f in fs:
                    f.__class__ = FuncVariant
                    cpp_code.write('\n    mod%s;'  % f.get_complete_code(cl.name, cl.isalgorithm))
            # for f in cl.constructors:
            #     cpp_code.write('\n    %s; \n'  % f.get_cons_code(cl.name, cl.mapped_name))


        for mname, fs in ns.funcs.items():
            for f in fs:
                f.__class__ = FuncVariant
                cpp_code.write('\n    mod%s;' % f.get_complete_code("", False))

        for mapname, name in sorted(ns.consts.items()):
            cpp_code.write('    mod.set_const("%s_%s", (force_enum_int<decltype(%s)>::Type)%s);\n'%(nsname, name, mapname, mapname))
            compat_name = re.sub(r"([a-z])([A-Z])", r"\1_\2", name).upper()
            if name != compat_name:
                cpp_code.write('    mod.set_const("%s_%s", (force_enum_int<decltype(%s)>::Type)%s);\n'%(nsname, compat_name, mapname, mapname))
    default_values = list(set(default_values))
    for val in default_values:
        # val = handle_cpp_arg(val)

        cpp_code.write('    mod.method("%s", [](){return (force_enum_int<decltype(%s)>::Type)%s;});\n'%(get_var(val), val, val))

    with open ('autogen_cpp/cv_wrap.cpp', 'w') as fd:
        fd.write(mod_template.substitute(include_code = include_code.getvalue(), cpp_code=cpp_code.getvalue()))

    src_files = os.listdir('cpp_files')
    for file_name in src_files:
        full_file_name = os.path.join('cpp_files', file_name)
        if os.path.isfile(full_file_name):
            shutil.copy(full_file_name, 'autogen_cpp')





srcfiles = hdr_parser.opencv_hdr_list
dstdir = "test/"
if len(sys.argv) > 1:
    dstdir = sys.argv[1]
if len(sys.argv) > 2:
    with open(sys.argv[2], 'r') as f:
        srcfiles = [l.strip() for l in f.readlines()]
gen(srcfiles, dstdir)
