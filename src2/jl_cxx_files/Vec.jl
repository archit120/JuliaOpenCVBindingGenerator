struct Vec{T, N, V<:AbstractVector{T}} <: AbstractVector{T}
    cpp_object
    data::V
    cpp_allocated::Bool   # this seems unused

    function Vec{T, N, V}(obj) where {T, N, V}
        # if obj is not cpp_allocated, is setting that to `true` a lie?
        new{T, N, V}(obj.cpp_object, Base.unsafe_wrap(V, Ptr{T}(obj.cpp_object), N), true)
    end

    function Vec{T, N, V}(data_raw::V) where {T, N, V}
        if length(data_raw) != N
            throw(DimensionMismatch("Array is improper Size for Vec declared"))
        end
        # Because strides is set at (1,) below, we have to check it here
        strides(data_raw) == (1,) || error("stride must be 1 (copy input first if needed)")
        new{T, N, V}(nothing, data_raw, false)
    end
end
Vec{T, N}(data::StridedVector) = Vec{T, N, typeof(data)}(data)
Vec{T, N}(data::AbstractVector) = Vec{T, N}(copy(data)::StridedVector)

# why is this needed?
function Base.deepcopy_internal(x::Vec{T,N}, y::IdDict) where {T, N}
    if haskey(y, x)
        return y[x]
    end
    ret = Base.copy(x)
    y[x] = ret
    return ret
end

Base.size(A::Vec{T,N}) = (N,)
Base.axes(A::Vec) = Base.axes(A.data)
Base.IndexStyle(::Type{Vec{T,N}}) where {T, N} = IndexLinear()

Base.strides(A::Vec{T,N}) where {T, N} = (1,)
function Base.copy(A::Vec{T,N}) where {T, N}
    return Vec{T, N}(copy(A.data))
end
Base.pointer(A::Vec) = Base.pointer(A.data)

Base.unsafe_convert(::Type{Ptr{T}}, A::Vec{S, N}) where {T, S, N} = Base.unsafe_convert(Ptr{T}, A.data)

@inline function Base.getindex(A::Vec{T,N}, I::Int) where {T, N}
    @boundscheck checkbounds(A.data, I)
    return A.data[I]
end

@inline function Base.setindex!(A::Vec, x, I::Int)
    @boundscheck checkbounds(A.data, I)
    A.data[I] = x
end
