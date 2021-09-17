# JuliaOpenCVBindingGenerator

This repository has been archived. All work done here has been integrated into https://github.com/opencv/opencv_contrib/tree/master/modules/julia and https://github.com/archit120/OpenCV.jl instead.

---

This WIP repo has the code for an OpenCV module that automatically generates binding information. 

The package folder contains a dummy Julia package. 

The src2 folder containts all the auto-generation related files. The structure inside src2 is 
 - autogen_{cpp, jl}: auto-generated C++/Julia files
 - binding_templates_{cpp, jl}: templates based on which auto-generated code is created.
 - {cpp, jl}_files: manually written files for special cases
 - gen2.py: Original python gen2.py from OpenCV's python binding generator
 - gen3_{cpp, jl}.py: Modified version for generating appropriate language auto-generated code
 - hdr_parser.py: Parses the header files from OpenCV
 - CMakeLists.txt: WIP sample cmake

The work on C++ side of auto-generation is mostly completed. Checks for some specific flags like `PHANTOM` and `MAPPABLE` remain but the generated files compile. Julia side more work is left as of right now. 

### TODO
 - Ensure correct argument conversion (Vectors, Mats, ...) - partially done
 - Julia side code
 - Tests


### DONE
 - Constants and enums
 - Most functions
 - Most classes and classmethods
 - Getters and Setters
 - Data retrieval form hdr_parser
 - Support Algorithm inherited classes
 - Generate final namespace C++ code
 - Handle types.hpp


To run, clone this repository into a folder named julia inside the OpenCV's source modules folder. Then modify hdr_parser.py with appropriate header file names and use

```python3 gen3_{lang}.py```

The script will output files in autogen_* folders. 

