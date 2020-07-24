
mutable struct Point{T}
  x::T
  y::T
end

mutable struct Point3{T}
  x::T
  y::T
  z::T
end


mutable struct Size{T}
  width::T
  height::T
end


mutable struct Rect{T}
  x::T
  y::T
  width::T
  height::T
end

mutable struct RotatedRect
    center::Point{Float32}
    size::Size{Float32}
    angle::Float32
end

mutable struct Range
    start::Int32
    end_::Int32
end

mutable struct TermCriteria
    type::Int32
    maxCount::Int32
    epsilon::Float64
end

mutable struct cvComplex{T}
  re::T
  im::T
end
