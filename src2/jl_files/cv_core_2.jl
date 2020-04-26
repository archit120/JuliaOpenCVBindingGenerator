module OpenCV
# using StaticArrays

include("typestructs.jl")
include("Vec.jl")
const dtypes = Union{UInt8, Int8, UInt16, Int16, Int32, Float32, Float64}
size_t = UInt64

using CxxWrap
@wrapmodule(joinpath("lib","libcv2_jl"), :cv_wrap)
function __init__()
    @initcxx
end


end