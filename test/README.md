# Auto-Generated Binding Test
A simple example of Julia and OpenCV binding using CxxWrap.jl. The files in this folder have been mostly auto-generated with some manual bug fixes. 


There is one test files for demonstration. 
 - webcam_test.jl - Loads default webcam interface and converts images to grayscale. Then does histogram equalization on the image and displays original and equalized images.


Run as
```
julia webcam_test.jl
```

To compile follow instructions at https://github.com/JuliaInterop/CxxWrap.jl and https://github.com/JuliaInterop/libcxxwrap-julia

This code has been tested against commits (but it should work on the latest master) https://github.com/JuliaInterop/CxxWrap.jl/commit/82c776ca68d82f3887b984be4c1e1bc6dfd7ce6a and https://github.com/JuliaInterop/libcxxwrap-julia/commit/73149f8f1445d83dcb6ee2995e18b8f98f0c94e9 respectively on Julia 1.4.1

The path for ```CMAKE_PREFIX_PATH``` will be the path of the build directory for libcxxwrap-julia

```
cmake -DCMAKE_PREFIX_PATH=/path/to/libcxxwrap-julia-build .
cmake --build .
```

## Current Support

Theoretically, the wrapper files in this directory should support most-all of OpenCV functionality defined in the sample header list in `hdr_parser.py` Practically, I expect some functions to be broken as this has not been tested exhaustively at all. However, some algorithm classes and basic image loading, displaying, and creation of views has been tested to work. There has to be more work done on shifting this to a package rather than a script and setting up appropriate binary builder packages in addition to all the testing required. 