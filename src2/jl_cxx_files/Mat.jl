struct Mat{T, N, A<:AbstractArray{T,N}} <: DenseArray{T, N}
    mat::CxxMat
    data::A

    function Mat{T, N, A}(mat, data_raw::A) where {T, N, A}
        ok, msg = validate(data_raw)
        ok || error(msg)
        new{T, N, A}(mat, data_raw)
    end

    function Mat{T, N, A}(data_raw::A) where {T, N, A}
        ok, msg = validate(data_raw)
        ok || error(msg)
        new{T, N, A}(nothing, data_raw)
    end
end
Mat{T, N}(mat, data::StridedArray{T, N}) = Mat{T, N, typeof(data)}(mat, data)
Mat{T, N}(data::StridedArray{T, N}) = Mat{T, N, typeof(data)}(data)
Mat{T, N}(mat, data::AbstractArray{T, N}) = Mat{T, N}(mat, copy(data)::StridedArray)
Mat{T, N}(data::AbstractArray{T, N}) = Mat{T, N}(copy(data)::StridedArray)
Mat{T}(mat, data::AbstractArray{T}) = Mat{T, ndims(data)}(mat, data)
Mat{T}(data::AbstractArray{T}) = Mat{T, ndims(data)}(data)
Mat(data) = Mat{eltype(data)}(data)
Mat(data::AbstractArray{Color{T, N}}) where {T, N} = Mat(reinterpret(SVector{N, T}, data))
Mat(data::AbstractArray{ColorAlpha{C, T, N}}) where {C, T, N} = Mat(reinterpret(SVector{N, T}, data))

function validate(data)
    s = strides(data)
    s[1] == 1 || return false, "first stride must be 1"
    sz = size(data)
    for i = 2:length(s)
        s[i] == s[i-1] * sz[i-1] || return false, "array is not dense"
    end
    # eltype(eltype(data)) lets us support SVector{N, T<:dtype},
    # and eltype(eltype(UInt8)) === UInt8 so it's safe even for dtypes
    eltype(eltype(data)) <: dtypes || return false, "unsupported element type $(eltype(eltype(data)))"
    return true, ""
end

# why is this needed?
function Base.deepcopy_internal(x::Mat{T}, y::IdDict) where {T}
    if haskey(y, x)
        return y[x]
    end
    ret = Base.copy(x)
    y[x] = ret
    return ret
end

Base.size(A::Mat) = size(A.data)
Base.axes(A::Mat) = axes(A.data)
Base.IndexStyle(::Type{Mat{T, N, A}}) where {T, N, A} = IndexStyle(A)

Base.strides(A::Mat{T}) where {T} = strides(A.data)
Base.copy(A::Mat{T}) where {T} = Mat(copy(A.data_raw))
Base.pointer(A::Mat) = Base.pointer(A.data)

Base.unsafe_convert(::Type{Ptr{T}}, A::Mat{S}) where {T, S} = Base.unsafe_convert(Ptr{T}, A.data)

@inline function Base.getindex(A::Mat{T}, I::Vararg{Int,3}) where {T}
    @boundscheck checkbounds(A.data, I...)
    @inbounds ret = A.data[I...]
    ret
end

@inline function Base.setindex!(A::Mat, x, I::Vararg{Int,3})
    @boundscheck checkbounds(A.data, I...)
    A.data[I...] = x
end
