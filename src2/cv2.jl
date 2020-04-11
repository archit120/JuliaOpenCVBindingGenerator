
include("OpenCVImages.jl")

module cv2
    using CxxWrap
    @wrapmodule(joinpath("lib","libcv2_jl"), :cv2)

    function __init__()
        @initcxx
    end
    import Main.OpenCVImages


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
 

    struct KeyPoint
        pt::Tuple{Float32,Float32}
        size::Float32
        angle::Float32
        response::Float32
        octave::Integer
        class_id::Integer
    end

    const Image = Union{OpenCVImages.OpenCVImage{A} where {A}, SubArray{UInt8, N, OpenCVImages.OpenCVImage{A}, T} where {N, A, T}}

    function cpp_to_julia(v)
        if typeof(v) <: cv2.Mat
            return cpp_mat_to_jl_arr(v)
        elseif typeof(v) <: cv2.KeyPoint_
            return cpp_KeyPoint_to_jl_KeyPoint(v)
        elseif typeof(v) <: cv2.Point2f
            return cpp_Point2f_to_jl_tuple(v)
        elseif typeof(v) <: cv2.Size2i
            return cpp_Size2i_to_jl_tuple(v)
        elseif typeof(v) <: CxxWrap.StdLib.StdVector
            arr = Array{typeof(cpp_to_julia(v[1])), 1}()
            for it in v
                push!(arr, cpp_to_julia(it))
            end
            return arr
        end

        return v
    end

    function julia_to_cpp(v, expected_type)
        if expected_type <: cv2.Scalar_
            return jl_scalar_to_cpp_scalar(v)
        elseif expected_type <: cv2.Mat
            return jl_arr_to_cpp_mat(v)
        elseif expected_type <: cv2.Size2i
            return jl_size_to_cpp_size(v)
        elseif expected_type <: cv2.Point2f
            return jl_pt_to_cpp_pt(v)
        end
        return v
    end


    const Scalar = Union{Tuple{Real}, Tuple{Real, Real}, Tuple{Real, Real, Real}, NTuple{4, Real}}
    const Size = Tuple{Integer, Integer}
    const Rect = NTuple{4, Integer}

    const size_t = UInt64 #TODO: Get size_t from CxxWrap maybe

    const CASCADE_SCALE_IMAGE = Integer(2)
    const COLOR_BGR2GRAY = Integer(6)

    function cpp_mat_to_jl_arr(mat)
        arr = cv2.Mat_mutable_data(mat)
        #TODO: Implement types
        #Preserve Mat so that array allocated by C++ isn't deallocated
        return OpenCVImages.OpenCVImage{UInt8}(mat, arr)
    end

    function jl_arr_to_cpp_mat(img::Image)
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

            return cv2.Mat(2, pointer(ndims_a), CV_MAKE_TYPE(CV_8U, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        else
            print("Bad steps")
            print(steps)
        end
    end

    function jl_pt_to_cpp_pt(pt::Tuple{Real, Real})
        return cv2.Point2f(Float32(pt[1]), Float32(pt[2]))
    end

    function jl_scalar_to_cpp_scalar(sc::Scalar)
        if size(sc,1)==1
            return cv2.Scalar_(Float64(sc[1]), 0, 0, 0)
        elseif size(sc,1) == 2
            return cv2.Scalar_(Float64(sc[1]), Float64(sc[2]), 0, 0)
        elseif size(sc,1) == 3
            return cv2.Scalar_(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), 0)
        end
        return cv2.Scalar_(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), Float64(sc[4]))
    end

    function jl_size_to_cpp_size(sx::Size)
        return cv2.Size2i(sx[1], sx[2])
    end

    function cpp_Point2f_to_jl_tuple(pt)
        return (cv2.Point2f_get_x(pt), cv2.Point2f_get_y(pt))
    end

    function cpp_KeyPoint_to_jl_KeyPoint(kp)
        kpr = KeyPoint(cpp_to_julia(cv2.KeyPoint_get_pt(kp)), cv2.KeyPoint_get_size(kp), 
                        cv2.KeyPoint_get_angle(kp), cv2.KeyPoint_get_response(kp), 
                        cv2.KeyPoint_get_octave(kp), cv2.KeyPoint_get_class_id(kp))
        return kpr
    end

    function cpp_Size2i_to_jl_tuple(sz)
        return (cv2.Size2i_get_width(sz), cv2.Size2i_get_height(sz))
    end

    function cpp_Rect2i_to_jl_tuple(pt)
        return (cv2.Rect2i_get_x(pt), cv2.Rect2i_get_y(pt), cv2.Rect2i_get_width(pt), cv2.Rect2i_get_height(pt))
    end
    function imshow(winname::String, img::Image)
        Mat_img = cv2.julia_to_cpp(img, Mat)
        cv2.imshow(winname, Mat_img)
    end
    function imread(filename::String, flags::Integer)
        Mat_tmp = cv2.imread_(filename, flags)
        jl_Image = cpp_to_julia(Mat_tmp)
        return jl_Image
    end
    function simpleBlobDetector_detect(algo, img::Image)
        ret = cv2.simpleBlobDetector_detect(algo, julia_to_cpp(img, Mat))
        return cpp_to_julia(ret)
    end

    function rectangle(img::Image, pt1::Tuple{Integer, Integer}, pt2::Tuple{Integer, Integer}, color::Scalar; thickness::Integer=1, lineType::Integer=8, shift::Integer=0)
        cv2.rectangle(julia_to_cpp(img, Mat), julia_to_cpp(pt1, Point2f), julia_to_cpp(pt2, Point2f), julia_to_cpp(color, Scalar_), thickness, lineType, shift)
    end

    function VideoCapture_read(arg1)
        ret1 = cv2.read(arg1)
        return (ret1[1], cpp_to_julia(ret1[2]))
    end

    function cvtColor(src::Image, code::Integer)
        return cpp_to_julia(cv2.cvtColor(julia_to_cpp(src, Mat), code))
    end
    function equalizeHist(src::Image)
        return cpp_to_julia(cv2.equalizeHist(julia_to_cpp(src, Mat)))
    end

    function CascadeClassifier_detectMultiScale(inp1, image::Image;
                                             scaleFactor::Float64 = 1.1,
                                             minNeighbors::Integer = 3, 
                                             flags::Integer = 0,
                                             minSize::Size = (0,0),
                                             maxSize::Size = (0,0))
        ret = cv2.detectMultiScale(inp1, julia_to_cpp(image, Mat), scaleFactor, minNeighbors, flags, julia_to_cpp(minSize, Size2i), julia_to_cpp(maxSize, Size2i))
        return cpp_to_julia(ret)
    end

end