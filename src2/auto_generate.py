from hdr_parser import *
import re

def normalize_class_name(name):
    return re.sub(r"^cv\.", "", name).replace(".", "_")

def normalize_const_name(name):
    return re.sub(r"^const cv\.", "", name).replace(".", "_")

parser = CppHeaderParser(generate_umat_decls=True, generate_gpumat_decls=True)
decls = []
for hname in opencv_hdr_list:
    decls += parser.parse(hname)

modlist = []
classlist = []

def print_arg_function(arg):
    print("\tTYPE:",arg[0], " NAME: ", normalize_class_name(arg[1]), " DEFAULT VALUE: ", arg[2], " MODS: ", arg[3])
    modlist.extend(arg[3])

def print_arg_enum(arg):
    print("\tNAME:",normalize_const_name(arg[0]), " POS: ", arg[1], " DEFAULT VALUE: ", arg[2], " MODS: ", arg[3])
    modlist.extend(arg[3])

for decl in decls:
    c1 = decl[0].split(' ')
    s = ""
    if len(c1)!=1 and c1[0].startswith("enum"):
        print("TYPE: ", c1[0], " NAME: ", normalize_class_name(c1[1]))
        if decl[1]!='':
            assert(0)
            # print(decl[1])
        if len(decl[2]) != 0:
            assert(0)
        for var in decl[3]:
            print_arg_enum(var)
    elif len(c1)==1:
        parts = c1[0].split('.')
        if 'mix' in c1[0]:
            print(decl)
            # input()
        print("TYPE: function NAME: ", normalize_class_name(c1[0]), "RETURN TYPE: ", decl[1], "modlist = ",decl[2])
        modlist.extend(decl[2])
        for var in decl[3]:
            print_arg_function(var)

        if decl[4]!=decl[1]:
            print("Modifited Return: ", decl[4])
            # input()
            # assert(0)
    elif len(c1)!=1 and c1[0].startswith("class"):
        print("TYPE: ", c1[0], " NAME: ", normalize_class_name(c1[1]), "modlist = ", decl[2])
        classlist.append(normalize_class_name(c1[1]))
        modlist.extend(decl[2])
        if decl[1]!='':
            print(decl[1])
        for var in decl[3]:
            print_arg_enum(var)
    else:
        print(decl)
    print("")
# decl = decls[0]

print(list(set(modlist)))

# print(decl[0])
# print(decl[1])
# print(decl[2])
# print(decl[3])
# parser.print_decls(decls)
print(len(decls))
print("namespaces:", " ".join(sorted(parser.namespaces)))
