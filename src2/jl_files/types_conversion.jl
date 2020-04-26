function cpp_to_julia(var::OpenCVCxx.CxxScalar{T}) where {T}
    return (OpenCVCxx.jlopencv_core_get_zero(var), OpenCVCxx.jlopencv_core_get_one(var), OpenCVCxx.jlopencv_core_get_two(var), OpenCVCxx.jlopencv_core_get_three(var))    
end
function julia_to_cpp(sc::Scalar, expected_type::Type{OpenCVCxx.CxxScalar{T}}) where {T}
    if size(sc,1)==1
        return OpenCVCxx.CxxScalar(Float64(sc[1]), 0, 0, 0)
    elseif size(sc,1) == 2
        return OpenCVCxx.CxxScalar(Float64(sc[1]), Float64(sc[2]), 0, 0)
    elseif size(sc,1) == 3
        return OpenCVCxx.CxxScalar(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), 0)
    end
    return OpenCVCxx.CxxScalar(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), Float64(sc[4]))
end
