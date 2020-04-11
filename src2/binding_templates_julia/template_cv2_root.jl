module cv2

using CxxWrap
@wrapmodule(joinpath("${libpath}","libcv2_jlcxx"), :cv2_core)
@wrapmodule(joinpath("${libpath}","libcv2_jlcxx"), :${modname}_wrap)

const dtypes = Union{UInt8, Int8, UInt16, Int16, Int32, Float32, Float64}
size_t = UInt64

function __init__()
    @initcxx

    if get_sizet()==4
        size_t = UInt32
    end
end
import("OpenCVImage.jl")

const Image = Union{OpenCVImage{A} where {A}, SubArray{T2, N, OpenCVImage{A}, T} where {N, A, T, T2 <: dtypes}}
const Scalar = Union{Tuple{Number}, Tuple{Number, Number}, Tuple{Number, Number, Number}, NTuple{4, Number}}


import("mat_conversion.jl")
import("types_conversion.jl")


function cpp_to_julia(var)
    return var
end
function julia_to_cpp(var, expected_type)
    return var
end

${code}

${submodule_imports}

end