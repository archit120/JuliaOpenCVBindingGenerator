function cpp_to_julia(var::wrapper_internal.Point_{T}) where {T}
    return (wrapper_internal.jlopencv_core_get_x(var), wrapper_internal.jlopencv_core_get_y(var))
end
function cpp_to_julia(var::wrapper_internal.Rect_{T}) where {T}
    return (wrapper_internal.jlopencv_core_get_x(var), wrapper_internal.jlopencv_core_get_y(var), wrapper_internal.jlopencv_core_get_width(var), wrapper_internal.jlopencv_core_get_height(var))
end

function cpp_to_julia(var::wrapper_internal.Size_{T}) where {T}
    return (wrapper_internal.jlopencv_core_get_width(var), wrapper_internal.jlopencv_core_get_height(var))
end

function cpp_to_julia(var::wrapper_internal.Range_) 
    return (wrapper_internal.jlopencv_core_get_start(var), wrapper_internal.jlopencv_core_get_end(var))
end
function cpp_to_julia(var::wrapper_internal.TermCriteria_) 
    return (wrapper_internal.jlopencv_core_get_type(var), wrapper_internal.jlopencv_core_get_maxcount(var), wrapper_internal.jlopencv_core_get_epsilon(var))
end

function cpp_to_julia(var::wrapper_internal.RotatedRect_) 
    return (cpp_to_julia(wrapper_internal.jlopencv_core_get_center(var)), cpp_to_julia(wrapper_internal.jlopencv_core_get_size(var)), wrapper_internal.jlopencv_core_get_angle(var))
end

function cpp_to_julia(var::wrapper_internal.Scalar_{T}) where {T}
    return (wrapper_internal.jlopencv_core_get_zero(var), wrapper_internal.jlopencv_core_get_one(var), wrapper_internal.jlopencv_core_get_two(var), wrapper_internal.jlopencv_core_get_three(var))    
end

function julia_to_cpp(var, expected_type::Type{wrapper_internal.Point_{T}}) where {T}
    return wrapper_internal.Point_{T}(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{wrapper_internal.Point3_{T}}) where {T}
    return wrapper_internal.Point3_{T}(var[1], var[2], var[3])
end
function julia_to_cpp(var, expected_type::Type{wrapper_internal.Size_{T}}) where {T}
    return wrapper_internal.Size_{T}(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{wrapper_internal.Rect_{T}}) where {T}
    return wrapper_internal.Rect_{T}(var[1], var[2], var[3], var[4])
end
function julia_to_cpp(var, expected_type::Type{wrapper_internal.TermCriteria_})
    return wrapper_internal.TermCriteria_(var[1], var[2], var[3])
end
function julia_to_cpp(var, expected_type::Type{wrapper_internal.Range_})
    return wrapper_internal.Range_(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{wrapper_internal.RotatedRect_})
    return wrapper_internal.RotatedRect_(julia_to_cpp(var[1], wrapper_internal.Point_{Float32}), julia_to_cpp(var[2], wrapper_internal.Size_{Float32}), var[3])
end
function julia_to_cpp(sc::Scalar, expected_type::Type{wrapper_internal.Scalar_{T}}) where {T}
    if size(sc,1)==1
        return wrapper_internal.Scalar_(Float64(sc[1]), 0, 0, 0)
    elseif size(sc,1) == 2
        return wrapper_internal.Scalar_(Float64(sc[1]), Float64(sc[2]), 0, 0)
    elseif size(sc,1) == 3
        return wrapper_internal.Scalar_(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), 0)
    end
    return wrapper_internal.Scalar_(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), Float64(sc[4]))
end
