
#!/usr/bin/env python3

import hdr_parser, sys, re, os
from string import Template
from pprint import pprint
from collections import namedtuple
from io import StringIO
import os, shutil

forbidden_arg_types = ["void*"]

ignored_arg_types = ["RNG*"]

pass_by_val_types = ["Point*", "Point2f*", "Rect*", "String*", "double*", "float*", "int*"]

def normalize_class_name(name):
    return re.sub(r"^cv\.", "", name).replace(".", "_")

jl_cpp_argmap = {"int": "Int32", "float":"Float32", "double":"Float64", "bool":"Bool"}

typemap = {"Size": 'NTuple{Int'}

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
    inp = re.sub("(.*)vector_(.*)", handle_vector, inp)
    inp = re.sub("(.*)Ptr_(.*)", handle_ptr, inp)
    for k in jl_cpp_argmap:
        inp = inp.replace(k, jl_cpp_argmap[k])
    return inp

  

namespaces = {}
enums = {}
classes = {}
functions = {}


class ClassProp(object):
    """
    Helper class to store field information(type, name and flags) of classes and structs
    """
    def __init__(self, decl):
        self.tp = decl[0].replace("*", "_ptr")
        self.name = decl[1]
        self.readonly = True
        if "/RW" in decl[3]:
            self.readonly = False

class ClassInfo(object):
    def __init__(self, name, decl=None):
        self.cname = name.replace(".", "::")
        self.name = self.wname = normalize_class_name(name)
        self.sname = name[name.rfind('.') + 1:]
        self.ismap = False  #CV_EXPORTS_W_MAP
        self.issimple = False   #CV_EXPORTS_W_SIMPLE #Probably not needed
        self.isalgorithm = False    #if class inherits from cv::Algorithm
        self.methods = {}   #Dictionary of methods
        self.props = []     #Collection of ClassProp associated with this class
        self.mappables = [] 
        self.consts = {}    #Dictionary of constants
        self.base = None    #name of base class if current class inherits another class
        self.constructors = []  #Array of constructors for this class
        self.customname = False
        self.add_decl(decl)
        classes[name] = self
        # print(name)
        # input()

    def add_decl(self, decl):
        if decl:
            # print(decl)
            bases = decl[1].split(',')
            if len(bases[0].split()) > 1:    
                bases[0] = bases[0].split()[1]
                
                bases = [x.replace(' ','') for x in bases]
                # print(bases)
                if len(bases) > 1:
                    print("More than one base", bases)
                    bases = list(set(bases))
                    bases.remove('cv::class')
                    bases_clear = []
                    for bb in bases:
                        if self.name not in bb:
                            bases_clear.append(bb)
                    bases = bases_clear
                    # print(bases)
                    # input()
                    # assert(0)
                    #return sys.exit(-1)
                if len(bases) >= 1:
                    # assert(0)

                    self.base = bases[0]
                    # print(self.base)
                    # input()
                    if self.base == "cv::Algorithm":
                        self.isalgorithm = True
                    self.base = self.base.replace("::", ".")

            for m in decl[2]:
                if m.startswith("="):
                    self.wname = m[1:]
                    self.customname = True
                elif m == "/Map":
                    self.ismap = True
                elif m == "/Simple":
                    self.issimple = True
            self.props = [ClassProp(p) for p in decl[3]]

        if not self.customname and self.wname.startswith("Cv"):
            self.wname = self.wname[2:]

    def get_jl_code(self):
        return self.overload_get()+self.overload_set()

    def get_prop_func_cpp(self, mode, propname):
        return "jlopencv_" + self.wname + "_"+mode+"_"+propname

    def overload_get(self):
        stra = "function Base.getproperty(m::%s, s::Symbol)\n" %(self.wname)
        for prop in self.props:
            stra = stra + "    if s==:" + prop.name+"\n"
            stra = stra + "        return cpp_to_julia(%s(m))\n"%self.get_prop_func_cpp("get", prop.name)
            stra = stra + "    end\n" 
        stra = stra + "    return Base.getfield(m, s)\nend\n"
        return stra

    def overload_set(self):
        stra = "function Base.setproperty!(m::%s, s::Symbol, v)\n" %(self.wname)
        for prop in self.props:
        
            stra = stra + "    if s==:" + prop.name+"\n"
            stra = stra + "        %s(m, julia_to_cpp(v, %s))\n"%(self.get_prop_func_cpp("set", prop.name), prop.tp)
            stra = stra + "    end\n" 
        stra = stra + "    return Base.setfield(m, s, v)\nend\n"
        return stra

argumentst = []
class ArgInfo(object):
    """
    Helper class to parse and contain information about function arguments
    """

    def __init__(self, arg_tuple):
        # print(arg_)
        self.tp = handle_jl_arg(arg_tuple[0]) #C++ Type of argument
        argumentst.append(self.tp)
        self.name = arg_tuple[1] #Name of argument
        self.defval = arg_tuple[2] #Default value
        self.isarray = False #Is the argument an array
        self.arraylen = 0
        self.arraycvt = None
        self.inputarg = True #Input argument
        self.outputarg = False #output argument
        self.returnarg = False
        for m in arg_tuple[3]:
            if m == "/O":
                self.inputarg = False
                self.outputarg = True
                self.returnarg = True
            elif m == "/IO":
                self.inputarg = True
                self.outputarg = True
                self.returnarg = True
            elif m.startswith("/A"):
                self.isarray = True
                self.arraylen = m[2:].strip()
            elif m.startswith("/CA"):
                self.isarray = True
                self.arraycvt = m[2:].strip()
        self.jl_inputarg = False
        self.jl_outputarg = False
        self.isbig = self.tp in ["Mat", "vector_Mat", "cuda::GpuMat", "GpuMat", "vector_GpuMat", "UMat", "vector_UMat"]


class FuncVariant(object):
    """
    Helper class to parse and contain information about different overloaded versions of same function
    """
    def __init__(self, classname, name, cname, decl, isconstructor, namespace, istatic=False):
        self.classname = classname
        self.name = name
        self.cname = cname
        # print(name, cname)
        self.isconstructor = isconstructor
        self.isstatic = istatic
        self.namespace = namespace

        self.rettype = decl[4] or handle_jl_arg(decl[1])
        if self.rettype == "void":
            self.rettype = ""
        self.rettype = handle_jl_arg(self.rettype)
        self.args = []
        self.array_counters = {}
        for a in decl[3]:
            ainfo = ArgInfo(a)
            if ainfo.isarray and not ainfo.arraycvt:
                c = ainfo.arraylen
                c_arrlist = self.array_counters.get(c, [])
                if c_arrlist:
                    c_arrlist.append(ainfo.name)
                else:
                    self.array_counters[c] = [ainfo.name]
            self.args.append(ainfo)
        self.init_jlproto()

        if (name,cname) not in functions:
            functions[(name,cname)]= []
        functions[(name, cname)].append(self)

    
    def get_wrapper_name(self):
        """
        Return wrapping function name
        """
        name = self.name
        if self.classname:
            classname = self.classname + "_"
            if "[" in name:
                name = "getelem"
        else:
            classname = ""
        return "jlopencv_" + self.namespace.replace('.','_') + '_' + classname + name


    def init_jlproto(self):
        # string representation of argument list, with '[', ']' symbols denoting optional arguments, e.g.
        # "src1, src2[, dst[, mask]]" for cv.add
        argstr = ""

        # list of all input arguments of the jlthon function, with the argument numbers:
        #    [("src1", 0), ("src2", 1), ("dst", 2), ("mask", 3)]
        # we keep an argument number to find the respective argument quickly, because
        # some of the arguments of C function may not present in the jlthon function (such as array counters)
        # or even go in a different order ("heavy" output parameters of the C function
        # become the first optional input parameters of the jlthon function, and thus they are placed right after
        # non-optional input parameters)
        arglist = []
        c_arglist = []
        # the list of "heavy" output parameters. Heavy parameters are the parameters
        # that can be expensive to allocate each time, such as vectors and matrices (see isbig).
        outarr_list = []

        # the list of output parameters. Also includes input/output parameters.
        outlist = []

        optlist = []

        firstoptarg = 1000000
        for a in self.args:
            if a.name in self.array_counters:
                # print(a.name)
                assert(0)
                continue
            assert not a.tp in forbidden_arg_types, 'Forbidden type "{}" for argument "{}" in "{}" ("{}")'.format(a.tp, a.name, self.name, self.classname)
            if a.tp in ignored_arg_types:
                continue
            if a.returnarg:
                outlist.append((a.name, a.tp))
            if (not a.inputarg) and a.isbig:
                outarr_list.append((a.name, a.tp))
                continue
            if not a.inputarg:
                continue
            if not a.defval:
                arglist.append((a.name, a.tp))
            else:
                # if there are some array output parameters before the first default parameter, they
                # are added as optional parameters before the first optional parameter
                # print(a.defval)
                if outarr_list:
                    arglist += outarr_list
                    outarr_list = []
                arglist.append((a.name, a.tp))
                optlist.append((a.name, a.tp, a.defval))

        if outarr_list:
            firstoptarg = min(firstoptarg, len(arglist))
            arglist += outarr_list
        firstoptarg = min(firstoptarg, len(arglist))

        noptargs = len(arglist) - firstoptarg
        argnamelist = [aname+"::"+tp for aname, tp in arglist]
        argstr = ", ".join(argnamelist[:firstoptarg])
        if noptargs != 0:
            argstr = argstr + "; " +", ".join(argnamelist[firstoptarg:])
        if self.rettype:
            outlist = [("retval", self.rettype)] + outlist

        if self.isconstructor:
            # print(outlist)

            assert outlist == [] or outlist == [("retval", "explicit")]
            classname = self.classname
            if classname.startswith("Cv"):
                classname=classname[2:]
            outstr = classname
            outlist = [("retval", classname)]
        elif outlist:
            outstr = "( "+", ".join([o[0]+"::"+o[1] for o in outlist]) + " ) "
        else:
            outstr = "nothing"
        if self.classname!="" and not self.isconstructor:
            arglist = [("cobj", "Any")] + arglist
            firstoptarg+=1

        self.jl_arg_str = argstr #Argument string for function
        self.jl_return_str = outstr #Return values string
        self.jl_prototype = "%s(%s) -> %s" % (self.name, argstr, outstr)
        self.jl_noptargs = noptargs
        self.firstoptarg = firstoptarg
        self.optlist = optlist


        self.jl_arglist = arglist
        self.jl_outlist = outlist

        self.defargs = []

    def get_argument_full(self):
        arglist = self.jl_arglist

        argnamelist = [aname+"::"+(tp if tp not in pass_by_val_types else tp[:-1]) for aname, tp in arglist]
        argstr = ", ".join(argnamelist)
        return argstr

    def get_argument_opt(self):
        str2 =  ", ".join(["%s::%s = %s" % (name, tp, defv) for name,tp, defv in self.optlist])
        return str2

    def get_argument_def(self):
        if len(self.optlist):
            str2 = ", ".join(["%s::%s" %(name, tp) for name,tp in self.jl_arglist[:-len(self.optlist)]])
        else:
            str2 = ", ".join(["%s::%s" %(name, tp) for name,tp in self.jl_arglist])
        return str2

    def get_return(self):
        return "return cpp_to_julia(%s(%s))" %(self.get_wrapper_name(), ",".join(["julia_to_cpp(%s)" % x for x, _ in self.jl_arglist]))
 
    def get_complete_code(self):
        outstr = 'function %s(%s)\n\t%s\nend\n' % (self.name, self.get_argument_full(),self.get_return())
        str2 = ", ".join([x for x, _ in self.jl_arglist])
        # outstr = outstr +
        outstr = outstr + ('%s(%s; %s) = %s(%s)\n' % (self.name, self.get_argument_def(), self.get_argument_opt(), self.name, str2))
        return outstr


class NameSpaceInfo(object):
    def __init__(self, name):
        self.funcs = {}
        self.classes = {} #Dictionary of classname : ClassInfo objects
        self.enums = {}
        self.consts = {}
        self.name = name

def split_decl_name(name):
    chunks = name.split('.')
    namespace = chunks[:-1]
    classes = []
    while namespace and '.'.join(namespace) not in namespaces:
        classes.insert(0, namespace.pop())
    
    ns = '.'.join(namespace)
    if ns not in namespaces:
        namespaces[ns] = NameSpaceInfo(ns)

    return namespace, classes, chunks[-1]


def add_func(decl):
    """
    Creates functions based on declaration and add to appropriate classes and/or namespaces
    """
    namespace, classes, barename = split_decl_name(decl[0])
    cname = "::".join(namespace+classes+[barename])
    name = barename
    classname = ''
    bareclassname = ''
    if classes:
        classname = ('.'.join(classes))
        bareclassname = classes[-1]
    namespace = '.'.join(namespace)

    isconstructor = name == bareclassname
    is_static = False
    isphantom = False
    for m in decl[2]:
        if m == "/S":
            is_static = True
        elif m == "/phantom":
            print("phantom not supported yet")
            return
        elif m.startswith("="):
            name = m[1:]
        elif m.startswith("/mappable="):
            print("Mappable not supported yet")
            return
        # if m == "/V":
        #     print("skipping ", name)
        #     return

    if isconstructor:
        name = "_".join(classes[:-1]+[name])

    if classname and classname not in namespaces[namespace].classes:
        # print("HH1")
        # print(namespace, classname)
        namespaces[namespace].classes[classname] = ClassInfo(classname)

    if is_static:
        # Add it as a method to the class
        func_map = namespaces[namespace].classes[classname].methods
        if name not in func_map:
            func_map[name] = []
        func_map[name].append(FuncVariant(classname, name, cname, decl, isconstructor, namespace, True))

        # Add it as global function
        g_name = "_".join(classes+[name])
        func_map = namespaces[namespace].funcs
        if name not in func_map:
            func_map[name] = []

        func_map[name].append(FuncVariant("", g_name, cname, decl, isconstructor, namespace, True))
    else:
        if classname:
            if isconstructor:
                namespaces[namespace].classes[classname].constructors.append(FuncVariant(classname, name, cname, decl, True, namespace, True))
            else:
                func_map = namespaces[namespace].classes[classname].methods
                if name not in func_map:
                    func_map[name] = []
                func_map[name].append(FuncVariant(classname, name, cname, decl, isconstructor, namespace, False))
        else:
            func_map = namespaces[namespace].funcs
            if name not in func_map:
                func_map[name] = []
            func_map[name].append(FuncVariant("", name, cname, decl, False, namespace, False))


def add_class(stype, name, decl):
    """
    Creates class based on name and declaration. Add it to list of classes and to JSON file
    """
    # print("n", name)

    classinfo = ClassInfo(name, decl)
    namespace, classes, name = split_decl_name(name)
    namespace = '.'.join(namespace)
    name = '_'.join(classes+[name])
    if classinfo.name in classes:
        namespaces[namespace].classes[name].add_decl(decl)
    else:
        namespaces[namespace].classes[name] = classinfo
    
    # print(namespace, name)
    #print('class: ' + classinfo.cname + " => " + jl_name)



def add_const(name, decl):
    cname = name.replace('.','::')
    namespace, classes, name = split_decl_name(name)
    namespace = '.'.join(namespace)
    name = '_'.join(classes+[name])
    ns = namespaces[namespace]
    if name in ns.consts:
        print("Generator error: constant %s (cname=%s) already exists" \
            % (name, cname))
        sys.exit(-1)
    ns.consts[name] = cname

def add_enum(name, decl):
    wname = normalize_class_name(name)
    if wname.endswith("<unnamed>"):
        wname = None
    else:
        enums[name.replace(".", "::")] = name
    const_decls = decl[3]

    if wname:
        namespace, classes, name = split_decl_name(name)
        namespace = '.'.join(namespace)
        namespaces[namespace].enums[name] = (name.replace(".", "::"),name)
    for decl in const_decls:
        name = decl[0]
        add_const(name.replace("const ", "").strip(), decl)



def gen(srcfiles, output_path='', libpath = 'TODO'):
    parser = hdr_parser.CppHeaderParser(generate_umat_decls=True, generate_gpumat_decls=True)
    count = 0

    # step 1: scan the headers and build more descriptive maps of classes, consts, functions
    for hdr in srcfiles:
        decls = parser.parse(hdr)
        for ns in parser.namespaces:
            if ns not in namespaces:
                namespaces[ns] = NameSpaceInfo(ns)
               
        count += len(decls)
        if len(decls) == 0:
            continue
        if hdr.find('opencv2/') >= 0: #Avoid including the shadow files
            # code_include.write( '#include "{0}"\n'.format(hdr[hdr.rindex('opencv2/'):]) )
            pass
        for decl in decls:
            name = decl[0]
            if name.startswith("struct") or name.startswith("class"):
                # class/struct
                p = name.find(" ")
                stype = name[:p]
                name = name[p+1:].strip()
                add_class(stype, name, decl)
            elif name.startswith("const"):
                # constant
                add_const(name.replace("const ", "").strip(), decl)
            elif name.startswith("enum"):
                # enum
                add_enum(name.rsplit(" ", 1)[1], decl)
            else:
                # function
                add_func(decl)
    # step 1.5 check if all base classes exist
    # print(classes)
    for name, classinfo in classes.items():
        if classinfo.base:
            base = classinfo.base
            # print(base)
            if base not in classes:
                print("Generator error: unable to resolve base %s for %s"
                    % (classinfo.base, classinfo.name))
                sys.exit(-1)
            base_instance = classes[base]
            classinfo.base = base
            classinfo.isalgorithm |= base_instance.isalgorithm  # wrong processing of 'isalgorithm' flag:
                                                                # doesn't work for trees(graphs) with depth > 2
            classes[name] = classinfo

    # tree-based propagation of 'isalgorithm'
    processed = dict()
    def process_isalgorithm(classinfo):
        if classinfo.isalgorithm or classinfo in processed:
            return classinfo.isalgorithm
        res = False
        if classinfo.base:
            res = process_isalgorithm(classes[classinfo.base])
            #assert not (res == True or classinfo.isalgorithm is False), "Internal error: " + classinfo.name + " => " + classinfo.base
            classinfo.isalgorithm |= res
            res = classinfo.isalgorithm
        processed[classinfo] = True
        return res
    for name, classinfo in classes.items():
        process_isalgorithm(classinfo)


    jl_code = StringIO()
    for name, ns in namespaces.items():

        jl_code = StringIO()
        for cname, cl in ns.classes.items():
            jl_code.write(cl.get_jl_code())
            for mname, fs in cl.methods.items():
                for f in fs:
                    jl_code.write('\n%s'  % f.get_complete_code())
        for mname, fs in ns.funcs.items():
            for f in fs:
                jl_code.write('\n%s' % f.get_complete_code())
        
        imports = ''
        for namex in namespaces:
            if namex.startswith(name) and len(namex.split('.')) == 1 + len(name.split('.')):
                imports = imports + '\nimport("%s_wrap.jl")'%namex.replace('.', '_')
        code = ''
        if name == 'cv':
            code = root_template.substitute(modname = name, code = jl_code.getvalue(), submodule_imports = imports, libpath=libpath)
        else:
            code = submodule_template.substitute(modname = name, code = jl_code.getvalue(), submodule_imports = imports, libpath=libpath)

        with open ('autogen_jl/%s_wrap.jl' % ns.name.replace('.', '_'), 'w') as fd:
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
