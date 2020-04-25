function cpp_to_julia(var::OpenCVCxx.Point_{T}) where {T}
    return (OpenCVCxx.jlopencv_core_get_x(var), OpenCVCxx.jlopencv_core_get_y(var))
end
function cpp_to_julia(var::OpenCVCxx.Rect_{T}) where {T}
    return (OpenCVCxx.jlopencv_core_get_x(var), OpenCVCxx.jlopencv_core_get_y(var), OpenCVCxx.jlopencv_core_get_width(var), OpenCVCxx.jlopencv_core_get_height(var))
end

function cpp_to_julia(var::OpenCVCxx.Size_{T}) where {T}
    return (OpenCVCxx.jlopencv_core_get_width(var), OpenCVCxx.jlopencv_core_get_height(var))
end

function cpp_to_julia(var::OpenCVCxx.Range_) 
    return (OpenCVCxx.jlopencv_core_get_start(var), OpenCVCxx.jlopencv_core_get_end(var))
end
function cpp_to_julia(var::OpenCVCxx.TermCriteria_) 
    return (OpenCVCxx.jlopencv_core_get_type(var), OpenCVCxx.jlopencv_core_get_maxcount(var), OpenCVCxx.jlopencv_core_get_epsilon(var))
end

function cpp_to_julia(var::OpenCVCxx.RotatedRect_) 
    return (cpp_to_julia(OpenCVCxx.jlopencv_core_get_center(var)), cpp_to_julia(OpenCVCxx.jlopencv_core_get_size(var)), OpenCVCxx.jlopencv_core_get_angle(var))
end

function cpp_to_julia(var::OpenCVCxx.CxxScalar{T}) where {T}
    return (OpenCVCxx.jlopencv_core_get_zero(var), OpenCVCxx.jlopencv_core_get_one(var), OpenCVCxx.jlopencv_core_get_two(var), OpenCVCxx.jlopencv_core_get_three(var))    
end

function julia_to_cpp(var, expected_type::Type{OpenCVCxx.Point_{T}}) where {T}
    return OpenCVCxx.Point_{T}(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{OpenCVCxx.Point3_{T}}) where {T}
    return OpenCVCxx.Point3_{T}(var[1], var[2], var[3])
end
function julia_to_cpp(var, expected_type::Type{OpenCVCxx.Size_{T}}) where {T}
    return OpenCVCxx.Size_{T}(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{OpenCVCxx.Rect_{T}}) where {T}
    return OpenCVCxx.Rect_{T}(var[1], var[2], var[3], var[4])
end
function julia_to_cpp(var, expected_type::Type{OpenCVCxx.TermCriteria_})
    return OpenCVCxx.TermCriteria_(var[1], var[2], var[3])
end
function julia_to_cpp(var, expected_type::Type{OpenCVCxx.Range_})
    return OpenCVCxx.Range_(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{OpenCVCxx.RotatedRect_})
    return OpenCVCxx.RotatedRect_(julia_to_cpp(var[1], OpenCVCxx.Point_{Float32}), julia_to_cpp(var[2], OpenCVCxx.Size_{Float32}), var[3])
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
