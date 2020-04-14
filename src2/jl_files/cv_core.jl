module OpenCV


const dtypes = Union{UInt8, Int8, UInt16, Int16, Int32, Float32, Float64}
size_t = UInt64

using CxxWrap
module wrapper_internal
using CxxWrap

import ..size_t
@wrapmodule(joinpath("lib","libcv2_jl"), :cv_core)
function __init__()
    @initcxx

    if jlopencv_core_get_sizet()==4
        size_t = UInt32
    end
end

end


include("Mat.jl")

const Image = Union{Mat{A} where {A}, SubArray{T2, N, Mat{A}, T} where {N, A, T, T2 <: dtypes}, wrapper_internal.Mat_}
const Scalar = Union{Tuple{Number}, Tuple{Number, Number}, Tuple{Number, Number, Number}, NTuple{4, Number}}
const Point{T} = Tuple{T, T}
const Size{T} = Tuple{T, T}
const Rect{T} = Tuple{T, T}
const Point3{T} = Tuple{T, T, T}


include("mat_conversion.jl")
include("types_conversion.jl")


function cpp_to_julia(var)
    return var
end
function julia_to_cpp(var, expected_type)
    return var
end

function julia_to_cpp(var::Array{T, 1}, expected_type) where {T}
    ret = CxxWrap.StdVector{T}()
    for x in var
        push!(ret, julia_to_cpp(x, expected_type)) # When converting an array keep expected type as final type. 
    end
    return ret
end

function cpp_to_julia(var::CxxWrap.StdVector{T}) where {T}
    ret = CxxWrap.StdVector{T}()
    for x in var
        push!(ret, cpp_to_julia(x))
    end
    return ret
end

include("cv_wrap.jl")

end