# JuliaOpenCVBindingGenerator

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

## Trying the bindings

To build:

- from within Julia, add the `CxxWrap` package (https://github.com/JuliaInterop/CxxWrap.jl) with `pkg> add CxxWrap` followed by `using CxxWrap`. Obtain the "prefix path" from `julia> CxxWrap.prefix_path()`; note this for future use.
- clone OpenCV itself from https://github.com/opencv/opencv
- enter the `modules` directory and clone this repository to a folder named `julia`, e.g., `git clone git@github.com:archit120/JuliaOpenCVBindingGenerator.git julia`
- enter the `julia/src2` directory and edit `hdr_parser.py`. Replace the hard-coded paths in the `modpath` and `opencv_hdr_list` to those appropriate for your system
- from the command line, execute `python3 gen3_julia.py`. The script will output files in autogen_* folders. 
- return to the top-level OpenCV source directory. Launch `cmake-gui`, set up the source path, configure the build path. (Some instructions can be found at https://towardsdatascience.com/how-to-install-opencv-and-extra-modules-from-source-using-cmake-and-then-set-it-up-in-your-pycharm-7e6ae25dbac5.) After clicking "Configure", edit the configuration to implement the following modifications:
  + Add `julia` to the `OPENCV_EXTRA_MODULES_PATH` (you can browse to set the path)
  + You will likely need to create a variable called `CMAKE_PREFIX_PATH` (using `Add Entry` in the GUI) and set its value to a `PATH` taken from the `CxxWrap.prefix_path()` command above
  + I had to create a `FindOpenCV.cmake` file by copy/pasting https://cmake-basis.github.io/apidoc/latest/FindOpenCV_8cmake_source.html. I added this to the opencv source directory and then clicked "Add Entry" and created `CMAKE_MODULE_PATH` and set it to point to the directory with `FindOpenCV.cmake`.
  + I edited the `OpenCV_DIR` entry to point to the top-level OpenCV source directory
- Click "Configure" again. Address any errors that you encounter.
  
  

To run a demonstration:
- ??
