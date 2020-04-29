module OpenCVCxx
# using StaticArrays

include("typestructs.jl")
include("Vec.jl")
const dtypes = Union{UInt8, Int8, UInt16, Int16, Int32, Float32, Float64}
size_t = UInt64

using CxxWrap
@wrapmodule(joinpath("lib","libcv2_jl"), :cv_wrap)
function __init__()
    @initcxx

    if jlopencv_core_get_sizet()==4
        size_t = UInt32
    end
end
const Scalar = Union{Tuple{Number}, Tuple{Number, Number}, Tuple{Number, Number, Number}, NTuple{4, Number}}

include("Mat.jl")

const Image = Union{Mat{A} where {A}, SubArray{T2, N, Mat{A}, T} where {N, A, T, T2 <: dtypes}, CxxMat}

include("mat_conversion.jl")
include("types_conversion.jl")

function cpp_to_julia(var)
    return var
end
function julia_to_cpp(var)
    return var
end


function julia_to_cpp(var::Array{T, 1}) where {T}
    ret = CxxWrap.StdVector{T}()
    for x in var
        push!(ret, julia_to_cpp(x)) # When converting an array keep expected type as final type. 
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


function cpp_to_julia(var::Tuple)
    ret_arr = Array{Any, 1}()
    for it in var
        push!(ret_arr, cpp_to_julia(it))
    end
    return tuple(ret_arr...)
end

include("cv_cxx_wrap.jl")

end