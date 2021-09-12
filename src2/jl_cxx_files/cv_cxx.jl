using StaticArrays
using FixedPointNumbers
using ColorTypes

include("typestructs.jl")
include("Vec.jl")
const rawtypes = Union{UInt8, N0f8, Int8, UInt16, N0f16, Int16, Int32, Float32, Float64}
const dtypes = Union{dtypes, SVector{N, <:rawtypes} where N}
size_t = UInt64

using CxxWrap
@wrapmodule(joinpath("lib","libcv2_jl"), :cv_wrap)
function __init__()
    @initcxx

    if jlopencv_core_get_sizet()==4
        size_t = UInt32
    end
end
const Scalar = Union{Tuple{}, Tuple{Number}, Tuple{Number, Number}, Tuple{Number, Number, Number}, NTuple{4, Number}}

include("Mat.jl")

const InputArray = Union{AbstractArray{<:dtypes}, CxxMat}

include("mat_conversion.jl")
include("types_conversion.jl")

# Fallbacks
cpp_to_julia(var) = var
julia_to_cpp(var) = var

cpp_to_julia(var::Tuple) = map(cpp_to_julia, var)

include("cv_cxx_wrap.jl")

include("cv_manual_wrap.jl")
