function cpp_to_julia(var::Point_{T}) where {T}
    return (jlopencv_core_get_x(var), jlopencv_core_get_y(var))
end
function cpp_to_julia(var::Rect_{T}) where {T}
    return (jlopencv_core_get_x(var), jlopencv_core_get_y(var), jlopencv_core_get_width(var), jlopencv_core_get_height(var))
end

function cpp_to_julia(var::Size_{T}) where {T}
    return (jlopencv_core_get_width(var), jlopencv_core_get_height(var))
end

function cpp_to_julia(var::Range_) 
    return (jlopencv_core_get_start(var), jlopencv_core_get_end(var))
end
function cpp_to_julia(var::TermCriteria_) 
    return (jlopencv_core_get_type(var), jlopencv_core_get_maxcount(var), jlopencv_core_get_epsilon(var))
end

function cpp_to_julia(var::RotatedRect_) 
    return (cpp_to_julia(jlopencv_core_get_center(var)), cpp_to_julia(jlopencv_core_get_size(var)), jlopencv_core_get_angle(var))
end

function cpp_to_julia(var::Scalar_{T}) where {T}
    return (jlopencv_core_get_zero(var), jlopencv_core_get_one(var), jlopencv_core_get_two(var), jlopencv_core_get_three(var))    
end

function julia_to_cpp(var, expected_type::Type{Point_{T}}) where {T}
    return Point_{T}(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{Point3_{T}}) where {T}
    return Point3_{T}(var[1], var[2], var[3])
end
function julia_to_cpp(var, expected_type::Type{Size_{T}}) where {T}
    return Size_{T}(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{Rect_{T}}) where {T}
    return Rect_{T}(var[1], var[2], var[3], var[4])
end
function julia_to_cpp(var, expected_type::Type{TermCriteria_})
    return TermCriteria_(var[1], var[2], var[3])
end
function julia_to_cpp(var, expected_type::Type{Range_})
    return Range_(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{RotatedRect_})
    return RotatedRect_(julia_to_cpp(var[1], Point_{Float32}), julia_to_cpp(var[2], Size_{Float32}), var[3])
end
function julia_to_cpp(sc::Scalar, expected_type::Type{Scalar_{T}}) where {T}
    if size(sc,1)==1
        return Scalar_(Float64(sc[1]), 0, 0, 0)
    elseif size(sc,1) == 2
        return Scalar_(Float64(sc[1]), Float64(sc[2]), 0, 0)
    elseif size(sc,1) == 3
        return Scalar_(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), 0)
    end
    return Scalar_(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), Float64(sc[4]))
end
