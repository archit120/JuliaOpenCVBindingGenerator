
#!/usr/bin/env python3

import hdr_parser, sys, re, os
from string import Template
from pprint import pprint
from collections import namedtuple

from io import StringIO


forbidden_arg_types = ["void*"]

ignored_arg_types = ["RNG*"]

pass_by_val_types = ["Point*", "Point2f*", "Rect*", "String*", "double*", "float*", "int*"]

ns_template = """
#include <vector>

#include "jlcxx/jlcxx.hpp"
#include "jlcxx/functions.hpp"
#include "jlcxx/stl.hpp"
#include "jlcxx/array.hpp"
#include "jlcxx/tuple.hpp"

#include <opencv4/opencv2/opencv.hpp>
#include <opencv4/opencv2/opencv_modules.hpp>

#include <opencv4/opencv2/core/ocl.hpp>
using namespace cv;
using namespace std;
using namespace jlcxx;

#ifdef HAVE_OPENCV_FEATURES2D
typedef SimpleBlobDetector::Params SimpleBlobDetector_Params;
typedef AKAZE::DescriptorType AKAZE_DescriptorType;
typedef AgastFeatureDetector::DetectorType AgastFeatureDetector_DetectorType;
typedef FastFeatureDetector::DetectorType FastFeatureDetector_DetectorType;
typedef DescriptorMatcher::MatcherType DescriptorMatcher_MatcherType;
typedef KAZE::DiffusivityType KAZE_DiffusivityType;
typedef ORB::ScoreType ORB_ScoreType;
#endif

#ifdef HAVE_OPENCV_OBJDETECT

#include "opencv4/opencv2/objdetect.hpp"

typedef HOGDescriptor::HistogramNormType HOGDescriptor_HistogramNormType;
typedef HOGDescriptor::DescriptorStorageFormat HOGDescriptor_DescriptorStorageFormat;

#endif
#ifdef HAVE_OPENCV_FLANN
typedef cvflann::flann_distance_t cvflann_flann_distance_t;
typedef cvflann::flann_algorithm_t cvflann_flann_algorithm_t;

typedef flann::IndexParams flann_IndexParams ;
typedef flann::SearchParams flann_SearchParams ;
#endif
"""

def normalize_class_name(name):
    return re.sub(r"^cv\.", "", name).replace(".", "_")


def handle_cpp_arg(inp):
    def handle_vector(match):
        return handle_cpp_arg("%svector<%s>" % (match.group(1), match.group(2)))
    def handle_ptr(match):
        return handle_cpp_arg("%sPtr<%s>" % (match.group(1), match.group(2)))
    inp = re.sub("(.*)vector_(.*)", handle_vector, inp)
    inp = re.sub("(.*)Ptr_(.*)", handle_ptr, inp)


    return inp.replace("String", "string")

def get_template_arg(inp):
    inp = inp.replace(' ','').replace('*', '').replace('cv::', '').replace('std::', '')
    def handle_vector(match):
        return get_template_arg("%s" % (match.group(1)))
    def handle_ptr(match):
        return get_template_arg("%s" % (match.group(1)))
    inp = re.sub("vector<(.*)>", handle_vector, inp)
    inp = re.sub("Ptr<(.*)>", handle_ptr, inp)
    ns, cl, n = split_decl_name(inp)
    inp = "::".join(cl+[n])
    # print(inp)
    return inp.replace("String", "string")

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
enums = {}
classes = {}
functions = {}
registered_types = ["int", "Size.*", "Rect.*", "Scalar", "RotatedRect", "Point.*", "explicit", "string", "bool", "uchar", 
                    "Vec.*", "float", "double", "char", "Mat", "size_t", "RNG"]

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
                    # print("More than one base", bases)
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
    def get_cpp_code_header(self):
        if self.ismap:
            return 'mod.map_type<%s>("%s");\n'%(self.cname, self.wname)
        if not self.base:
            return 'mod.add_type<%s>("%s");\n' % (self.cname, self.wname)
        else:
            return 'mod.add_type<%s>("%s", jlcxx::julia_base_type<%s>());\n' % (self.cname, self.wname, self.base.replace('.', '::'))



    def get_cpp_code_body(self):
        if self.ismap:
            return ''
        cpp_code = StringIO()
        for cons in self.constructors:
            cpp_code.write(cons.get_cons_code(self.cname, self.wname))
        #add get/set
        cpp_code.write('\n')
        cpp_code.write(self.get_setters())
        cpp_code.write('\n')
        cpp_code.write(self.get_getters())
        cpp_code.write(';')
        return cpp_code.getvalue()

        # return code for functions and setters and getters if simple class or functions and map type

    def get_prop_func_cpp(self, mode, propname):
        return "jlopencv_" + self.wname + "_"+mode+"_"+propname

    def get_getters(self):
        stra = ""
        for prop in self.props:
            if not self.isalgorithm:
                stra = stra + '\nmod.method("%s", [](const %s &cobj) {return cobj.%s;});' % (self.get_prop_func_cpp("get", prop.name), self.cname, prop.name)
            else:
                stra = stra + '\n.method("%s", [](const cv::Ptr<%s> &cobj) {return cobj->%s;});' % (self.get_prop_func_cpp("get", prop.name), self.cname, prop.name)    
        return stra

    def get_setters(self):
        stra = ""
        for prop in self.props:
            if prop.readonly:
                continue
            if not self.isalgorithm:
                stra = stra + '\nmod.method("%s", [](%s &cobj,const %s &v) {cobj.%s=v;});' % (self.get_prop_func_cpp("set", prop.name), self.cname, prop.tp, prop.name)
            else:
                stra = stra + '\nmod.method("%s", [](%s cv::Ptr<cobj>, const %s &v) {cobj->%s=v;});' % (self.get_prop_func_cpp("set", prop.name), self.cname, prop.tp, prop.name)
        return stra

argumentst = []
class ArgInfo(object):
    """
    Helper class to parse and contain information about function arguments
    """

    def __init__(self, arg_tuple):
        # print(arg_)
        self.tp = handle_cpp_arg(arg_tuple[0]) #C++ Type of argument
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

        self.rettype = decl[4] or handle_cpp_arg(decl[1])
        if self.rettype == "void":
            self.rettype = ""
        self.rettype = handle_cpp_arg(self.rettype)
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
        if not registered_tp_search(get_template_arg(self.rettype)):
            namespaces[namespace].register_types.append(get_template_arg(self.rettype))
        for arg in self.args:
            if not registered_tp_search(get_template_arg(arg.tp)):
                namespaces[namespace].register_types.append(get_template_arg(arg.tp))
        
    
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

        self.jl_arg_str = argstr #Argument string for function
        self.jl_return_str = outstr #Return values string
        self.jl_prototype = "%s(%s) -> %s" % (self.name, argstr, outstr)
        self.jl_noptargs = noptargs
        self.optlist = optlist
        self.jl_arglist = arglist
        self.jl_outlist = outlist

        self.defargs = []

    def get_return(self):
        if len(self.jl_outlist)==0:
            return ";"
        elif len(self.jl_outlist)==1:
            return "return %s;" % self.jl_outlist[0][0]
        return "return make_tuple<%s>(%s);" %(",".join([x[1] if x[1] not in pass_by_val_types else x[1][:-1] for x in self.jl_outlist]), ",".join(["move(%s)" % x[0] for x in self.jl_outlist]))
    def get_argument_cons(self):
        return ",".join(["const " + tp+ "&" for _,tp in self.jl_arglist])

    def get_argument(self, isalgo):
        arglist = self.jl_arglist
        if self.classname!="" and not self.isconstructor and not self.isstatic:
            if isalgo:
                arglist = [("cobj", ("cv::Ptr<%s>" % self.classname))] + arglist
            else:
                arglist = [("cobj", self.classname)] + arglist


        argnamelist = [(tp if tp not in pass_by_val_types else tp[:-1]) +"& "+aname for aname, tp in arglist]
        argstr = ", ".join(argnamelist)
        # argnamelist = [tp+" &"+aname+"="+defv for aname, tp,defv in self.optlist]
        # if len(argnamelist):
        #     if argstr:
        #         argstr = argstr+", "
        #     argstr = argstr +", ".join(argnamelist)

        for aname , _ in self.jl_arglist:
            self.defargs.append(aname)
        for aname , _, _ in self.optlist:
            self.defargs.append(aname)

        self.defargs.append("retval")
        self.c_arg_str = argstr

        return argstr

    def get_def_outtypes(self):
        outstr = ""
        for name, tp in self.jl_outlist:
            if name not in self.defargs:
                outstr = outstr + "%s %s;"%(tp if tp not in pass_by_val_types else tp[:-1], name)
        return outstr

    def get_retval(self, isalgo):
        if self.rettype:
            stra = "auto retval = "
        else:
            stra = ""
        argstr = ", ".join([(x.name if x.tp not in pass_by_val_types else "&" + x.name) for x in self.args if x.tp not in ignored_arg_types])
        if self.classname and not self.isstatic:

            stra = stra + "cobj%s%s(%s); " %("->" if isalgo else ".",self.cname, argstr)
        else:
            stra = stra + "%s(%s);" % (self.cname, argstr)
        return stra

    def get_cons_code(self, cname, wname):
        return 'mod.method("%s", [](%s) {return jlcxx::create<%s>(%s);});' % (wname, self.get_argument(False), cname, " ,".join([x.name for x in self.args]))

    def get_complete_code(self, classname, isalgo=False):
        if self.isconstructor:
            outstr = '.method("%s", [](%s) {return jlcxx::create<%s>(%s);})' % (classname, self.get_argument(isalgo), classname, " ,".join([x.name for x in self.args]))
        else:
            outstr = '.method("%s",  [](%s) {%s %s %s})' % (self.get_wrapper_name(), self.get_argument(isalgo),self.get_def_outtypes(), self.get_retval(isalgo), self.get_return())
        return outstr


class NameSpaceInfo(object):
    def __init__(self, name):
        self.funcs = {}
        self.classes = {} #Dictionary of classname : ClassInfo objects
        self.enums = {}
        self.consts = {}
        self.register_types = []
        self.name = name

def split_decl_name(name):
    chunks = name.split('.')
    namespace = chunks[:-1]
    classes = []
    while namespace and '.'.join(namespace) not in namespaces:
        classes.insert(0, namespace.pop())
    
    ns = '.'.join(namespace)
    if ns not in namespaces and ns:
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
        classname = normalize_class_name('.'.join(classes))
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
        assert(0)

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
    # print(name)
    if wname.endswith("<unnamed>"):
        wname = None
    else:
        enums[name.replace(".", "::")] = wname
    const_decls = decl[3]

    if wname:
        namespace, classes, name2 = split_decl_name(name)
        namespace = '.'.join(namespace)
        wname = '_'.join(classes+[name2])
        # print(wname)
        namespaces[namespace].enums[wname] = (name.replace(".", "::"),wname)
    
    for decl in const_decls:
        name = decl[0]
        add_const(name.replace("const ", "").strip(), decl)



def gen(srcfiles, output_path):
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


    cpp_code = StringIO()
    for name, ns in namespaces.items():
        if name.split('.')[-1] == '':
            continue
        cpp_code.write("JLCXX_MODULE %s_wrap(jlcxx::Module &mod) {\n" % name.split('.')[-1])
        cpp_code.write("using namespace %s;\n" % name.replace(".", "::"))
        for cname, cl in ns.classes.items():
            registered_types.append(get_template_arg(cname))
            cpp_code.write(cl.get_cpp_code_header())

        for e1,e2 in ns.enums.items():
            cpp_code.write('\n    mod.add_bits<{0}>("{1}", jlcxx::julia_type("CppEnum"));'.format(e2[0], e2[1]))

            registered_types.append(get_template_arg(e2[0]))
            registered_types.append(get_template_arg(e2[0]).replace('::', '_')) #whyyy typedef

        ns.register_types= list(set(ns.register_types))
        for tp in ns.register_types:
            if registered_tp_search(tp):
                continue
            registered_types.append(tp)
            cpp_code.write('   mod.add_type<%s>("%s");\n' %(tp, normalize_class_name(tp)))
        for cname, cl in ns.classes.items():
            cpp_code.write(cl.get_cpp_code_body())
            for mname, fs in cl.methods.items():
                for f in fs:
                     cpp_code.write('\n    mod%s;'  % f.get_complete_code(cl.cname, cl.isalgorithm))
        for mname, fs in ns.funcs.items():
            for f in fs:
                cpp_code.write('\n    mod%s;' % f.get_complete_code("", False))

        for name, cname in sorted(ns.consts.items()):
            cpp_code.write('    mod.set_const("%s", %s);\n'%(name, cname))
            compat_name = re.sub(r"([a-z])([A-Z])", r"\1_\2", name).upper()
            if name != compat_name:
                cpp_code.write('    mod.set_const("%s", %s);\n'%(compat_name, cname))

        cpp_code.write('}\n');
        
    print(ns_template)
    print(cpp_code.getvalue())

    # print(set(argumentst))
    # step 2: generate code for the classes and their methods
    classlist = list(classes.items())
    classlist.sort()
    for name, classinfo in classlist:
        code_types.write("//{}\n".format(80*"="))
        code_types.write("// {} ({})\n".format(name, 'Map' if classinfo.ismap else 'Generic'))
        code_types.write("//{}\n".format(80*"="))
        code_types.write(classinfo.gen_code(self))
        if classinfo.ismap:
            code_types.write(gen_template_map_type_cvt.substitute(name=classinfo.name, cname=classinfo.cname))
        else:
            mappable_code = "\n".join([
                                    gen_template_mappable.substitute(cname=classinfo.cname, mappable=mappable)
                                        for mappable in classinfo.mappables])
            code = gen_template_type_decl.substitute(
                name=classinfo.name,
                cname=classinfo.cname if classinfo.issimple else "Ptr<{}>".format(classinfo.cname),
                mappable_code=mappable_code
            )
            code_types.write(code)

    # register classes in the same order as they have been declared.
    # this way, base classes will be registered in jlthon before their derivatives.
    classlist1 = [(classinfo.decl_idx, name, classinfo) for name, classinfo in classlist]
    classlist1.sort()

    for decl_idx, name, classinfo in classlist1:
        if classinfo.ismap:
            continue
        code_type_publish.write(classinfo.gen_def(self))


    # step 3: generate the code for all the global functions
    for ns_name, ns in sorted(namespaces.items()):
        if ns_name.split('.')[0] != 'cv':
            continue
        for name, c in sorted(ns.funcs.items()):

            if func.isconstructor:
                continue
            code = func.gen_code(self)
            code_funcs.write(code)
        gen_namespace(ns_name)
        code_ns_init.write('CVjl_MODULE("{}", {});\n'.format(ns_name[2:], normalize_class_name(ns_name)))

    # step 4: generate the code for enum types
    enumlist = list(enums.values())
    enumlist.sort()
    for name in enumlist:
        gen_enum_reg(name)

    # step 5: generate the code for constants
    # But empty actually and function doens't even exist
    constlist = list(consts.items())
    constlist.sort()
    for name, constinfo in constlist:
        gen_const_reg(constinfo)


srcfiles = hdr_parser.opencv_hdr_list
dstdir = "test/"
if len(sys.argv) > 1:
    dstdir = sys.argv[1]
if len(sys.argv) > 2:
    with open(sys.argv[2], 'r') as f:
        srcfiles = [l.strip() for l in f.readlines()]
gen(srcfiles, dstdir)
