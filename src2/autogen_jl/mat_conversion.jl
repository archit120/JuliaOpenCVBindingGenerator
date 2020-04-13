
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

function cpp_to_julia(mat::Mat_)
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
        error("BAD type")
    end
    steps = [rets[6]/sizeof(dtype), rets[7]/sizeof(dtype)]
    # println(steps[1]/rets[3], steps[2]/rets[3]/rets[4])
    #TODO: Implement views when steps do not result in continous memory
    arr = Base.unsafe_wrap(Array{dtype, 3}, Ptr{dtype}(rets[1].cpp_object), (rets[3], rets[4], rets[5]))

    #Preserve Mat so that array allocated by C++ isn't deallocated
    return Mat{dtype}(mat, arr)
end

function jl_arr_to_cpp_mat(img::Image, expected_type::Type{Mat_})
    # TODO: UserTypes do not work with StridedArray. Find something else.
    steps = strides(img)
    if steps[1] <= steps[2] <= steps[3] && steps[1]==1
        steps_a = Array{size_t, 1}()
        ndims_a = Array{Int32, 1}()
        sz = sizeof(eltype(img))
        push!(steps_a, UInt64(steps[3]*sz))
        push!(steps_a, UInt64(steps[2]*sz))
        push!(steps_a, UInt64(steps[1]*sz))

        push!(ndims_a, Int32(size(img)[3]))
        push!(ndims_a, Int32(size(img)[2]))
        if eltype(img) == UInt8
            return Mat_(2, pointer(ndims_a), CV_MAKE_TYPE(CV_8U, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == UInt16
            return Mat_(2, pointer(ndims_a), CV_MAKE_TYPE(CV_16U, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == Int8
            return Mat_(2, pointer(ndims_a), CV_MAKE_TYPE(CV_8S, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == Int16
            return Mat_(2, pointer(ndims_a), CV_MAKE_TYPE(CV_16S, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == Int32
            return Mat_(2, pointer(ndims_a), CV_MAKE_TYPE(CV_32S, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == Float32
            return Mat_(2, pointer(ndims_a), CV_MAKE_TYPE(CV_32F, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == Float64
            return Mat_(2, pointer(ndims_a), CV_MAKE_TYPE(CV_64F, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        end

        error("Bad Type")
        
    else
        error("Bad steps")
    end
end