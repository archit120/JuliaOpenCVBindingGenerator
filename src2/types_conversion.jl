function cpp_to_julia(var::Point{T}) where {T}
    return (get_x(var), get_y(var.y))
end
function cpp_to_julia(var::Rect{T}) where {T}
    return (get_x(var), get_y(var), get_width(var), get_height(var))
end

function cpp_to_julia(var::Size{T}) where {T}
    return (get_width(var), get_height(var))
end

function cpp_to_julia(var::Range) 
    return (get_start(var), get_end(var))
end
function cpp_to_julia(var::TermCriteria) 
    return (get_type(var), get_maxcount(var), get_epsilon(var))
end

function cpp_to_julia(var::RotatedRect) 
    return (cpp_to_julia(get_center(var)), cpp_to_julia(get_size(var)), get_angle(var))
end

function cpp_to_julia(var::cvScalar)
    return (get_zero(var), get_one(var), get_two(var), get_three(var))    
end

function julia_to_cpp(var, expected_type::Type{Point{T}}) where {T}
    return Point{T}(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{Point3{T}}) where {T}
    return Point3{T}(var[1], var[2], var[3])
end
function julia_to_cpp(var, expected_type::Type{Size{T}}) where {T}
    return Size{T}(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{Rect{T}}) where {T}
    return Rect{T}(var[1], var[2], var[3], var[4])
end
function julia_to_cpp(var, expected_type::Type{TermCriteria})
    return TermCriteria(var[1], var[2], var[3])
end
function julia_to_cpp(var, expected_type::Type{Range})
    return Range(var[1], var[2])
end
function julia_to_cpp(var, expected_type::Type{RotatedRect})
    return RotatedRect(julia_to_cpp(var[1], Point{Float32}), julia_to_cpp(var[2], Size{Float32}), var[3])
end
function julia_to_cpp(sc::Scalar, expected_type::Type{cvScalar})
    if size(sc,1)==1
        return cvScalar(Float64(sc[1]), 0, 0, 0)
    elseif size(sc,1) == 2
        return cvScalar(Float64(sc[1]), Float64(sc[2]), 0, 0)
    elseif size(sc,1) == 3
        return cvScalar(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), 0)
    end
    return cvScalar(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), Float64(sc[4]))
end
