const CV_CN_MAX = 512
const CV_CN_SHIFT = 3
const CV_DEPTH_MAX = (1 << CV_CN_SHIFT)

const CV_8U = 0
const CV_8S = 1
const CV_16U = 2
const CV_16S = 3
const CV_32S = 4
const CV_32F = 5
const CV_64F = 6

const CV_MAT_DEPTH_MASK = (CV_DEPTH_MAX - 1)
CV_MAT_DEPTH(flags) = ((flags) & CV_MAT_DEPTH_MASK)

CV_MAKETYPE(depth,cn) = (CV_MAT_DEPTH(depth) + (((cn)-1) << CV_CN_SHIFT))
CV_MAKE_TYPE = CV_MAKETYPE

function cpp_to_julia(mat::CxxMat)
    rets = jlopencv_core_Mat_mutable_data(mat)
    if rets[2] == CV_MAKE_TYPE(CV_8U, rets[3])
        dtype = UInt8
    elseif rets[2]==CV_MAKE_TYPE(CV_8S, rets[3])
        dtype = Int8
    elseif rets[2]==CV_MAKE_TYPE(CV_16U, rets[3])
        dtype = UInt16
    elseif rets[2]==CV_MAKE_TYPE(CV_16S, rets[3])
        dtype = Int16
    elseif rets[2]==CV_MAKE_TYPE(CV_32S, rets[3])
        dtype = Int32
    elseif rets[2]==CV_MAKE_TYPE(CV_32F, rets[3])
        dtype = Float32
    elseif rets[2]==CV_MAKE_TYPE(CV_64F, rets[3])
        dtype = Float64
    else
        error("Bad type returned from OpenCV")
    end
    if rets[3] != 1
        dtype = SVector{rets[3], dtype}
    end
    # steps = [rets[6]/sizeof(dtype), rets[7]/sizeof(dtype)]
    # println(steps[1]/rets[3], steps[2]/rets[3]/rets[4])
    #TODO: Implement views when steps do not result in continous memory
    # Does this ever happen? At
    #    https://docs.opencv.org/4.5.3/d3/d63/classcv_1_1Mat.html#details
    # Mat is described as "dense". However, the CxxMat constructor obviously takes
    # strides, so...?
    arr = Base.unsafe_wrap(Matrix{dtype}, Ptr{dtype}(rets[1].cpp_object), (rets[4], rets[5]))

    #Preserve Mat so that array allocated by C++ isn't deallocated
    return Mat{dtype}(mat, arr)
end

julia_to_cpp(img::CxxMat) = img
function julia_to_cpp(img::StridedArray)
    ok, msg = validate(img)
    if !ok
        img = img[:, :, :]
        ok, msg = validate(img)
        ok || error(msg)
    end

    etype = eltype(eltype(img))
    sz = sizeof(etype)
    steps_a = size_t[step*sz for step in reverse(strides(img))]
    ndims_a = Cint[sz for sz in reverse(size(img))]

    cvtype = etype === UInt8 ? CV_8U :
             etype === UInt16 ? CV_16U :
             etype === Int8 ? CV_8S :
             etype === Int16 ? CV_16S :
             etype === Int32 ? CV_32S :
             etype === Float32 ? CV_32F :
             etype === Float64 ? CV_64F : error("unexpected eltype $(eltype(img))")
    if eltype(img) <: SVector
        cvtype = CV_MAKE_TYPE(cvtype, length(eltype(img)))
    else
        cvtype = CV_MAKE_TYPE(cvtype, 1)
    end

    return CxxMat(2, pointer(ndims_a), cvtype, Ptr{Nothing}(pointer(img)), pointer(steps_a))
end

function julia_to_cpp(var::Array{T, 1}) where {T <: InputArray}
    ret = CxxWrap.StdVector{CxxMat}()
    for x in var
        push!(ret, julia_to_cpp(x))
    end
    return ret
end


function cpp_to_julia(var::CxxWrap.StdVector{T}) where {T <: CxxMat}
    ret = Array{Mat, 1}()
    for x in var
        push!(ret, cpp_to_julia(x))
    end
    return ret
end
