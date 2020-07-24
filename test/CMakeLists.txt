project(cv2_jl)

cmake_minimum_required(VERSION 2.8.12)
set(CMAKE_MACOSX_RPATH 1)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
include(${CMAKE_CURRENT_LIST_DIR}/FindJulia.cmake)

execute_process(
    COMMAND "${Julia_EXECUTABLE}" --startup-file=no -e "using CxxWrap; print(CxxWrap.CxxWrapCore.prefix_path())"
    OUTPUT_VARIABLE JlCxx_DIR
)


find_package(JlCxx)
get_target_property(JlCxx_location JlCxx::cxxwrap_julia LOCATION)
get_filename_component(JlCxx_location ${JlCxx_location} DIRECTORY)
set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib;${JlCxx_location}")

message(STATUS "Found JlCxx at ${JlCxx_location}")
add_library(cv2_jl SHARED cv_core.cpp)

FIND_PACKAGE( OpenCV REQUIRED )
message(STATUS "${OpenCV_VERSION}")

target_link_libraries(cv2_jl JlCxx::cxxwrap_julia)
target_link_libraries(cv2_jl JlCxx::cxxwrap_julia_stl)
INCLUDE_DIRECTORIES( ${OpenCV_INCLUDE_DIRS} )
TARGET_LINK_LIBRARIES (cv2_jl ${OpenCV_LIBS})        
#SET(CMAKE_CXX_STANDRD 11)
install(TARGETS
  cv2_jl
LIBRARY DESTINATION lib
ARCHIVE DESTINATION lib
RUNTIME DESTINATION lib)
