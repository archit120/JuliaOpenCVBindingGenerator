
   const SortFlags = Int32 

   const CovarFlags = Int32 

   const KmeansFlags = Int32 

   const ReduceTypes = Int32 

   const RotateFlags = Int32 

   const PCA_Flags = Int32 

   const SVD_Flags = Int32 

   const Formatter_FormatType = Int32 

   const Param = Int32 

   const AccessFlag = Int32 

   const _InputArray_KindFlag = Int32 

   const _OutputArray_DepthMask = Int32 

   const UMatUsageFlags = Int32 

   const UMatData_MemoryFlag = Int32 

   const TermCriteria_Type = Int32 

   const SpecialFilter = Int32 

   const MorphTypes = Int32 

   const MorphShapes = Int32 

   const InterpolationFlags = Int32 

   const WarpPolarMode = Int32 

   const InterpolationMasks = Int32 

   const DistanceTypes = Int32 

   const DistanceTransformMasks = Int32 

   const ThresholdTypes = Int32 

   const AdaptiveThresholdTypes = Int32 

   const GrabCutClasses = Int32 

   const GrabCutModes = Int32 

   const DistanceTransformLabelTypes = Int32 

   const FloodFillFlags = Int32 

   const ConnectedComponentsTypes = Int32 

   const ConnectedComponentsAlgorithmsTypes = Int32 

   const RetrievalModes = Int32 

   const ContourApproximationModes = Int32 

   const ShapeMatchModes = Int32 

   const HoughModes = Int32 

   const LineSegmentDetectorModes = Int32 

   const HistCompMethods = Int32 

   const ColorConversionCodes = Int32 

   const RectanglesIntersectTypes = Int32 

   const LineTypes = Int32 

   const HersheyFonts = Int32 

   const MarkerTypes = Int32 

   const TemplateMatchModes = Int32 

   const ColormapTypes = Int32 

   const SolvePnPMethod = Int32 

   const HandEyeCalibrationMethod = Int32 

   const CirclesGridFinderParameters_GridType = Int32 

   const UndistortTypes = Int32 

   const ORB_ScoreType = Int32 

   const FastFeatureDetector_DetectorType = Int32 

   const AgastFeatureDetector_DetectorType = Int32 

   const KAZE_DiffusivityType = Int32 

   const AKAZE_DescriptorType = Int32 

   const DescriptorMatcher_MatcherType = Int32 

   const DrawMatchesFlags = Int32 

   const HOGDescriptor_HistogramNormType = Int32 

   const HOGDescriptor_DescriptorStorageFormat = Int32 

   const ImreadModes = Int32 

   const ImwriteFlags = Int32 

   const ImwriteEXRTypeFlags = Int32 

   const ImwritePNGFlags = Int32 

   const ImwritePAMFlags = Int32 

   const VideoCaptureAPIs = Int32 

   const VideoCaptureProperties = Int32 

   const VideoWriterProperties = Int32 

   const WindowFlags = Int32 

   const WindowPropertyFlags = Int32 

   const MouseEventTypes = Int32 

   const MouseEventFlags = Int32 

   const QtFontWeights = Int32 

   const QtFontStyles = Int32 

   const QtButtonTypes = Int32 
function Base.getproperty(m::Algorithm, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Algorithm, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function clear(cobj::Algorithm)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_clear(julia_to_cpp(cobj)))
end

function write(cobj::Algorithm, fs::cv_Ptr{FileStorage}, name::String)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
write(cobj::Algorithm, fs::cv_Ptr{FileStorage}; name::String = (String())) = write(cobj, fs, name)

function read(cobj::Algorithm, fn::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_read(julia_to_cpp(cobj),julia_to_cpp(fn)))
end

function empty(cobj::Algorithm)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_empty(julia_to_cpp(cobj)))
end

function save(cobj::Algorithm, filename::String)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_save(julia_to_cpp(cobj),julia_to_cpp(filename)))
end

function getDefaultName(cobj::Algorithm)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::KeyPoint, s::Symbol)
    if s==:pt
        return cpp_to_julia(jlopencv_KeyPoint_get_pt(m))
    end
    if s==:size
        return cpp_to_julia(jlopencv_KeyPoint_get_size(m))
    end
    if s==:angle
        return cpp_to_julia(jlopencv_KeyPoint_get_angle(m))
    end
    if s==:response
        return cpp_to_julia(jlopencv_KeyPoint_get_response(m))
    end
    if s==:octave
        return cpp_to_julia(jlopencv_KeyPoint_get_octave(m))
    end
    if s==:class_id
        return cpp_to_julia(jlopencv_KeyPoint_get_class_id(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KeyPoint, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function KeyPoint()
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_cv_KeyPoint_KeyPoint())
end

function KeyPoint(x::Float32, y::Float32, _size::Float32, _angle::Float32, _response::Float32, _octave::Int32, _class_id::Int32)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_cv_KeyPoint_KeyPoint(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(_size),julia_to_cpp(_angle),julia_to_cpp(_response),julia_to_cpp(_octave),julia_to_cpp(_class_id)))
end
KeyPoint(x::Float32, y::Float32, _size::Float32; _angle::Float32 = Float32(-1), _response::Float32 = Float32(0), _octave::Int32 = Int32(0), _class_id::Int32 = Int32(-1)) = KeyPoint(x, y, _size, _angle, _response, _octave, _class_id)
function Base.getproperty(m::DMatch, s::Symbol)
    if s==:queryIdx
        return cpp_to_julia(jlopencv_DMatch_get_queryIdx(m))
    end
    if s==:trainIdx
        return cpp_to_julia(jlopencv_DMatch_get_trainIdx(m))
    end
    if s==:imgIdx
        return cpp_to_julia(jlopencv_DMatch_get_imgIdx(m))
    end
    if s==:distance
        return cpp_to_julia(jlopencv_DMatch_get_distance(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DMatch, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function DMatch()
	return cpp_to_julia(jlopencv_cv_cv_DMatch_cv_DMatch_DMatch())
end

function DMatch(_queryIdx::Int32, _trainIdx::Int32, _distance::Float32)
	return cpp_to_julia(jlopencv_cv_cv_DMatch_cv_DMatch_DMatch(julia_to_cpp(_queryIdx),julia_to_cpp(_trainIdx),julia_to_cpp(_distance)))
end

function DMatch(_queryIdx::Int32, _trainIdx::Int32, _imgIdx::Int32, _distance::Float32)
	return cpp_to_julia(jlopencv_cv_cv_DMatch_cv_DMatch_DMatch(julia_to_cpp(_queryIdx),julia_to_cpp(_trainIdx),julia_to_cpp(_imgIdx),julia_to_cpp(_distance)))
end
function Base.getproperty(m::Moments, s::Symbol)
    if s==:m00
        return cpp_to_julia(jlopencv_Moments_get_m00(m))
    end
    if s==:m10
        return cpp_to_julia(jlopencv_Moments_get_m10(m))
    end
    if s==:m01
        return cpp_to_julia(jlopencv_Moments_get_m01(m))
    end
    if s==:m20
        return cpp_to_julia(jlopencv_Moments_get_m20(m))
    end
    if s==:m11
        return cpp_to_julia(jlopencv_Moments_get_m11(m))
    end
    if s==:m02
        return cpp_to_julia(jlopencv_Moments_get_m02(m))
    end
    if s==:m30
        return cpp_to_julia(jlopencv_Moments_get_m30(m))
    end
    if s==:m21
        return cpp_to_julia(jlopencv_Moments_get_m21(m))
    end
    if s==:m12
        return cpp_to_julia(jlopencv_Moments_get_m12(m))
    end
    if s==:m03
        return cpp_to_julia(jlopencv_Moments_get_m03(m))
    end
    if s==:mu20
        return cpp_to_julia(jlopencv_Moments_get_mu20(m))
    end
    if s==:mu11
        return cpp_to_julia(jlopencv_Moments_get_mu11(m))
    end
    if s==:mu02
        return cpp_to_julia(jlopencv_Moments_get_mu02(m))
    end
    if s==:mu30
        return cpp_to_julia(jlopencv_Moments_get_mu30(m))
    end
    if s==:mu21
        return cpp_to_julia(jlopencv_Moments_get_mu21(m))
    end
    if s==:mu12
        return cpp_to_julia(jlopencv_Moments_get_mu12(m))
    end
    if s==:mu03
        return cpp_to_julia(jlopencv_Moments_get_mu03(m))
    end
    if s==:nu20
        return cpp_to_julia(jlopencv_Moments_get_nu20(m))
    end
    if s==:nu11
        return cpp_to_julia(jlopencv_Moments_get_nu11(m))
    end
    if s==:nu02
        return cpp_to_julia(jlopencv_Moments_get_nu02(m))
    end
    if s==:nu30
        return cpp_to_julia(jlopencv_Moments_get_nu30(m))
    end
    if s==:nu21
        return cpp_to_julia(jlopencv_Moments_get_nu21(m))
    end
    if s==:nu12
        return cpp_to_julia(jlopencv_Moments_get_nu12(m))
    end
    if s==:nu03
        return cpp_to_julia(jlopencv_Moments_get_nu03(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Moments, s::Symbol, v)
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::GeneralizedHough, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GeneralizedHough, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setTemplate(cobj::cv_Ptr{T}, templ::Image, templCenter::Point{Int32}) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(templ),julia_to_cpp(templCenter)))
end
setTemplate(cobj::cv_Ptr{T}, templ::Image; templCenter::Point{Int32} = (PointOTXSGTXP)) where {T <: GeneralizedHough} = setTemplate(cobj, templ, templCenter)

function setTemplate(cobj::cv_Ptr{T}, templ::UMat, templCenter::Point{Int32}) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(templ),julia_to_cpp(templCenter)))
end
setTemplate(cobj::cv_Ptr{T}, templ::UMat; templCenter::Point{Int32} = (PointOTXSGTXP)) where {T <: GeneralizedHough} = setTemplate(cobj, templ, templCenter)

function setTemplate(cobj::cv_Ptr{T}, edges::Image, dx::Image, dy::Image, templCenter::Point{Int32}) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(templCenter)))
end
setTemplate(cobj::cv_Ptr{T}, edges::Image, dx::Image, dy::Image; templCenter::Point{Int32} = (PointOTXSGTXP)) where {T <: GeneralizedHough} = setTemplate(cobj, edges, dx, dy, templCenter)

function setTemplate(cobj::cv_Ptr{T}, edges::UMat, dx::UMat, dy::UMat, templCenter::Point{Int32}) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(templCenter)))
end
setTemplate(cobj::cv_Ptr{T}, edges::UMat, dx::UMat, dy::UMat; templCenter::Point{Int32} = (PointOTXSGTXP)) where {T <: GeneralizedHough} = setTemplate(cobj, edges, dx, dy, templCenter)

function detect(cobj::cv_Ptr{T}, image::Image, positions::Image, votes::Image) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(positions),julia_to_cpp(votes)))
end
detect(cobj::cv_Ptr{T}, image::Image; positions::Image = (Mat()), votes::Image = (MatOP)) where {T <: GeneralizedHough} = detect(cobj, image, positions, votes)

function detect(cobj::cv_Ptr{T}, image::UMat, positions::UMat, votes::UMat) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(positions),julia_to_cpp(votes)))
end
detect(cobj::cv_Ptr{T}, image::UMat; positions::UMat = (UMat()), votes::UMat = (UMatOP)) where {T <: GeneralizedHough} = detect(cobj, image, positions, votes)

function detect(cobj::cv_Ptr{T}, edges::Image, dx::Image, dy::Image, positions::Image, votes::Image) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(positions),julia_to_cpp(votes)))
end

function detect(cobj::cv_Ptr{T}, edges::UMat, dx::UMat, dy::UMat, positions::UMat, votes::UMat) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(positions),julia_to_cpp(votes)))
end

function setCannyLowThresh(cobj::cv_Ptr{T}, cannyLowThresh::Int32) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setCannyLowThresh(julia_to_cpp(cobj),julia_to_cpp(cannyLowThresh)))
end

function getCannyLowThresh(cobj::cv_Ptr{T}) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_getCannyLowThresh(julia_to_cpp(cobj)))
end

function setCannyHighThresh(cobj::cv_Ptr{T}, cannyHighThresh::Int32) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setCannyHighThresh(julia_to_cpp(cobj),julia_to_cpp(cannyHighThresh)))
end

function getCannyHighThresh(cobj::cv_Ptr{T}) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_getCannyHighThresh(julia_to_cpp(cobj)))
end

function setMinDist(cobj::cv_Ptr{T}, minDist::Float64) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setMinDist(julia_to_cpp(cobj),julia_to_cpp(minDist)))
end

function getMinDist(cobj::cv_Ptr{T}) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_getMinDist(julia_to_cpp(cobj)))
end

function setDp(cobj::cv_Ptr{T}, dp::Float64) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setDp(julia_to_cpp(cobj),julia_to_cpp(dp)))
end

function getDp(cobj::cv_Ptr{T}) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_getDp(julia_to_cpp(cobj)))
end

function setMaxBufferSize(cobj::cv_Ptr{T}, maxBufferSize::Int32) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setMaxBufferSize(julia_to_cpp(cobj),julia_to_cpp(maxBufferSize)))
end

function getMaxBufferSize(cobj::cv_Ptr{T}) where {T <: GeneralizedHough}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_getMaxBufferSize(julia_to_cpp(cobj)))
end
function Base.getproperty(m::GeneralizedHoughBallard, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GeneralizedHoughBallard, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setLevels(cobj::cv_Ptr{T}, levels::Int32) where {T <: GeneralizedHoughBallard}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughBallard_cv_GeneralizedHoughBallard_setLevels(julia_to_cpp(cobj),julia_to_cpp(levels)))
end

function getLevels(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughBallard}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughBallard_cv_GeneralizedHoughBallard_getLevels(julia_to_cpp(cobj)))
end

function setVotesThreshold(cobj::cv_Ptr{T}, votesThreshold::Int32) where {T <: GeneralizedHoughBallard}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughBallard_cv_GeneralizedHoughBallard_setVotesThreshold(julia_to_cpp(cobj),julia_to_cpp(votesThreshold)))
end

function getVotesThreshold(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughBallard}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughBallard_cv_GeneralizedHoughBallard_getVotesThreshold(julia_to_cpp(cobj)))
end
function Base.getproperty(m::GeneralizedHoughGuil, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GeneralizedHoughGuil, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setXi(cobj::cv_Ptr{T}, xi::Float64) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setXi(julia_to_cpp(cobj),julia_to_cpp(xi)))
end

function getXi(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getXi(julia_to_cpp(cobj)))
end

function setLevels(cobj::cv_Ptr{T}, levels::Int32) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setLevels(julia_to_cpp(cobj),julia_to_cpp(levels)))
end

function getLevels(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getLevels(julia_to_cpp(cobj)))
end

function setAngleEpsilon(cobj::cv_Ptr{T}, angleEpsilon::Float64) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setAngleEpsilon(julia_to_cpp(cobj),julia_to_cpp(angleEpsilon)))
end

function getAngleEpsilon(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getAngleEpsilon(julia_to_cpp(cobj)))
end

function setMinAngle(cobj::cv_Ptr{T}, minAngle::Float64) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setMinAngle(julia_to_cpp(cobj),julia_to_cpp(minAngle)))
end

function getMinAngle(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getMinAngle(julia_to_cpp(cobj)))
end

function setMaxAngle(cobj::cv_Ptr{T}, maxAngle::Float64) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setMaxAngle(julia_to_cpp(cobj),julia_to_cpp(maxAngle)))
end

function getMaxAngle(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getMaxAngle(julia_to_cpp(cobj)))
end

function setAngleStep(cobj::cv_Ptr{T}, angleStep::Float64) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setAngleStep(julia_to_cpp(cobj),julia_to_cpp(angleStep)))
end

function getAngleStep(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getAngleStep(julia_to_cpp(cobj)))
end

function setAngleThresh(cobj::cv_Ptr{T}, angleThresh::Int32) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setAngleThresh(julia_to_cpp(cobj),julia_to_cpp(angleThresh)))
end

function getAngleThresh(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getAngleThresh(julia_to_cpp(cobj)))
end

function setMinScale(cobj::cv_Ptr{T}, minScale::Float64) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setMinScale(julia_to_cpp(cobj),julia_to_cpp(minScale)))
end

function getMinScale(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getMinScale(julia_to_cpp(cobj)))
end

function setMaxScale(cobj::cv_Ptr{T}, maxScale::Float64) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setMaxScale(julia_to_cpp(cobj),julia_to_cpp(maxScale)))
end

function getMaxScale(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getMaxScale(julia_to_cpp(cobj)))
end

function setScaleStep(cobj::cv_Ptr{T}, scaleStep::Float64) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setScaleStep(julia_to_cpp(cobj),julia_to_cpp(scaleStep)))
end

function getScaleStep(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getScaleStep(julia_to_cpp(cobj)))
end

function setScaleThresh(cobj::cv_Ptr{T}, scaleThresh::Int32) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setScaleThresh(julia_to_cpp(cobj),julia_to_cpp(scaleThresh)))
end

function getScaleThresh(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getScaleThresh(julia_to_cpp(cobj)))
end

function setPosThresh(cobj::cv_Ptr{T}, posThresh::Int32) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setPosThresh(julia_to_cpp(cobj),julia_to_cpp(posThresh)))
end

function getPosThresh(cobj::cv_Ptr{T}) where {T <: GeneralizedHoughGuil}
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getPosThresh(julia_to_cpp(cobj)))
end
function Base.getproperty(m::CLAHE, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::CLAHE, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function apply(cobj::cv_Ptr{T}, src::Image, dst::Image) where {T <: CLAHE}
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_apply(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
apply(cobj::cv_Ptr{T}, src::Image; dst::Image = (Mat())) where {T <: CLAHE} = apply(cobj, src, dst)

function apply(cobj::cv_Ptr{T}, src::UMat, dst::UMat) where {T <: CLAHE}
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_apply(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
apply(cobj::cv_Ptr{T}, src::UMat; dst::UMat = (UMat())) where {T <: CLAHE} = apply(cobj, src, dst)

function setClipLimit(cobj::cv_Ptr{T}, clipLimit::Float64) where {T <: CLAHE}
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_setClipLimit(julia_to_cpp(cobj),julia_to_cpp(clipLimit)))
end

function getClipLimit(cobj::cv_Ptr{T}) where {T <: CLAHE}
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_getClipLimit(julia_to_cpp(cobj)))
end

function setTilesGridSize(cobj::cv_Ptr{T}, tileGridSize::Size) where {T <: CLAHE}
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_setTilesGridSize(julia_to_cpp(cobj),julia_to_cpp(tileGridSize)))
end

function getTilesGridSize(cobj::cv_Ptr{T}) where {T <: CLAHE}
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_getTilesGridSize(julia_to_cpp(cobj)))
end

function collectGarbage(cobj::cv_Ptr{T}) where {T <: CLAHE}
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_collectGarbage(julia_to_cpp(cobj)))
end
function Base.getproperty(m::Subdiv2D, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Subdiv2D, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function initDelaunay(cobj::Subdiv2D, rect::Rect)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_initDelaunay(julia_to_cpp(cobj),julia_to_cpp(rect)))
end

function insert(cobj::Subdiv2D, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_insert(julia_to_cpp(cobj),julia_to_cpp(pt)))
end

function insert(cobj::Subdiv2D, ptvec::Array{Point{Float32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_insert(julia_to_cpp(cobj),julia_to_cpp(ptvec)))
end

function locate(cobj::Subdiv2D, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_locate(julia_to_cpp(cobj),julia_to_cpp(pt)))
end

function findNearest(cobj::Subdiv2D, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_findNearest(julia_to_cpp(cobj),julia_to_cpp(pt)))
end

function getEdgeList(cobj::Subdiv2D)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getEdgeList(julia_to_cpp(cobj)))
end

function getLeadingEdgeList(cobj::Subdiv2D)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getLeadingEdgeList(julia_to_cpp(cobj)))
end

function getTriangleList(cobj::Subdiv2D)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getTriangleList(julia_to_cpp(cobj)))
end

function getVoronoiFacetList(cobj::Subdiv2D, idx::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getVoronoiFacetList(julia_to_cpp(cobj),julia_to_cpp(idx)))
end

function getVertex(cobj::Subdiv2D, vertex::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getVertex(julia_to_cpp(cobj),julia_to_cpp(vertex)))
end

function getEdge(cobj::Subdiv2D, edge::Int32, nextEdgeType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getEdge(julia_to_cpp(cobj),julia_to_cpp(edge),julia_to_cpp(nextEdgeType)))
end

function nextEdge(cobj::Subdiv2D, edge::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_nextEdge(julia_to_cpp(cobj),julia_to_cpp(edge)))
end

function rotateEdge(cobj::Subdiv2D, edge::Int32, rotate::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_rotateEdge(julia_to_cpp(cobj),julia_to_cpp(edge),julia_to_cpp(rotate)))
end

function symEdge(cobj::Subdiv2D, edge::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_symEdge(julia_to_cpp(cobj),julia_to_cpp(edge)))
end

function edgeOrg(cobj::Subdiv2D, edge::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_edgeOrg(julia_to_cpp(cobj),julia_to_cpp(edge)))
end

function edgeDst(cobj::Subdiv2D, edge::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_edgeDst(julia_to_cpp(cobj),julia_to_cpp(edge)))
end

function Subdiv2D()
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_Subdiv2D())
end

function Subdiv2D(rect::Rect)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_Subdiv2D(julia_to_cpp(rect)))
end
function Base.getproperty(m::LineSegmentDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::LineSegmentDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function detect(cobj::cv_Ptr{T}, _image::Image, _lines::Image, width::Image, prec::Image, nfa::Image) where {T <: LineSegmentDetector}
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_detect(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(_lines),julia_to_cpp(width),julia_to_cpp(prec),julia_to_cpp(nfa)))
end
detect(cobj::cv_Ptr{T}, _image::Image; _lines::Image = (Mat()), width::Image = (MatOP), prec::Image = (MatOP), nfa::Image = (MatOP)) where {T <: LineSegmentDetector} = detect(cobj, _image, _lines, width, prec, nfa)

function detect(cobj::cv_Ptr{T}, _image::UMat, _lines::UMat, width::UMat, prec::UMat, nfa::UMat) where {T <: LineSegmentDetector}
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_detect(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(_lines),julia_to_cpp(width),julia_to_cpp(prec),julia_to_cpp(nfa)))
end
detect(cobj::cv_Ptr{T}, _image::UMat; _lines::UMat = (UMat()), width::UMat = (UMatOP), prec::UMat = (UMatOP), nfa::UMat = (UMatOP)) where {T <: LineSegmentDetector} = detect(cobj, _image, _lines, width, prec, nfa)

function drawSegments(cobj::cv_Ptr{T}, _image::Image, lines::Image) where {T <: LineSegmentDetector}
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_drawSegments(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(lines)))
end

function drawSegments(cobj::cv_Ptr{T}, _image::UMat, lines::UMat) where {T <: LineSegmentDetector}
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_drawSegments(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(lines)))
end

function compareSegments(cobj::cv_Ptr{T}, size::Size, lines1::Image, lines2::Image, _image::Image) where {T <: LineSegmentDetector}
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_compareSegments(julia_to_cpp(cobj),julia_to_cpp(size),julia_to_cpp(lines1),julia_to_cpp(lines2),julia_to_cpp(_image)))
end
compareSegments(cobj::cv_Ptr{T}, size::Size, lines1::Image, lines2::Image; _image::Image = (MatOP)) where {T <: LineSegmentDetector} = compareSegments(cobj, size, lines1, lines2, _image)

function compareSegments(cobj::cv_Ptr{T}, size::Size, lines1::UMat, lines2::UMat, _image::UMat) where {T <: LineSegmentDetector}
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_compareSegments(julia_to_cpp(cobj),julia_to_cpp(size),julia_to_cpp(lines1),julia_to_cpp(lines2),julia_to_cpp(_image)))
end
compareSegments(cobj::cv_Ptr{T}, size::Size, lines1::UMat, lines2::UMat; _image::UMat = (UMatOP)) where {T <: LineSegmentDetector} = compareSegments(cobj, size, lines1, lines2, _image)
function Base.getproperty(m::CirclesGridFinderParameters, s::Symbol)
    if s==:densityNeighborhoodSize
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_densityNeighborhoodSize(m))
    end
    if s==:minDensity
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minDensity(m))
    end
    if s==:kmeansAttempts
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_kmeansAttempts(m))
    end
    if s==:minDistanceToAddKeypoint
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minDistanceToAddKeypoint(m))
    end
    if s==:keypointScale
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_keypointScale(m))
    end
    if s==:minGraphConfidence
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minGraphConfidence(m))
    end
    if s==:vertexGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_vertexGain(m))
    end
    if s==:vertexPenalty
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_vertexPenalty(m))
    end
    if s==:existingVertexGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_existingVertexGain(m))
    end
    if s==:edgeGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_edgeGain(m))
    end
    if s==:edgePenalty
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_edgePenalty(m))
    end
    if s==:convexHullFactor
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_convexHullFactor(m))
    end
    if s==:minRNGEdgeSwitchDist
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minRNGEdgeSwitchDist(m))
    end
    if s==:squareSize
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_squareSize(m))
    end
    if s==:maxRectifiedDistance
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_maxRectifiedDistance(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::CirclesGridFinderParameters, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function CirclesGridFinderParameters()
	return cpp_to_julia(jlopencv_cv_cv_CirclesGridFinderParameters_cv_CirclesGridFinderParameters_CirclesGridFinderParameters())
end
function Base.getproperty(m::StereoMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::StereoMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function compute(cobj::cv_Ptr{T}, left::Image, right::Image, disparity::Image) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_compute(julia_to_cpp(cobj),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(disparity)))
end
compute(cobj::cv_Ptr{T}, left::Image, right::Image; disparity::Image = (Mat())) where {T <: StereoMatcher} = compute(cobj, left, right, disparity)

function compute(cobj::cv_Ptr{T}, left::UMat, right::UMat, disparity::UMat) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_compute(julia_to_cpp(cobj),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(disparity)))
end
compute(cobj::cv_Ptr{T}, left::UMat, right::UMat; disparity::UMat = (UMat())) where {T <: StereoMatcher} = compute(cobj, left, right, disparity)

function getMinDisparity(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getMinDisparity(julia_to_cpp(cobj)))
end

function setMinDisparity(cobj::cv_Ptr{T}, minDisparity::Int32) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setMinDisparity(julia_to_cpp(cobj),julia_to_cpp(minDisparity)))
end

function getNumDisparities(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getNumDisparities(julia_to_cpp(cobj)))
end

function setNumDisparities(cobj::cv_Ptr{T}, numDisparities::Int32) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setNumDisparities(julia_to_cpp(cobj),julia_to_cpp(numDisparities)))
end

function getBlockSize(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getBlockSize(julia_to_cpp(cobj)))
end

function setBlockSize(cobj::cv_Ptr{T}, blockSize::Int32) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end

function getSpeckleWindowSize(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getSpeckleWindowSize(julia_to_cpp(cobj)))
end

function setSpeckleWindowSize(cobj::cv_Ptr{T}, speckleWindowSize::Int32) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setSpeckleWindowSize(julia_to_cpp(cobj),julia_to_cpp(speckleWindowSize)))
end

function getSpeckleRange(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getSpeckleRange(julia_to_cpp(cobj)))
end

function setSpeckleRange(cobj::cv_Ptr{T}, speckleRange::Int32) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setSpeckleRange(julia_to_cpp(cobj),julia_to_cpp(speckleRange)))
end

function getDisp12MaxDiff(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getDisp12MaxDiff(julia_to_cpp(cobj)))
end

function setDisp12MaxDiff(cobj::cv_Ptr{T}, disp12MaxDiff::Int32) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setDisp12MaxDiff(julia_to_cpp(cobj),julia_to_cpp(disp12MaxDiff)))
end
function Base.getproperty(m::StereoBM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::StereoBM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getPreFilterType(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterType(julia_to_cpp(cobj)))
end

function setPreFilterType(cobj::cv_Ptr{T}, preFilterType::Int32) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterType(julia_to_cpp(cobj),julia_to_cpp(preFilterType)))
end

function getPreFilterSize(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterSize(julia_to_cpp(cobj)))
end

function setPreFilterSize(cobj::cv_Ptr{T}, preFilterSize::Int32) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterSize(julia_to_cpp(cobj),julia_to_cpp(preFilterSize)))
end

function getPreFilterCap(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterCap(julia_to_cpp(cobj)))
end

function setPreFilterCap(cobj::cv_Ptr{T}, preFilterCap::Int32) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterCap(julia_to_cpp(cobj),julia_to_cpp(preFilterCap)))
end

function getTextureThreshold(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getTextureThreshold(julia_to_cpp(cobj)))
end

function setTextureThreshold(cobj::cv_Ptr{T}, textureThreshold::Int32) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setTextureThreshold(julia_to_cpp(cobj),julia_to_cpp(textureThreshold)))
end

function getUniquenessRatio(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getUniquenessRatio(julia_to_cpp(cobj)))
end

function setUniquenessRatio(cobj::cv_Ptr{T}, uniquenessRatio::Int32) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setUniquenessRatio(julia_to_cpp(cobj),julia_to_cpp(uniquenessRatio)))
end

function getSmallerBlockSize(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getSmallerBlockSize(julia_to_cpp(cobj)))
end

function setSmallerBlockSize(cobj::cv_Ptr{T}, blockSize::Int32) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setSmallerBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end

function getROI1(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getROI1(julia_to_cpp(cobj)))
end

function setROI1(cobj::cv_Ptr{T}, roi1::Rect) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setROI1(julia_to_cpp(cobj),julia_to_cpp(roi1)))
end

function getROI2(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getROI2(julia_to_cpp(cobj)))
end

function setROI2(cobj::cv_Ptr{T}, roi2::Rect) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setROI2(julia_to_cpp(cobj),julia_to_cpp(roi2)))
end
function Base.getproperty(m::StereoSGBM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::StereoSGBM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getPreFilterCap(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getPreFilterCap(julia_to_cpp(cobj)))
end

function setPreFilterCap(cobj::cv_Ptr{T}, preFilterCap::Int32) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setPreFilterCap(julia_to_cpp(cobj),julia_to_cpp(preFilterCap)))
end

function getUniquenessRatio(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getUniquenessRatio(julia_to_cpp(cobj)))
end

function setUniquenessRatio(cobj::cv_Ptr{T}, uniquenessRatio::Int32) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setUniquenessRatio(julia_to_cpp(cobj),julia_to_cpp(uniquenessRatio)))
end

function getP1(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getP1(julia_to_cpp(cobj)))
end

function setP1(cobj::cv_Ptr{T}, P1::Int32) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setP1(julia_to_cpp(cobj),julia_to_cpp(P1)))
end

function getP2(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getP2(julia_to_cpp(cobj)))
end

function setP2(cobj::cv_Ptr{T}, P2::Int32) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setP2(julia_to_cpp(cobj),julia_to_cpp(P2)))
end

function getMode(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getMode(julia_to_cpp(cobj)))
end

function setMode(cobj::cv_Ptr{T}, mode::Int32) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setMode(julia_to_cpp(cobj),julia_to_cpp(mode)))
end
function Base.getproperty(m::Feature2D, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Feature2D, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function detect(cobj::cv_Ptr{T}, image::Image, mask::Image) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask)))
end
detect(cobj::cv_Ptr{T}, image::Image; mask::Image = (MatOP)) where {T <: Feature2D} = detect(cobj, image, mask)

function detect(cobj::cv_Ptr{T}, image::UMat, mask::UMat) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask)))
end
detect(cobj::cv_Ptr{T}, image::UMat; mask::UMat = (UMatOP)) where {T <: Feature2D} = detect(cobj, image, mask)

function detect(cobj::cv_Ptr{T}, images::Array{Image, 1}, masks::Array{Image, 1}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(masks)))
end
detect(cobj::cv_Ptr{T}, images::Array{Image, 1}; masks::Array{Image, 1} = (vectorRMatOP)) where {T <: Feature2D} = detect(cobj, images, masks)

function detect(cobj::cv_Ptr{T}, images::Array{UMat, 1}, masks::Array{UMat, 1}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(masks)))
end
detect(cobj::cv_Ptr{T}, images::Array{UMat, 1}; masks::Array{UMat, 1} = (vectorRUMatOP)) where {T <: Feature2D} = detect(cobj, images, masks)

function compute(cobj::cv_Ptr{T}, image::Image, keypoints::Array{KeyPoint, 1}, descriptors::Image) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::cv_Ptr{T}, image::Image, keypoints::Array{KeyPoint, 1}; descriptors::Image = (Mat())) where {T <: Feature2D} = compute(cobj, image, keypoints, descriptors)

function compute(cobj::cv_Ptr{T}, image::UMat, keypoints::Array{KeyPoint, 1}, descriptors::UMat) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::cv_Ptr{T}, image::UMat, keypoints::Array{KeyPoint, 1}; descriptors::UMat = (UMat())) where {T <: Feature2D} = compute(cobj, image, keypoints, descriptors)

function compute(cobj::cv_Ptr{T}, images::Array{Image, 1}, keypoints::Array{Array{KeyPoint, 1}, 1}, descriptors::Array{Image, 1}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::cv_Ptr{T}, images::Array{Image, 1}, keypoints::Array{Array{KeyPoint, 1}, 1}; descriptors::Array{Image, 1} = (Array{Image, 1}())) where {T <: Feature2D} = compute(cobj, images, keypoints, descriptors)

function compute(cobj::cv_Ptr{T}, images::Array{UMat, 1}, keypoints::Array{Array{KeyPoint, 1}, 1}, descriptors::Array{UMat, 1}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::cv_Ptr{T}, images::Array{UMat, 1}, keypoints::Array{Array{KeyPoint, 1}, 1}; descriptors::Array{UMat, 1} = (Array{UMat, 1}())) where {T <: Feature2D} = compute(cobj, images, keypoints, descriptors)

function detectAndCompute(cobj::cv_Ptr{T}, image::Image, mask::Image, descriptors::Image, useProvidedKeypoints::Bool) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detectAndCompute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(descriptors),julia_to_cpp(useProvidedKeypoints)))
end
detectAndCompute(cobj::cv_Ptr{T}, image::Image, mask::Image; descriptors::Image = (Mat()), useProvidedKeypoints::Bool = (false)) where {T <: Feature2D} = detectAndCompute(cobj, image, mask, descriptors, useProvidedKeypoints)

function detectAndCompute(cobj::cv_Ptr{T}, image::UMat, mask::UMat, descriptors::UMat, useProvidedKeypoints::Bool) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detectAndCompute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(descriptors),julia_to_cpp(useProvidedKeypoints)))
end
detectAndCompute(cobj::cv_Ptr{T}, image::UMat, mask::UMat; descriptors::UMat = (UMat()), useProvidedKeypoints::Bool = (false)) where {T <: Feature2D} = detectAndCompute(cobj, image, mask, descriptors, useProvidedKeypoints)

function descriptorSize(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_descriptorSize(julia_to_cpp(cobj)))
end

function descriptorType(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_descriptorType(julia_to_cpp(cobj)))
end

function defaultNorm(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_defaultNorm(julia_to_cpp(cobj)))
end

function write(cobj::cv_Ptr{T}, fileName::String) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_write(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function write(cobj::cv_Ptr{T}, fs::cv_Ptr{FileStorage}, name::String) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
write(cobj::cv_Ptr{T}, fs::cv_Ptr{FileStorage}; name::String = (String())) where {T <: Feature2D} = write(cobj, fs, name)

function read(cobj::cv_Ptr{T}, fileName::String) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_read(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function read(cobj::cv_Ptr{T}, arg1::FileNode) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_read(julia_to_cpp(cobj),julia_to_cpp(arg1)))
end

function empty(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_empty(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::BRISK, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BRISK, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_getDefaultName(julia_to_cpp(cobj)))
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Int32) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_getThreshold(julia_to_cpp(cobj)))
end

function setOctaves(cobj::cv_Ptr{T}, octaves::Int32) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_setOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end

function getOctaves(cobj::cv_Ptr{T}) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_getOctaves(julia_to_cpp(cobj)))
end
function Base.getproperty(m::ORB, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ORB, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setMaxFeatures(cobj::cv_Ptr{T}, maxFeatures::Int32) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setMaxFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end

function getMaxFeatures(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getMaxFeatures(julia_to_cpp(cobj)))
end

function setScaleFactor(cobj::cv_Ptr{T}, scaleFactor::Float64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setScaleFactor(julia_to_cpp(cobj),julia_to_cpp(scaleFactor)))
end

function getScaleFactor(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getScaleFactor(julia_to_cpp(cobj)))
end

function setNLevels(cobj::cv_Ptr{T}, nlevels::Int32) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setNLevels(julia_to_cpp(cobj),julia_to_cpp(nlevels)))
end

function getNLevels(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getNLevels(julia_to_cpp(cobj)))
end

function setEdgeThreshold(cobj::cv_Ptr{T}, edgeThreshold::Int32) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setEdgeThreshold(julia_to_cpp(cobj),julia_to_cpp(edgeThreshold)))
end

function getEdgeThreshold(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getEdgeThreshold(julia_to_cpp(cobj)))
end

function setFirstLevel(cobj::cv_Ptr{T}, firstLevel::Int32) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setFirstLevel(julia_to_cpp(cobj),julia_to_cpp(firstLevel)))
end

function getFirstLevel(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getFirstLevel(julia_to_cpp(cobj)))
end

function setWTA_K(cobj::cv_Ptr{T}, wta_k::Int32) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setWTA_K(julia_to_cpp(cobj),julia_to_cpp(wta_k)))
end

function getWTA_K(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getWTA_K(julia_to_cpp(cobj)))
end

function setScoreType(cobj::cv_Ptr{T}, scoreType::ORB_ScoreType) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setScoreType(julia_to_cpp(cobj),julia_to_cpp(scoreType)))
end

function getScoreType(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getScoreType(julia_to_cpp(cobj)))
end

function setPatchSize(cobj::cv_Ptr{T}, patchSize::Int32) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setPatchSize(julia_to_cpp(cobj),julia_to_cpp(patchSize)))
end

function getPatchSize(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getPatchSize(julia_to_cpp(cobj)))
end

function setFastThreshold(cobj::cv_Ptr{T}, fastThreshold::Int32) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setFastThreshold(julia_to_cpp(cobj),julia_to_cpp(fastThreshold)))
end

function getFastThreshold(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getFastThreshold(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::MSER, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::MSER, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function detectRegions(cobj::cv_Ptr{T}, image::Image) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_detectRegions(julia_to_cpp(cobj),julia_to_cpp(image)))
end

function detectRegions(cobj::cv_Ptr{T}, image::UMat) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_detectRegions(julia_to_cpp(cobj),julia_to_cpp(image)))
end

function setDelta(cobj::cv_Ptr{T}, delta::Int32) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setDelta(julia_to_cpp(cobj),julia_to_cpp(delta)))
end

function getDelta(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getDelta(julia_to_cpp(cobj)))
end

function setMinArea(cobj::cv_Ptr{T}, minArea::Int32) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMinArea(julia_to_cpp(cobj),julia_to_cpp(minArea)))
end

function getMinArea(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMinArea(julia_to_cpp(cobj)))
end

function setMaxArea(cobj::cv_Ptr{T}, maxArea::Int32) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMaxArea(julia_to_cpp(cobj),julia_to_cpp(maxArea)))
end

function getMaxArea(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMaxArea(julia_to_cpp(cobj)))
end

function setPass2Only(cobj::cv_Ptr{T}, f::Bool) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setPass2Only(julia_to_cpp(cobj),julia_to_cpp(f)))
end

function getPass2Only(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getPass2Only(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::FastFeatureDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FastFeatureDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Int32) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getThreshold(julia_to_cpp(cobj)))
end

function setNonmaxSuppression(cobj::cv_Ptr{T}, f::Bool) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setNonmaxSuppression(julia_to_cpp(cobj),julia_to_cpp(f)))
end

function getNonmaxSuppression(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getNonmaxSuppression(julia_to_cpp(cobj)))
end

function setType(cobj::cv_Ptr{T}, type::FastFeatureDetector_DetectorType) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setType(julia_to_cpp(cobj),julia_to_cpp(type)))
end

function getType(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getType(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::AgastFeatureDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::AgastFeatureDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Int32) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getThreshold(julia_to_cpp(cobj)))
end

function setNonmaxSuppression(cobj::cv_Ptr{T}, f::Bool) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_setNonmaxSuppression(julia_to_cpp(cobj),julia_to_cpp(f)))
end

function getNonmaxSuppression(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getNonmaxSuppression(julia_to_cpp(cobj)))
end

function setType(cobj::cv_Ptr{T}, type::AgastFeatureDetector_DetectorType) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_setType(julia_to_cpp(cobj),julia_to_cpp(type)))
end

function getType(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getType(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::GFTTDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GFTTDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setMaxFeatures(cobj::cv_Ptr{T}, maxFeatures::Int32) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setMaxFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end

function getMaxFeatures(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getMaxFeatures(julia_to_cpp(cobj)))
end

function setQualityLevel(cobj::cv_Ptr{T}, qlevel::Float64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setQualityLevel(julia_to_cpp(cobj),julia_to_cpp(qlevel)))
end

function getQualityLevel(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getQualityLevel(julia_to_cpp(cobj)))
end

function setMinDistance(cobj::cv_Ptr{T}, minDistance::Float64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setMinDistance(julia_to_cpp(cobj),julia_to_cpp(minDistance)))
end

function getMinDistance(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getMinDistance(julia_to_cpp(cobj)))
end

function setBlockSize(cobj::cv_Ptr{T}, blockSize::Int32) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end

function getBlockSize(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getBlockSize(julia_to_cpp(cobj)))
end

function setHarrisDetector(cobj::cv_Ptr{T}, val::Bool) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setHarrisDetector(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getHarrisDetector(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getHarrisDetector(julia_to_cpp(cobj)))
end

function setK(cobj::cv_Ptr{T}, k::Float64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setK(julia_to_cpp(cobj),julia_to_cpp(k)))
end

function getK(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getK(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::SimpleBlobDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SimpleBlobDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: SimpleBlobDetector}
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_cv_SimpleBlobDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::SimpleBlobDetector_Params, s::Symbol)
    if s==:thresholdStep
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_thresholdStep(m))
    end
    if s==:minThreshold
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minThreshold(m))
    end
    if s==:maxThreshold
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxThreshold(m))
    end
    if s==:minRepeatability
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minRepeatability(m))
    end
    if s==:minDistBetweenBlobs
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minDistBetweenBlobs(m))
    end
    if s==:filterByColor
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByColor(m))
    end
    if s==:blobColor
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_blobColor(m))
    end
    if s==:filterByArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByArea(m))
    end
    if s==:minArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minArea(m))
    end
    if s==:maxArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxArea(m))
    end
    if s==:filterByCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByCircularity(m))
    end
    if s==:minCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minCircularity(m))
    end
    if s==:maxCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxCircularity(m))
    end
    if s==:filterByInertia
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByInertia(m))
    end
    if s==:minInertiaRatio
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minInertiaRatio(m))
    end
    if s==:maxInertiaRatio
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxInertiaRatio(m))
    end
    if s==:filterByConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByConvexity(m))
    end
    if s==:minConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minConvexity(m))
    end
    if s==:maxConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxConvexity(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SimpleBlobDetector_Params, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function Params()
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_Params_cv_SimpleBlobDetector_Params_Params())
end
function Base.getproperty(m::KAZE, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KAZE, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setExtended(cobj::cv_Ptr{T}, extended::Bool) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setExtended(julia_to_cpp(cobj),julia_to_cpp(extended)))
end

function getExtended(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getExtended(julia_to_cpp(cobj)))
end

function setUpright(cobj::cv_Ptr{T}, upright::Bool) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setUpright(julia_to_cpp(cobj),julia_to_cpp(upright)))
end

function getUpright(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getUpright(julia_to_cpp(cobj)))
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getThreshold(julia_to_cpp(cobj)))
end

function setNOctaves(cobj::cv_Ptr{T}, octaves::Int32) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setNOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end

function getNOctaves(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getNOctaves(julia_to_cpp(cobj)))
end

function setNOctaveLayers(cobj::cv_Ptr{T}, octaveLayers::Int32) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(octaveLayers)))
end

function getNOctaveLayers(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getNOctaveLayers(julia_to_cpp(cobj)))
end

function setDiffusivity(cobj::cv_Ptr{T}, diff::KAZE_DiffusivityType) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setDiffusivity(julia_to_cpp(cobj),julia_to_cpp(diff)))
end

function getDiffusivity(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getDiffusivity(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::AKAZE, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::AKAZE, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setDescriptorType(cobj::cv_Ptr{T}, dtype::AKAZE_DescriptorType) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDescriptorType(julia_to_cpp(cobj),julia_to_cpp(dtype)))
end

function getDescriptorType(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDescriptorType(julia_to_cpp(cobj)))
end

function setDescriptorSize(cobj::cv_Ptr{T}, dsize::Int32) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDescriptorSize(julia_to_cpp(cobj),julia_to_cpp(dsize)))
end

function getDescriptorSize(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDescriptorSize(julia_to_cpp(cobj)))
end

function setDescriptorChannels(cobj::cv_Ptr{T}, dch::Int32) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDescriptorChannels(julia_to_cpp(cobj),julia_to_cpp(dch)))
end

function getDescriptorChannels(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDescriptorChannels(julia_to_cpp(cobj)))
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getThreshold(julia_to_cpp(cobj)))
end

function setNOctaves(cobj::cv_Ptr{T}, octaves::Int32) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setNOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end

function getNOctaves(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getNOctaves(julia_to_cpp(cobj)))
end

function setNOctaveLayers(cobj::cv_Ptr{T}, octaveLayers::Int32) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(octaveLayers)))
end

function getNOctaveLayers(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getNOctaveLayers(julia_to_cpp(cobj)))
end

function setDiffusivity(cobj::cv_Ptr{T}, diff::KAZE_DiffusivityType) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDiffusivity(julia_to_cpp(cobj),julia_to_cpp(diff)))
end

function getDiffusivity(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDiffusivity(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::DescriptorMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DescriptorMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function add(cobj::cv_Ptr{T}, descriptors::Array{Image, 1}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end

function add(cobj::cv_Ptr{T}, descriptors::Array{UMat, 1}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end

function getTrainDescriptors(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_getTrainDescriptors(julia_to_cpp(cobj)))
end

function clear(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_clear(julia_to_cpp(cobj)))
end

function empty(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_empty(julia_to_cpp(cobj)))
end

function isMaskSupported(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_isMaskSupported(julia_to_cpp(cobj)))
end

function train(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_train(julia_to_cpp(cobj)))
end

function match(cobj::cv_Ptr{T}, queryDescriptors::Image, trainDescriptors::Image, mask::Image) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(mask)))
end
match(cobj::cv_Ptr{T}, queryDescriptors::Image, trainDescriptors::Image; mask::Image = (MatOP)) where {T <: DescriptorMatcher} = match(cobj, queryDescriptors, trainDescriptors, mask)

function match(cobj::cv_Ptr{T}, queryDescriptors::UMat, trainDescriptors::UMat, mask::UMat) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(mask)))
end
match(cobj::cv_Ptr{T}, queryDescriptors::UMat, trainDescriptors::UMat; mask::UMat = (UMatOP)) where {T <: DescriptorMatcher} = match(cobj, queryDescriptors, trainDescriptors, mask)

function match(cobj::cv_Ptr{T}, queryDescriptors::Image, masks::Array{Image, 1}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(masks)))
end
match(cobj::cv_Ptr{T}, queryDescriptors::Image; masks::Array{Image, 1} = (vectorRMatOP)) where {T <: DescriptorMatcher} = match(cobj, queryDescriptors, masks)

function match(cobj::cv_Ptr{T}, queryDescriptors::UMat, masks::Array{UMat, 1}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(masks)))
end
match(cobj::cv_Ptr{T}, queryDescriptors::UMat; masks::Array{UMat, 1} = (vectorRUMatOP)) where {T <: DescriptorMatcher} = match(cobj, queryDescriptors, masks)

function knnMatch(cobj::cv_Ptr{T}, queryDescriptors::Image, trainDescriptors::Image, k::Int32, mask::Image, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(k),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
knnMatch(cobj::cv_Ptr{T}, queryDescriptors::Image, trainDescriptors::Image, k::Int32; mask::Image = (MatOP), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = knnMatch(cobj, queryDescriptors, trainDescriptors, k, mask, compactResult)

function knnMatch(cobj::cv_Ptr{T}, queryDescriptors::UMat, trainDescriptors::UMat, k::Int32, mask::UMat, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(k),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
knnMatch(cobj::cv_Ptr{T}, queryDescriptors::UMat, trainDescriptors::UMat, k::Int32; mask::UMat = (UMatOP), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = knnMatch(cobj, queryDescriptors, trainDescriptors, k, mask, compactResult)

function knnMatch(cobj::cv_Ptr{T}, queryDescriptors::Image, k::Int32, masks::Array{Image, 1}, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(k),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
knnMatch(cobj::cv_Ptr{T}, queryDescriptors::Image, k::Int32; masks::Array{Image, 1} = (vectorRMatOP), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = knnMatch(cobj, queryDescriptors, k, masks, compactResult)

function knnMatch(cobj::cv_Ptr{T}, queryDescriptors::UMat, k::Int32, masks::Array{UMat, 1}, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(k),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
knnMatch(cobj::cv_Ptr{T}, queryDescriptors::UMat, k::Int32; masks::Array{UMat, 1} = (vectorRUMatOP), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = knnMatch(cobj, queryDescriptors, k, masks, compactResult)

function radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::Image, trainDescriptors::Image, maxDistance::Float32, mask::Image, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::Image, trainDescriptors::Image, maxDistance::Float32; mask::Image = (MatOP), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = radiusMatch(cobj, queryDescriptors, trainDescriptors, maxDistance, mask, compactResult)

function radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::UMat, trainDescriptors::UMat, maxDistance::Float32, mask::UMat, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::UMat, trainDescriptors::UMat, maxDistance::Float32; mask::UMat = (UMatOP), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = radiusMatch(cobj, queryDescriptors, trainDescriptors, maxDistance, mask, compactResult)

function radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::Image, maxDistance::Float32, masks::Array{Image, 1}, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::Image, maxDistance::Float32; masks::Array{Image, 1} = (vectorRMatOP), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = radiusMatch(cobj, queryDescriptors, maxDistance, masks, compactResult)

function radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::UMat, maxDistance::Float32, masks::Array{UMat, 1}, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::UMat, maxDistance::Float32; masks::Array{UMat, 1} = (vectorRUMatOP), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = radiusMatch(cobj, queryDescriptors, maxDistance, masks, compactResult)

function write(cobj::cv_Ptr{T}, fileName::String) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_write(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function write(cobj::cv_Ptr{T}, fs::cv_Ptr{FileStorage}, name::String) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
write(cobj::cv_Ptr{T}, fs::cv_Ptr{FileStorage}; name::String = (String())) where {T <: DescriptorMatcher} = write(cobj, fs, name)

function read(cobj::cv_Ptr{T}, fileName::String) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_read(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function read(cobj::cv_Ptr{T}, arg1::FileNode) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_read(julia_to_cpp(cobj),julia_to_cpp(arg1)))
end

function clone(cobj::cv_Ptr{T}, emptyTrainData::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_clone(julia_to_cpp(cobj),julia_to_cpp(emptyTrainData)))
end
clone(cobj::cv_Ptr{T}; emptyTrainData::Bool = (false)) where {T <: DescriptorMatcher} = clone(cobj, emptyTrainData)
function Base.getproperty(m::BFMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BFMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function BFMatcher(normType::Int32, crossCheck::Bool) where {T <: BFMatcher}
	return cpp_to_julia(jlopencv_cv_cv_BFMatcher_cv_BFMatcher_BFMatcher(julia_to_cpp(normType),julia_to_cpp(crossCheck)))
end
BFMatcher(; normType::Int32 = Int32(NORM_L2), crossCheck::Bool = (false)) where {T <: BFMatcher} = BFMatcher(normType, crossCheck)
function Base.getproperty(m::FlannBasedMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FlannBasedMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function FlannBasedMatcher(indexParams::cv_Ptr{flann_IndexParams}, searchParams::cv_Ptr{flann_SearchParams}) where {T <: FlannBasedMatcher}
	return cpp_to_julia(jlopencv_cv_cv_FlannBasedMatcher_cv_FlannBasedMatcher_FlannBasedMatcher(julia_to_cpp(indexParams),julia_to_cpp(searchParams)))
end
FlannBasedMatcher(; indexParams::cv_Ptr{flann_IndexParams} = (makePtriflannggKDTreeIndexParamskOP), searchParams::cv_Ptr{flann_SearchParams} = (makePtriflannggSearchParamskOP)) where {T <: FlannBasedMatcher} = FlannBasedMatcher(indexParams, searchParams)
function Base.getproperty(m::BOWTrainer, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWTrainer, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function add(cobj::BOWTrainer, descriptors::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end

function getDescriptors(cobj::BOWTrainer)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_getDescriptors(julia_to_cpp(cobj)))
end

function descriptorsCount(cobj::BOWTrainer)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_descriptorsCount(julia_to_cpp(cobj)))
end

function clear(cobj::BOWTrainer)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_clear(julia_to_cpp(cobj)))
end

function cluster(cobj::BOWTrainer)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_cluster(julia_to_cpp(cobj)))
end

function cluster(cobj::BOWTrainer, descriptors::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
function Base.getproperty(m::BOWKMeansTrainer, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWKMeansTrainer, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function cluster(cobj::BOWKMeansTrainer)
	return cpp_to_julia(jlopencv_cv_cv_BOWKMeansTrainer_cv_BOWKMeansTrainer_cluster(julia_to_cpp(cobj)))
end

function cluster(cobj::BOWKMeansTrainer, descriptors::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWKMeansTrainer_cv_BOWKMeansTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end

function BOWKMeansTrainer(clusterCount::Int32, termcrit::TermCriteria, attempts::Int32, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_BOWKMeansTrainer_cv_BOWKMeansTrainer_BOWKMeansTrainer(julia_to_cpp(clusterCount),julia_to_cpp(termcrit),julia_to_cpp(attempts),julia_to_cpp(flags)))
end
BOWKMeansTrainer(clusterCount::Int32; termcrit::TermCriteria = (TermCriteriaOP), attempts::Int32 = Int32(3), flags::Int32 = Int32(KMEANS_PP_CENTERS)) = BOWKMeansTrainer(clusterCount, termcrit, attempts, flags)
function Base.getproperty(m::BOWImgDescriptorExtractor, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWImgDescriptorExtractor, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setVocabulary(cobj::BOWImgDescriptorExtractor, vocabulary::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_setVocabulary(julia_to_cpp(cobj),julia_to_cpp(vocabulary)))
end

function getVocabulary(cobj::BOWImgDescriptorExtractor)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_getVocabulary(julia_to_cpp(cobj)))
end

function compute2(cobj::BOWImgDescriptorExtractor, image::Image, keypoints::Array{KeyPoint, 1}, imgDescriptor::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_compute2(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(imgDescriptor)))
end
compute2(cobj::BOWImgDescriptorExtractor, image::Image, keypoints::Array{KeyPoint, 1}; imgDescriptor::Image = (Mat())) = compute2(cobj, image, keypoints, imgDescriptor)

function descriptorSize(cobj::BOWImgDescriptorExtractor)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_descriptorSize(julia_to_cpp(cobj)))
end

function descriptorType(cobj::BOWImgDescriptorExtractor)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_descriptorType(julia_to_cpp(cobj)))
end

function BOWImgDescriptorExtractor(dextractor::cv_Ptr{DescriptorExtractor}, dmatcher::cv_Ptr{DescriptorMatcher})
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor(julia_to_cpp(dextractor),julia_to_cpp(dmatcher)))
end
function Base.getproperty(m::KalmanFilter, s::Symbol)
    if s==:statePre
        return cpp_to_julia(jlopencv_KalmanFilter_get_statePre(m))
    end
    if s==:statePost
        return cpp_to_julia(jlopencv_KalmanFilter_get_statePost(m))
    end
    if s==:transitionMatrix
        return cpp_to_julia(jlopencv_KalmanFilter_get_transitionMatrix(m))
    end
    if s==:controlMatrix
        return cpp_to_julia(jlopencv_KalmanFilter_get_controlMatrix(m))
    end
    if s==:measurementMatrix
        return cpp_to_julia(jlopencv_KalmanFilter_get_measurementMatrix(m))
    end
    if s==:processNoiseCov
        return cpp_to_julia(jlopencv_KalmanFilter_get_processNoiseCov(m))
    end
    if s==:measurementNoiseCov
        return cpp_to_julia(jlopencv_KalmanFilter_get_measurementNoiseCov(m))
    end
    if s==:errorCovPre
        return cpp_to_julia(jlopencv_KalmanFilter_get_errorCovPre(m))
    end
    if s==:gain
        return cpp_to_julia(jlopencv_KalmanFilter_get_gain(m))
    end
    if s==:errorCovPost
        return cpp_to_julia(jlopencv_KalmanFilter_get_errorCovPost(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KalmanFilter, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function predict(cobj::KalmanFilter, control::Image)
	return cpp_to_julia(jlopencv_cv_cv_KalmanFilter_cv_KalmanFilter_predict(julia_to_cpp(cobj),julia_to_cpp(control)))
end
predict(cobj::KalmanFilter; control::Image = (MatOP)) = predict(cobj, control)

function correct(cobj::KalmanFilter, measurement::Image)
	return cpp_to_julia(jlopencv_cv_cv_KalmanFilter_cv_KalmanFilter_correct(julia_to_cpp(cobj),julia_to_cpp(measurement)))
end

function KalmanFilter()
	return cpp_to_julia(jlopencv_cv_cv_KalmanFilter_cv_KalmanFilter_KalmanFilter())
end

function KalmanFilter(dynamParams::Int32, measureParams::Int32, controlParams::Int32, type::Int32)
	return cpp_to_julia(jlopencv_cv_cv_KalmanFilter_cv_KalmanFilter_KalmanFilter(julia_to_cpp(dynamParams),julia_to_cpp(measureParams),julia_to_cpp(controlParams),julia_to_cpp(type)))
end
KalmanFilter(dynamParams::Int32, measureParams::Int32; controlParams::Int32 = Int32(0), type::Int32 = Int32(CV_32F)) = KalmanFilter(dynamParams, measureParams, controlParams, type)
function Base.getproperty(m::DenseOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DenseOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function calc(cobj::cv_Ptr{T}, I0::Image, I1::Image, flow::Image) where {T <: DenseOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DenseOpticalFlow_cv_DenseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow)))
end

function calc(cobj::cv_Ptr{T}, I0::UMat, I1::UMat, flow::UMat) where {T <: DenseOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DenseOpticalFlow_cv_DenseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow)))
end

function collectGarbage(cobj::cv_Ptr{T}) where {T <: DenseOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DenseOpticalFlow_cv_DenseOpticalFlow_collectGarbage(julia_to_cpp(cobj)))
end
function Base.getproperty(m::SparseOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SparseOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function calc(cobj::cv_Ptr{T}, prevImg::Image, nextImg::Image, prevPts::Image, nextPts::Image, status::Image, err::Image) where {T <: SparseOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparseOpticalFlow_cv_SparseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err)))
end
calc(cobj::cv_Ptr{T}, prevImg::Image, nextImg::Image, prevPts::Image, nextPts::Image; status::Image = (Mat()), err::Image = (cvggMatOP)) where {T <: SparseOpticalFlow} = calc(cobj, prevImg, nextImg, prevPts, nextPts, status, err)

function calc(cobj::cv_Ptr{T}, prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat, status::UMat, err::UMat) where {T <: SparseOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparseOpticalFlow_cv_SparseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err)))
end
calc(cobj::cv_Ptr{T}, prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat; status::UMat = (UMat()), err::UMat = (cvggUMatOP)) where {T <: SparseOpticalFlow} = calc(cobj, prevImg, nextImg, prevPts, nextPts, status, err)
function Base.getproperty(m::FarnebackOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FarnebackOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getNumLevels(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getNumLevels(julia_to_cpp(cobj)))
end

function setNumLevels(cobj::cv_Ptr{T}, numLevels::Int32) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setNumLevels(julia_to_cpp(cobj),julia_to_cpp(numLevels)))
end

function getPyrScale(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getPyrScale(julia_to_cpp(cobj)))
end

function setPyrScale(cobj::cv_Ptr{T}, pyrScale::Float64) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setPyrScale(julia_to_cpp(cobj),julia_to_cpp(pyrScale)))
end

function getFastPyramids(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getFastPyramids(julia_to_cpp(cobj)))
end

function setFastPyramids(cobj::cv_Ptr{T}, fastPyramids::Bool) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setFastPyramids(julia_to_cpp(cobj),julia_to_cpp(fastPyramids)))
end

function getWinSize(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getWinSize(julia_to_cpp(cobj)))
end

function setWinSize(cobj::cv_Ptr{T}, winSize::Int32) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setWinSize(julia_to_cpp(cobj),julia_to_cpp(winSize)))
end

function getNumIters(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getNumIters(julia_to_cpp(cobj)))
end

function setNumIters(cobj::cv_Ptr{T}, numIters::Int32) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setNumIters(julia_to_cpp(cobj),julia_to_cpp(numIters)))
end

function getPolyN(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getPolyN(julia_to_cpp(cobj)))
end

function setPolyN(cobj::cv_Ptr{T}, polyN::Int32) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setPolyN(julia_to_cpp(cobj),julia_to_cpp(polyN)))
end

function getPolySigma(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getPolySigma(julia_to_cpp(cobj)))
end

function setPolySigma(cobj::cv_Ptr{T}, polySigma::Float64) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setPolySigma(julia_to_cpp(cobj),julia_to_cpp(polySigma)))
end

function getFlags(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getFlags(julia_to_cpp(cobj)))
end

function setFlags(cobj::cv_Ptr{T}, flags::Int32) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setFlags(julia_to_cpp(cobj),julia_to_cpp(flags)))
end
function Base.getproperty(m::VariationalRefinement, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VariationalRefinement, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function calcUV(cobj::cv_Ptr{T}, I0::Image, I1::Image, flow_u::Image, flow_v::Image) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_calcUV(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow_u),julia_to_cpp(flow_v)))
end

function calcUV(cobj::cv_Ptr{T}, I0::UMat, I1::UMat, flow_u::UMat, flow_v::UMat) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_calcUV(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow_u),julia_to_cpp(flow_v)))
end

function getFixedPointIterations(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getFixedPointIterations(julia_to_cpp(cobj)))
end

function setFixedPointIterations(cobj::cv_Ptr{T}, val::Int32) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setFixedPointIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getSorIterations(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getSorIterations(julia_to_cpp(cobj)))
end

function setSorIterations(cobj::cv_Ptr{T}, val::Int32) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setSorIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getOmega(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getOmega(julia_to_cpp(cobj)))
end

function setOmega(cobj::cv_Ptr{T}, val::Float32) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setOmega(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getAlpha(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getAlpha(julia_to_cpp(cobj)))
end

function setAlpha(cobj::cv_Ptr{T}, val::Float32) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setAlpha(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getDelta(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getDelta(julia_to_cpp(cobj)))
end

function setDelta(cobj::cv_Ptr{T}, val::Float32) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setDelta(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getGamma(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getGamma(julia_to_cpp(cobj)))
end

function setGamma(cobj::cv_Ptr{T}, val::Float32) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setGamma(julia_to_cpp(cobj),julia_to_cpp(val)))
end
function Base.getproperty(m::DISOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DISOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getFinestScale(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getFinestScale(julia_to_cpp(cobj)))
end

function setFinestScale(cobj::cv_Ptr{T}, val::Int32) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setFinestScale(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getPatchSize(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getPatchSize(julia_to_cpp(cobj)))
end

function setPatchSize(cobj::cv_Ptr{T}, val::Int32) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setPatchSize(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getPatchStride(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getPatchStride(julia_to_cpp(cobj)))
end

function setPatchStride(cobj::cv_Ptr{T}, val::Int32) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setPatchStride(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getGradientDescentIterations(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getGradientDescentIterations(julia_to_cpp(cobj)))
end

function setGradientDescentIterations(cobj::cv_Ptr{T}, val::Int32) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setGradientDescentIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getVariationalRefinementIterations(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementIterations(julia_to_cpp(cobj)))
end

function setVariationalRefinementIterations(cobj::cv_Ptr{T}, val::Int32) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getVariationalRefinementAlpha(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementAlpha(julia_to_cpp(cobj)))
end

function setVariationalRefinementAlpha(cobj::cv_Ptr{T}, val::Float32) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementAlpha(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getVariationalRefinementDelta(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementDelta(julia_to_cpp(cobj)))
end

function setVariationalRefinementDelta(cobj::cv_Ptr{T}, val::Float32) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementDelta(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getVariationalRefinementGamma(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementGamma(julia_to_cpp(cobj)))
end

function setVariationalRefinementGamma(cobj::cv_Ptr{T}, val::Float32) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementGamma(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getUseMeanNormalization(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getUseMeanNormalization(julia_to_cpp(cobj)))
end

function setUseMeanNormalization(cobj::cv_Ptr{T}, val::Bool) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setUseMeanNormalization(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getUseSpatialPropagation(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getUseSpatialPropagation(julia_to_cpp(cobj)))
end

function setUseSpatialPropagation(cobj::cv_Ptr{T}, val::Bool) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setUseSpatialPropagation(julia_to_cpp(cobj),julia_to_cpp(val)))
end
function Base.getproperty(m::SparsePyrLKOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SparsePyrLKOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getWinSize(cobj::cv_Ptr{T}) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getWinSize(julia_to_cpp(cobj)))
end

function setWinSize(cobj::cv_Ptr{T}, winSize::Size) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setWinSize(julia_to_cpp(cobj),julia_to_cpp(winSize)))
end

function getMaxLevel(cobj::cv_Ptr{T}) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getMaxLevel(julia_to_cpp(cobj)))
end

function setMaxLevel(cobj::cv_Ptr{T}, maxLevel::Int32) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setMaxLevel(julia_to_cpp(cobj),julia_to_cpp(maxLevel)))
end

function getTermCriteria(cobj::cv_Ptr{T}) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getTermCriteria(julia_to_cpp(cobj)))
end

function setTermCriteria(cobj::cv_Ptr{T}, crit::TermCriteria) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(crit)))
end

function getFlags(cobj::cv_Ptr{T}) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getFlags(julia_to_cpp(cobj)))
end

function setFlags(cobj::cv_Ptr{T}, flags::Int32) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setFlags(julia_to_cpp(cobj),julia_to_cpp(flags)))
end

function getMinEigThreshold(cobj::cv_Ptr{T}) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getMinEigThreshold(julia_to_cpp(cobj)))
end

function setMinEigThreshold(cobj::cv_Ptr{T}, minEigThreshold::Float64) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setMinEigThreshold(julia_to_cpp(cobj),julia_to_cpp(minEigThreshold)))
end
function Base.getproperty(m::BackgroundSubtractor, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BackgroundSubtractor, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function apply(cobj::cv_Ptr{T}, image::Image, fgmask::Image, learningRate::Float64) where {T <: BackgroundSubtractor}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractor_cv_BackgroundSubtractor_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::cv_Ptr{T}, image::Image; fgmask::Image = (Mat()), learningRate::Float64 = Float64(-1)) where {T <: BackgroundSubtractor} = apply(cobj, image, fgmask, learningRate)

function apply(cobj::cv_Ptr{T}, image::UMat, fgmask::UMat, learningRate::Float64) where {T <: BackgroundSubtractor}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractor_cv_BackgroundSubtractor_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::cv_Ptr{T}, image::UMat; fgmask::UMat = (UMat()), learningRate::Float64 = Float64(-1)) where {T <: BackgroundSubtractor} = apply(cobj, image, fgmask, learningRate)

function getBackgroundImage(cobj::cv_Ptr{T}, backgroundImage::Image) where {T <: BackgroundSubtractor}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractor_cv_BackgroundSubtractor_getBackgroundImage(julia_to_cpp(cobj),julia_to_cpp(backgroundImage)))
end
getBackgroundImage(cobj::cv_Ptr{T}; backgroundImage::Image = (Mat())) where {T <: BackgroundSubtractor} = getBackgroundImage(cobj, backgroundImage)

function getBackgroundImage(cobj::cv_Ptr{T}, backgroundImage::UMat) where {T <: BackgroundSubtractor}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractor_cv_BackgroundSubtractor_getBackgroundImage(julia_to_cpp(cobj),julia_to_cpp(backgroundImage)))
end
function Base.getproperty(m::BackgroundSubtractorMOG2, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BackgroundSubtractorMOG2, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getHistory(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getHistory(julia_to_cpp(cobj)))
end

function setHistory(cobj::cv_Ptr{T}, history::Int32) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setHistory(julia_to_cpp(cobj),julia_to_cpp(history)))
end

function getNMixtures(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getNMixtures(julia_to_cpp(cobj)))
end

function setNMixtures(cobj::cv_Ptr{T}, nmixtures::Int32) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setNMixtures(julia_to_cpp(cobj),julia_to_cpp(nmixtures)))
end

function getBackgroundRatio(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getBackgroundRatio(julia_to_cpp(cobj)))
end

function setBackgroundRatio(cobj::cv_Ptr{T}, ratio::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setBackgroundRatio(julia_to_cpp(cobj),julia_to_cpp(ratio)))
end

function getVarThreshold(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarThreshold(julia_to_cpp(cobj)))
end

function setVarThreshold(cobj::cv_Ptr{T}, varThreshold::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarThreshold(julia_to_cpp(cobj),julia_to_cpp(varThreshold)))
end

function getVarThresholdGen(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarThresholdGen(julia_to_cpp(cobj)))
end

function setVarThresholdGen(cobj::cv_Ptr{T}, varThresholdGen::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarThresholdGen(julia_to_cpp(cobj),julia_to_cpp(varThresholdGen)))
end

function getVarInit(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarInit(julia_to_cpp(cobj)))
end

function setVarInit(cobj::cv_Ptr{T}, varInit::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarInit(julia_to_cpp(cobj),julia_to_cpp(varInit)))
end

function getVarMin(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarMin(julia_to_cpp(cobj)))
end

function setVarMin(cobj::cv_Ptr{T}, varMin::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarMin(julia_to_cpp(cobj),julia_to_cpp(varMin)))
end

function getVarMax(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarMax(julia_to_cpp(cobj)))
end

function setVarMax(cobj::cv_Ptr{T}, varMax::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarMax(julia_to_cpp(cobj),julia_to_cpp(varMax)))
end

function getComplexityReductionThreshold(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getComplexityReductionThreshold(julia_to_cpp(cobj)))
end

function setComplexityReductionThreshold(cobj::cv_Ptr{T}, ct::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setComplexityReductionThreshold(julia_to_cpp(cobj),julia_to_cpp(ct)))
end

function getDetectShadows(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getDetectShadows(julia_to_cpp(cobj)))
end

function setDetectShadows(cobj::cv_Ptr{T}, detectShadows::Bool) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setDetectShadows(julia_to_cpp(cobj),julia_to_cpp(detectShadows)))
end

function getShadowValue(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getShadowValue(julia_to_cpp(cobj)))
end

function setShadowValue(cobj::cv_Ptr{T}, value::Int32) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setShadowValue(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function getShadowThreshold(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getShadowThreshold(julia_to_cpp(cobj)))
end

function setShadowThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setShadowThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function apply(cobj::cv_Ptr{T}, image::Image, fgmask::Image, learningRate::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::cv_Ptr{T}, image::Image; fgmask::Image = (Mat()), learningRate::Float64 = Float64(-1)) where {T <: BackgroundSubtractorMOG2} = apply(cobj, image, fgmask, learningRate)

function apply(cobj::cv_Ptr{T}, image::UMat, fgmask::UMat, learningRate::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::cv_Ptr{T}, image::UMat; fgmask::UMat = (UMat()), learningRate::Float64 = Float64(-1)) where {T <: BackgroundSubtractorMOG2} = apply(cobj, image, fgmask, learningRate)
function Base.getproperty(m::BackgroundSubtractorKNN, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BackgroundSubtractorKNN, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getHistory(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getHistory(julia_to_cpp(cobj)))
end

function setHistory(cobj::cv_Ptr{T}, history::Int32) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setHistory(julia_to_cpp(cobj),julia_to_cpp(history)))
end

function getNSamples(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getNSamples(julia_to_cpp(cobj)))
end

function setNSamples(cobj::cv_Ptr{T}, _nN::Int32) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setNSamples(julia_to_cpp(cobj),julia_to_cpp(_nN)))
end

function getDist2Threshold(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getDist2Threshold(julia_to_cpp(cobj)))
end

function setDist2Threshold(cobj::cv_Ptr{T}, _dist2Threshold::Float64) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setDist2Threshold(julia_to_cpp(cobj),julia_to_cpp(_dist2Threshold)))
end

function getkNNSamples(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getkNNSamples(julia_to_cpp(cobj)))
end

function setkNNSamples(cobj::cv_Ptr{T}, _nkNN::Int32) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setkNNSamples(julia_to_cpp(cobj),julia_to_cpp(_nkNN)))
end

function getDetectShadows(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getDetectShadows(julia_to_cpp(cobj)))
end

function setDetectShadows(cobj::cv_Ptr{T}, detectShadows::Bool) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setDetectShadows(julia_to_cpp(cobj),julia_to_cpp(detectShadows)))
end

function getShadowValue(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getShadowValue(julia_to_cpp(cobj)))
end

function setShadowValue(cobj::cv_Ptr{T}, value::Int32) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setShadowValue(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function getShadowThreshold(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getShadowThreshold(julia_to_cpp(cobj)))
end

function setShadowThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setShadowThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
function Base.getproperty(m::BaseCascadeClassifier, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BaseCascadeClassifier, s::Symbol, v)
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::CascadeClassifier, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::CascadeClassifier, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function empty(cobj::CascadeClassifier)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_empty(julia_to_cpp(cobj)))
end

function load(cobj::CascadeClassifier, filename::String)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_load(julia_to_cpp(cobj),julia_to_cpp(filename)))
end

function read(cobj::CascadeClassifier, node::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_read(julia_to_cpp(cobj),julia_to_cpp(node)))
end

function detectMultiScale(cobj::CascadeClassifier, image::Image, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale(cobj::CascadeClassifier, image::Image; scaleFactor::Float64 = Float64(1.1), minNeighbors::Int32 = Int32(3), flags::Int32 = Int32(0), minSize::Size = (SizeOP), maxSize::Size = (SizeOP)) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function detectMultiScale(cobj::CascadeClassifier, image::UMat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale(cobj::CascadeClassifier, image::UMat; scaleFactor::Float64 = Float64(1.1), minNeighbors::Int32 = Int32(3), flags::Int32 = Int32(0), minSize::Size = (SizeOP), maxSize::Size = (SizeOP)) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function detectMultiScale(cobj::CascadeClassifier, image::Image, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end

function detectMultiScale(cobj::CascadeClassifier, image::UMat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end

function detectMultiScale(cobj::CascadeClassifier, image::Image, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size, outputRejectLevels::Bool)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize),julia_to_cpp(outputRejectLevels)))
end

function detectMultiScale(cobj::CascadeClassifier, image::UMat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size, outputRejectLevels::Bool)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize),julia_to_cpp(outputRejectLevels)))
end

function isOldFormatCascade(cobj::CascadeClassifier)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_isOldFormatCascade(julia_to_cpp(cobj)))
end

function getOriginalWindowSize(cobj::CascadeClassifier)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_getOriginalWindowSize(julia_to_cpp(cobj)))
end

function getFeatureType(cobj::CascadeClassifier)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_getFeatureType(julia_to_cpp(cobj)))
end

function CascadeClassifier()
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_CascadeClassifier())
end

function CascadeClassifier(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_CascadeClassifier(julia_to_cpp(filename)))
end
function Base.getproperty(m::HOGDescriptor, s::Symbol)
    if s==:winSize
        return cpp_to_julia(jlopencv_HOGDescriptor_get_winSize(m))
    end
    if s==:blockSize
        return cpp_to_julia(jlopencv_HOGDescriptor_get_blockSize(m))
    end
    if s==:blockStride
        return cpp_to_julia(jlopencv_HOGDescriptor_get_blockStride(m))
    end
    if s==:cellSize
        return cpp_to_julia(jlopencv_HOGDescriptor_get_cellSize(m))
    end
    if s==:nbins
        return cpp_to_julia(jlopencv_HOGDescriptor_get_nbins(m))
    end
    if s==:derivAperture
        return cpp_to_julia(jlopencv_HOGDescriptor_get_derivAperture(m))
    end
    if s==:winSigma
        return cpp_to_julia(jlopencv_HOGDescriptor_get_winSigma(m))
    end
    if s==:histogramNormType
        return cpp_to_julia(jlopencv_HOGDescriptor_get_histogramNormType(m))
    end
    if s==:L2HysThreshold
        return cpp_to_julia(jlopencv_HOGDescriptor_get_L2HysThreshold(m))
    end
    if s==:gammaCorrection
        return cpp_to_julia(jlopencv_HOGDescriptor_get_gammaCorrection(m))
    end
    if s==:svmDetector
        return cpp_to_julia(jlopencv_HOGDescriptor_get_svmDetector(m))
    end
    if s==:nlevels
        return cpp_to_julia(jlopencv_HOGDescriptor_get_nlevels(m))
    end
    if s==:signedGradient
        return cpp_to_julia(jlopencv_HOGDescriptor_get_signedGradient(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::HOGDescriptor, s::Symbol, v)
    if s==:winSize
        jlopencv_HOGDescriptor_set_winSize(m, julia_to_cpp(v))
    end
    if s==:blockSize
        jlopencv_HOGDescriptor_set_blockSize(m, julia_to_cpp(v))
    end
    if s==:blockStride
        jlopencv_HOGDescriptor_set_blockStride(m, julia_to_cpp(v))
    end
    if s==:cellSize
        jlopencv_HOGDescriptor_set_cellSize(m, julia_to_cpp(v))
    end
    if s==:nbins
        jlopencv_HOGDescriptor_set_nbins(m, julia_to_cpp(v))
    end
    if s==:derivAperture
        jlopencv_HOGDescriptor_set_derivAperture(m, julia_to_cpp(v))
    end
    if s==:winSigma
        jlopencv_HOGDescriptor_set_winSigma(m, julia_to_cpp(v))
    end
    if s==:histogramNormType
        jlopencv_HOGDescriptor_set_histogramNormType(m, julia_to_cpp(v))
    end
    if s==:L2HysThreshold
        jlopencv_HOGDescriptor_set_L2HysThreshold(m, julia_to_cpp(v))
    end
    if s==:gammaCorrection
        jlopencv_HOGDescriptor_set_gammaCorrection(m, julia_to_cpp(v))
    end
    if s==:svmDetector
        jlopencv_HOGDescriptor_set_svmDetector(m, julia_to_cpp(v))
    end
    if s==:nlevels
        jlopencv_HOGDescriptor_set_nlevels(m, julia_to_cpp(v))
    end
    if s==:signedGradient
        jlopencv_HOGDescriptor_set_signedGradient(m, julia_to_cpp(v))
    end
    return Base.setfield(m, s, v)
end

function getDescriptorSize(cobj::HOGDescriptor)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_getDescriptorSize(julia_to_cpp(cobj)))
end

function checkDetectorSize(cobj::HOGDescriptor)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_checkDetectorSize(julia_to_cpp(cobj)))
end

function getWinSigma(cobj::HOGDescriptor)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_getWinSigma(julia_to_cpp(cobj)))
end

function setSVMDetector(cobj::HOGDescriptor, svmdetector::Image)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_setSVMDetector(julia_to_cpp(cobj),julia_to_cpp(svmdetector)))
end

function setSVMDetector(cobj::HOGDescriptor, svmdetector::UMat)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_setSVMDetector(julia_to_cpp(cobj),julia_to_cpp(svmdetector)))
end

function load(cobj::HOGDescriptor, filename::String, objname::String)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_load(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(objname)))
end
load(cobj::HOGDescriptor, filename::String; objname::String = (String())) = load(cobj, filename, objname)

function save(cobj::HOGDescriptor, filename::String, objname::String)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_save(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(objname)))
end
save(cobj::HOGDescriptor, filename::String; objname::String = (String())) = save(cobj, filename, objname)

function compute(cobj::HOGDescriptor, img::Image, winStride::Size, padding::Size, locations::Array{Point{Int32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_compute(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(locations)))
end
compute(cobj::HOGDescriptor, img::Image; winStride::Size = (SizeOP), padding::Size = (SizeOP), locations::Array{Point{Int32}, 1} = (stdggvectoriPointkOP)) = compute(cobj, img, winStride, padding, locations)

function compute(cobj::HOGDescriptor, img::UMat, winStride::Size, padding::Size, locations::Array{Point{Int32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_compute(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(locations)))
end
compute(cobj::HOGDescriptor, img::UMat; winStride::Size = (SizeOP), padding::Size = (SizeOP), locations::Array{Point{Int32}, 1} = (stdggvectoriPointkOP)) = compute(cobj, img, winStride, padding, locations)

function detect(cobj::HOGDescriptor, img::Image, hitThreshold::Float64, winStride::Size, padding::Size, searchLocations::Array{Point{Int32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(searchLocations)))
end
detect(cobj::HOGDescriptor, img::Image; hitThreshold::Float64 = Float64(0), winStride::Size = (SizeOP), padding::Size = (SizeOP), searchLocations::Array{Point{Int32}, 1} = (stdggvectoriPointkOP)) = detect(cobj, img, hitThreshold, winStride, padding, searchLocations)

function detect(cobj::HOGDescriptor, img::UMat, hitThreshold::Float64, winStride::Size, padding::Size, searchLocations::Array{Point{Int32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(searchLocations)))
end
detect(cobj::HOGDescriptor, img::UMat; hitThreshold::Float64 = Float64(0), winStride::Size = (SizeOP), padding::Size = (SizeOP), searchLocations::Array{Point{Int32}, 1} = (stdggvectoriPointkOP)) = detect(cobj, img, hitThreshold, winStride, padding, searchLocations)

function detectMultiScale(cobj::HOGDescriptor, img::Image, hitThreshold::Float64, winStride::Size, padding::Size, scale::Float64, finalThreshold::Float64, useMeanshiftGrouping::Bool)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(scale),julia_to_cpp(finalThreshold),julia_to_cpp(useMeanshiftGrouping)))
end
detectMultiScale(cobj::HOGDescriptor, img::Image; hitThreshold::Float64 = Float64(0), winStride::Size = (SizeOP), padding::Size = (SizeOP), scale::Float64 = Float64(1.05), finalThreshold::Float64 = Float64(2.0), useMeanshiftGrouping::Bool = (false)) = detectMultiScale(cobj, img, hitThreshold, winStride, padding, scale, finalThreshold, useMeanshiftGrouping)

function detectMultiScale(cobj::HOGDescriptor, img::UMat, hitThreshold::Float64, winStride::Size, padding::Size, scale::Float64, finalThreshold::Float64, useMeanshiftGrouping::Bool)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(scale),julia_to_cpp(finalThreshold),julia_to_cpp(useMeanshiftGrouping)))
end
detectMultiScale(cobj::HOGDescriptor, img::UMat; hitThreshold::Float64 = Float64(0), winStride::Size = (SizeOP), padding::Size = (SizeOP), scale::Float64 = Float64(1.05), finalThreshold::Float64 = Float64(2.0), useMeanshiftGrouping::Bool = (false)) = detectMultiScale(cobj, img, hitThreshold, winStride, padding, scale, finalThreshold, useMeanshiftGrouping)

function computeGradient(cobj::HOGDescriptor, img::Image, grad::Image, angleOfs::Image, paddingTL::Size, paddingBR::Size)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_computeGradient(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(grad),julia_to_cpp(angleOfs),julia_to_cpp(paddingTL),julia_to_cpp(paddingBR)))
end
computeGradient(cobj::HOGDescriptor, img::Image, grad::Image, angleOfs::Image; paddingTL::Size = (SizeOP), paddingBR::Size = (SizeOP)) = computeGradient(cobj, img, grad, angleOfs, paddingTL, paddingBR)

function computeGradient(cobj::HOGDescriptor, img::UMat, grad::UMat, angleOfs::UMat, paddingTL::Size, paddingBR::Size)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_computeGradient(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(grad),julia_to_cpp(angleOfs),julia_to_cpp(paddingTL),julia_to_cpp(paddingBR)))
end
computeGradient(cobj::HOGDescriptor, img::UMat, grad::UMat, angleOfs::UMat; paddingTL::Size = (SizeOP), paddingBR::Size = (SizeOP)) = computeGradient(cobj, img, grad, angleOfs, paddingTL, paddingBR)

function HOGDescriptor()
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_HOGDescriptor())
end

function HOGDescriptor(_winSize::Size, _blockSize::Size, _blockStride::Size, _cellSize::Size, _nbins::Int32, _derivAperture::Int32, _winSigma::Float64, _histogramNormType::HOGDescriptor_HistogramNormType, _L2HysThreshold::Float64, _gammaCorrection::Bool, _nlevels::Int32, _signedGradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_HOGDescriptor(julia_to_cpp(_winSize),julia_to_cpp(_blockSize),julia_to_cpp(_blockStride),julia_to_cpp(_cellSize),julia_to_cpp(_nbins),julia_to_cpp(_derivAperture),julia_to_cpp(_winSigma),julia_to_cpp(_histogramNormType),julia_to_cpp(_L2HysThreshold),julia_to_cpp(_gammaCorrection),julia_to_cpp(_nlevels),julia_to_cpp(_signedGradient)))
end
HOGDescriptor(_winSize::Size, _blockSize::Size, _blockStride::Size, _cellSize::Size, _nbins::Int32; _derivAperture::Int32 = Int32(1), _winSigma::Float64 = Float64(-1), _histogramNormType::HOGDescriptor_HistogramNormType = (HOGDescriptorggLYHys), _L2HysThreshold::Float64 = Float64(0.2), _gammaCorrection::Bool = (false), _nlevels::Int32 = Int32(HOGDescriptor::DEFAULT_NLEVELS), _signedGradient::Bool = (false)) = HOGDescriptor(_winSize, _blockSize, _blockStride, _cellSize, _nbins, _derivAperture, _winSigma, _histogramNormType, _L2HysThreshold, _gammaCorrection, _nlevels, _signedGradient)

function HOGDescriptor(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_HOGDescriptor(julia_to_cpp(filename)))
end
function Base.getproperty(m::QRCodeDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::QRCodeDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setEpsX(cobj::QRCodeDetector, epsX::Float64)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_setEpsX(julia_to_cpp(cobj),julia_to_cpp(epsX)))
end

function setEpsY(cobj::QRCodeDetector, epsY::Float64)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_setEpsY(julia_to_cpp(cobj),julia_to_cpp(epsY)))
end

function detect(cobj::QRCodeDetector, img::Image, points::Image)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detect(cobj::QRCodeDetector, img::Image; points::Image = (Mat())) = detect(cobj, img, points)

function detect(cobj::QRCodeDetector, img::UMat, points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detect(cobj::QRCodeDetector, img::UMat; points::UMat = (UMat())) = detect(cobj, img, points)

function decode(cobj::QRCodeDetector, img::Image, points::Image, straight_qrcode::Image)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_decode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
decode(cobj::QRCodeDetector, img::Image, points::Image; straight_qrcode::Image = (MatOP)) = decode(cobj, img, points, straight_qrcode)

function decode(cobj::QRCodeDetector, img::UMat, points::UMat, straight_qrcode::UMat)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_decode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
decode(cobj::QRCodeDetector, img::UMat, points::UMat; straight_qrcode::UMat = (UMatOP)) = decode(cobj, img, points, straight_qrcode)

function detectAndDecode(cobj::QRCodeDetector, img::Image, points::Image, straight_qrcode::Image)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectAndDecode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
detectAndDecode(cobj::QRCodeDetector, img::Image; points::Image = (MatOP), straight_qrcode::Image = (MatOP)) = detectAndDecode(cobj, img, points, straight_qrcode)

function detectAndDecode(cobj::QRCodeDetector, img::UMat, points::UMat, straight_qrcode::UMat)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectAndDecode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
detectAndDecode(cobj::QRCodeDetector, img::UMat; points::UMat = (UMatOP), straight_qrcode::UMat = (UMatOP)) = detectAndDecode(cobj, img, points, straight_qrcode)

function detectMulti(cobj::QRCodeDetector, img::Image, points::Image)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detectMulti(cobj::QRCodeDetector, img::Image; points::Image = (Mat())) = detectMulti(cobj, img, points)

function detectMulti(cobj::QRCodeDetector, img::UMat, points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detectMulti(cobj::QRCodeDetector, img::UMat; points::UMat = (UMat())) = detectMulti(cobj, img, points)

function decodeMulti(cobj::QRCodeDetector, img::Image, points::Image, straight_qrcode::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_decodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
decodeMulti(cobj::QRCodeDetector, img::Image, points::Image; straight_qrcode::Array{Image, 1} = (vectorRMatOP)) = decodeMulti(cobj, img, points, straight_qrcode)

function decodeMulti(cobj::QRCodeDetector, img::UMat, points::UMat, straight_qrcode::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_decodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
decodeMulti(cobj::QRCodeDetector, img::UMat, points::UMat; straight_qrcode::Array{UMat, 1} = (vectorRUMatOP)) = decodeMulti(cobj, img, points, straight_qrcode)

function detectAndDecodeMulti(cobj::QRCodeDetector, img::Image, points::Image, straight_qrcode::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectAndDecodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
detectAndDecodeMulti(cobj::QRCodeDetector, img::Image; points::Image = (MatOP), straight_qrcode::Array{Image, 1} = (vectorRMatOP)) = detectAndDecodeMulti(cobj, img, points, straight_qrcode)

function detectAndDecodeMulti(cobj::QRCodeDetector, img::UMat, points::UMat, straight_qrcode::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectAndDecodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
detectAndDecodeMulti(cobj::QRCodeDetector, img::UMat; points::UMat = (UMatOP), straight_qrcode::Array{UMat, 1} = (vectorRUMatOP)) = detectAndDecodeMulti(cobj, img, points, straight_qrcode)

function QRCodeDetector()
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_QRCodeDetector())
end
function Base.getproperty(m::VideoCapture, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoCapture, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function open(cobj::VideoCapture, filename::String, apiPreference::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference)))
end
open(cobj::VideoCapture, filename::String; apiPreference::Int32 = Int32(CAP_ANY)) = open(cobj, filename, apiPreference)

function open(cobj::VideoCapture, index::Int32, apiPreference::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(index),julia_to_cpp(apiPreference)))
end
open(cobj::VideoCapture, index::Int32; apiPreference::Int32 = Int32(CAP_ANY)) = open(cobj, index, apiPreference)

function isOpened(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_isOpened(julia_to_cpp(cobj)))
end

function release(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_release(julia_to_cpp(cobj)))
end

function grab(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_grab(julia_to_cpp(cobj)))
end

function retrieve(cobj::VideoCapture, image::Image, flag::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_retrieve(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(flag)))
end
retrieve(cobj::VideoCapture; image::Image = (Mat()), flag::Int32 = Int32(0)) = retrieve(cobj, image, flag)

function retrieve(cobj::VideoCapture, image::UMat, flag::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_retrieve(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(flag)))
end

function read(cobj::VideoCapture, image::Image)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_read(julia_to_cpp(cobj),julia_to_cpp(image)))
end
read(cobj::VideoCapture; image::Image = (Mat())) = read(cobj, image)

function read(cobj::VideoCapture, image::UMat)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_read(julia_to_cpp(cobj),julia_to_cpp(image)))
end

function set(cobj::VideoCapture, propId::Int32, value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_set(julia_to_cpp(cobj),julia_to_cpp(propId),julia_to_cpp(value)))
end

function get(cobj::VideoCapture, propId::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_get(julia_to_cpp(cobj),julia_to_cpp(propId)))
end

function getBackendName(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_getBackendName(julia_to_cpp(cobj)))
end

function setExceptionMode(cobj::VideoCapture, enable::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_setExceptionMode(julia_to_cpp(cobj),julia_to_cpp(enable)))
end

function getExceptionMode(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_getExceptionMode(julia_to_cpp(cobj)))
end

function VideoCapture()
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture())
end

function VideoCapture(filename::String, apiPreference::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(filename),julia_to_cpp(apiPreference)))
end
VideoCapture(filename::String; apiPreference::Int32 = Int32(CAP_ANY)) = VideoCapture(filename, apiPreference)

function VideoCapture(index::Int32, apiPreference::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(index),julia_to_cpp(apiPreference)))
end
VideoCapture(index::Int32; apiPreference::Int32 = Int32(CAP_ANY)) = VideoCapture(index, apiPreference)
function Base.getproperty(m::VideoWriter, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoWriter, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function open(cobj::VideoWriter, filename::String, fourcc::Int32, fps::Float64, frameSize::Size, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::VideoWriter, filename::String, fourcc::Int32, fps::Float64, frameSize::Size; isColor::Bool = (true)) = open(cobj, filename, fourcc, fps, frameSize, isColor)

function open(cobj::VideoWriter, filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::VideoWriter, filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size; isColor::Bool = (true)) = open(cobj, filename, apiPreference, fourcc, fps, frameSize, isColor)

function isOpened(cobj::VideoWriter)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_isOpened(julia_to_cpp(cobj)))
end

function release(cobj::VideoWriter)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_release(julia_to_cpp(cobj)))
end

function write(cobj::VideoWriter, image::Image)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_write(julia_to_cpp(cobj),julia_to_cpp(image)))
end

function write(cobj::VideoWriter, image::UMat)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_write(julia_to_cpp(cobj),julia_to_cpp(image)))
end

function set(cobj::VideoWriter, propId::Int32, value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_set(julia_to_cpp(cobj),julia_to_cpp(propId),julia_to_cpp(value)))
end

function get(cobj::VideoWriter, propId::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_get(julia_to_cpp(cobj),julia_to_cpp(propId)))
end

function getBackendName(cobj::VideoWriter)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_getBackendName(julia_to_cpp(cobj)))
end

function VideoWriter()
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter())
end

function VideoWriter(filename::String, fourcc::Int32, fps::Float64, frameSize::Size, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
VideoWriter(filename::String, fourcc::Int32, fps::Float64, frameSize::Size; isColor::Bool = (true)) = VideoWriter(filename, fourcc, fps, frameSize, isColor)

function VideoWriter(filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
VideoWriter(filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size; isColor::Bool = (true)) = VideoWriter(filename, apiPreference, fourcc, fps, frameSize, isColor)

function borderInterpolate(p::Int32, len::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_borderInterpolate(julia_to_cpp(p),julia_to_cpp(len),julia_to_cpp(borderType)))
end

function copyMakeBorder(src::Image, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32, dst::Image, value::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_copyMakeBorder(julia_to_cpp(src),julia_to_cpp(top),julia_to_cpp(bottom),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(borderType),julia_to_cpp(dst),julia_to_cpp(value)))
end
copyMakeBorder(src::Image, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32; dst::Image = (Mat()), value::Scalar = (ScalarOP)) = copyMakeBorder(src, top, bottom, left, right, borderType, dst, value)

function copyMakeBorder(src::UMat, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32, dst::UMat, value::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_copyMakeBorder(julia_to_cpp(src),julia_to_cpp(top),julia_to_cpp(bottom),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(borderType),julia_to_cpp(dst),julia_to_cpp(value)))
end
copyMakeBorder(src::UMat, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32; dst::UMat = (UMat()), value::Scalar = (ScalarOP)) = copyMakeBorder(src, top, bottom, left, right, borderType, dst, value)

function add(src1::Image, src2::Image, dst::Image, mask::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_add(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
add(src1::Image, src2::Image; dst::Image = (Mat()), mask::Image = (MatOP), dtype::Int32 = Int32(-1)) = add(src1, src2, dst, mask, dtype)

function add(src1::UMat, src2::UMat, dst::UMat, mask::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_add(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
add(src1::UMat, src2::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP), dtype::Int32 = Int32(-1)) = add(src1, src2, dst, mask, dtype)

function subtract(src1::Image, src2::Image, dst::Image, mask::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_subtract(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
subtract(src1::Image, src2::Image; dst::Image = (Mat()), mask::Image = (MatOP), dtype::Int32 = Int32(-1)) = subtract(src1, src2, dst, mask, dtype)

function subtract(src1::UMat, src2::UMat, dst::UMat, mask::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_subtract(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
subtract(src1::UMat, src2::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP), dtype::Int32 = Int32(-1)) = subtract(src1, src2, dst, mask, dtype)

function multiply(src1::Image, src2::Image, dst::Image, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_multiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
multiply(src1::Image, src2::Image; dst::Image = (Mat()), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = multiply(src1, src2, dst, scale, dtype)

function multiply(src1::UMat, src2::UMat, dst::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_multiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
multiply(src1::UMat, src2::UMat; dst::UMat = (UMat()), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = multiply(src1, src2, dst, scale, dtype)

function divide(src1::Image, src2::Image, dst::Image, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
divide(src1::Image, src2::Image; dst::Image = (Mat()), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = divide(src1, src2, dst, scale, dtype)

function divide(src1::UMat, src2::UMat, dst::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
divide(src1::UMat, src2::UMat; dst::UMat = (UMat()), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = divide(src1, src2, dst, scale, dtype)

function divide(scale::Float64, src2::Image, dst::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(scale),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
divide(scale::Float64, src2::Image; dst::Image = (Mat()), dtype::Int32 = Int32(-1)) = divide(scale, src2, dst, dtype)

function divide(scale::Float64, src2::UMat, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(scale),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
divide(scale::Float64, src2::UMat; dst::UMat = (UMat()), dtype::Int32 = Int32(-1)) = divide(scale, src2, dst, dtype)

function scaleAdd(src1::Image, alpha::Float64, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_scaleAdd(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(dst)))
end
scaleAdd(src1::Image, alpha::Float64, src2::Image; dst::Image = (Mat())) = scaleAdd(src1, alpha, src2, dst)

function scaleAdd(src1::UMat, alpha::Float64, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_scaleAdd(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(dst)))
end
scaleAdd(src1::UMat, alpha::Float64, src2::UMat; dst::UMat = (UMat())) = scaleAdd(src1, alpha, src2, dst)

function addWeighted(src1::Image, alpha::Float64, src2::Image, beta::Float64, gamma::Float64, dst::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_addWeighted(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(beta),julia_to_cpp(gamma),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
addWeighted(src1::Image, alpha::Float64, src2::Image, beta::Float64, gamma::Float64; dst::Image = (Mat()), dtype::Int32 = Int32(-1)) = addWeighted(src1, alpha, src2, beta, gamma, dst, dtype)

function addWeighted(src1::UMat, alpha::Float64, src2::UMat, beta::Float64, gamma::Float64, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_addWeighted(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(beta),julia_to_cpp(gamma),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
addWeighted(src1::UMat, alpha::Float64, src2::UMat, beta::Float64, gamma::Float64; dst::UMat = (UMat()), dtype::Int32 = Int32(-1)) = addWeighted(src1, alpha, src2, beta, gamma, dst, dtype)

function convertScaleAbs(src::Image, dst::Image, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_convertScaleAbs(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
convertScaleAbs(src::Image; dst::Image = (Mat()), alpha::Float64 = Float64(1), beta::Float64 = Float64(0)) = convertScaleAbs(src, dst, alpha, beta)

function convertScaleAbs(src::UMat, dst::UMat, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_convertScaleAbs(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
convertScaleAbs(src::UMat; dst::UMat = (UMat()), alpha::Float64 = Float64(1), beta::Float64 = Float64(0)) = convertScaleAbs(src, dst, alpha, beta)

function convertFp16(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_convertFp16(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertFp16(src::Image; dst::Image = (Mat())) = convertFp16(src, dst)

function convertFp16(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_convertFp16(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertFp16(src::UMat; dst::UMat = (UMat())) = convertFp16(src, dst)

function LUT(src::Image, lut::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_LUT(julia_to_cpp(src),julia_to_cpp(lut),julia_to_cpp(dst)))
end
LUT(src::Image, lut::Image; dst::Image = (Mat())) = LUT(src, lut, dst)

function LUT(src::UMat, lut::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_LUT(julia_to_cpp(src),julia_to_cpp(lut),julia_to_cpp(dst)))
end
LUT(src::UMat, lut::UMat; dst::UMat = (UMat())) = LUT(src, lut, dst)

function sumElems(src::Image)
	return cpp_to_julia(jlopencv_cv_cv_sum(julia_to_cpp(src)))
end

function sumElems(src::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sum(julia_to_cpp(src)))
end

function countNonZero(src::Image)
	return cpp_to_julia(jlopencv_cv_cv_countNonZero(julia_to_cpp(src)))
end

function countNonZero(src::UMat)
	return cpp_to_julia(jlopencv_cv_cv_countNonZero(julia_to_cpp(src)))
end

function findNonZero(src::Image, idx::Image)
	return cpp_to_julia(jlopencv_cv_cv_findNonZero(julia_to_cpp(src),julia_to_cpp(idx)))
end
findNonZero(src::Image; idx::Image = (Mat())) = findNonZero(src, idx)

function findNonZero(src::UMat, idx::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findNonZero(julia_to_cpp(src),julia_to_cpp(idx)))
end
findNonZero(src::UMat; idx::UMat = (UMat())) = findNonZero(src, idx)

function mean(src::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_mean(julia_to_cpp(src),julia_to_cpp(mask)))
end
mean(src::Image; mask::Image = (MatOP)) = mean(src, mask)

function mean(src::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_mean(julia_to_cpp(src),julia_to_cpp(mask)))
end
mean(src::UMat; mask::UMat = (UMatOP)) = mean(src, mask)

function meanStdDev(src::Image, mean::Image, stddev::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_meanStdDev(julia_to_cpp(src),julia_to_cpp(mean),julia_to_cpp(stddev),julia_to_cpp(mask)))
end
meanStdDev(src::Image; mean::Image = (Mat()), stddev::Image = (Mat()), mask::Image = (MatOP)) = meanStdDev(src, mean, stddev, mask)

function meanStdDev(src::UMat, mean::UMat, stddev::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_meanStdDev(julia_to_cpp(src),julia_to_cpp(mean),julia_to_cpp(stddev),julia_to_cpp(mask)))
end
meanStdDev(src::UMat; mean::UMat = (UMat()), stddev::UMat = (UMat()), mask::UMat = (UMatOP)) = meanStdDev(src, mean, stddev, mask)

function norm(src1::Image, normType::Int32, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::Image; normType::Int32 = Int32(NORM_L2), mask::Image = (MatOP)) = norm(src1, normType, mask)

function norm(src1::UMat, normType::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::UMat; normType::Int32 = Int32(NORM_L2), mask::UMat = (UMatOP)) = norm(src1, normType, mask)

function norm(src1::Image, src2::Image, normType::Int32, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::Image, src2::Image; normType::Int32 = Int32(NORM_L2), mask::Image = (MatOP)) = norm(src1, src2, normType, mask)

function norm(src1::UMat, src2::UMat, normType::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::UMat, src2::UMat; normType::Int32 = Int32(NORM_L2), mask::UMat = (UMatOP)) = norm(src1, src2, normType, mask)

function PSNR(src1::Image, src2::Image, R::Float64)
	return cpp_to_julia(jlopencv_cv_cv_PSNR(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(R)))
end
PSNR(src1::Image, src2::Image; R::Float64 = Float64(255.)) = PSNR(src1, src2, R)

function PSNR(src1::UMat, src2::UMat, R::Float64)
	return cpp_to_julia(jlopencv_cv_cv_PSNR(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(R)))
end
PSNR(src1::UMat, src2::UMat; R::Float64 = Float64(255.)) = PSNR(src1, src2, R)

function batchDistance(src1::Image, src2::Image, dtype::Int32, dist::Image, nidx::Image, normType::Int32, K::Int32, mask::Image, update::Int32, crosscheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_batchDistance(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dtype),julia_to_cpp(dist),julia_to_cpp(nidx),julia_to_cpp(normType),julia_to_cpp(K),julia_to_cpp(mask),julia_to_cpp(update),julia_to_cpp(crosscheck)))
end
batchDistance(src1::Image, src2::Image, dtype::Int32; dist::Image = (Mat()), nidx::Image = (Mat()), normType::Int32 = Int32(NORM_L2), K::Int32 = Int32(0), mask::Image = (MatOP), update::Int32 = Int32(0), crosscheck::Bool = (false)) = batchDistance(src1, src2, dtype, dist, nidx, normType, K, mask, update, crosscheck)

function batchDistance(src1::UMat, src2::UMat, dtype::Int32, dist::UMat, nidx::UMat, normType::Int32, K::Int32, mask::UMat, update::Int32, crosscheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_batchDistance(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dtype),julia_to_cpp(dist),julia_to_cpp(nidx),julia_to_cpp(normType),julia_to_cpp(K),julia_to_cpp(mask),julia_to_cpp(update),julia_to_cpp(crosscheck)))
end
batchDistance(src1::UMat, src2::UMat, dtype::Int32; dist::UMat = (UMat()), nidx::UMat = (UMat()), normType::Int32 = Int32(NORM_L2), K::Int32 = Int32(0), mask::UMat = (UMatOP), update::Int32 = Int32(0), crosscheck::Bool = (false)) = batchDistance(src1, src2, dtype, dist, nidx, normType, K, mask, update, crosscheck)

function normalize(src::Image, dst::Image, alpha::Float64, beta::Float64, norm_type::Int32, dtype::Int32, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_normalize(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(norm_type),julia_to_cpp(dtype),julia_to_cpp(mask)))
end
normalize(src::Image, dst::Image; alpha::Float64 = Float64(1), beta::Float64 = Float64(0), norm_type::Int32 = Int32(NORM_L2), dtype::Int32 = Int32(-1), mask::Image = (MatOP)) = normalize(src, dst, alpha, beta, norm_type, dtype, mask)

function normalize(src::UMat, dst::UMat, alpha::Float64, beta::Float64, norm_type::Int32, dtype::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_normalize(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(norm_type),julia_to_cpp(dtype),julia_to_cpp(mask)))
end
normalize(src::UMat, dst::UMat; alpha::Float64 = Float64(1), beta::Float64 = Float64(0), norm_type::Int32 = Int32(NORM_L2), dtype::Int32 = Int32(-1), mask::UMat = (UMatOP)) = normalize(src, dst, alpha, beta, norm_type, dtype, mask)

function minMaxLoc(src::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_minMaxLoc(julia_to_cpp(src),julia_to_cpp(mask)))
end
minMaxLoc(src::Image; mask::Image = (MatOP)) = minMaxLoc(src, mask)

function minMaxLoc(src::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_minMaxLoc(julia_to_cpp(src),julia_to_cpp(mask)))
end
minMaxLoc(src::UMat; mask::UMat = (UMatOP)) = minMaxLoc(src, mask)

function reduce(src::Image, dim::Int32, rtype::Int32, dst::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_reduce(julia_to_cpp(src),julia_to_cpp(dim),julia_to_cpp(rtype),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
reduce(src::Image, dim::Int32, rtype::Int32; dst::Image = (Mat()), dtype::Int32 = Int32(-1)) = reduce(src, dim, rtype, dst, dtype)

function reduce(src::UMat, dim::Int32, rtype::Int32, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_reduce(julia_to_cpp(src),julia_to_cpp(dim),julia_to_cpp(rtype),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
reduce(src::UMat, dim::Int32, rtype::Int32; dst::UMat = (UMat()), dtype::Int32 = Int32(-1)) = reduce(src, dim, rtype, dst, dtype)

function merge(mv::Array{Image, 1}, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_merge(julia_to_cpp(mv),julia_to_cpp(dst)))
end
merge(mv::Array{Image, 1}; dst::Image = (Mat())) = merge(mv, dst)

function merge(mv::Array{UMat, 1}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_merge(julia_to_cpp(mv),julia_to_cpp(dst)))
end
merge(mv::Array{UMat, 1}; dst::UMat = (UMat())) = merge(mv, dst)

function split(m::Image, mv::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_split(julia_to_cpp(m),julia_to_cpp(mv)))
end
split(m::Image; mv::Array{Image, 1} = (Array{Image, 1}())) = split(m, mv)

function split(m::UMat, mv::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_split(julia_to_cpp(m),julia_to_cpp(mv)))
end
split(m::UMat; mv::Array{UMat, 1} = (Array{UMat, 1}())) = split(m, mv)

function mixChannels(src::Array{Image, 1}, dst::Array{Image, 1}, fromTo::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_mixChannels(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fromTo)))
end

function mixChannels(src::Array{UMat, 1}, dst::Array{UMat, 1}, fromTo::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_mixChannels(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fromTo)))
end

function extractChannel(src::Image, coi::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_extractChannel(julia_to_cpp(src),julia_to_cpp(coi),julia_to_cpp(dst)))
end
extractChannel(src::Image, coi::Int32; dst::Image = (Mat())) = extractChannel(src, coi, dst)

function extractChannel(src::UMat, coi::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_extractChannel(julia_to_cpp(src),julia_to_cpp(coi),julia_to_cpp(dst)))
end
extractChannel(src::UMat, coi::Int32; dst::UMat = (UMat())) = extractChannel(src, coi, dst)

function insertChannel(src::Image, dst::Image, coi::Int32)
	return cpp_to_julia(jlopencv_cv_cv_insertChannel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(coi)))
end

function insertChannel(src::UMat, dst::UMat, coi::Int32)
	return cpp_to_julia(jlopencv_cv_cv_insertChannel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(coi)))
end

function flip(src::Image, flipCode::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_flip(julia_to_cpp(src),julia_to_cpp(flipCode),julia_to_cpp(dst)))
end
flip(src::Image, flipCode::Int32; dst::Image = (Mat())) = flip(src, flipCode, dst)

function flip(src::UMat, flipCode::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_flip(julia_to_cpp(src),julia_to_cpp(flipCode),julia_to_cpp(dst)))
end
flip(src::UMat, flipCode::Int32; dst::UMat = (UMat())) = flip(src, flipCode, dst)

function rotate(src::Image, rotateCode::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_rotate(julia_to_cpp(src),julia_to_cpp(rotateCode),julia_to_cpp(dst)))
end
rotate(src::Image, rotateCode::Int32; dst::Image = (Mat())) = rotate(src, rotateCode, dst)

function rotate(src::UMat, rotateCode::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_rotate(julia_to_cpp(src),julia_to_cpp(rotateCode),julia_to_cpp(dst)))
end
rotate(src::UMat, rotateCode::Int32; dst::UMat = (UMat())) = rotate(src, rotateCode, dst)

function repeat(src::Image, ny::Int32, nx::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_repeat(julia_to_cpp(src),julia_to_cpp(ny),julia_to_cpp(nx),julia_to_cpp(dst)))
end
repeat(src::Image, ny::Int32, nx::Int32; dst::Image = (Mat())) = repeat(src, ny, nx, dst)

function repeat(src::UMat, ny::Int32, nx::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_repeat(julia_to_cpp(src),julia_to_cpp(ny),julia_to_cpp(nx),julia_to_cpp(dst)))
end
repeat(src::UMat, ny::Int32, nx::Int32; dst::UMat = (UMat())) = repeat(src, ny, nx, dst)

function hconcat(src::Array{Image, 1}, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_hconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
hconcat(src::Array{Image, 1}; dst::Image = (Mat())) = hconcat(src, dst)

function hconcat(src::Array{UMat, 1}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_hconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
hconcat(src::Array{UMat, 1}; dst::UMat = (UMat())) = hconcat(src, dst)

function vconcat(src::Array{Image, 1}, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_vconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
vconcat(src::Array{Image, 1}; dst::Image = (Mat())) = vconcat(src, dst)

function vconcat(src::Array{UMat, 1}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_vconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
vconcat(src::Array{UMat, 1}; dst::UMat = (UMat())) = vconcat(src, dst)

function bitwise_and(src1::Image, src2::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_and(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_and(src1::Image, src2::Image; dst::Image = (Mat()), mask::Image = (MatOP)) = bitwise_and(src1, src2, dst, mask)

function bitwise_and(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_and(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_and(src1::UMat, src2::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP)) = bitwise_and(src1, src2, dst, mask)

function bitwise_or(src1::Image, src2::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_or(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_or(src1::Image, src2::Image; dst::Image = (Mat()), mask::Image = (MatOP)) = bitwise_or(src1, src2, dst, mask)

function bitwise_or(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_or(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_or(src1::UMat, src2::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP)) = bitwise_or(src1, src2, dst, mask)

function bitwise_xor(src1::Image, src2::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_xor(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_xor(src1::Image, src2::Image; dst::Image = (Mat()), mask::Image = (MatOP)) = bitwise_xor(src1, src2, dst, mask)

function bitwise_xor(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_xor(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_xor(src1::UMat, src2::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP)) = bitwise_xor(src1, src2, dst, mask)

function bitwise_not(src::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_not(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_not(src::Image; dst::Image = (Mat()), mask::Image = (MatOP)) = bitwise_not(src, dst, mask)

function bitwise_not(src::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_not(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_not(src::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP)) = bitwise_not(src, dst, mask)

function absdiff(src1::Image, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_absdiff(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
absdiff(src1::Image, src2::Image; dst::Image = (Mat())) = absdiff(src1, src2, dst)

function absdiff(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_absdiff(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
absdiff(src1::UMat, src2::UMat; dst::UMat = (UMat())) = absdiff(src1, src2, dst)

function copyTo(src::Image, mask::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_copyTo(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst)))
end
copyTo(src::Image, mask::Image; dst::Image = (Mat())) = copyTo(src, mask, dst)

function copyTo(src::UMat, mask::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_copyTo(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst)))
end
copyTo(src::UMat, mask::UMat; dst::UMat = (UMat())) = copyTo(src, mask, dst)

function inRange(src::Image, lowerb::Image, upperb::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_inRange(julia_to_cpp(src),julia_to_cpp(lowerb),julia_to_cpp(upperb),julia_to_cpp(dst)))
end
inRange(src::Image, lowerb::Image, upperb::Image; dst::Image = (Mat())) = inRange(src, lowerb, upperb, dst)

function inRange(src::UMat, lowerb::UMat, upperb::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_inRange(julia_to_cpp(src),julia_to_cpp(lowerb),julia_to_cpp(upperb),julia_to_cpp(dst)))
end
inRange(src::UMat, lowerb::UMat, upperb::UMat; dst::UMat = (UMat())) = inRange(src, lowerb, upperb, dst)

function compare(src1::Image, src2::Image, cmpop::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_compare(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(cmpop),julia_to_cpp(dst)))
end
compare(src1::Image, src2::Image, cmpop::Int32; dst::Image = (Mat())) = compare(src1, src2, cmpop, dst)

function compare(src1::UMat, src2::UMat, cmpop::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_compare(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(cmpop),julia_to_cpp(dst)))
end
compare(src1::UMat, src2::UMat, cmpop::Int32; dst::UMat = (UMat())) = compare(src1, src2, cmpop, dst)

function min(src1::Image, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_min(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
min(src1::Image, src2::Image; dst::Image = (Mat())) = min(src1, src2, dst)

function min(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_min(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
min(src1::UMat, src2::UMat; dst::UMat = (UMat())) = min(src1, src2, dst)

function max(src1::Image, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_max(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
max(src1::Image, src2::Image; dst::Image = (Mat())) = max(src1, src2, dst)

function max(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_max(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
max(src1::UMat, src2::UMat; dst::UMat = (UMat())) = max(src1, src2, dst)

function sqrt(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_sqrt(julia_to_cpp(src),julia_to_cpp(dst)))
end
sqrt(src::Image; dst::Image = (Mat())) = sqrt(src, dst)

function sqrt(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sqrt(julia_to_cpp(src),julia_to_cpp(dst)))
end
sqrt(src::UMat; dst::UMat = (UMat())) = sqrt(src, dst)

function pow(src::Image, power::Float64, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_pow(julia_to_cpp(src),julia_to_cpp(power),julia_to_cpp(dst)))
end
pow(src::Image, power::Float64; dst::Image = (Mat())) = pow(src, power, dst)

function pow(src::UMat, power::Float64, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_pow(julia_to_cpp(src),julia_to_cpp(power),julia_to_cpp(dst)))
end
pow(src::UMat, power::Float64; dst::UMat = (UMat())) = pow(src, power, dst)

function exp(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_exp(julia_to_cpp(src),julia_to_cpp(dst)))
end
exp(src::Image; dst::Image = (Mat())) = exp(src, dst)

function exp(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_exp(julia_to_cpp(src),julia_to_cpp(dst)))
end
exp(src::UMat; dst::UMat = (UMat())) = exp(src, dst)

function log(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_log(julia_to_cpp(src),julia_to_cpp(dst)))
end
log(src::Image; dst::Image = (Mat())) = log(src, dst)

function log(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_log(julia_to_cpp(src),julia_to_cpp(dst)))
end
log(src::UMat; dst::UMat = (UMat())) = log(src, dst)

function polarToCart(magnitude::Image, angle::Image, x::Image, y::Image, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_polarToCart(julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angleInDegrees)))
end
polarToCart(magnitude::Image, angle::Image; x::Image = (Mat()), y::Image = (Mat()), angleInDegrees::Bool = (false)) = polarToCart(magnitude, angle, x, y, angleInDegrees)

function polarToCart(magnitude::UMat, angle::UMat, x::UMat, y::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_polarToCart(julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angleInDegrees)))
end
polarToCart(magnitude::UMat, angle::UMat; x::UMat = (UMat()), y::UMat = (UMat()), angleInDegrees::Bool = (false)) = polarToCart(magnitude, angle, x, y, angleInDegrees)

function cartToPolar(x::Image, y::Image, magnitude::Image, angle::Image, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_cartToPolar(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
cartToPolar(x::Image, y::Image; magnitude::Image = (Mat()), angle::Image = (Mat()), angleInDegrees::Bool = (false)) = cartToPolar(x, y, magnitude, angle, angleInDegrees)

function cartToPolar(x::UMat, y::UMat, magnitude::UMat, angle::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_cartToPolar(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
cartToPolar(x::UMat, y::UMat; magnitude::UMat = (UMat()), angle::UMat = (UMat()), angleInDegrees::Bool = (false)) = cartToPolar(x, y, magnitude, angle, angleInDegrees)

function phase(x::Image, y::Image, angle::Image, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_phase(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
phase(x::Image, y::Image; angle::Image = (Mat()), angleInDegrees::Bool = (false)) = phase(x, y, angle, angleInDegrees)

function phase(x::UMat, y::UMat, angle::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_phase(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
phase(x::UMat, y::UMat; angle::UMat = (UMat()), angleInDegrees::Bool = (false)) = phase(x, y, angle, angleInDegrees)

function magnitude(x::Image, y::Image, magnitude::Image)
	return cpp_to_julia(jlopencv_cv_cv_magnitude(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude)))
end
magnitude(x::Image, y::Image; magnitude::Image = (Mat())) = magnitude(x, y, magnitude)

function magnitude(x::UMat, y::UMat, magnitude::UMat)
	return cpp_to_julia(jlopencv_cv_cv_magnitude(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude)))
end
magnitude(x::UMat, y::UMat; magnitude::UMat = (UMat())) = magnitude(x, y, magnitude)

function checkRange(a::Image, quiet::Bool, minVal::Float64, maxVal::Float64)
	return cpp_to_julia(jlopencv_cv_cv_checkRange(julia_to_cpp(a),julia_to_cpp(quiet),julia_to_cpp(minVal),julia_to_cpp(maxVal)))
end
checkRange(a::Image; quiet::Bool = (true), minVal::Float64 = Float64(-DBL_MAX), maxVal::Float64 = Float64(DBL_MAX)) = checkRange(a, quiet, minVal, maxVal)

function checkRange(a::UMat, quiet::Bool, minVal::Float64, maxVal::Float64)
	return cpp_to_julia(jlopencv_cv_cv_checkRange(julia_to_cpp(a),julia_to_cpp(quiet),julia_to_cpp(minVal),julia_to_cpp(maxVal)))
end
checkRange(a::UMat; quiet::Bool = (true), minVal::Float64 = Float64(-DBL_MAX), maxVal::Float64 = Float64(DBL_MAX)) = checkRange(a, quiet, minVal, maxVal)

function patchNaNs(a::Image, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_patchNaNs(julia_to_cpp(a),julia_to_cpp(val)))
end
patchNaNs(a::Image; val::Float64 = Float64(0)) = patchNaNs(a, val)

function patchNaNs(a::UMat, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_patchNaNs(julia_to_cpp(a),julia_to_cpp(val)))
end
patchNaNs(a::UMat; val::Float64 = Float64(0)) = patchNaNs(a, val)

function gemm(src1::Image, src2::Image, alpha::Float64, src3::Image, beta::Float64, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_gemm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(alpha),julia_to_cpp(src3),julia_to_cpp(beta),julia_to_cpp(dst),julia_to_cpp(flags)))
end
gemm(src1::Image, src2::Image, alpha::Float64, src3::Image, beta::Float64; dst::Image = (Mat()), flags::Int32 = Int32(0)) = gemm(src1, src2, alpha, src3, beta, dst, flags)

function gemm(src1::UMat, src2::UMat, alpha::Float64, src3::UMat, beta::Float64, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_gemm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(alpha),julia_to_cpp(src3),julia_to_cpp(beta),julia_to_cpp(dst),julia_to_cpp(flags)))
end
gemm(src1::UMat, src2::UMat, alpha::Float64, src3::UMat, beta::Float64; dst::UMat = (UMat()), flags::Int32 = Int32(0)) = gemm(src1, src2, alpha, src3, beta, dst, flags)

function mulTransposed(src::Image, aTa::Bool, dst::Image, delta::Image, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_mulTransposed(julia_to_cpp(src),julia_to_cpp(aTa),julia_to_cpp(dst),julia_to_cpp(delta),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
mulTransposed(src::Image, aTa::Bool; dst::Image = (Mat()), delta::Image = (MatOP), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = mulTransposed(src, aTa, dst, delta, scale, dtype)

function mulTransposed(src::UMat, aTa::Bool, dst::UMat, delta::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_mulTransposed(julia_to_cpp(src),julia_to_cpp(aTa),julia_to_cpp(dst),julia_to_cpp(delta),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
mulTransposed(src::UMat, aTa::Bool; dst::UMat = (UMat()), delta::UMat = (UMatOP), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = mulTransposed(src, aTa, dst, delta, scale, dtype)

function transpose(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_transpose(julia_to_cpp(src),julia_to_cpp(dst)))
end
transpose(src::Image; dst::Image = (Mat())) = transpose(src, dst)

function transpose(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_transpose(julia_to_cpp(src),julia_to_cpp(dst)))
end
transpose(src::UMat; dst::UMat = (UMat())) = transpose(src, dst)

function transform(src::Image, m::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_transform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
transform(src::Image, m::Image; dst::Image = (Mat())) = transform(src, m, dst)

function transform(src::UMat, m::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_transform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
transform(src::UMat, m::UMat; dst::UMat = (UMat())) = transform(src, m, dst)

function perspectiveTransform(src::Image, m::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_perspectiveTransform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
perspectiveTransform(src::Image, m::Image; dst::Image = (Mat())) = perspectiveTransform(src, m, dst)

function perspectiveTransform(src::UMat, m::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_perspectiveTransform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
perspectiveTransform(src::UMat, m::UMat; dst::UMat = (UMat())) = perspectiveTransform(src, m, dst)

function completeSymm(m::Image, lowerToUpper::Bool)
	return cpp_to_julia(jlopencv_cv_cv_completeSymm(julia_to_cpp(m),julia_to_cpp(lowerToUpper)))
end
completeSymm(m::Image; lowerToUpper::Bool = (false)) = completeSymm(m, lowerToUpper)

function completeSymm(m::UMat, lowerToUpper::Bool)
	return cpp_to_julia(jlopencv_cv_cv_completeSymm(julia_to_cpp(m),julia_to_cpp(lowerToUpper)))
end
completeSymm(m::UMat; lowerToUpper::Bool = (false)) = completeSymm(m, lowerToUpper)

function setIdentity(mtx::Image, s::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_setIdentity(julia_to_cpp(mtx),julia_to_cpp(s)))
end
setIdentity(mtx::Image; s::Scalar = (ScalarOXP)) = setIdentity(mtx, s)

function setIdentity(mtx::UMat, s::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_setIdentity(julia_to_cpp(mtx),julia_to_cpp(s)))
end
setIdentity(mtx::UMat; s::Scalar = (ScalarOXP)) = setIdentity(mtx, s)

function determinant(mtx::Image)
	return cpp_to_julia(jlopencv_cv_cv_determinant(julia_to_cpp(mtx)))
end

function determinant(mtx::UMat)
	return cpp_to_julia(jlopencv_cv_cv_determinant(julia_to_cpp(mtx)))
end

function trace(mtx::Image)
	return cpp_to_julia(jlopencv_cv_cv_trace(julia_to_cpp(mtx)))
end

function trace(mtx::UMat)
	return cpp_to_julia(jlopencv_cv_cv_trace(julia_to_cpp(mtx)))
end

function invert(src::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_invert(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
invert(src::Image; dst::Image = (Mat()), flags::Int32 = Int32(DECOMP_LU)) = invert(src, dst, flags)

function invert(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_invert(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
invert(src::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(DECOMP_LU)) = invert(src, dst, flags)

function solve(src1::Image, src2::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solve(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(flags)))
end
solve(src1::Image, src2::Image; dst::Image = (Mat()), flags::Int32 = Int32(DECOMP_LU)) = solve(src1, src2, dst, flags)

function solve(src1::UMat, src2::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solve(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(flags)))
end
solve(src1::UMat, src2::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(DECOMP_LU)) = solve(src1, src2, dst, flags)

function sort(src::Image, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_sort(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sort(src::Image, flags::Int32; dst::Image = (Mat())) = sort(src, flags, dst)

function sort(src::UMat, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sort(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sort(src::UMat, flags::Int32; dst::UMat = (UMat())) = sort(src, flags, dst)

function sortIdx(src::Image, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_sortIdx(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sortIdx(src::Image, flags::Int32; dst::Image = (Mat())) = sortIdx(src, flags, dst)

function sortIdx(src::UMat, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sortIdx(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sortIdx(src::UMat, flags::Int32; dst::UMat = (UMat())) = sortIdx(src, flags, dst)

function solveCubic(coeffs::Image, roots::Image)
	return cpp_to_julia(jlopencv_cv_cv_solveCubic(julia_to_cpp(coeffs),julia_to_cpp(roots)))
end
solveCubic(coeffs::Image; roots::Image = (Mat())) = solveCubic(coeffs, roots)

function solveCubic(coeffs::UMat, roots::UMat)
	return cpp_to_julia(jlopencv_cv_cv_solveCubic(julia_to_cpp(coeffs),julia_to_cpp(roots)))
end
solveCubic(coeffs::UMat; roots::UMat = (UMat())) = solveCubic(coeffs, roots)

function solvePoly(coeffs::Image, roots::Image, maxIters::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePoly(julia_to_cpp(coeffs),julia_to_cpp(roots),julia_to_cpp(maxIters)))
end
solvePoly(coeffs::Image; roots::Image = (Mat()), maxIters::Int32 = Int32(300)) = solvePoly(coeffs, roots, maxIters)

function solvePoly(coeffs::UMat, roots::UMat, maxIters::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePoly(julia_to_cpp(coeffs),julia_to_cpp(roots),julia_to_cpp(maxIters)))
end
solvePoly(coeffs::UMat; roots::UMat = (UMat()), maxIters::Int32 = Int32(300)) = solvePoly(coeffs, roots, maxIters)

function eigen(src::Image, eigenvalues::Image, eigenvectors::Image)
	return cpp_to_julia(jlopencv_cv_cv_eigen(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigen(src::Image; eigenvalues::Image = (Mat()), eigenvectors::Image = (MatOP)) = eigen(src, eigenvalues, eigenvectors)

function eigen(src::UMat, eigenvalues::UMat, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_cv_eigen(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigen(src::UMat; eigenvalues::UMat = (UMat()), eigenvectors::UMat = (UMatOP)) = eigen(src, eigenvalues, eigenvectors)

function eigenNonSymmetric(src::Image, eigenvalues::Image, eigenvectors::Image)
	return cpp_to_julia(jlopencv_cv_cv_eigenNonSymmetric(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigenNonSymmetric(src::Image; eigenvalues::Image = (Mat()), eigenvectors::Image = (Mat())) = eigenNonSymmetric(src, eigenvalues, eigenvectors)

function eigenNonSymmetric(src::UMat, eigenvalues::UMat, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_cv_eigenNonSymmetric(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigenNonSymmetric(src::UMat; eigenvalues::UMat = (UMat()), eigenvectors::UMat = (UMat())) = eigenNonSymmetric(src, eigenvalues, eigenvectors)

function calcCovarMatrix(samples::Image, mean::Image, flags::Int32, covar::Image, ctype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_calcCovarMatrix(julia_to_cpp(samples),julia_to_cpp(mean),julia_to_cpp(flags),julia_to_cpp(covar),julia_to_cpp(ctype)))
end
calcCovarMatrix(samples::Image, mean::Image, flags::Int32; covar::Image = (Mat()), ctype::Int32 = Int32(CV_64F)) = calcCovarMatrix(samples, mean, flags, covar, ctype)

function calcCovarMatrix(samples::UMat, mean::UMat, flags::Int32, covar::UMat, ctype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_calcCovarMatrix(julia_to_cpp(samples),julia_to_cpp(mean),julia_to_cpp(flags),julia_to_cpp(covar),julia_to_cpp(ctype)))
end
calcCovarMatrix(samples::UMat, mean::UMat, flags::Int32; covar::UMat = (UMat()), ctype::Int32 = Int32(CV_64F)) = calcCovarMatrix(samples, mean, flags, covar, ctype)

function PCACompute(data::Image, mean::Image, eigenvectors::Image, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(maxComponents)))
end
PCACompute(data::Image, mean::Image; eigenvectors::Image = (Mat()), maxComponents::Int32 = Int32(0)) = PCACompute(data, mean, eigenvectors, maxComponents)

function PCACompute(data::UMat, mean::UMat, eigenvectors::UMat, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(maxComponents)))
end
PCACompute(data::UMat, mean::UMat; eigenvectors::UMat = (UMat()), maxComponents::Int32 = Int32(0)) = PCACompute(data, mean, eigenvectors, maxComponents)

function PCACompute2(data::Image, mean::Image, eigenvectors::Image, eigenvalues::Image, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues),julia_to_cpp(maxComponents)))
end
PCACompute2(data::Image, mean::Image; eigenvectors::Image = (Mat()), eigenvalues::Image = (Mat()), maxComponents::Int32 = Int32(0)) = PCACompute2(data, mean, eigenvectors, eigenvalues, maxComponents)

function PCACompute2(data::UMat, mean::UMat, eigenvectors::UMat, eigenvalues::UMat, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues),julia_to_cpp(maxComponents)))
end
PCACompute2(data::UMat, mean::UMat; eigenvectors::UMat = (UMat()), eigenvalues::UMat = (UMat()), maxComponents::Int32 = Int32(0)) = PCACompute2(data, mean, eigenvectors, eigenvalues, maxComponents)

function PCACompute(data::Image, mean::Image, retainedVariance::Float64, eigenvectors::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors)))
end
PCACompute(data::Image, mean::Image, retainedVariance::Float64; eigenvectors::Image = (Mat())) = PCACompute(data, mean, retainedVariance, eigenvectors)

function PCACompute(data::UMat, mean::UMat, retainedVariance::Float64, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors)))
end
PCACompute(data::UMat, mean::UMat, retainedVariance::Float64; eigenvectors::UMat = (UMat())) = PCACompute(data, mean, retainedVariance, eigenvectors)

function PCACompute2(data::Image, mean::Image, retainedVariance::Float64, eigenvectors::Image, eigenvalues::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues)))
end
PCACompute2(data::Image, mean::Image, retainedVariance::Float64; eigenvectors::Image = (Mat()), eigenvalues::Image = (Mat())) = PCACompute2(data, mean, retainedVariance, eigenvectors, eigenvalues)

function PCACompute2(data::UMat, mean::UMat, retainedVariance::Float64, eigenvectors::UMat, eigenvalues::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues)))
end
PCACompute2(data::UMat, mean::UMat, retainedVariance::Float64; eigenvectors::UMat = (UMat()), eigenvalues::UMat = (UMat())) = PCACompute2(data, mean, retainedVariance, eigenvectors, eigenvalues)

function PCAProject(data::Image, mean::Image, eigenvectors::Image, result::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCAProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCAProject(data::Image, mean::Image, eigenvectors::Image; result::Image = (Mat())) = PCAProject(data, mean, eigenvectors, result)

function PCAProject(data::UMat, mean::UMat, eigenvectors::UMat, result::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCAProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCAProject(data::UMat, mean::UMat, eigenvectors::UMat; result::UMat = (UMat())) = PCAProject(data, mean, eigenvectors, result)

function PCABackProject(data::Image, mean::Image, eigenvectors::Image, result::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCABackProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCABackProject(data::Image, mean::Image, eigenvectors::Image; result::Image = (Mat())) = PCABackProject(data, mean, eigenvectors, result)

function PCABackProject(data::UMat, mean::UMat, eigenvectors::UMat, result::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCABackProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCABackProject(data::UMat, mean::UMat, eigenvectors::UMat; result::UMat = (UMat())) = PCABackProject(data, mean, eigenvectors, result)

function SVDecomp(src::Image, w::Image, u::Image, vt::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_SVDecomp(julia_to_cpp(src),julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(flags)))
end
SVDecomp(src::Image; w::Image = (Mat()), u::Image = (Mat()), vt::Image = (Mat()), flags::Int32 = Int32(0)) = SVDecomp(src, w, u, vt, flags)

function SVDecomp(src::UMat, w::UMat, u::UMat, vt::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_SVDecomp(julia_to_cpp(src),julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(flags)))
end
SVDecomp(src::UMat; w::UMat = (UMat()), u::UMat = (UMat()), vt::UMat = (UMat()), flags::Int32 = Int32(0)) = SVDecomp(src, w, u, vt, flags)

function SVBackSubst(w::Image, u::Image, vt::Image, rhs::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_SVBackSubst(julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(rhs),julia_to_cpp(dst)))
end
SVBackSubst(w::Image, u::Image, vt::Image, rhs::Image; dst::Image = (Mat())) = SVBackSubst(w, u, vt, rhs, dst)

function SVBackSubst(w::UMat, u::UMat, vt::UMat, rhs::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_SVBackSubst(julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(rhs),julia_to_cpp(dst)))
end
SVBackSubst(w::UMat, u::UMat, vt::UMat, rhs::UMat; dst::UMat = (UMat())) = SVBackSubst(w, u, vt, rhs, dst)

function Mahalanobis(v1::Image, v2::Image, icovar::Image)
	return cpp_to_julia(jlopencv_cv_cv_Mahalanobis(julia_to_cpp(v1),julia_to_cpp(v2),julia_to_cpp(icovar)))
end

function Mahalanobis(v1::UMat, v2::UMat, icovar::UMat)
	return cpp_to_julia(jlopencv_cv_cv_Mahalanobis(julia_to_cpp(v1),julia_to_cpp(v2),julia_to_cpp(icovar)))
end

function dft(src::Image, dst::Image, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
dft(src::Image; dst::Image = (Mat()), flags::Int32 = Int32(0), nonzeroRows::Int32 = Int32(0)) = dft(src, dst, flags, nonzeroRows)

function dft(src::UMat, dst::UMat, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
dft(src::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(0), nonzeroRows::Int32 = Int32(0)) = dft(src, dst, flags, nonzeroRows)

function idft(src::Image, dst::Image, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
idft(src::Image; dst::Image = (Mat()), flags::Int32 = Int32(0), nonzeroRows::Int32 = Int32(0)) = idft(src, dst, flags, nonzeroRows)

function idft(src::UMat, dst::UMat, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
idft(src::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(0), nonzeroRows::Int32 = Int32(0)) = idft(src, dst, flags, nonzeroRows)

function dct(src::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
dct(src::Image; dst::Image = (Mat()), flags::Int32 = Int32(0)) = dct(src, dst, flags)

function dct(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
dct(src::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(0)) = dct(src, dst, flags)

function idct(src::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
idct(src::Image; dst::Image = (Mat()), flags::Int32 = Int32(0)) = idct(src, dst, flags)

function idct(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
idct(src::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(0)) = idct(src, dst, flags)

function mulSpectrums(a::Image, b::Image, flags::Int32, c::Image, conjB::Bool)
	return cpp_to_julia(jlopencv_cv_cv_mulSpectrums(julia_to_cpp(a),julia_to_cpp(b),julia_to_cpp(flags),julia_to_cpp(c),julia_to_cpp(conjB)))
end
mulSpectrums(a::Image, b::Image, flags::Int32; c::Image = (Mat()), conjB::Bool = (false)) = mulSpectrums(a, b, flags, c, conjB)

function mulSpectrums(a::UMat, b::UMat, flags::Int32, c::UMat, conjB::Bool)
	return cpp_to_julia(jlopencv_cv_cv_mulSpectrums(julia_to_cpp(a),julia_to_cpp(b),julia_to_cpp(flags),julia_to_cpp(c),julia_to_cpp(conjB)))
end
mulSpectrums(a::UMat, b::UMat, flags::Int32; c::UMat = (UMat()), conjB::Bool = (false)) = mulSpectrums(a, b, flags, c, conjB)

function getOptimalDFTSize(vecsize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalDFTSize(julia_to_cpp(vecsize)))
end

function setRNGSeed(seed::Int32)
	return cpp_to_julia(jlopencv_cv_cv_setRNGSeed(julia_to_cpp(seed)))
end

function randu(dst::Image, low::Image, high::Image)
	return cpp_to_julia(jlopencv_cv_cv_randu(julia_to_cpp(dst),julia_to_cpp(low),julia_to_cpp(high)))
end

function randu(dst::UMat, low::UMat, high::UMat)
	return cpp_to_julia(jlopencv_cv_cv_randu(julia_to_cpp(dst),julia_to_cpp(low),julia_to_cpp(high)))
end

function randn(dst::Image, mean::Image, stddev::Image)
	return cpp_to_julia(jlopencv_cv_cv_randn(julia_to_cpp(dst),julia_to_cpp(mean),julia_to_cpp(stddev)))
end

function randn(dst::UMat, mean::UMat, stddev::UMat)
	return cpp_to_julia(jlopencv_cv_cv_randn(julia_to_cpp(dst),julia_to_cpp(mean),julia_to_cpp(stddev)))
end

function randShuffle(dst::Image, iterFactor::Float64)
	return cpp_to_julia(jlopencv_cv_cv_randShuffle(julia_to_cpp(dst),julia_to_cpp(iterFactor)))
end
randShuffle(dst::Image; iterFactor::Float64 = Float64(1.)) = randShuffle(dst, iterFactor)

function randShuffle(dst::UMat, iterFactor::Float64)
	return cpp_to_julia(jlopencv_cv_cv_randShuffle(julia_to_cpp(dst),julia_to_cpp(iterFactor)))
end
randShuffle(dst::UMat; iterFactor::Float64 = Float64(1.)) = randShuffle(dst, iterFactor)

function kmeans(data::Image, K::Int32, bestLabels::Image, criteria::TermCriteria, attempts::Int32, flags::Int32, centers::Image)
	return cpp_to_julia(jlopencv_cv_cv_kmeans(julia_to_cpp(data),julia_to_cpp(K),julia_to_cpp(bestLabels),julia_to_cpp(criteria),julia_to_cpp(attempts),julia_to_cpp(flags),julia_to_cpp(centers)))
end
kmeans(data::Image, K::Int32, bestLabels::Image, criteria::TermCriteria, attempts::Int32, flags::Int32; centers::Image = (MatOP)) = kmeans(data, K, bestLabels, criteria, attempts, flags, centers)

function kmeans(data::UMat, K::Int32, bestLabels::UMat, criteria::TermCriteria, attempts::Int32, flags::Int32, centers::UMat)
	return cpp_to_julia(jlopencv_cv_cv_kmeans(julia_to_cpp(data),julia_to_cpp(K),julia_to_cpp(bestLabels),julia_to_cpp(criteria),julia_to_cpp(attempts),julia_to_cpp(flags),julia_to_cpp(centers)))
end
kmeans(data::UMat, K::Int32, bestLabels::UMat, criteria::TermCriteria, attempts::Int32, flags::Int32; centers::UMat = (UMatOP)) = kmeans(data, K, bestLabels, criteria, attempts, flags, centers)

function KeyPoint_convert(keypoints::Array{KeyPoint, 1}, keypointIndexes::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_convert(julia_to_cpp(keypoints),julia_to_cpp(keypointIndexes)))
end
KeyPoint_convert(keypoints::Array{KeyPoint, 1}; keypointIndexes::Array{Int32, 1} = (stdggvectoriintkOP)) = KeyPoint_convert(keypoints, keypointIndexes)

function KeyPoint_convert(points2f::Array{Point{Float32}, 1}, size::Float32, response::Float32, octave::Int32, class_id::Int32)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_convert(julia_to_cpp(points2f),julia_to_cpp(size),julia_to_cpp(response),julia_to_cpp(octave),julia_to_cpp(class_id)))
end
KeyPoint_convert(points2f::Array{Point{Float32}, 1}; size::Float32 = Float32(1), response::Float32 = Float32(1), octave::Int32 = Int32(0), class_id::Int32 = Int32(-1)) = KeyPoint_convert(points2f, size, response, octave, class_id)

function KeyPoint_overlap(kp1::KeyPoint, kp2::KeyPoint)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_overlap(julia_to_cpp(kp1),julia_to_cpp(kp2)))
end

function createLineSegmentDetector(_refine::Int32, _scale::Float64, _sigma_scale::Float64, _quant::Float64, _ang_th::Float64, _log_eps::Float64, _density_th::Float64, _n_bins::Int32)
	return cpp_to_julia(jlopencv_cv_cv_createLineSegmentDetector(julia_to_cpp(_refine),julia_to_cpp(_scale),julia_to_cpp(_sigma_scale),julia_to_cpp(_quant),julia_to_cpp(_ang_th),julia_to_cpp(_log_eps),julia_to_cpp(_density_th),julia_to_cpp(_n_bins)))
end
createLineSegmentDetector(; _refine::Int32 = Int32(LSD_REFINE_STD), _scale::Float64 = Float64(0.8), _sigma_scale::Float64 = Float64(0.6), _quant::Float64 = Float64(2.0), _ang_th::Float64 = Float64(22.5), _log_eps::Float64 = Float64(0), _density_th::Float64 = Float64(0.7), _n_bins::Int32 = Int32(1024)) = createLineSegmentDetector(_refine, _scale, _sigma_scale, _quant, _ang_th, _log_eps, _density_th, _n_bins)

function getGaussianKernel(ksize::Int32, sigma::Float64, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getGaussianKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(ktype)))
end
getGaussianKernel(ksize::Int32, sigma::Float64; ktype::Int32 = Int32(CV_64F)) = getGaussianKernel(ksize, sigma, ktype)

function getDerivKernels(dx::Int32, dy::Int32, ksize::Int32, kx::Image, ky::Image, normalize::Bool, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getDerivKernels(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(kx),julia_to_cpp(ky),julia_to_cpp(normalize),julia_to_cpp(ktype)))
end
getDerivKernels(dx::Int32, dy::Int32, ksize::Int32; kx::Image = (Mat()), ky::Image = (Mat()), normalize::Bool = (false), ktype::Int32 = Int32(CV_32F)) = getDerivKernels(dx, dy, ksize, kx, ky, normalize, ktype)

function getDerivKernels(dx::Int32, dy::Int32, ksize::Int32, kx::UMat, ky::UMat, normalize::Bool, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getDerivKernels(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(kx),julia_to_cpp(ky),julia_to_cpp(normalize),julia_to_cpp(ktype)))
end

function getGaborKernel(ksize::Size, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64, psi::Float64, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getGaborKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(theta),julia_to_cpp(lambd),julia_to_cpp(gamma),julia_to_cpp(psi),julia_to_cpp(ktype)))
end
getGaborKernel(ksize::Size, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64; psi::Float64 = Float64(CV_PI*0.5), ktype::Int32 = Int32(CV_64F)) = getGaborKernel(ksize, sigma, theta, lambd, gamma, psi, ktype)

function getStructuringElement(shape::Int32, ksize::Size, anchor::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_getStructuringElement(julia_to_cpp(shape),julia_to_cpp(ksize),julia_to_cpp(anchor)))
end
getStructuringElement(shape::Int32, ksize::Size; anchor::Point{Int32} = (PointOTXSTXP)) = getStructuringElement(shape, ksize, anchor)

function medianBlur(src::Image, ksize::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_medianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst)))
end
medianBlur(src::Image, ksize::Int32; dst::Image = (Mat())) = medianBlur(src, ksize, dst)

function medianBlur(src::UMat, ksize::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_medianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst)))
end
medianBlur(src::UMat, ksize::Int32; dst::UMat = (UMat())) = medianBlur(src, ksize, dst)

function GaussianBlur(src::Image, ksize::Size, sigmaX::Float64, dst::Image, sigmaY::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GaussianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(sigmaX),julia_to_cpp(dst),julia_to_cpp(sigmaY),julia_to_cpp(borderType)))
end
GaussianBlur(src::Image, ksize::Size, sigmaX::Float64; dst::Image = (Mat()), sigmaY::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = GaussianBlur(src, ksize, sigmaX, dst, sigmaY, borderType)

function GaussianBlur(src::UMat, ksize::Size, sigmaX::Float64, dst::UMat, sigmaY::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GaussianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(sigmaX),julia_to_cpp(dst),julia_to_cpp(sigmaY),julia_to_cpp(borderType)))
end
GaussianBlur(src::UMat, ksize::Size, sigmaX::Float64; dst::UMat = (UMat()), sigmaY::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = GaussianBlur(src, ksize, sigmaX, dst, sigmaY, borderType)

function bilateralFilter(src::Image, d::Int32, sigmaColor::Float64, sigmaSpace::Float64, dst::Image, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_bilateralFilter(julia_to_cpp(src),julia_to_cpp(d),julia_to_cpp(sigmaColor),julia_to_cpp(sigmaSpace),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
bilateralFilter(src::Image, d::Int32, sigmaColor::Float64, sigmaSpace::Float64; dst::Image = (Mat()), borderType::Int32 = Int32(BORDER_DEFAULT)) = bilateralFilter(src, d, sigmaColor, sigmaSpace, dst, borderType)

function bilateralFilter(src::UMat, d::Int32, sigmaColor::Float64, sigmaSpace::Float64, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_bilateralFilter(julia_to_cpp(src),julia_to_cpp(d),julia_to_cpp(sigmaColor),julia_to_cpp(sigmaSpace),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
bilateralFilter(src::UMat, d::Int32, sigmaColor::Float64, sigmaSpace::Float64; dst::UMat = (UMat()), borderType::Int32 = Int32(BORDER_DEFAULT)) = bilateralFilter(src, d, sigmaColor, sigmaSpace, dst, borderType)

function boxFilter(src::Image, ddepth::Int32, ksize::Size, dst::Image, anchor::Point{Int32}, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_boxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
boxFilter(src::Image, ddepth::Int32, ksize::Size; dst::Image = (Mat()), anchor::Point{Int32} = (PointOTXSTXP), normalize::Bool = (true), borderType::Int32 = Int32(BORDER_DEFAULT)) = boxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function boxFilter(src::UMat, ddepth::Int32, ksize::Size, dst::UMat, anchor::Point{Int32}, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_boxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
boxFilter(src::UMat, ddepth::Int32, ksize::Size; dst::UMat = (UMat()), anchor::Point{Int32} = (PointOTXSTXP), normalize::Bool = (true), borderType::Int32 = Int32(BORDER_DEFAULT)) = boxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function sqrBoxFilter(src::Image, ddepth::Int32, ksize::Size, dst::Image, anchor::Point{Int32}, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_sqrBoxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
sqrBoxFilter(src::Image, ddepth::Int32, ksize::Size; dst::Image = (Mat()), anchor::Point{Int32} = (PointOTXSGTXP), normalize::Bool = (true), borderType::Int32 = Int32(BORDER_DEFAULT)) = sqrBoxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function sqrBoxFilter(src::UMat, ddepth::Int32, ksize::Size, dst::UMat, anchor::Point{Int32}, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_sqrBoxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
sqrBoxFilter(src::UMat, ddepth::Int32, ksize::Size; dst::UMat = (UMat()), anchor::Point{Int32} = (PointOTXSGTXP), normalize::Bool = (true), borderType::Int32 = Int32(BORDER_DEFAULT)) = sqrBoxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function blur(src::Image, ksize::Size, dst::Image, anchor::Point{Int32}, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_blur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(borderType)))
end
blur(src::Image, ksize::Size; dst::Image = (Mat()), anchor::Point{Int32} = (PointOTXSTXP), borderType::Int32 = Int32(BORDER_DEFAULT)) = blur(src, ksize, dst, anchor, borderType)

function blur(src::UMat, ksize::Size, dst::UMat, anchor::Point{Int32}, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_blur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(borderType)))
end
blur(src::UMat, ksize::Size; dst::UMat = (UMat()), anchor::Point{Int32} = (PointOTXSTXP), borderType::Int32 = Int32(BORDER_DEFAULT)) = blur(src, ksize, dst, anchor, borderType)

function filter2D(src::Image, ddepth::Int32, kernel::Image, dst::Image, anchor::Point{Int32}, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_filter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
filter2D(src::Image, ddepth::Int32, kernel::Image; dst::Image = (Mat()), anchor::Point{Int32} = (PointOTXSTXP), delta::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = filter2D(src, ddepth, kernel, dst, anchor, delta, borderType)

function filter2D(src::UMat, ddepth::Int32, kernel::UMat, dst::UMat, anchor::Point{Int32}, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_filter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
filter2D(src::UMat, ddepth::Int32, kernel::UMat; dst::UMat = (UMat()), anchor::Point{Int32} = (PointOTXSTXP), delta::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = filter2D(src, ddepth, kernel, dst, anchor, delta, borderType)

function sepFilter2D(src::Image, ddepth::Int32, kernelX::Image, kernelY::Image, dst::Image, anchor::Point{Int32}, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_sepFilter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernelX),julia_to_cpp(kernelY),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
sepFilter2D(src::Image, ddepth::Int32, kernelX::Image, kernelY::Image; dst::Image = (Mat()), anchor::Point{Int32} = (PointOTXSTXP), delta::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = sepFilter2D(src, ddepth, kernelX, kernelY, dst, anchor, delta, borderType)

function sepFilter2D(src::UMat, ddepth::Int32, kernelX::UMat, kernelY::UMat, dst::UMat, anchor::Point{Int32}, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_sepFilter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernelX),julia_to_cpp(kernelY),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
sepFilter2D(src::UMat, ddepth::Int32, kernelX::UMat, kernelY::UMat; dst::UMat = (UMat()), anchor::Point{Int32} = (PointOTXSTXP), delta::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = sepFilter2D(src, ddepth, kernelX, kernelY, dst, anchor, delta, borderType)

function Sobel(src::Image, ddepth::Int32, dx::Int32, dy::Int32, dst::Image, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Sobel(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Sobel(src::Image, ddepth::Int32, dx::Int32, dy::Int32; dst::Image = (Mat()), ksize::Int32 = Int32(3), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = Sobel(src, ddepth, dx, dy, dst, ksize, scale, delta, borderType)

function Sobel(src::UMat, ddepth::Int32, dx::Int32, dy::Int32, dst::UMat, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Sobel(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Sobel(src::UMat, ddepth::Int32, dx::Int32, dy::Int32; dst::UMat = (UMat()), ksize::Int32 = Int32(3), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = Sobel(src, ddepth, dx, dy, dst, ksize, scale, delta, borderType)

function spatialGradient(src::Image, dx::Image, dy::Image, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_spatialGradient(julia_to_cpp(src),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
spatialGradient(src::Image; dx::Image = (Mat()), dy::Image = (Mat()), ksize::Int32 = Int32(3), borderType::Int32 = Int32(BORDER_DEFAULT)) = spatialGradient(src, dx, dy, ksize, borderType)

function spatialGradient(src::UMat, dx::UMat, dy::UMat, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_spatialGradient(julia_to_cpp(src),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
spatialGradient(src::UMat; dx::UMat = (UMat()), dy::UMat = (UMat()), ksize::Int32 = Int32(3), borderType::Int32 = Int32(BORDER_DEFAULT)) = spatialGradient(src, dx, dy, ksize, borderType)

function Scharr(src::Image, ddepth::Int32, dx::Int32, dy::Int32, dst::Image, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Scharr(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Scharr(src::Image, ddepth::Int32, dx::Int32, dy::Int32; dst::Image = (Mat()), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = Scharr(src, ddepth, dx, dy, dst, scale, delta, borderType)

function Scharr(src::UMat, ddepth::Int32, dx::Int32, dy::Int32, dst::UMat, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Scharr(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Scharr(src::UMat, ddepth::Int32, dx::Int32, dy::Int32; dst::UMat = (UMat()), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = Scharr(src, ddepth, dx, dy, dst, scale, delta, borderType)

function Laplacian(src::Image, ddepth::Int32, dst::Image, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Laplacian(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Laplacian(src::Image, ddepth::Int32; dst::Image = (Mat()), ksize::Int32 = Int32(1), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = Laplacian(src, ddepth, dst, ksize, scale, delta, borderType)

function Laplacian(src::UMat, ddepth::Int32, dst::UMat, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Laplacian(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Laplacian(src::UMat, ddepth::Int32; dst::UMat = (UMat()), ksize::Int32 = Int32(1), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int32 = Int32(BORDER_DEFAULT)) = Laplacian(src, ddepth, dst, ksize, scale, delta, borderType)

function Canny(image::Image, threshold1::Float64, threshold2::Float64, edges::Image, apertureSize::Int32, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(image),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(apertureSize),julia_to_cpp(L2gradient)))
end
Canny(image::Image, threshold1::Float64, threshold2::Float64; edges::Image = (Mat()), apertureSize::Int32 = Int32(3), L2gradient::Bool = (false)) = Canny(image, threshold1, threshold2, edges, apertureSize, L2gradient)

function Canny(image::UMat, threshold1::Float64, threshold2::Float64, edges::UMat, apertureSize::Int32, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(image),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(apertureSize),julia_to_cpp(L2gradient)))
end
Canny(image::UMat, threshold1::Float64, threshold2::Float64; edges::UMat = (UMat()), apertureSize::Int32 = Int32(3), L2gradient::Bool = (false)) = Canny(image, threshold1, threshold2, edges, apertureSize, L2gradient)

function Canny(dx::Image, dy::Image, threshold1::Float64, threshold2::Float64, edges::Image, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(L2gradient)))
end
Canny(dx::Image, dy::Image, threshold1::Float64, threshold2::Float64; edges::Image = (Mat()), L2gradient::Bool = (false)) = Canny(dx, dy, threshold1, threshold2, edges, L2gradient)

function Canny(dx::UMat, dy::UMat, threshold1::Float64, threshold2::Float64, edges::UMat, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(L2gradient)))
end
Canny(dx::UMat, dy::UMat, threshold1::Float64, threshold2::Float64; edges::UMat = (UMat()), L2gradient::Bool = (false)) = Canny(dx, dy, threshold1, threshold2, edges, L2gradient)

function cornerMinEigenVal(src::Image, blockSize::Int32, dst::Image, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerMinEigenVal(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
cornerMinEigenVal(src::Image, blockSize::Int32; dst::Image = (Mat()), ksize::Int32 = Int32(3), borderType::Int32 = Int32(BORDER_DEFAULT)) = cornerMinEigenVal(src, blockSize, dst, ksize, borderType)

function cornerMinEigenVal(src::UMat, blockSize::Int32, dst::UMat, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerMinEigenVal(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
cornerMinEigenVal(src::UMat, blockSize::Int32; dst::UMat = (UMat()), ksize::Int32 = Int32(3), borderType::Int32 = Int32(BORDER_DEFAULT)) = cornerMinEigenVal(src, blockSize, dst, ksize, borderType)

function cornerHarris(src::Image, blockSize::Int32, ksize::Int32, k::Float64, dst::Image, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerHarris(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(k),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerHarris(src::Image, blockSize::Int32, ksize::Int32, k::Float64; dst::Image = (Mat()), borderType::Int32 = Int32(BORDER_DEFAULT)) = cornerHarris(src, blockSize, ksize, k, dst, borderType)

function cornerHarris(src::UMat, blockSize::Int32, ksize::Int32, k::Float64, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerHarris(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(k),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerHarris(src::UMat, blockSize::Int32, ksize::Int32, k::Float64; dst::UMat = (UMat()), borderType::Int32 = Int32(BORDER_DEFAULT)) = cornerHarris(src, blockSize, ksize, k, dst, borderType)

function cornerEigenValsAndVecs(src::Image, blockSize::Int32, ksize::Int32, dst::Image, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerEigenValsAndVecs(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerEigenValsAndVecs(src::Image, blockSize::Int32, ksize::Int32; dst::Image = (Mat()), borderType::Int32 = Int32(BORDER_DEFAULT)) = cornerEigenValsAndVecs(src, blockSize, ksize, dst, borderType)

function cornerEigenValsAndVecs(src::UMat, blockSize::Int32, ksize::Int32, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerEigenValsAndVecs(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerEigenValsAndVecs(src::UMat, blockSize::Int32, ksize::Int32; dst::UMat = (UMat()), borderType::Int32 = Int32(BORDER_DEFAULT)) = cornerEigenValsAndVecs(src, blockSize, ksize, dst, borderType)

function preCornerDetect(src::Image, ksize::Int32, dst::Image, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_preCornerDetect(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
preCornerDetect(src::Image, ksize::Int32; dst::Image = (Mat()), borderType::Int32 = Int32(BORDER_DEFAULT)) = preCornerDetect(src, ksize, dst, borderType)

function preCornerDetect(src::UMat, ksize::Int32, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_preCornerDetect(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
preCornerDetect(src::UMat, ksize::Int32; dst::UMat = (UMat()), borderType::Int32 = Int32(BORDER_DEFAULT)) = preCornerDetect(src, ksize, dst, borderType)

function cornerSubPix(image::Image, corners::Image, winSize::Size, zeroZone::Size, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_cornerSubPix(julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(winSize),julia_to_cpp(zeroZone),julia_to_cpp(criteria)))
end

function cornerSubPix(image::UMat, corners::UMat, winSize::Size, zeroZone::Size, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_cornerSubPix(julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(winSize),julia_to_cpp(zeroZone),julia_to_cpp(criteria)))
end

function goodFeaturesToTrack(image::Image, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, corners::Image, mask::Image, blockSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(corners),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::Image, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64; corners::Image = (Mat()), mask::Image = (MatOP), blockSize::Int32 = Int32(3), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, corners, mask, blockSize, useHarrisDetector, k)

function goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, corners::UMat, mask::UMat, blockSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(corners),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64; corners::UMat = (UMat()), mask::UMat = (UMatOP), blockSize::Int32 = Int32(3), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, corners, mask, blockSize, useHarrisDetector, k)

function goodFeaturesToTrack(image::Image, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::Image, blockSize::Int32, gradientSize::Int32, corners::Image, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(corners),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::Image, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::Image, blockSize::Int32, gradientSize::Int32; corners::Image = (Mat()), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, corners, useHarrisDetector, k)

function goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::UMat, blockSize::Int32, gradientSize::Int32, corners::UMat, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(corners),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::UMat, blockSize::Int32, gradientSize::Int32; corners::UMat = (UMat()), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, corners, useHarrisDetector, k)

function HoughLines(image::Image, rho::Float64, theta::Float64, threshold::Int32, lines::Image, srn::Float64, stn::Float64, min_theta::Float64, max_theta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLines(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(srn),julia_to_cpp(stn),julia_to_cpp(min_theta),julia_to_cpp(max_theta)))
end
HoughLines(image::Image, rho::Float64, theta::Float64, threshold::Int32; lines::Image = (Mat()), srn::Float64 = Float64(0), stn::Float64 = Float64(0), min_theta::Float64 = Float64(0), max_theta::Float64 = Float64(CV_PI)) = HoughLines(image, rho, theta, threshold, lines, srn, stn, min_theta, max_theta)

function HoughLines(image::UMat, rho::Float64, theta::Float64, threshold::Int32, lines::UMat, srn::Float64, stn::Float64, min_theta::Float64, max_theta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLines(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(srn),julia_to_cpp(stn),julia_to_cpp(min_theta),julia_to_cpp(max_theta)))
end
HoughLines(image::UMat, rho::Float64, theta::Float64, threshold::Int32; lines::UMat = (UMat()), srn::Float64 = Float64(0), stn::Float64 = Float64(0), min_theta::Float64 = Float64(0), max_theta::Float64 = Float64(CV_PI)) = HoughLines(image, rho, theta, threshold, lines, srn, stn, min_theta, max_theta)

function HoughLinesP(image::Image, rho::Float64, theta::Float64, threshold::Int32, lines::Image, minLineLength::Float64, maxLineGap::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesP(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(minLineLength),julia_to_cpp(maxLineGap)))
end
HoughLinesP(image::Image, rho::Float64, theta::Float64, threshold::Int32; lines::Image = (Mat()), minLineLength::Float64 = Float64(0), maxLineGap::Float64 = Float64(0)) = HoughLinesP(image, rho, theta, threshold, lines, minLineLength, maxLineGap)

function HoughLinesP(image::UMat, rho::Float64, theta::Float64, threshold::Int32, lines::UMat, minLineLength::Float64, maxLineGap::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesP(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(minLineLength),julia_to_cpp(maxLineGap)))
end
HoughLinesP(image::UMat, rho::Float64, theta::Float64, threshold::Int32; lines::UMat = (UMat()), minLineLength::Float64 = Float64(0), maxLineGap::Float64 = Float64(0)) = HoughLinesP(image, rho, theta, threshold, lines, minLineLength, maxLineGap)

function HoughLinesPointSet(_point::Image, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64, _lines::Image)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesPointSet(julia_to_cpp(_point),julia_to_cpp(lines_max),julia_to_cpp(threshold),julia_to_cpp(min_rho),julia_to_cpp(max_rho),julia_to_cpp(rho_step),julia_to_cpp(min_theta),julia_to_cpp(max_theta),julia_to_cpp(theta_step),julia_to_cpp(_lines)))
end
HoughLinesPointSet(_point::Image, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64; _lines::Image = (Mat())) = HoughLinesPointSet(_point, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step, _lines)

function HoughLinesPointSet(_point::UMat, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64, _lines::UMat)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesPointSet(julia_to_cpp(_point),julia_to_cpp(lines_max),julia_to_cpp(threshold),julia_to_cpp(min_rho),julia_to_cpp(max_rho),julia_to_cpp(rho_step),julia_to_cpp(min_theta),julia_to_cpp(max_theta),julia_to_cpp(theta_step),julia_to_cpp(_lines)))
end
HoughLinesPointSet(_point::UMat, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64; _lines::UMat = (UMat())) = HoughLinesPointSet(_point, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step, _lines)

function HoughCircles(image::Image, method::Int32, dp::Float64, minDist::Float64, circles::Image, param1::Float64, param2::Float64, minRadius::Int32, maxRadius::Int32)
	return cpp_to_julia(jlopencv_cv_cv_HoughCircles(julia_to_cpp(image),julia_to_cpp(method),julia_to_cpp(dp),julia_to_cpp(minDist),julia_to_cpp(circles),julia_to_cpp(param1),julia_to_cpp(param2),julia_to_cpp(minRadius),julia_to_cpp(maxRadius)))
end
HoughCircles(image::Image, method::Int32, dp::Float64, minDist::Float64; circles::Image = (Mat()), param1::Float64 = Float64(100), param2::Float64 = Float64(100), minRadius::Int32 = Int32(0), maxRadius::Int32 = Int32(0)) = HoughCircles(image, method, dp, minDist, circles, param1, param2, minRadius, maxRadius)

function HoughCircles(image::UMat, method::Int32, dp::Float64, minDist::Float64, circles::UMat, param1::Float64, param2::Float64, minRadius::Int32, maxRadius::Int32)
	return cpp_to_julia(jlopencv_cv_cv_HoughCircles(julia_to_cpp(image),julia_to_cpp(method),julia_to_cpp(dp),julia_to_cpp(minDist),julia_to_cpp(circles),julia_to_cpp(param1),julia_to_cpp(param2),julia_to_cpp(minRadius),julia_to_cpp(maxRadius)))
end
HoughCircles(image::UMat, method::Int32, dp::Float64, minDist::Float64; circles::UMat = (UMat()), param1::Float64 = Float64(100), param2::Float64 = Float64(100), minRadius::Int32 = Int32(0), maxRadius::Int32 = Int32(0)) = HoughCircles(image, method, dp, minDist, circles, param1, param2, minRadius, maxRadius)

function erode(src::Image, kernel::Image, dst::Image, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_erode(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
erode(src::Image, kernel::Image; dst::Image = (Mat()), anchor::Point{Int32} = (PointOTXSTXP), iterations::Int32 = Int32(1), borderType::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (morphologyDefaultBorderValueOP)) = erode(src, kernel, dst, anchor, iterations, borderType, borderValue)

function erode(src::UMat, kernel::UMat, dst::UMat, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_erode(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
erode(src::UMat, kernel::UMat; dst::UMat = (UMat()), anchor::Point{Int32} = (PointOTXSTXP), iterations::Int32 = Int32(1), borderType::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (morphologyDefaultBorderValueOP)) = erode(src, kernel, dst, anchor, iterations, borderType, borderValue)

function dilate(src::Image, kernel::Image, dst::Image, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_dilate(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
dilate(src::Image, kernel::Image; dst::Image = (Mat()), anchor::Point{Int32} = (PointOTXSTXP), iterations::Int32 = Int32(1), borderType::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (morphologyDefaultBorderValueOP)) = dilate(src, kernel, dst, anchor, iterations, borderType, borderValue)

function dilate(src::UMat, kernel::UMat, dst::UMat, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_dilate(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
dilate(src::UMat, kernel::UMat; dst::UMat = (UMat()), anchor::Point{Int32} = (PointOTXSTXP), iterations::Int32 = Int32(1), borderType::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (morphologyDefaultBorderValueOP)) = dilate(src, kernel, dst, anchor, iterations, borderType, borderValue)

function morphologyEx(src::Image, op::Int32, kernel::Image, dst::Image, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_morphologyEx(julia_to_cpp(src),julia_to_cpp(op),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
morphologyEx(src::Image, op::Int32, kernel::Image; dst::Image = (Mat()), anchor::Point{Int32} = (PointOTXSTXP), iterations::Int32 = Int32(1), borderType::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (morphologyDefaultBorderValueOP)) = morphologyEx(src, op, kernel, dst, anchor, iterations, borderType, borderValue)

function morphologyEx(src::UMat, op::Int32, kernel::UMat, dst::UMat, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_morphologyEx(julia_to_cpp(src),julia_to_cpp(op),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
morphologyEx(src::UMat, op::Int32, kernel::UMat; dst::UMat = (UMat()), anchor::Point{Int32} = (PointOTXSTXP), iterations::Int32 = Int32(1), borderType::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (morphologyDefaultBorderValueOP)) = morphologyEx(src, op, kernel, dst, anchor, iterations, borderType, borderValue)

function resize(src::Image, dsize::Size, dst::Image, fx::Float64, fy::Float64, interpolation::Int32)
	return cpp_to_julia(jlopencv_cv_cv_resize(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(fx),julia_to_cpp(fy),julia_to_cpp(interpolation)))
end
resize(src::Image, dsize::Size; dst::Image = (Mat()), fx::Float64 = Float64(0), fy::Float64 = Float64(0), interpolation::Int32 = Int32(INTER_LINEAR)) = resize(src, dsize, dst, fx, fy, interpolation)

function resize(src::UMat, dsize::Size, dst::UMat, fx::Float64, fy::Float64, interpolation::Int32)
	return cpp_to_julia(jlopencv_cv_cv_resize(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(fx),julia_to_cpp(fy),julia_to_cpp(interpolation)))
end
resize(src::UMat, dsize::Size; dst::UMat = (UMat()), fx::Float64 = Float64(0), fy::Float64 = Float64(0), interpolation::Int32 = Int32(INTER_LINEAR)) = resize(src, dsize, dst, fx, fy, interpolation)

function warpAffine(src::Image, M::Image, dsize::Size, dst::Image, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpAffine(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpAffine(src::Image, M::Image, dsize::Size; dst::Image = (Mat()), flags::Int32 = Int32(INTER_LINEAR), borderMode::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (ScalarOP)) = warpAffine(src, M, dsize, dst, flags, borderMode, borderValue)

function warpAffine(src::UMat, M::UMat, dsize::Size, dst::UMat, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpAffine(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpAffine(src::UMat, M::UMat, dsize::Size; dst::UMat = (UMat()), flags::Int32 = Int32(INTER_LINEAR), borderMode::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (ScalarOP)) = warpAffine(src, M, dsize, dst, flags, borderMode, borderValue)

function warpPerspective(src::Image, M::Image, dsize::Size, dst::Image, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpPerspective(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpPerspective(src::Image, M::Image, dsize::Size; dst::Image = (Mat()), flags::Int32 = Int32(INTER_LINEAR), borderMode::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (ScalarOP)) = warpPerspective(src, M, dsize, dst, flags, borderMode, borderValue)

function warpPerspective(src::UMat, M::UMat, dsize::Size, dst::UMat, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpPerspective(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpPerspective(src::UMat, M::UMat, dsize::Size; dst::UMat = (UMat()), flags::Int32 = Int32(INTER_LINEAR), borderMode::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (ScalarOP)) = warpPerspective(src, M, dsize, dst, flags, borderMode, borderValue)

function remap(src::Image, map1::Image, map2::Image, interpolation::Int32, dst::Image, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_remap(julia_to_cpp(src),julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(interpolation),julia_to_cpp(dst),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
remap(src::Image, map1::Image, map2::Image, interpolation::Int32; dst::Image = (Mat()), borderMode::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (ScalarOP)) = remap(src, map1, map2, interpolation, dst, borderMode, borderValue)

function remap(src::UMat, map1::UMat, map2::UMat, interpolation::Int32, dst::UMat, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_remap(julia_to_cpp(src),julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(interpolation),julia_to_cpp(dst),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
remap(src::UMat, map1::UMat, map2::UMat, interpolation::Int32; dst::UMat = (UMat()), borderMode::Int32 = Int32(BORDER_CONSTANT), borderValue::Scalar = (ScalarOP)) = remap(src, map1, map2, interpolation, dst, borderMode, borderValue)

function convertMaps(map1::Image, map2::Image, dstmap1type::Int32, dstmap1::Image, dstmap2::Image, nninterpolation::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convertMaps(julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(dstmap1type),julia_to_cpp(dstmap1),julia_to_cpp(dstmap2),julia_to_cpp(nninterpolation)))
end
convertMaps(map1::Image, map2::Image, dstmap1type::Int32; dstmap1::Image = (Mat()), dstmap2::Image = (Mat()), nninterpolation::Bool = (false)) = convertMaps(map1, map2, dstmap1type, dstmap1, dstmap2, nninterpolation)

function convertMaps(map1::UMat, map2::UMat, dstmap1type::Int32, dstmap1::UMat, dstmap2::UMat, nninterpolation::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convertMaps(julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(dstmap1type),julia_to_cpp(dstmap1),julia_to_cpp(dstmap2),julia_to_cpp(nninterpolation)))
end
convertMaps(map1::UMat, map2::UMat, dstmap1type::Int32; dstmap1::UMat = (UMat()), dstmap2::UMat = (UMat()), nninterpolation::Bool = (false)) = convertMaps(map1, map2, dstmap1type, dstmap1, dstmap2, nninterpolation)

function getRotationMatrix2D(center::Point{Float32}, angle::Float64, scale::Float64)
	return cpp_to_julia(jlopencv_cv_cv_getRotationMatrix2D(julia_to_cpp(center),julia_to_cpp(angle),julia_to_cpp(scale)))
end

function invertAffineTransform(M::Image, iM::Image)
	return cpp_to_julia(jlopencv_cv_cv_invertAffineTransform(julia_to_cpp(M),julia_to_cpp(iM)))
end
invertAffineTransform(M::Image; iM::Image = (Mat())) = invertAffineTransform(M, iM)

function invertAffineTransform(M::UMat, iM::UMat)
	return cpp_to_julia(jlopencv_cv_cv_invertAffineTransform(julia_to_cpp(M),julia_to_cpp(iM)))
end
invertAffineTransform(M::UMat; iM::UMat = (UMat())) = invertAffineTransform(M, iM)

function getPerspectiveTransform(src::Image, dst::Image, solveMethod::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getPerspectiveTransform(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(solveMethod)))
end
getPerspectiveTransform(src::Image, dst::Image; solveMethod::Int32 = Int32(DECOMP_LU)) = getPerspectiveTransform(src, dst, solveMethod)

function getPerspectiveTransform(src::UMat, dst::UMat, solveMethod::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getPerspectiveTransform(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(solveMethod)))
end
getPerspectiveTransform(src::UMat, dst::UMat; solveMethod::Int32 = Int32(DECOMP_LU)) = getPerspectiveTransform(src, dst, solveMethod)

function getAffineTransform(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_getAffineTransform(julia_to_cpp(src),julia_to_cpp(dst)))
end

function getAffineTransform(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_getAffineTransform(julia_to_cpp(src),julia_to_cpp(dst)))
end

function getRectSubPix(image::Image, patchSize::Size, center::Point{Float32}, patch::Image, patchType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getRectSubPix(julia_to_cpp(image),julia_to_cpp(patchSize),julia_to_cpp(center),julia_to_cpp(patch),julia_to_cpp(patchType)))
end
getRectSubPix(image::Image, patchSize::Size, center::Point{Float32}; patch::Image = (Mat()), patchType::Int32 = Int32(-1)) = getRectSubPix(image, patchSize, center, patch, patchType)

function getRectSubPix(image::UMat, patchSize::Size, center::Point{Float32}, patch::UMat, patchType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getRectSubPix(julia_to_cpp(image),julia_to_cpp(patchSize),julia_to_cpp(center),julia_to_cpp(patch),julia_to_cpp(patchType)))
end
getRectSubPix(image::UMat, patchSize::Size, center::Point{Float32}; patch::UMat = (UMat()), patchType::Int32 = Int32(-1)) = getRectSubPix(image, patchSize, center, patch, patchType)

function logPolar(src::Image, center::Point{Float32}, M::Float64, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_logPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(M),julia_to_cpp(flags),julia_to_cpp(dst)))
end
logPolar(src::Image, center::Point{Float32}, M::Float64, flags::Int32; dst::Image = (Mat())) = logPolar(src, center, M, flags, dst)

function logPolar(src::UMat, center::Point{Float32}, M::Float64, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_logPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(M),julia_to_cpp(flags),julia_to_cpp(dst)))
end
logPolar(src::UMat, center::Point{Float32}, M::Float64, flags::Int32; dst::UMat = (UMat())) = logPolar(src, center, M, flags, dst)

function linearPolar(src::Image, center::Point{Float32}, maxRadius::Float64, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_linearPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
linearPolar(src::Image, center::Point{Float32}, maxRadius::Float64, flags::Int32; dst::Image = (Mat())) = linearPolar(src, center, maxRadius, flags, dst)

function linearPolar(src::UMat, center::Point{Float32}, maxRadius::Float64, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_linearPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
linearPolar(src::UMat, center::Point{Float32}, maxRadius::Float64, flags::Int32; dst::UMat = (UMat())) = linearPolar(src, center, maxRadius, flags, dst)

function warpPolar(src::Image, dsize::Size, center::Point{Float32}, maxRadius::Float64, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_warpPolar(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
warpPolar(src::Image, dsize::Size, center::Point{Float32}, maxRadius::Float64, flags::Int32; dst::Image = (Mat())) = warpPolar(src, dsize, center, maxRadius, flags, dst)

function warpPolar(src::UMat, dsize::Size, center::Point{Float32}, maxRadius::Float64, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_warpPolar(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
warpPolar(src::UMat, dsize::Size, center::Point{Float32}, maxRadius::Float64, flags::Int32; dst::UMat = (UMat())) = warpPolar(src, dsize, center, maxRadius, flags, dst)

function integral(src::Image, sum::Image, sdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sdepth)))
end
integral(src::Image; sum::Image = (Mat()), sdepth::Int32 = Int32(-1)) = integral(src, sum, sdepth)

function integral(src::UMat, sum::UMat, sdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sdepth)))
end
integral(src::UMat; sum::UMat = (UMat()), sdepth::Int32 = Int32(-1)) = integral(src, sum, sdepth)

function integral2(src::Image, sum::Image, sqsum::Image, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral2(src::Image; sum::Image = (Mat()), sqsum::Image = (Mat()), sdepth::Int32 = Int32(-1), sqdepth::Int32 = Int32(-1)) = integral2(src, sum, sqsum, sdepth, sqdepth)

function integral2(src::UMat, sum::UMat, sqsum::UMat, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral2(src::UMat; sum::UMat = (UMat()), sqsum::UMat = (UMat()), sdepth::Int32 = Int32(-1), sqdepth::Int32 = Int32(-1)) = integral2(src, sum, sqsum, sdepth, sqdepth)

function integral3(src::Image, sum::Image, sqsum::Image, tilted::Image, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(tilted),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral3(src::Image; sum::Image = (Mat()), sqsum::Image = (Mat()), tilted::Image = (Mat()), sdepth::Int32 = Int32(-1), sqdepth::Int32 = Int32(-1)) = integral3(src, sum, sqsum, tilted, sdepth, sqdepth)

function integral3(src::UMat, sum::UMat, sqsum::UMat, tilted::UMat, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(tilted),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral3(src::UMat; sum::UMat = (UMat()), sqsum::UMat = (UMat()), tilted::UMat = (UMat()), sdepth::Int32 = Int32(-1), sqdepth::Int32 = Int32(-1)) = integral3(src, sum, sqsum, tilted, sdepth, sqdepth)

function accumulate(src::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_accumulate(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulate(src::Image, dst::Image; mask::Image = (MatOP)) = accumulate(src, dst, mask)

function accumulate(src::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_accumulate(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulate(src::UMat, dst::UMat; mask::UMat = (UMatOP)) = accumulate(src, dst, mask)

function accumulateSquare(src::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_accumulateSquare(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateSquare(src::Image, dst::Image; mask::Image = (MatOP)) = accumulateSquare(src, dst, mask)

function accumulateSquare(src::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_accumulateSquare(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateSquare(src::UMat, dst::UMat; mask::UMat = (UMatOP)) = accumulateSquare(src, dst, mask)

function accumulateProduct(src1::Image, src2::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_accumulateProduct(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateProduct(src1::Image, src2::Image, dst::Image; mask::Image = (MatOP)) = accumulateProduct(src1, src2, dst, mask)

function accumulateProduct(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_accumulateProduct(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateProduct(src1::UMat, src2::UMat, dst::UMat; mask::UMat = (UMatOP)) = accumulateProduct(src1, src2, dst, mask)

function accumulateWeighted(src::Image, dst::Image, alpha::Float64, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_accumulateWeighted(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(mask)))
end
accumulateWeighted(src::Image, dst::Image, alpha::Float64; mask::Image = (MatOP)) = accumulateWeighted(src, dst, alpha, mask)

function accumulateWeighted(src::UMat, dst::UMat, alpha::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_accumulateWeighted(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(mask)))
end
accumulateWeighted(src::UMat, dst::UMat, alpha::Float64; mask::UMat = (UMatOP)) = accumulateWeighted(src, dst, alpha, mask)

function phaseCorrelate(src1::Image, src2::Image, window::Image)
	return cpp_to_julia(jlopencv_cv_cv_phaseCorrelate(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(window)))
end
phaseCorrelate(src1::Image, src2::Image; window::Image = (MatOP)) = phaseCorrelate(src1, src2, window)

function phaseCorrelate(src1::UMat, src2::UMat, window::UMat)
	return cpp_to_julia(jlopencv_cv_cv_phaseCorrelate(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(window)))
end
phaseCorrelate(src1::UMat, src2::UMat; window::UMat = (UMatOP)) = phaseCorrelate(src1, src2, window)

function createHanningWindow(winSize::Size, type::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_createHanningWindow(julia_to_cpp(winSize),julia_to_cpp(type),julia_to_cpp(dst)))
end
createHanningWindow(winSize::Size, type::Int32; dst::Image = (Mat())) = createHanningWindow(winSize, type, dst)

function createHanningWindow(winSize::Size, type::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_createHanningWindow(julia_to_cpp(winSize),julia_to_cpp(type),julia_to_cpp(dst)))
end

function threshold(src::Image, thresh::Float64, maxval::Float64, type::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_threshold(julia_to_cpp(src),julia_to_cpp(thresh),julia_to_cpp(maxval),julia_to_cpp(type),julia_to_cpp(dst)))
end
threshold(src::Image, thresh::Float64, maxval::Float64, type::Int32; dst::Image = (Mat())) = threshold(src, thresh, maxval, type, dst)

function threshold(src::UMat, thresh::Float64, maxval::Float64, type::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_threshold(julia_to_cpp(src),julia_to_cpp(thresh),julia_to_cpp(maxval),julia_to_cpp(type),julia_to_cpp(dst)))
end
threshold(src::UMat, thresh::Float64, maxval::Float64, type::Int32; dst::UMat = (UMat())) = threshold(src, thresh, maxval, type, dst)

function adaptiveThreshold(src::Image, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_adaptiveThreshold(julia_to_cpp(src),julia_to_cpp(maxValue),julia_to_cpp(adaptiveMethod),julia_to_cpp(thresholdType),julia_to_cpp(blockSize),julia_to_cpp(C),julia_to_cpp(dst)))
end
adaptiveThreshold(src::Image, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64; dst::Image = (Mat())) = adaptiveThreshold(src, maxValue, adaptiveMethod, thresholdType, blockSize, C, dst)

function adaptiveThreshold(src::UMat, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_adaptiveThreshold(julia_to_cpp(src),julia_to_cpp(maxValue),julia_to_cpp(adaptiveMethod),julia_to_cpp(thresholdType),julia_to_cpp(blockSize),julia_to_cpp(C),julia_to_cpp(dst)))
end
adaptiveThreshold(src::UMat, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64; dst::UMat = (UMat())) = adaptiveThreshold(src, maxValue, adaptiveMethod, thresholdType, blockSize, C, dst)

function pyrDown(src::Image, dst::Image, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_pyrDown(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrDown(src::Image; dst::Image = (Mat()), dstsize::Size = (SizeOP), borderType::Int32 = Int32(BORDER_DEFAULT)) = pyrDown(src, dst, dstsize, borderType)

function pyrDown(src::UMat, dst::UMat, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_pyrDown(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrDown(src::UMat; dst::UMat = (UMat()), dstsize::Size = (SizeOP), borderType::Int32 = Int32(BORDER_DEFAULT)) = pyrDown(src, dst, dstsize, borderType)

function pyrUp(src::Image, dst::Image, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_pyrUp(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrUp(src::Image; dst::Image = (Mat()), dstsize::Size = (SizeOP), borderType::Int32 = Int32(BORDER_DEFAULT)) = pyrUp(src, dst, dstsize, borderType)

function pyrUp(src::UMat, dst::UMat, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_pyrUp(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrUp(src::UMat; dst::UMat = (UMat()), dstsize::Size = (SizeOP), borderType::Int32 = Int32(BORDER_DEFAULT)) = pyrUp(src, dst, dstsize, borderType)

function calcHist(images::Array{Image, 1}, channels::Array{Int32, 1}, mask::Image, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}, hist::Image, accumulate::Bool)
	return cpp_to_julia(jlopencv_cv_cv_calcHist(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(mask),julia_to_cpp(histSize),julia_to_cpp(ranges),julia_to_cpp(hist),julia_to_cpp(accumulate)))
end
calcHist(images::Array{Image, 1}, channels::Array{Int32, 1}, mask::Image, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}; hist::Image = (Mat()), accumulate::Bool = (false)) = calcHist(images, channels, mask, histSize, ranges, hist, accumulate)

function calcHist(images::Array{UMat, 1}, channels::Array{Int32, 1}, mask::UMat, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}, hist::UMat, accumulate::Bool)
	return cpp_to_julia(jlopencv_cv_cv_calcHist(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(mask),julia_to_cpp(histSize),julia_to_cpp(ranges),julia_to_cpp(hist),julia_to_cpp(accumulate)))
end
calcHist(images::Array{UMat, 1}, channels::Array{Int32, 1}, mask::UMat, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}; hist::UMat = (UMat()), accumulate::Bool = (false)) = calcHist(images, channels, mask, histSize, ranges, hist, accumulate)

function calcBackProject(images::Array{Image, 1}, channels::Array{Int32, 1}, hist::Image, ranges::Array{Float32, 1}, scale::Float64, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_calcBackProject(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(hist),julia_to_cpp(ranges),julia_to_cpp(scale),julia_to_cpp(dst)))
end
calcBackProject(images::Array{Image, 1}, channels::Array{Int32, 1}, hist::Image, ranges::Array{Float32, 1}, scale::Float64; dst::Image = (Mat())) = calcBackProject(images, channels, hist, ranges, scale, dst)

function calcBackProject(images::Array{UMat, 1}, channels::Array{Int32, 1}, hist::UMat, ranges::Array{Float32, 1}, scale::Float64, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_calcBackProject(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(hist),julia_to_cpp(ranges),julia_to_cpp(scale),julia_to_cpp(dst)))
end
calcBackProject(images::Array{UMat, 1}, channels::Array{Int32, 1}, hist::UMat, ranges::Array{Float32, 1}, scale::Float64; dst::UMat = (UMat())) = calcBackProject(images, channels, hist, ranges, scale, dst)

function compareHist(H1::Image, H2::Image, method::Int32)
	return cpp_to_julia(jlopencv_cv_cv_compareHist(julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(method)))
end

function compareHist(H1::UMat, H2::UMat, method::Int32)
	return cpp_to_julia(jlopencv_cv_cv_compareHist(julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(method)))
end

function equalizeHist(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_equalizeHist(julia_to_cpp(src),julia_to_cpp(dst)))
end
equalizeHist(src::Image; dst::Image = (Mat())) = equalizeHist(src, dst)

function equalizeHist(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_equalizeHist(julia_to_cpp(src),julia_to_cpp(dst)))
end
equalizeHist(src::UMat; dst::UMat = (UMat())) = equalizeHist(src, dst)

function createCLAHE(clipLimit::Float64, tileGridSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_createCLAHE(julia_to_cpp(clipLimit),julia_to_cpp(tileGridSize)))
end
createCLAHE(; clipLimit::Float64 = Float64(40.0), tileGridSize::Size = (SizeOeSGeP)) = createCLAHE(clipLimit, tileGridSize)

function EMD(signature1::Image, signature2::Image, distType::Int32, cost::Image, lowerBound::cv_Ptr{Float32}, flow::Image)
	return cpp_to_julia(jlopencv_cv_cv_wrapperEMD(julia_to_cpp(signature1),julia_to_cpp(signature2),julia_to_cpp(distType),julia_to_cpp(cost),julia_to_cpp(lowerBound),julia_to_cpp(flow)))
end
EMD(signature1::Image, signature2::Image, distType::Int32; cost::Image = (MatOP), lowerBound::cv_Ptr{Float32} = (PtrifloatkOP), flow::Image = (MatOP)) = EMD(signature1, signature2, distType, cost, lowerBound, flow)

function EMD(signature1::UMat, signature2::UMat, distType::Int32, cost::UMat, lowerBound::cv_Ptr{Float32}, flow::UMat)
	return cpp_to_julia(jlopencv_cv_cv_wrapperEMD(julia_to_cpp(signature1),julia_to_cpp(signature2),julia_to_cpp(distType),julia_to_cpp(cost),julia_to_cpp(lowerBound),julia_to_cpp(flow)))
end
EMD(signature1::UMat, signature2::UMat, distType::Int32; cost::UMat = (UMatOP), lowerBound::cv_Ptr{Float32} = (PtrifloatkOP), flow::UMat = (UMatOP)) = EMD(signature1, signature2, distType, cost, lowerBound, flow)

function watershed(image::Image, markers::Image)
	return cpp_to_julia(jlopencv_cv_cv_watershed(julia_to_cpp(image),julia_to_cpp(markers)))
end

function watershed(image::UMat, markers::UMat)
	return cpp_to_julia(jlopencv_cv_cv_watershed(julia_to_cpp(image),julia_to_cpp(markers)))
end

function pyrMeanShiftFiltering(src::Image, sp::Float64, sr::Float64, dst::Image, maxLevel::Int32, termcrit::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_pyrMeanShiftFiltering(julia_to_cpp(src),julia_to_cpp(sp),julia_to_cpp(sr),julia_to_cpp(dst),julia_to_cpp(maxLevel),julia_to_cpp(termcrit)))
end
pyrMeanShiftFiltering(src::Image, sp::Float64, sr::Float64; dst::Image = (Mat()), maxLevel::Int32 = Int32(1), termcrit::TermCriteria = (TermCriteriaOTermCriteriaggMAXRITERRTermCriteriaggEPSSbSXP)) = pyrMeanShiftFiltering(src, sp, sr, dst, maxLevel, termcrit)

function pyrMeanShiftFiltering(src::UMat, sp::Float64, sr::Float64, dst::UMat, maxLevel::Int32, termcrit::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_pyrMeanShiftFiltering(julia_to_cpp(src),julia_to_cpp(sp),julia_to_cpp(sr),julia_to_cpp(dst),julia_to_cpp(maxLevel),julia_to_cpp(termcrit)))
end
pyrMeanShiftFiltering(src::UMat, sp::Float64, sr::Float64; dst::UMat = (UMat()), maxLevel::Int32 = Int32(1), termcrit::TermCriteria = (TermCriteriaOTermCriteriaggMAXRITERRTermCriteriaggEPSSbSXP)) = pyrMeanShiftFiltering(src, sp, sr, dst, maxLevel, termcrit)

function grabCut(img::Image, mask::Image, rect::Rect, bgdModel::Image, fgdModel::Image, iterCount::Int32, mode::Int32)
	return cpp_to_julia(jlopencv_cv_cv_grabCut(julia_to_cpp(img),julia_to_cpp(mask),julia_to_cpp(rect),julia_to_cpp(bgdModel),julia_to_cpp(fgdModel),julia_to_cpp(iterCount),julia_to_cpp(mode)))
end
grabCut(img::Image, mask::Image, rect::Rect, bgdModel::Image, fgdModel::Image, iterCount::Int32; mode::Int32 = Int32(GC_EVAL)) = grabCut(img, mask, rect, bgdModel, fgdModel, iterCount, mode)

function grabCut(img::UMat, mask::UMat, rect::Rect, bgdModel::UMat, fgdModel::UMat, iterCount::Int32, mode::Int32)
	return cpp_to_julia(jlopencv_cv_cv_grabCut(julia_to_cpp(img),julia_to_cpp(mask),julia_to_cpp(rect),julia_to_cpp(bgdModel),julia_to_cpp(fgdModel),julia_to_cpp(iterCount),julia_to_cpp(mode)))
end
grabCut(img::UMat, mask::UMat, rect::Rect, bgdModel::UMat, fgdModel::UMat, iterCount::Int32; mode::Int32 = Int32(GC_EVAL)) = grabCut(img, mask, rect, bgdModel, fgdModel, iterCount, mode)

function distanceTransformWithLabels(src::Image, distanceType::Int32, maskSize::Int32, dst::Image, labels::Image, labelType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(labels),julia_to_cpp(labelType)))
end
distanceTransformWithLabels(src::Image, distanceType::Int32, maskSize::Int32; dst::Image = (Mat()), labels::Image = (Mat()), labelType::Int32 = Int32(DIST_LABEL_CCOMP)) = distanceTransformWithLabels(src, distanceType, maskSize, dst, labels, labelType)

function distanceTransformWithLabels(src::UMat, distanceType::Int32, maskSize::Int32, dst::UMat, labels::UMat, labelType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(labels),julia_to_cpp(labelType)))
end
distanceTransformWithLabels(src::UMat, distanceType::Int32, maskSize::Int32; dst::UMat = (UMat()), labels::UMat = (UMat()), labelType::Int32 = Int32(DIST_LABEL_CCOMP)) = distanceTransformWithLabels(src, distanceType, maskSize, dst, labels, labelType)

function distanceTransform(src::Image, distanceType::Int32, maskSize::Int32, dst::Image, dstType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(dstType)))
end
distanceTransform(src::Image, distanceType::Int32, maskSize::Int32; dst::Image = (Mat()), dstType::Int32 = Int32(CV_32F)) = distanceTransform(src, distanceType, maskSize, dst, dstType)

function distanceTransform(src::UMat, distanceType::Int32, maskSize::Int32, dst::UMat, dstType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(dstType)))
end
distanceTransform(src::UMat, distanceType::Int32, maskSize::Int32; dst::UMat = (UMat()), dstType::Int32 = Int32(CV_32F)) = distanceTransform(src, distanceType, maskSize, dst, dstType)

function floodFill(image::Image, mask::Image, seedPoint::Point{Int32}, newVal::Scalar, loDiff::Scalar, upDiff::Scalar, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_floodFill(julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(seedPoint),julia_to_cpp(newVal),julia_to_cpp(loDiff),julia_to_cpp(upDiff),julia_to_cpp(flags)))
end
floodFill(image::Image, mask::Image, seedPoint::Point{Int32}, newVal::Scalar; loDiff::Scalar = (ScalarOP), upDiff::Scalar = (ScalarOP), flags::Int32 = Int32(4)) = floodFill(image, mask, seedPoint, newVal, loDiff, upDiff, flags)

function floodFill(image::UMat, mask::UMat, seedPoint::Point{Int32}, newVal::Scalar, loDiff::Scalar, upDiff::Scalar, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_floodFill(julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(seedPoint),julia_to_cpp(newVal),julia_to_cpp(loDiff),julia_to_cpp(upDiff),julia_to_cpp(flags)))
end
floodFill(image::UMat, mask::UMat, seedPoint::Point{Int32}, newVal::Scalar; loDiff::Scalar = (ScalarOP), upDiff::Scalar = (ScalarOP), flags::Int32 = Int32(4)) = floodFill(image, mask, seedPoint, newVal, loDiff, upDiff, flags)

function cvtColor(src::Image, code::Int32, dst::Image, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cvtColor(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
cvtColor(src::Image, code::Int32; dst::Image = (Mat()), dstCn::Int32 = Int32(0)) = cvtColor(src, code, dst, dstCn)

function cvtColor(src::UMat, code::Int32, dst::UMat, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cvtColor(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
cvtColor(src::UMat, code::Int32; dst::UMat = (UMat()), dstCn::Int32 = Int32(0)) = cvtColor(src, code, dst, dstCn)

function cvtColorTwoPlane(src1::Image, src2::Image, code::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_cvtColorTwoPlane(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(code),julia_to_cpp(dst)))
end
cvtColorTwoPlane(src1::Image, src2::Image, code::Int32; dst::Image = (Mat())) = cvtColorTwoPlane(src1, src2, code, dst)

function cvtColorTwoPlane(src1::UMat, src2::UMat, code::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_cvtColorTwoPlane(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(code),julia_to_cpp(dst)))
end
cvtColorTwoPlane(src1::UMat, src2::UMat, code::Int32; dst::UMat = (UMat())) = cvtColorTwoPlane(src1, src2, code, dst)

function demosaicing(src::Image, code::Int32, dst::Image, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cv_demosaicing(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
demosaicing(src::Image, code::Int32; dst::Image = (Mat()), dstCn::Int32 = Int32(0)) = demosaicing(src, code, dst, dstCn)

function demosaicing(src::UMat, code::Int32, dst::UMat, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cv_demosaicing(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
demosaicing(src::UMat, code::Int32; dst::UMat = (UMat()), dstCn::Int32 = Int32(0)) = demosaicing(src, code, dst, dstCn)

function moments(array::Image, binaryImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_moments(julia_to_cpp(array),julia_to_cpp(binaryImage)))
end
moments(array::Image; binaryImage::Bool = (false)) = moments(array, binaryImage)

function moments(array::UMat, binaryImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_moments(julia_to_cpp(array),julia_to_cpp(binaryImage)))
end
moments(array::UMat; binaryImage::Bool = (false)) = moments(array, binaryImage)

function HuMoments(m::Moments, hu::Image)
	return cpp_to_julia(jlopencv_cv_cv_HuMoments(julia_to_cpp(m),julia_to_cpp(hu)))
end
HuMoments(m::Moments; hu::Image = (Mat())) = HuMoments(m, hu)

function HuMoments(m::Moments, hu::UMat)
	return cpp_to_julia(jlopencv_cv_cv_HuMoments(julia_to_cpp(m),julia_to_cpp(hu)))
end

function matchTemplate(image::Image, templ::Image, method::Int32, result::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_matchTemplate(julia_to_cpp(image),julia_to_cpp(templ),julia_to_cpp(method),julia_to_cpp(result),julia_to_cpp(mask)))
end
matchTemplate(image::Image, templ::Image, method::Int32; result::Image = (Mat()), mask::Image = (MatOP)) = matchTemplate(image, templ, method, result, mask)

function matchTemplate(image::UMat, templ::UMat, method::Int32, result::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_matchTemplate(julia_to_cpp(image),julia_to_cpp(templ),julia_to_cpp(method),julia_to_cpp(result),julia_to_cpp(mask)))
end
matchTemplate(image::UMat, templ::UMat, method::Int32; result::UMat = (UMat()), mask::UMat = (UMatOP)) = matchTemplate(image, templ, method, result, mask)

function connectedComponentsWithAlgorithm(image::Image, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::Image)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels)))
end
connectedComponentsWithAlgorithm(image::Image, connectivity::Int32, ltype::Int32, ccltype::Int32; labels::Image = (Mat())) = connectedComponentsWithAlgorithm(image, connectivity, ltype, ccltype, labels)

function connectedComponentsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::UMat)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels)))
end
connectedComponentsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32; labels::UMat = (UMat())) = connectedComponentsWithAlgorithm(image, connectivity, ltype, ccltype, labels)

function connectedComponents(image::Image, labels::Image, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponents(image::Image; labels::Image = (Mat()), connectivity::Int32 = Int32(8), ltype::Int32 = Int32(CV_32S)) = connectedComponents(image, labels, connectivity, ltype)

function connectedComponents(image::UMat, labels::UMat, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponents(image::UMat; labels::UMat = (UMat()), connectivity::Int32 = Int32(8), ltype::Int32 = Int32(CV_32S)) = connectedComponents(image, labels, connectivity, ltype)

function connectedComponentsWithStatsWithAlgorithm(image::Image, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::Image, stats::Image, centroids::Image)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids)))
end
connectedComponentsWithStatsWithAlgorithm(image::Image, connectivity::Int32, ltype::Int32, ccltype::Int32; labels::Image = (Mat()), stats::Image = (Mat()), centroids::Image = (Mat())) = connectedComponentsWithStatsWithAlgorithm(image, connectivity, ltype, ccltype, labels, stats, centroids)

function connectedComponentsWithStatsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::UMat, stats::UMat, centroids::UMat)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids)))
end
connectedComponentsWithStatsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32; labels::UMat = (UMat()), stats::UMat = (UMat()), centroids::UMat = (UMat())) = connectedComponentsWithStatsWithAlgorithm(image, connectivity, ltype, ccltype, labels, stats, centroids)

function connectedComponentsWithStats(image::Image, labels::Image, stats::Image, centroids::Image, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponentsWithStats(image::Image; labels::Image = (Mat()), stats::Image = (Mat()), centroids::Image = (Mat()), connectivity::Int32 = Int32(8), ltype::Int32 = Int32(CV_32S)) = connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype)

function connectedComponentsWithStats(image::UMat, labels::UMat, stats::UMat, centroids::UMat, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponentsWithStats(image::UMat; labels::UMat = (UMat()), stats::UMat = (UMat()), centroids::UMat = (UMat()), connectivity::Int32 = Int32(8), ltype::Int32 = Int32(CV_32S)) = connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype)

function findContours(image::Image, mode::Int32, method::Int32, contours::Array{Image, 1}, hierarchy::Image, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_findContours(julia_to_cpp(image),julia_to_cpp(mode),julia_to_cpp(method),julia_to_cpp(contours),julia_to_cpp(hierarchy),julia_to_cpp(offset)))
end
findContours(image::Image, mode::Int32, method::Int32; contours::Array{Image, 1} = (Array{Image, 1}()), hierarchy::Image = (Mat()), offset::Point{Int32} = (PointOP)) = findContours(image, mode, method, contours, hierarchy, offset)

function findContours(image::UMat, mode::Int32, method::Int32, contours::Array{UMat, 1}, hierarchy::UMat, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_findContours(julia_to_cpp(image),julia_to_cpp(mode),julia_to_cpp(method),julia_to_cpp(contours),julia_to_cpp(hierarchy),julia_to_cpp(offset)))
end
findContours(image::UMat, mode::Int32, method::Int32; contours::Array{UMat, 1} = (Array{UMat, 1}()), hierarchy::UMat = (UMat()), offset::Point{Int32} = (PointOP)) = findContours(image, mode, method, contours, hierarchy, offset)

function approxPolyDP(curve::Image, epsilon::Float64, closed::Bool, approxCurve::Image)
	return cpp_to_julia(jlopencv_cv_cv_approxPolyDP(julia_to_cpp(curve),julia_to_cpp(epsilon),julia_to_cpp(closed),julia_to_cpp(approxCurve)))
end
approxPolyDP(curve::Image, epsilon::Float64, closed::Bool; approxCurve::Image = (Mat())) = approxPolyDP(curve, epsilon, closed, approxCurve)

function approxPolyDP(curve::UMat, epsilon::Float64, closed::Bool, approxCurve::UMat)
	return cpp_to_julia(jlopencv_cv_cv_approxPolyDP(julia_to_cpp(curve),julia_to_cpp(epsilon),julia_to_cpp(closed),julia_to_cpp(approxCurve)))
end
approxPolyDP(curve::UMat, epsilon::Float64, closed::Bool; approxCurve::UMat = (UMat())) = approxPolyDP(curve, epsilon, closed, approxCurve)

function arcLength(curve::Image, closed::Bool)
	return cpp_to_julia(jlopencv_cv_cv_arcLength(julia_to_cpp(curve),julia_to_cpp(closed)))
end

function arcLength(curve::UMat, closed::Bool)
	return cpp_to_julia(jlopencv_cv_cv_arcLength(julia_to_cpp(curve),julia_to_cpp(closed)))
end

function boundingRect(array::Image)
	return cpp_to_julia(jlopencv_cv_cv_boundingRect(julia_to_cpp(array)))
end

function boundingRect(array::UMat)
	return cpp_to_julia(jlopencv_cv_cv_boundingRect(julia_to_cpp(array)))
end

function contourArea(contour::Image, oriented::Bool)
	return cpp_to_julia(jlopencv_cv_cv_contourArea(julia_to_cpp(contour),julia_to_cpp(oriented)))
end
contourArea(contour::Image; oriented::Bool = (false)) = contourArea(contour, oriented)

function contourArea(contour::UMat, oriented::Bool)
	return cpp_to_julia(jlopencv_cv_cv_contourArea(julia_to_cpp(contour),julia_to_cpp(oriented)))
end
contourArea(contour::UMat; oriented::Bool = (false)) = contourArea(contour, oriented)

function minAreaRect(points::Image)
	return cpp_to_julia(jlopencv_cv_cv_minAreaRect(julia_to_cpp(points)))
end

function minAreaRect(points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_minAreaRect(julia_to_cpp(points)))
end

function boxPoints(box::RotatedRect, points::Image)
	return cpp_to_julia(jlopencv_cv_cv_boxPoints(julia_to_cpp(box),julia_to_cpp(points)))
end
boxPoints(box::RotatedRect; points::Image = (Mat())) = boxPoints(box, points)

function boxPoints(box::RotatedRect, points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_boxPoints(julia_to_cpp(box),julia_to_cpp(points)))
end

function minEnclosingCircle(points::Image)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingCircle(julia_to_cpp(points)))
end

function minEnclosingCircle(points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingCircle(julia_to_cpp(points)))
end

function minEnclosingTriangle(points::Image, triangle::Image)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingTriangle(julia_to_cpp(points),julia_to_cpp(triangle)))
end
minEnclosingTriangle(points::Image; triangle::Image = (Mat())) = minEnclosingTriangle(points, triangle)

function minEnclosingTriangle(points::UMat, triangle::UMat)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingTriangle(julia_to_cpp(points),julia_to_cpp(triangle)))
end
minEnclosingTriangle(points::UMat; triangle::UMat = (UMat())) = minEnclosingTriangle(points, triangle)

function matchShapes(contour1::Image, contour2::Image, method::Int32, parameter::Float64)
	return cpp_to_julia(jlopencv_cv_cv_matchShapes(julia_to_cpp(contour1),julia_to_cpp(contour2),julia_to_cpp(method),julia_to_cpp(parameter)))
end

function matchShapes(contour1::UMat, contour2::UMat, method::Int32, parameter::Float64)
	return cpp_to_julia(jlopencv_cv_cv_matchShapes(julia_to_cpp(contour1),julia_to_cpp(contour2),julia_to_cpp(method),julia_to_cpp(parameter)))
end

function convexHull(points::Image, hull::Image, clockwise::Bool, returnPoints::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convexHull(julia_to_cpp(points),julia_to_cpp(hull),julia_to_cpp(clockwise),julia_to_cpp(returnPoints)))
end
convexHull(points::Image; hull::Image = (Mat()), clockwise::Bool = (false), returnPoints::Bool = (true)) = convexHull(points, hull, clockwise, returnPoints)

function convexHull(points::UMat, hull::UMat, clockwise::Bool, returnPoints::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convexHull(julia_to_cpp(points),julia_to_cpp(hull),julia_to_cpp(clockwise),julia_to_cpp(returnPoints)))
end
convexHull(points::UMat; hull::UMat = (UMat()), clockwise::Bool = (false), returnPoints::Bool = (true)) = convexHull(points, hull, clockwise, returnPoints)

function convexityDefects(contour::Image, convexhull::Image, convexityDefects::Image)
	return cpp_to_julia(jlopencv_cv_cv_convexityDefects(julia_to_cpp(contour),julia_to_cpp(convexhull),julia_to_cpp(convexityDefects)))
end
convexityDefects(contour::Image, convexhull::Image; convexityDefects::Image = (Mat())) = convexityDefects(contour, convexhull, convexityDefects)

function convexityDefects(contour::UMat, convexhull::UMat, convexityDefects::UMat)
	return cpp_to_julia(jlopencv_cv_cv_convexityDefects(julia_to_cpp(contour),julia_to_cpp(convexhull),julia_to_cpp(convexityDefects)))
end
convexityDefects(contour::UMat, convexhull::UMat; convexityDefects::UMat = (UMat())) = convexityDefects(contour, convexhull, convexityDefects)

function isContourConvex(contour::Image)
	return cpp_to_julia(jlopencv_cv_cv_isContourConvex(julia_to_cpp(contour)))
end

function isContourConvex(contour::UMat)
	return cpp_to_julia(jlopencv_cv_cv_isContourConvex(julia_to_cpp(contour)))
end

function intersectConvexConvex(_p1::Image, _p2::Image, _p12::Image, handleNested::Bool)
	return cpp_to_julia(jlopencv_cv_cv_intersectConvexConvex(julia_to_cpp(_p1),julia_to_cpp(_p2),julia_to_cpp(_p12),julia_to_cpp(handleNested)))
end
intersectConvexConvex(_p1::Image, _p2::Image; _p12::Image = (Mat()), handleNested::Bool = (true)) = intersectConvexConvex(_p1, _p2, _p12, handleNested)

function intersectConvexConvex(_p1::UMat, _p2::UMat, _p12::UMat, handleNested::Bool)
	return cpp_to_julia(jlopencv_cv_cv_intersectConvexConvex(julia_to_cpp(_p1),julia_to_cpp(_p2),julia_to_cpp(_p12),julia_to_cpp(handleNested)))
end
intersectConvexConvex(_p1::UMat, _p2::UMat; _p12::UMat = (UMat()), handleNested::Bool = (true)) = intersectConvexConvex(_p1, _p2, _p12, handleNested)

function fitEllipse(points::Image)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipse(julia_to_cpp(points)))
end

function fitEllipse(points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipse(julia_to_cpp(points)))
end

function fitEllipseAMS(points::Image)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseAMS(julia_to_cpp(points)))
end

function fitEllipseAMS(points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseAMS(julia_to_cpp(points)))
end

function fitEllipseDirect(points::Image)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseDirect(julia_to_cpp(points)))
end

function fitEllipseDirect(points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseDirect(julia_to_cpp(points)))
end

function fitLine(points::Image, distType::Int32, param::Float64, reps::Float64, aeps::Float64, line::Image)
	return cpp_to_julia(jlopencv_cv_cv_fitLine(julia_to_cpp(points),julia_to_cpp(distType),julia_to_cpp(param),julia_to_cpp(reps),julia_to_cpp(aeps),julia_to_cpp(line)))
end
fitLine(points::Image, distType::Int32, param::Float64, reps::Float64, aeps::Float64; line::Image = (Mat())) = fitLine(points, distType, param, reps, aeps, line)

function fitLine(points::UMat, distType::Int32, param::Float64, reps::Float64, aeps::Float64, line::UMat)
	return cpp_to_julia(jlopencv_cv_cv_fitLine(julia_to_cpp(points),julia_to_cpp(distType),julia_to_cpp(param),julia_to_cpp(reps),julia_to_cpp(aeps),julia_to_cpp(line)))
end
fitLine(points::UMat, distType::Int32, param::Float64, reps::Float64, aeps::Float64; line::UMat = (UMat())) = fitLine(points, distType, param, reps, aeps, line)

function pointPolygonTest(contour::Image, pt::Point{Float32}, measureDist::Bool)
	return cpp_to_julia(jlopencv_cv_cv_pointPolygonTest(julia_to_cpp(contour),julia_to_cpp(pt),julia_to_cpp(measureDist)))
end

function pointPolygonTest(contour::UMat, pt::Point{Float32}, measureDist::Bool)
	return cpp_to_julia(jlopencv_cv_cv_pointPolygonTest(julia_to_cpp(contour),julia_to_cpp(pt),julia_to_cpp(measureDist)))
end

function rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect, intersectingRegion::Image)
	return cpp_to_julia(jlopencv_cv_cv_rotatedRectangleIntersection(julia_to_cpp(rect1),julia_to_cpp(rect2),julia_to_cpp(intersectingRegion)))
end
rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect; intersectingRegion::Image = (Mat())) = rotatedRectangleIntersection(rect1, rect2, intersectingRegion)

function rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect, intersectingRegion::UMat)
	return cpp_to_julia(jlopencv_cv_cv_rotatedRectangleIntersection(julia_to_cpp(rect1),julia_to_cpp(rect2),julia_to_cpp(intersectingRegion)))
end

function createGeneralizedHoughBallard()
	return cpp_to_julia(jlopencv_cv_cv_createGeneralizedHoughBallard())
end

function createGeneralizedHoughGuil()
	return cpp_to_julia(jlopencv_cv_cv_createGeneralizedHoughGuil())
end

function applyColorMap(src::Image, colormap::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(colormap),julia_to_cpp(dst)))
end
applyColorMap(src::Image, colormap::Int32; dst::Image = (Mat())) = applyColorMap(src, colormap, dst)

function applyColorMap(src::UMat, colormap::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(colormap),julia_to_cpp(dst)))
end
applyColorMap(src::UMat, colormap::Int32; dst::UMat = (UMat())) = applyColorMap(src, colormap, dst)

function applyColorMap(src::Image, userColor::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(userColor),julia_to_cpp(dst)))
end
applyColorMap(src::Image, userColor::Image; dst::Image = (Mat())) = applyColorMap(src, userColor, dst)

function applyColorMap(src::UMat, userColor::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(userColor),julia_to_cpp(dst)))
end
applyColorMap(src::UMat, userColor::UMat; dst::UMat = (UMat())) = applyColorMap(src, userColor, dst)

function line(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_line(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
line(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = line(img, pt1, pt2, color, thickness, lineType, shift)

function line(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_line(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
line(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = line(img, pt1, pt2, color, thickness, lineType, shift)

function arrowedLine(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, line_type::Int32, shift::Int32, tipLength::Float64)
	return cpp_to_julia(jlopencv_cv_cv_arrowedLine(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(line_type),julia_to_cpp(shift),julia_to_cpp(tipLength)))
end
arrowedLine(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = Int32(1), line_type::Int32 = Int32(8), shift::Int32 = Int32(0), tipLength::Float64 = Float64(0.1)) = arrowedLine(img, pt1, pt2, color, thickness, line_type, shift, tipLength)

function arrowedLine(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, line_type::Int32, shift::Int32, tipLength::Float64)
	return cpp_to_julia(jlopencv_cv_cv_arrowedLine(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(line_type),julia_to_cpp(shift),julia_to_cpp(tipLength)))
end
arrowedLine(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = Int32(1), line_type::Int32 = Int32(8), shift::Int32 = Int32(0), tipLength::Float64 = Float64(0.1)) = arrowedLine(img, pt1, pt2, color, thickness, line_type, shift, tipLength)

function rectangle(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = rectangle(img, pt1, pt2, color, thickness, lineType, shift)

function rectangle(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = rectangle(img, pt1, pt2, color, thickness, lineType, shift)

function rectangle(img::Image, rec::Rect, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(rec),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::Image, rec::Rect, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = rectangle(img, rec, color, thickness, lineType, shift)

function rectangle(img::UMat, rec::Rect, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(rec),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::UMat, rec::Rect, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = rectangle(img, rec, color, thickness, lineType, shift)

function circle(img::Image, center::Point{Int32}, radius::Int32, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_circle(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(radius),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
circle(img::Image, center::Point{Int32}, radius::Int32, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = circle(img, center, radius, color, thickness, lineType, shift)

function circle(img::UMat, center::Point{Int32}, radius::Int32, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_circle(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(radius),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
circle(img::UMat, center::Point{Int32}, radius::Int32, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = circle(img, center, radius, color, thickness, lineType, shift)

function ellipse(img::Image, center::Point{Int32}, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(startAngle),julia_to_cpp(endAngle),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
ellipse(img::Image, center::Point{Int32}, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = ellipse(img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift)

function ellipse(img::UMat, center::Point{Int32}, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(startAngle),julia_to_cpp(endAngle),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
ellipse(img::UMat, center::Point{Int32}, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = ellipse(img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift)

function ellipse(img::Image, box::RotatedRect, color::Scalar, thickness::Int32, lineType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(box),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType)))
end
ellipse(img::Image, box::RotatedRect, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8)) = ellipse(img, box, color, thickness, lineType)

function ellipse(img::UMat, box::RotatedRect, color::Scalar, thickness::Int32, lineType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(box),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType)))
end
ellipse(img::UMat, box::RotatedRect, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8)) = ellipse(img, box, color, thickness, lineType)

function drawMarker(img::Image, position::Point{Int32}, color::Scalar, markerType::Int32, markerSize::Int32, thickness::Int32, line_type::Int32)
	return cpp_to_julia(jlopencv_cv_cv_drawMarker(julia_to_cpp(img),julia_to_cpp(position),julia_to_cpp(color),julia_to_cpp(markerType),julia_to_cpp(markerSize),julia_to_cpp(thickness),julia_to_cpp(line_type)))
end
drawMarker(img::Image, position::Point{Int32}, color::Scalar; markerType::Int32 = Int32(MARKER_CROSS), markerSize::Int32 = Int32(20), thickness::Int32 = Int32(1), line_type::Int32 = Int32(8)) = drawMarker(img, position, color, markerType, markerSize, thickness, line_type)

function drawMarker(img::UMat, position::Point{Int32}, color::Scalar, markerType::Int32, markerSize::Int32, thickness::Int32, line_type::Int32)
	return cpp_to_julia(jlopencv_cv_cv_drawMarker(julia_to_cpp(img),julia_to_cpp(position),julia_to_cpp(color),julia_to_cpp(markerType),julia_to_cpp(markerSize),julia_to_cpp(thickness),julia_to_cpp(line_type)))
end
drawMarker(img::UMat, position::Point{Int32}, color::Scalar; markerType::Int32 = Int32(MARKER_CROSS), markerSize::Int32 = Int32(20), thickness::Int32 = Int32(1), line_type::Int32 = Int32(8)) = drawMarker(img, position, color, markerType, markerSize, thickness, line_type)

function fillConvexPoly(img::Image, points::Image, color::Scalar, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_fillConvexPoly(julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
fillConvexPoly(img::Image, points::Image, color::Scalar; lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = fillConvexPoly(img, points, color, lineType, shift)

function fillConvexPoly(img::UMat, points::UMat, color::Scalar, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_fillConvexPoly(julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
fillConvexPoly(img::UMat, points::UMat, color::Scalar; lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = fillConvexPoly(img, points, color, lineType, shift)

function fillPoly(img::Image, pts::Array{Image, 1}, color::Scalar, lineType::Int32, shift::Int32, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_fillPoly(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift),julia_to_cpp(offset)))
end
fillPoly(img::Image, pts::Array{Image, 1}, color::Scalar; lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0), offset::Point{Int32} = (PointOP)) = fillPoly(img, pts, color, lineType, shift, offset)

function fillPoly(img::UMat, pts::Array{UMat, 1}, color::Scalar, lineType::Int32, shift::Int32, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_fillPoly(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift),julia_to_cpp(offset)))
end
fillPoly(img::UMat, pts::Array{UMat, 1}, color::Scalar; lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0), offset::Point{Int32} = (PointOP)) = fillPoly(img, pts, color, lineType, shift, offset)

function polylines(img::Image, pts::Array{Image, 1}, isClosed::Bool, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_polylines(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(isClosed),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
polylines(img::Image, pts::Array{Image, 1}, isClosed::Bool, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = polylines(img, pts, isClosed, color, thickness, lineType, shift)

function polylines(img::UMat, pts::Array{UMat, 1}, isClosed::Bool, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_polylines(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(isClosed),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
polylines(img::UMat, pts::Array{UMat, 1}, isClosed::Bool, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), shift::Int32 = Int32(0)) = polylines(img, pts, isClosed, color, thickness, lineType, shift)

function drawContours(image::Image, contours::Array{Image, 1}, contourIdx::Int32, color::Scalar, thickness::Int32, lineType::Int32, hierarchy::Image, maxLevel::Int32, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_drawContours(julia_to_cpp(image),julia_to_cpp(contours),julia_to_cpp(contourIdx),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(hierarchy),julia_to_cpp(maxLevel),julia_to_cpp(offset)))
end
drawContours(image::Image, contours::Array{Image, 1}, contourIdx::Int32, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), hierarchy::Image = (MatOP), maxLevel::Int32 = Int32(INT_MAX), offset::Point{Int32} = (PointOP)) = drawContours(image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset)

function drawContours(image::UMat, contours::Array{UMat, 1}, contourIdx::Int32, color::Scalar, thickness::Int32, lineType::Int32, hierarchy::UMat, maxLevel::Int32, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_drawContours(julia_to_cpp(image),julia_to_cpp(contours),julia_to_cpp(contourIdx),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(hierarchy),julia_to_cpp(maxLevel),julia_to_cpp(offset)))
end
drawContours(image::UMat, contours::Array{UMat, 1}, contourIdx::Int32, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), hierarchy::UMat = (UMatOP), maxLevel::Int32 = Int32(INT_MAX), offset::Point{Int32} = (PointOP)) = drawContours(image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset)

function clipLine(imgRect::Rect, pt1::Point{Int32}, pt2::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_clipLine(julia_to_cpp(imgRect),julia_to_cpp(pt1),julia_to_cpp(pt2)))
end

function ellipse2Poly(center::Point{Int32}, axes::Size, angle::Int32, arcStart::Int32, arcEnd::Int32, delta::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse2Poly(julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(arcStart),julia_to_cpp(arcEnd),julia_to_cpp(delta)))
end

function putText(img::Image, text::String, org::Point{Int32}, fontFace::Int32, fontScale::Float64, color::Scalar, thickness::Int32, lineType::Int32, bottomLeftOrigin::Bool)
	return cpp_to_julia(jlopencv_cv_cv_putText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(bottomLeftOrigin)))
end
putText(img::Image, text::String, org::Point{Int32}, fontFace::Int32, fontScale::Float64, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), bottomLeftOrigin::Bool = (false)) = putText(img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin)

function putText(img::UMat, text::String, org::Point{Int32}, fontFace::Int32, fontScale::Float64, color::Scalar, thickness::Int32, lineType::Int32, bottomLeftOrigin::Bool)
	return cpp_to_julia(jlopencv_cv_cv_putText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(bottomLeftOrigin)))
end
putText(img::UMat, text::String, org::Point{Int32}, fontFace::Int32, fontScale::Float64, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(LINE_8), bottomLeftOrigin::Bool = (false)) = putText(img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin)

function getTextSize(text::String, fontFace::Int32, fontScale::Float64, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getTextSize(julia_to_cpp(text),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(thickness)))
end

function getFontScaleFromHeight(fontFace::Int32, pixelHeight::Int32, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getFontScaleFromHeight(julia_to_cpp(fontFace),julia_to_cpp(pixelHeight),julia_to_cpp(thickness)))
end
getFontScaleFromHeight(fontFace::Int32, pixelHeight::Int32; thickness::Int32 = Int32(1)) = getFontScaleFromHeight(fontFace, pixelHeight, thickness)

function Rodrigues(src::Image, dst::Image, jacobian::Image)
	return cpp_to_julia(jlopencv_cv_cv_Rodrigues(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(jacobian)))
end
Rodrigues(src::Image; dst::Image = (Mat()), jacobian::Image = (MatOP)) = Rodrigues(src, dst, jacobian)

function Rodrigues(src::UMat, dst::UMat, jacobian::UMat)
	return cpp_to_julia(jlopencv_cv_cv_Rodrigues(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(jacobian)))
end
Rodrigues(src::UMat; dst::UMat = (UMat()), jacobian::UMat = (UMatOP)) = Rodrigues(src, dst, jacobian)

function findHomography(srcPoints::Image, dstPoints::Image, method::Int32, ransacReprojThreshold::Float64, mask::Image, maxIters::Int32, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_findHomography(julia_to_cpp(srcPoints),julia_to_cpp(dstPoints),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(mask),julia_to_cpp(maxIters),julia_to_cpp(confidence)))
end
findHomography(srcPoints::Image, dstPoints::Image; method::Int32 = Int32(0), ransacReprojThreshold::Float64 = Float64(3), mask::Image = (MatOP), maxIters::Int32 = Int32(2000), confidence::Float64 = Float64(0.995)) = findHomography(srcPoints, dstPoints, method, ransacReprojThreshold, mask, maxIters, confidence)

function findHomography(srcPoints::UMat, dstPoints::UMat, method::Int32, ransacReprojThreshold::Float64, mask::UMat, maxIters::Int32, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_findHomography(julia_to_cpp(srcPoints),julia_to_cpp(dstPoints),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(mask),julia_to_cpp(maxIters),julia_to_cpp(confidence)))
end
findHomography(srcPoints::UMat, dstPoints::UMat; method::Int32 = Int32(0), ransacReprojThreshold::Float64 = Float64(3), mask::UMat = (UMatOP), maxIters::Int32 = Int32(2000), confidence::Float64 = Float64(0.995)) = findHomography(srcPoints, dstPoints, method, ransacReprojThreshold, mask, maxIters, confidence)

function RQDecomp3x3(src::Image, mtxR::Image, mtxQ::Image, Qx::Image, Qy::Image, Qz::Image)
	return cpp_to_julia(jlopencv_cv_cv_RQDecomp3x3(julia_to_cpp(src),julia_to_cpp(mtxR),julia_to_cpp(mtxQ),julia_to_cpp(Qx),julia_to_cpp(Qy),julia_to_cpp(Qz)))
end
RQDecomp3x3(src::Image; mtxR::Image = (Mat()), mtxQ::Image = (Mat()), Qx::Image = (MatOP), Qy::Image = (MatOP), Qz::Image = (MatOP)) = RQDecomp3x3(src, mtxR, mtxQ, Qx, Qy, Qz)

function RQDecomp3x3(src::UMat, mtxR::UMat, mtxQ::UMat, Qx::UMat, Qy::UMat, Qz::UMat)
	return cpp_to_julia(jlopencv_cv_cv_RQDecomp3x3(julia_to_cpp(src),julia_to_cpp(mtxR),julia_to_cpp(mtxQ),julia_to_cpp(Qx),julia_to_cpp(Qy),julia_to_cpp(Qz)))
end
RQDecomp3x3(src::UMat; mtxR::UMat = (UMat()), mtxQ::UMat = (UMat()), Qx::UMat = (UMatOP), Qy::UMat = (UMatOP), Qz::UMat = (UMatOP)) = RQDecomp3x3(src, mtxR, mtxQ, Qx, Qy, Qz)

function decomposeProjectionMatrix(projMatrix::Image, cameraMatrix::Image, rotMatrix::Image, transVect::Image, rotMatrixX::Image, rotMatrixY::Image, rotMatrixZ::Image, eulerAngles::Image)
	return cpp_to_julia(jlopencv_cv_cv_decomposeProjectionMatrix(julia_to_cpp(projMatrix),julia_to_cpp(cameraMatrix),julia_to_cpp(rotMatrix),julia_to_cpp(transVect),julia_to_cpp(rotMatrixX),julia_to_cpp(rotMatrixY),julia_to_cpp(rotMatrixZ),julia_to_cpp(eulerAngles)))
end
decomposeProjectionMatrix(projMatrix::Image; cameraMatrix::Image = (Mat()), rotMatrix::Image = (Mat()), transVect::Image = (Mat()), rotMatrixX::Image = (MatOP), rotMatrixY::Image = (MatOP), rotMatrixZ::Image = (MatOP), eulerAngles::Image = (MatOP)) = decomposeProjectionMatrix(projMatrix, cameraMatrix, rotMatrix, transVect, rotMatrixX, rotMatrixY, rotMatrixZ, eulerAngles)

function decomposeProjectionMatrix(projMatrix::UMat, cameraMatrix::UMat, rotMatrix::UMat, transVect::UMat, rotMatrixX::UMat, rotMatrixY::UMat, rotMatrixZ::UMat, eulerAngles::UMat)
	return cpp_to_julia(jlopencv_cv_cv_decomposeProjectionMatrix(julia_to_cpp(projMatrix),julia_to_cpp(cameraMatrix),julia_to_cpp(rotMatrix),julia_to_cpp(transVect),julia_to_cpp(rotMatrixX),julia_to_cpp(rotMatrixY),julia_to_cpp(rotMatrixZ),julia_to_cpp(eulerAngles)))
end
decomposeProjectionMatrix(projMatrix::UMat; cameraMatrix::UMat = (UMat()), rotMatrix::UMat = (UMat()), transVect::UMat = (UMat()), rotMatrixX::UMat = (UMatOP), rotMatrixY::UMat = (UMatOP), rotMatrixZ::UMat = (UMatOP), eulerAngles::UMat = (UMatOP)) = decomposeProjectionMatrix(projMatrix, cameraMatrix, rotMatrix, transVect, rotMatrixX, rotMatrixY, rotMatrixZ, eulerAngles)

function matMulDeriv(A::Image, B::Image, dABdA::Image, dABdB::Image)
	return cpp_to_julia(jlopencv_cv_cv_matMulDeriv(julia_to_cpp(A),julia_to_cpp(B),julia_to_cpp(dABdA),julia_to_cpp(dABdB)))
end
matMulDeriv(A::Image, B::Image; dABdA::Image = (Mat()), dABdB::Image = (Mat())) = matMulDeriv(A, B, dABdA, dABdB)

function matMulDeriv(A::UMat, B::UMat, dABdA::UMat, dABdB::UMat)
	return cpp_to_julia(jlopencv_cv_cv_matMulDeriv(julia_to_cpp(A),julia_to_cpp(B),julia_to_cpp(dABdA),julia_to_cpp(dABdB)))
end
matMulDeriv(A::UMat, B::UMat; dABdA::UMat = (UMat()), dABdB::UMat = (UMat())) = matMulDeriv(A, B, dABdA, dABdB)

function composeRT(rvec1::Image, tvec1::Image, rvec2::Image, tvec2::Image, rvec3::Image, tvec3::Image, dr3dr1::Image, dr3dt1::Image, dr3dr2::Image, dr3dt2::Image, dt3dr1::Image, dt3dt1::Image, dt3dr2::Image, dt3dt2::Image)
	return cpp_to_julia(jlopencv_cv_cv_composeRT(julia_to_cpp(rvec1),julia_to_cpp(tvec1),julia_to_cpp(rvec2),julia_to_cpp(tvec2),julia_to_cpp(rvec3),julia_to_cpp(tvec3),julia_to_cpp(dr3dr1),julia_to_cpp(dr3dt1),julia_to_cpp(dr3dr2),julia_to_cpp(dr3dt2),julia_to_cpp(dt3dr1),julia_to_cpp(dt3dt1),julia_to_cpp(dt3dr2),julia_to_cpp(dt3dt2)))
end
composeRT(rvec1::Image, tvec1::Image, rvec2::Image, tvec2::Image; rvec3::Image = (Mat()), tvec3::Image = (Mat()), dr3dr1::Image = (MatOP), dr3dt1::Image = (MatOP), dr3dr2::Image = (MatOP), dr3dt2::Image = (MatOP), dt3dr1::Image = (MatOP), dt3dt1::Image = (MatOP), dt3dr2::Image = (MatOP), dt3dt2::Image = (MatOP)) = composeRT(rvec1, tvec1, rvec2, tvec2, rvec3, tvec3, dr3dr1, dr3dt1, dr3dr2, dr3dt2, dt3dr1, dt3dt1, dt3dr2, dt3dt2)

function composeRT(rvec1::UMat, tvec1::UMat, rvec2::UMat, tvec2::UMat, rvec3::UMat, tvec3::UMat, dr3dr1::UMat, dr3dt1::UMat, dr3dr2::UMat, dr3dt2::UMat, dt3dr1::UMat, dt3dt1::UMat, dt3dr2::UMat, dt3dt2::UMat)
	return cpp_to_julia(jlopencv_cv_cv_composeRT(julia_to_cpp(rvec1),julia_to_cpp(tvec1),julia_to_cpp(rvec2),julia_to_cpp(tvec2),julia_to_cpp(rvec3),julia_to_cpp(tvec3),julia_to_cpp(dr3dr1),julia_to_cpp(dr3dt1),julia_to_cpp(dr3dr2),julia_to_cpp(dr3dt2),julia_to_cpp(dt3dr1),julia_to_cpp(dt3dt1),julia_to_cpp(dt3dr2),julia_to_cpp(dt3dt2)))
end
composeRT(rvec1::UMat, tvec1::UMat, rvec2::UMat, tvec2::UMat; rvec3::UMat = (UMat()), tvec3::UMat = (UMat()), dr3dr1::UMat = (UMatOP), dr3dt1::UMat = (UMatOP), dr3dr2::UMat = (UMatOP), dr3dt2::UMat = (UMatOP), dt3dr1::UMat = (UMatOP), dt3dt1::UMat = (UMatOP), dt3dr2::UMat = (UMatOP), dt3dt2::UMat = (UMatOP)) = composeRT(rvec1, tvec1, rvec2, tvec2, rvec3, tvec3, dr3dr1, dr3dt1, dr3dr2, dr3dt2, dt3dr1, dt3dt1, dt3dr2, dt3dt2)

function projectPoints(objectPoints::Image, rvec::Image, tvec::Image, cameraMatrix::Image, distCoeffs::Image, imagePoints::Image, jacobian::Image, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imagePoints),julia_to_cpp(jacobian),julia_to_cpp(aspectRatio)))
end
projectPoints(objectPoints::Image, rvec::Image, tvec::Image, cameraMatrix::Image, distCoeffs::Image; imagePoints::Image = (Mat()), jacobian::Image = (MatOP), aspectRatio::Float64 = Float64(0)) = projectPoints(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, imagePoints, jacobian, aspectRatio)

function projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, cameraMatrix::UMat, distCoeffs::UMat, imagePoints::UMat, jacobian::UMat, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imagePoints),julia_to_cpp(jacobian),julia_to_cpp(aspectRatio)))
end
projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, cameraMatrix::UMat, distCoeffs::UMat; imagePoints::UMat = (UMat()), jacobian::UMat = (UMatOP), aspectRatio::Float64 = Float64(0)) = projectPoints(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, imagePoints, jacobian, aspectRatio)

function solvePnP(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, useExtrinsicGuess::Bool, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePnP(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags)))
end
solvePnP(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image; rvec::Image = (Mat()), tvec::Image = (Mat()), useExtrinsicGuess::Bool = (false), flags::Int32 = Int32(SOLVEPNP_ITERATIVE)) = solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, flags)

function solvePnP(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, useExtrinsicGuess::Bool, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePnP(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags)))
end
solvePnP(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat; rvec::UMat = (UMat()), tvec::UMat = (UMat()), useExtrinsicGuess::Bool = (false), flags::Int32 = Int32(SOLVEPNP_ITERATIVE)) = solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, flags)

function solvePnPRansac(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, useExtrinsicGuess::Bool, iterationsCount::Int32, reprojectionError::Float32, confidence::Float64, inliers::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRansac(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(iterationsCount),julia_to_cpp(reprojectionError),julia_to_cpp(confidence),julia_to_cpp(inliers),julia_to_cpp(flags)))
end
solvePnPRansac(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image; rvec::Image = (Mat()), tvec::Image = (Mat()), useExtrinsicGuess::Bool = (false), iterationsCount::Int32 = Int32(100), reprojectionError::Float32 = Float32(8.0), confidence::Float64 = Float64(0.99), inliers::Image = (MatOP), flags::Int32 = Int32(SOLVEPNP_ITERATIVE)) = solvePnPRansac(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers, flags)

function solvePnPRansac(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, useExtrinsicGuess::Bool, iterationsCount::Int32, reprojectionError::Float32, confidence::Float64, inliers::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRansac(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(iterationsCount),julia_to_cpp(reprojectionError),julia_to_cpp(confidence),julia_to_cpp(inliers),julia_to_cpp(flags)))
end
solvePnPRansac(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat; rvec::UMat = (UMat()), tvec::UMat = (UMat()), useExtrinsicGuess::Bool = (false), iterationsCount::Int32 = Int32(100), reprojectionError::Float32 = Float32(8.0), confidence::Float64 = Float64(0.99), inliers::UMat = (UMatOP), flags::Int32 = Int32(SOLVEPNP_ITERATIVE)) = solvePnPRansac(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers, flags)

function solveP3P(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, flags::Int32, rvecs::Array{Image, 1}, tvecs::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_solveP3P(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(flags),julia_to_cpp(rvecs),julia_to_cpp(tvecs)))
end
solveP3P(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, flags::Int32; rvecs::Array{Image, 1} = (Array{Image, 1}()), tvecs::Array{Image, 1} = (Array{Image, 1}())) = solveP3P(objectPoints, imagePoints, cameraMatrix, distCoeffs, flags, rvecs, tvecs)

function solveP3P(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, flags::Int32, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_solveP3P(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(flags),julia_to_cpp(rvecs),julia_to_cpp(tvecs)))
end
solveP3P(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, flags::Int32; rvecs::Array{UMat, 1} = (Array{UMat, 1}()), tvecs::Array{UMat, 1} = (Array{UMat, 1}())) = solveP3P(objectPoints, imagePoints, cameraMatrix, distCoeffs, flags, rvecs, tvecs)

function solvePnPRefineLM(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineLM(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria)))
end
solvePnPRefineLM(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image; criteria::TermCriteria = (TermCriteriaOTermCriteriaggEPSGRGTermCriteriaggCOUNTSGYWSGFLTREPSILONP)) = solvePnPRefineLM(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria)

function solvePnPRefineLM(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineLM(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria)))
end
solvePnPRefineLM(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat; criteria::TermCriteria = (TermCriteriaOTermCriteriaggEPSGRGTermCriteriaggCOUNTSGYWSGFLTREPSILONP)) = solvePnPRefineLM(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria)

function solvePnPRefineVVS(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, criteria::TermCriteria, VVSlambda::Float64)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineVVS(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria),julia_to_cpp(VVSlambda)))
end
solvePnPRefineVVS(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image; criteria::TermCriteria = (TermCriteriaOTermCriteriaggEPSGRGTermCriteriaggCOUNTSGYWSGFLTREPSILONP), VVSlambda::Float64 = Float64(1)) = solvePnPRefineVVS(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria, VVSlambda)

function solvePnPRefineVVS(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, criteria::TermCriteria, VVSlambda::Float64)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineVVS(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria),julia_to_cpp(VVSlambda)))
end
solvePnPRefineVVS(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat; criteria::TermCriteria = (TermCriteriaOTermCriteriaggEPSGRGTermCriteriaggCOUNTSGYWSGFLTREPSILONP), VVSlambda::Float64 = Float64(1)) = solvePnPRefineVVS(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria, VVSlambda)

function solvePnPGeneric(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, useExtrinsicGuess::Bool, flags::SolvePnPMethod, rvec::Image, tvec::Image, reprojectionError::Image)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPGeneric(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(reprojectionError)))
end
solvePnPGeneric(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image; rvecs::Array{Image, 1} = (Array{Image, 1}()), tvecs::Array{Image, 1} = (Array{Image, 1}()), useExtrinsicGuess::Bool = (false), flags::SolvePnPMethod = (SOLVEPNP_ITERATIVE), rvec::Image = (MatOP), tvec::Image = (MatOP), reprojectionError::Image = (MatOP)) = solvePnPGeneric(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvecs, tvecs, useExtrinsicGuess, flags, rvec, tvec, reprojectionError)

function solvePnPGeneric(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, useExtrinsicGuess::Bool, flags::SolvePnPMethod, rvec::UMat, tvec::UMat, reprojectionError::UMat)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPGeneric(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(reprojectionError)))
end
solvePnPGeneric(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat; rvecs::Array{UMat, 1} = (Array{UMat, 1}()), tvecs::Array{UMat, 1} = (Array{UMat, 1}()), useExtrinsicGuess::Bool = (false), flags::SolvePnPMethod = (SOLVEPNP_ITERATIVE), rvec::UMat = (UMatOP), tvec::UMat = (UMatOP), reprojectionError::UMat = (UMatOP)) = solvePnPGeneric(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvecs, tvecs, useExtrinsicGuess, flags, rvec, tvec, reprojectionError)

function initCameraMatrix2D(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_initCameraMatrix2D(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(aspectRatio)))
end
initCameraMatrix2D(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size; aspectRatio::Float64 = Float64(1.0)) = initCameraMatrix2D(objectPoints, imagePoints, imageSize, aspectRatio)

function initCameraMatrix2D(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_initCameraMatrix2D(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(aspectRatio)))
end
initCameraMatrix2D(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size; aspectRatio::Float64 = Float64(1.0)) = initCameraMatrix2D(objectPoints, imagePoints, imageSize, aspectRatio)

function findChessboardCorners(image::Image, patternSize::Size, corners::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCorners(image::Image, patternSize::Size; corners::Image = (Mat()), flags::Int32 = Int32(CALIB_CB_ADAPTIVE_THRESH + CALIB_CB_NORMALIZE_IMAGE)) = findChessboardCorners(image, patternSize, corners, flags)

function findChessboardCorners(image::UMat, patternSize::Size, corners::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCorners(image::UMat, patternSize::Size; corners::UMat = (UMat()), flags::Int32 = Int32(CALIB_CB_ADAPTIVE_THRESH + CALIB_CB_NORMALIZE_IMAGE)) = findChessboardCorners(image, patternSize, corners, flags)

function checkChessboard(img::Image, size::Size)
	return cpp_to_julia(jlopencv_cv_cv_checkChessboard(julia_to_cpp(img),julia_to_cpp(size)))
end

function checkChessboard(img::UMat, size::Size)
	return cpp_to_julia(jlopencv_cv_cv_checkChessboard(julia_to_cpp(img),julia_to_cpp(size)))
end

function findChessboardCornersSBWithMeta(image::Image, patternSize::Size, flags::Int32, corners::Image, meta::Image)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(corners),julia_to_cpp(meta)))
end
findChessboardCornersSBWithMeta(image::Image, patternSize::Size, flags::Int32; corners::Image = (Mat()), meta::Image = (Mat())) = findChessboardCornersSBWithMeta(image, patternSize, flags, corners, meta)

function findChessboardCornersSBWithMeta(image::UMat, patternSize::Size, flags::Int32, corners::UMat, meta::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(corners),julia_to_cpp(meta)))
end
findChessboardCornersSBWithMeta(image::UMat, patternSize::Size, flags::Int32; corners::UMat = (UMat()), meta::UMat = (UMat())) = findChessboardCornersSBWithMeta(image, patternSize, flags, corners, meta)

function findChessboardCornersSB(image::Image, patternSize::Size, corners::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCornersSB(image::Image, patternSize::Size; corners::Image = (Mat()), flags::Int32 = Int32(0)) = findChessboardCornersSB(image, patternSize, corners, flags)

function findChessboardCornersSB(image::UMat, patternSize::Size, corners::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCornersSB(image::UMat, patternSize::Size; corners::UMat = (UMat()), flags::Int32 = Int32(0)) = findChessboardCornersSB(image, patternSize, corners, flags)

function estimateChessboardSharpness(image::Image, patternSize::Size, corners::Image, rise_distance::Float32, vertical::Bool, sharpness::Image)
	return cpp_to_julia(jlopencv_cv_cv_estimateChessboardSharpness(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(rise_distance),julia_to_cpp(vertical),julia_to_cpp(sharpness)))
end
estimateChessboardSharpness(image::Image, patternSize::Size, corners::Image; rise_distance::Float32 = Float32(0.8F), vertical::Bool = (false), sharpness::Image = (MatOP)) = estimateChessboardSharpness(image, patternSize, corners, rise_distance, vertical, sharpness)

function estimateChessboardSharpness(image::UMat, patternSize::Size, corners::UMat, rise_distance::Float32, vertical::Bool, sharpness::UMat)
	return cpp_to_julia(jlopencv_cv_cv_estimateChessboardSharpness(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(rise_distance),julia_to_cpp(vertical),julia_to_cpp(sharpness)))
end
estimateChessboardSharpness(image::UMat, patternSize::Size, corners::UMat; rise_distance::Float32 = Float32(0.8F), vertical::Bool = (false), sharpness::UMat = (UMatOP)) = estimateChessboardSharpness(image, patternSize, corners, rise_distance, vertical, sharpness)

function find4QuadCornerSubpix(img::Image, corners::Image, region_size::Size)
	return cpp_to_julia(jlopencv_cv_cv_find4QuadCornerSubpix(julia_to_cpp(img),julia_to_cpp(corners),julia_to_cpp(region_size)))
end

function find4QuadCornerSubpix(img::UMat, corners::UMat, region_size::Size)
	return cpp_to_julia(jlopencv_cv_cv_find4QuadCornerSubpix(julia_to_cpp(img),julia_to_cpp(corners),julia_to_cpp(region_size)))
end

function drawChessboardCorners(image::Image, patternSize::Size, corners::Image, patternWasFound::Bool)
	return cpp_to_julia(jlopencv_cv_cv_drawChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(patternWasFound)))
end

function drawChessboardCorners(image::UMat, patternSize::Size, corners::UMat, patternWasFound::Bool)
	return cpp_to_julia(jlopencv_cv_cv_drawChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(patternWasFound)))
end

function drawFrameAxes(image::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, length::Float32, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_cv_drawFrameAxes(julia_to_cpp(image),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(length),julia_to_cpp(thickness)))
end
drawFrameAxes(image::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, length::Float32; thickness::Int32 = Int32(3)) = drawFrameAxes(image, cameraMatrix, distCoeffs, rvec, tvec, length, thickness)

function drawFrameAxes(image::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, length::Float32, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_cv_drawFrameAxes(julia_to_cpp(image),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(length),julia_to_cpp(thickness)))
end
drawFrameAxes(image::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, length::Float32; thickness::Int32 = Int32(3)) = drawFrameAxes(image, cameraMatrix, distCoeffs, rvec, tvec, length, thickness)

function findCirclesGrid(image::Image, patternSize::Size, flags::Int32, blobDetector::cv_Ptr{Feature2D}, parameters::CirclesGridFinderParameters, centers::Image)
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(blobDetector),julia_to_cpp(parameters),julia_to_cpp(centers)))
end
findCirclesGrid(image::Image, patternSize::Size, flags::Int32, blobDetector::cv_Ptr{Feature2D}, parameters::CirclesGridFinderParameters; centers::Image = (Mat())) = findCirclesGrid(image, patternSize, flags, blobDetector, parameters, centers)

function findCirclesGrid(image::UMat, patternSize::Size, flags::Int32, blobDetector::cv_Ptr{Feature2D}, parameters::CirclesGridFinderParameters, centers::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(blobDetector),julia_to_cpp(parameters),julia_to_cpp(centers)))
end
findCirclesGrid(image::UMat, patternSize::Size, flags::Int32, blobDetector::cv_Ptr{Feature2D}, parameters::CirclesGridFinderParameters; centers::UMat = (UMat())) = findCirclesGrid(image, patternSize, flags, blobDetector, parameters, centers)

function findCirclesGrid(image::Image, patternSize::Size, centers::Image, flags::Int32, blobDetector::cv_Ptr{Feature2D})
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(centers),julia_to_cpp(flags),julia_to_cpp(blobDetector)))
end
findCirclesGrid(image::Image, patternSize::Size; centers::Image = (Mat()), flags::Int32 = Int32(CALIB_CB_SYMMETRIC_GRID), blobDetector::cv_Ptr{Feature2D} = (SimpleBlobDetectorggcreateOP)) = findCirclesGrid(image, patternSize, centers, flags, blobDetector)

function findCirclesGrid(image::UMat, patternSize::Size, centers::UMat, flags::Int32, blobDetector::cv_Ptr{Feature2D})
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(centers),julia_to_cpp(flags),julia_to_cpp(blobDetector)))
end
findCirclesGrid(image::UMat, patternSize::Size; centers::UMat = (UMat()), flags::Int32 = Int32(CALIB_CB_SYMMETRIC_GRID), blobDetector::cv_Ptr{Feature2D} = (SimpleBlobDetectorggcreateOP)) = findCirclesGrid(image, patternSize, centers, flags, blobDetector)

function calibrateCameraExtended(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, cameraMatrix::Image, distCoeffs::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, stdDeviationsIntrinsics::Image, stdDeviationsExtrinsics::Image, perViewErrors::Image, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraExtended(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, cameraMatrix::Image, distCoeffs::Image; rvecs::Array{Image, 1} = (Array{Image, 1}()), tvecs::Array{Image, 1} = (Array{Image, 1}()), stdDeviationsIntrinsics::Image = (Mat()), stdDeviationsExtrinsics::Image = (Mat()), perViewErrors::Image = (Mat()), flags::Int32 = Int32(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCameraExtended(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, stdDeviationsIntrinsics, stdDeviationsExtrinsics, perViewErrors, flags, criteria)

function calibrateCameraExtended(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, stdDeviationsIntrinsics::UMat, stdDeviationsExtrinsics::UMat, perViewErrors::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraExtended(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat; rvecs::Array{UMat, 1} = (Array{UMat, 1}()), tvecs::Array{UMat, 1} = (Array{UMat, 1}()), stdDeviationsIntrinsics::UMat = (UMat()), stdDeviationsExtrinsics::UMat = (UMat()), perViewErrors::UMat = (UMat()), flags::Int32 = Int32(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCameraExtended(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, stdDeviationsIntrinsics, stdDeviationsExtrinsics, perViewErrors, flags, criteria)

function calibrateCamera(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, cameraMatrix::Image, distCoeffs::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCamera(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, cameraMatrix::Image, distCoeffs::Image; rvecs::Array{Image, 1} = (Array{Image, 1}()), tvecs::Array{Image, 1} = (Array{Image, 1}()), flags::Int32 = Int32(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, flags, criteria)

function calibrateCamera(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCamera(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat; rvecs::Array{UMat, 1} = (Array{UMat, 1}()), tvecs::Array{UMat, 1} = (Array{UMat, 1}()), flags::Int32 = Int32(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, flags, criteria)

function calibrateCameraROExtended(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Image, distCoeffs::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, newObjPoints::Image, stdDeviationsIntrinsics::Image, stdDeviationsExtrinsics::Image, stdDeviationsObjPoints::Image, perViewErrors::Image, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(stdDeviationsObjPoints),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraROExtended(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Image, distCoeffs::Image; rvecs::Array{Image, 1} = (Array{Image, 1}()), tvecs::Array{Image, 1} = (Array{Image, 1}()), newObjPoints::Image = (Mat()), stdDeviationsIntrinsics::Image = (Mat()), stdDeviationsExtrinsics::Image = (Mat()), stdDeviationsObjPoints::Image = (Mat()), perViewErrors::Image = (Mat()), flags::Int32 = Int32(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCameraROExtended(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, stdDeviationsIntrinsics, stdDeviationsExtrinsics, stdDeviationsObjPoints, perViewErrors, flags, criteria)

function calibrateCameraROExtended(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, newObjPoints::UMat, stdDeviationsIntrinsics::UMat, stdDeviationsExtrinsics::UMat, stdDeviationsObjPoints::UMat, perViewErrors::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(stdDeviationsObjPoints),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraROExtended(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat; rvecs::Array{UMat, 1} = (Array{UMat, 1}()), tvecs::Array{UMat, 1} = (Array{UMat, 1}()), newObjPoints::UMat = (UMat()), stdDeviationsIntrinsics::UMat = (UMat()), stdDeviationsExtrinsics::UMat = (UMat()), stdDeviationsObjPoints::UMat = (UMat()), perViewErrors::UMat = (UMat()), flags::Int32 = Int32(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCameraROExtended(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, stdDeviationsIntrinsics, stdDeviationsExtrinsics, stdDeviationsObjPoints, perViewErrors, flags, criteria)

function calibrateCameraRO(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Image, distCoeffs::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, newObjPoints::Image, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraRO(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Image, distCoeffs::Image; rvecs::Array{Image, 1} = (Array{Image, 1}()), tvecs::Array{Image, 1} = (Array{Image, 1}()), newObjPoints::Image = (Mat()), flags::Int32 = Int32(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, flags, criteria)

function calibrateCameraRO(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, newObjPoints::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraRO(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat; rvecs::Array{UMat, 1} = (Array{UMat, 1}()), tvecs::Array{UMat, 1} = (Array{UMat, 1}()), newObjPoints::UMat = (UMat()), flags::Int32 = Int32(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, flags, criteria)

function calibrationMatrixValues(cameraMatrix::Image, imageSize::Size, apertureWidth::Float64, apertureHeight::Float64)
	return cpp_to_julia(jlopencv_cv_cv_calibrationMatrixValues(julia_to_cpp(cameraMatrix),julia_to_cpp(imageSize),julia_to_cpp(apertureWidth),julia_to_cpp(apertureHeight)))
end

function calibrationMatrixValues(cameraMatrix::UMat, imageSize::Size, apertureWidth::Float64, apertureHeight::Float64)
	return cpp_to_julia(jlopencv_cv_cv_calibrationMatrixValues(julia_to_cpp(cameraMatrix),julia_to_cpp(imageSize),julia_to_cpp(apertureWidth),julia_to_cpp(apertureHeight)))
end

function stereoCalibrateExtended(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size, R::Image, T::Image, E::Image, F::Image, perViewErrors::Image, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrateExtended(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size, R::Image, T::Image; E::Image = (Mat()), F::Image = (Mat()), perViewErrors::Image = (Mat()), flags::Int32 = Int32(CALIB_FIX_INTRINSIC), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGXeTcP)) = stereoCalibrateExtended(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, perViewErrors, flags, criteria)

function stereoCalibrateExtended(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, E::UMat, F::UMat, perViewErrors::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrateExtended(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat; E::UMat = (UMat()), F::UMat = (UMat()), perViewErrors::UMat = (UMat()), flags::Int32 = Int32(CALIB_FIX_INTRINSIC), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGXeTcP)) = stereoCalibrateExtended(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, perViewErrors, flags, criteria)

function stereoCalibrate(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size, R::Image, T::Image, E::Image, F::Image, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size; R::Image = (Mat()), T::Image = (Mat()), E::Image = (Mat()), F::Image = (Mat()), flags::Int32 = Int32(CALIB_FIX_INTRINSIC), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGXeTcP)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, flags, criteria)

function stereoCalibrate(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, E::UMat, F::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size; R::UMat = (UMat()), T::UMat = (UMat()), E::UMat = (UMat()), F::UMat = (UMat()), flags::Int32 = Int32(CALIB_FIX_INTRINSIC), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGXeTcP)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, flags, criteria)

function stereoRectify(cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size, R::Image, T::Image, R1::Image, R2::Image, P1::Image, P2::Image, Q::Image, flags::Int32, alpha::Float64, newImageSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_stereoRectify(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(flags),julia_to_cpp(alpha),julia_to_cpp(newImageSize)))
end
stereoRectify(cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size, R::Image, T::Image; R1::Image = (Mat()), R2::Image = (Mat()), P1::Image = (Mat()), P2::Image = (Mat()), Q::Image = (Mat()), flags::Int32 = Int32(CALIB_ZERO_DISPARITY), alpha::Float64 = Float64(-1), newImageSize::Size = (SizeOP)) = stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, R1, R2, P1, P2, Q, flags, alpha, newImageSize)

function stereoRectify(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, R1::UMat, R2::UMat, P1::UMat, P2::UMat, Q::UMat, flags::Int32, alpha::Float64, newImageSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_stereoRectify(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(flags),julia_to_cpp(alpha),julia_to_cpp(newImageSize)))
end
stereoRectify(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat; R1::UMat = (UMat()), R2::UMat = (UMat()), P1::UMat = (UMat()), P2::UMat = (UMat()), Q::UMat = (UMat()), flags::Int32 = Int32(CALIB_ZERO_DISPARITY), alpha::Float64 = Float64(-1), newImageSize::Size = (SizeOP)) = stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, R1, R2, P1, P2, Q, flags, alpha, newImageSize)

function stereoRectifyUncalibrated(points1::Image, points2::Image, F::Image, imgSize::Size, H1::Image, H2::Image, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_stereoRectifyUncalibrated(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(F),julia_to_cpp(imgSize),julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(threshold)))
end
stereoRectifyUncalibrated(points1::Image, points2::Image, F::Image, imgSize::Size; H1::Image = (Mat()), H2::Image = (Mat()), threshold::Float64 = Float64(5)) = stereoRectifyUncalibrated(points1, points2, F, imgSize, H1, H2, threshold)

function stereoRectifyUncalibrated(points1::UMat, points2::UMat, F::UMat, imgSize::Size, H1::UMat, H2::UMat, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_stereoRectifyUncalibrated(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(F),julia_to_cpp(imgSize),julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(threshold)))
end
stereoRectifyUncalibrated(points1::UMat, points2::UMat, F::UMat, imgSize::Size; H1::UMat = (UMat()), H2::UMat = (UMat()), threshold::Float64 = Float64(5)) = stereoRectifyUncalibrated(points1, points2, F, imgSize, H1, H2, threshold)

function rectify3Collinear(cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, cameraMatrix3::Image, distCoeffs3::Image, imgpt1::Array{Image, 1}, imgpt3::Array{Image, 1}, imageSize::Size, R12::Image, T12::Image, R13::Image, T13::Image, alpha::Float64, newImgSize::Size, flags::Int32, R1::Image, R2::Image, R3::Image, P1::Image, P2::Image, P3::Image, Q::Image)
	return cpp_to_julia(jlopencv_cv_cv_rectify3Collinear(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(cameraMatrix3),julia_to_cpp(distCoeffs3),julia_to_cpp(imgpt1),julia_to_cpp(imgpt3),julia_to_cpp(imageSize),julia_to_cpp(R12),julia_to_cpp(T12),julia_to_cpp(R13),julia_to_cpp(T13),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(R3),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(P3),julia_to_cpp(Q)))
end
rectify3Collinear(cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, cameraMatrix3::Image, distCoeffs3::Image, imgpt1::Array{Image, 1}, imgpt3::Array{Image, 1}, imageSize::Size, R12::Image, T12::Image, R13::Image, T13::Image, alpha::Float64, newImgSize::Size, flags::Int32; R1::Image = (Mat()), R2::Image = (Mat()), R3::Image = (Mat()), P1::Image = (Mat()), P2::Image = (Mat()), P3::Image = (Mat()), Q::Image = (Mat())) = rectify3Collinear(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, R12, T12, R13, T13, alpha, newImgSize, flags, R1, R2, R3, P1, P2, P3, Q)

function rectify3Collinear(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, cameraMatrix3::UMat, distCoeffs3::UMat, imgpt1::Array{UMat, 1}, imgpt3::Array{UMat, 1}, imageSize::Size, R12::UMat, T12::UMat, R13::UMat, T13::UMat, alpha::Float64, newImgSize::Size, flags::Int32, R1::UMat, R2::UMat, R3::UMat, P1::UMat, P2::UMat, P3::UMat, Q::UMat)
	return cpp_to_julia(jlopencv_cv_cv_rectify3Collinear(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(cameraMatrix3),julia_to_cpp(distCoeffs3),julia_to_cpp(imgpt1),julia_to_cpp(imgpt3),julia_to_cpp(imageSize),julia_to_cpp(R12),julia_to_cpp(T12),julia_to_cpp(R13),julia_to_cpp(T13),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(R3),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(P3),julia_to_cpp(Q)))
end
rectify3Collinear(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, cameraMatrix3::UMat, distCoeffs3::UMat, imgpt1::Array{UMat, 1}, imgpt3::Array{UMat, 1}, imageSize::Size, R12::UMat, T12::UMat, R13::UMat, T13::UMat, alpha::Float64, newImgSize::Size, flags::Int32; R1::UMat = (UMat()), R2::UMat = (UMat()), R3::UMat = (UMat()), P1::UMat = (UMat()), P2::UMat = (UMat()), P3::UMat = (UMat()), Q::UMat = (UMat())) = rectify3Collinear(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, R12, T12, R13, T13, alpha, newImgSize, flags, R1, R2, R3, P1, P2, P3, Q)

function getOptimalNewCameraMatrix(cameraMatrix::Image, distCoeffs::Image, imageSize::Size, alpha::Float64, newImgSize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imageSize),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(centerPrincipalPoint)))
end
getOptimalNewCameraMatrix(cameraMatrix::Image, distCoeffs::Image, imageSize::Size, alpha::Float64; newImgSize::Size = (SizeOP), centerPrincipalPoint::Bool = (false)) = getOptimalNewCameraMatrix(cameraMatrix, distCoeffs, imageSize, alpha, newImgSize, centerPrincipalPoint)

function getOptimalNewCameraMatrix(cameraMatrix::UMat, distCoeffs::UMat, imageSize::Size, alpha::Float64, newImgSize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imageSize),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(centerPrincipalPoint)))
end
getOptimalNewCameraMatrix(cameraMatrix::UMat, distCoeffs::UMat, imageSize::Size, alpha::Float64; newImgSize::Size = (SizeOP), centerPrincipalPoint::Bool = (false)) = getOptimalNewCameraMatrix(cameraMatrix, distCoeffs, imageSize, alpha, newImgSize, centerPrincipalPoint)

function calibrateHandEye(R_gripper2base::Array{Image, 1}, t_gripper2base::Array{Image, 1}, R_target2cam::Array{Image, 1}, t_target2cam::Array{Image, 1}, R_cam2gripper::Image, t_cam2gripper::Image, method::HandEyeCalibrationMethod)
	return cpp_to_julia(jlopencv_cv_cv_calibrateHandEye(julia_to_cpp(R_gripper2base),julia_to_cpp(t_gripper2base),julia_to_cpp(R_target2cam),julia_to_cpp(t_target2cam),julia_to_cpp(R_cam2gripper),julia_to_cpp(t_cam2gripper),julia_to_cpp(method)))
end
calibrateHandEye(R_gripper2base::Array{Image, 1}, t_gripper2base::Array{Image, 1}, R_target2cam::Array{Image, 1}, t_target2cam::Array{Image, 1}; R_cam2gripper::Image = (Mat()), t_cam2gripper::Image = (Mat()), method::HandEyeCalibrationMethod = (CALIB_HAND_EYE_TSAI)) = calibrateHandEye(R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, R_cam2gripper, t_cam2gripper, method)

function calibrateHandEye(R_gripper2base::Array{UMat, 1}, t_gripper2base::Array{UMat, 1}, R_target2cam::Array{UMat, 1}, t_target2cam::Array{UMat, 1}, R_cam2gripper::UMat, t_cam2gripper::UMat, method::HandEyeCalibrationMethod)
	return cpp_to_julia(jlopencv_cv_cv_calibrateHandEye(julia_to_cpp(R_gripper2base),julia_to_cpp(t_gripper2base),julia_to_cpp(R_target2cam),julia_to_cpp(t_target2cam),julia_to_cpp(R_cam2gripper),julia_to_cpp(t_cam2gripper),julia_to_cpp(method)))
end
calibrateHandEye(R_gripper2base::Array{UMat, 1}, t_gripper2base::Array{UMat, 1}, R_target2cam::Array{UMat, 1}, t_target2cam::Array{UMat, 1}; R_cam2gripper::UMat = (UMat()), t_cam2gripper::UMat = (UMat()), method::HandEyeCalibrationMethod = (CALIB_HAND_EYE_TSAI)) = calibrateHandEye(R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, R_cam2gripper, t_cam2gripper, method)

function convertPointsToHomogeneous(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsToHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsToHomogeneous(src::Image; dst::Image = (Mat())) = convertPointsToHomogeneous(src, dst)

function convertPointsToHomogeneous(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsToHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsToHomogeneous(src::UMat; dst::UMat = (UMat())) = convertPointsToHomogeneous(src, dst)

function convertPointsFromHomogeneous(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsFromHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsFromHomogeneous(src::Image; dst::Image = (Mat())) = convertPointsFromHomogeneous(src, dst)

function convertPointsFromHomogeneous(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsFromHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsFromHomogeneous(src::UMat; dst::UMat = (UMat())) = convertPointsFromHomogeneous(src, dst)

function findFundamentalMat(points1::Image, points2::Image, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int32, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(maxIters),julia_to_cpp(mask)))
end
findFundamentalMat(points1::Image, points2::Image, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int32; mask::Image = (MatOP)) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, maxIters, mask)

function findFundamentalMat(points1::UMat, points2::UMat, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(maxIters),julia_to_cpp(mask)))
end
findFundamentalMat(points1::UMat, points2::UMat, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int32; mask::UMat = (UMatOP)) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, maxIters, mask)

function findFundamentalMat(points1::Image, points2::Image, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(mask)))
end
findFundamentalMat(points1::Image, points2::Image; method::Int32 = Int32(FM_RANSAC), ransacReprojThreshold::Float64 = Float64(3.), confidence::Float64 = Float64(0.99), mask::Image = (MatOP)) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, mask)

function findFundamentalMat(points1::UMat, points2::UMat, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(mask)))
end
findFundamentalMat(points1::UMat, points2::UMat; method::Int32 = Int32(FM_RANSAC), ransacReprojThreshold::Float64 = Float64(3.), confidence::Float64 = Float64(0.99), mask::UMat = (UMatOP)) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, mask)

function findEssentialMat(points1::Image, points2::Image, cameraMatrix::Image, method::Int32, prob::Float64, threshold::Float64, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::Image, points2::Image, cameraMatrix::Image; method::Int32 = Int32(RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), mask::Image = (MatOP)) = findEssentialMat(points1, points2, cameraMatrix, method, prob, threshold, mask)

function findEssentialMat(points1::UMat, points2::UMat, cameraMatrix::UMat, method::Int32, prob::Float64, threshold::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::UMat, points2::UMat, cameraMatrix::UMat; method::Int32 = Int32(RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), mask::UMat = (UMatOP)) = findEssentialMat(points1, points2, cameraMatrix, method, prob, threshold, mask)

function findEssentialMat(points1::Image, points2::Image, focal::Float64, pp::Point{Float64}, method::Int32, prob::Float64, threshold::Float64, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::Image, points2::Image; focal::Float64 = Float64(1.0), pp::Point{Float64} = (PointYdOWSGWP), method::Int32 = Int32(RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), mask::Image = (MatOP)) = findEssentialMat(points1, points2, focal, pp, method, prob, threshold, mask)

function findEssentialMat(points1::UMat, points2::UMat, focal::Float64, pp::Point{Float64}, method::Int32, prob::Float64, threshold::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::UMat, points2::UMat; focal::Float64 = Float64(1.0), pp::Point{Float64} = (PointYdOWSGWP), method::Int32 = Int32(RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), mask::UMat = (UMatOP)) = findEssentialMat(points1, points2, focal, pp, method, prob, threshold, mask)

function decomposeEssentialMat(E::Image, R1::Image, R2::Image, t::Image)
	return cpp_to_julia(jlopencv_cv_cv_decomposeEssentialMat(julia_to_cpp(E),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(t)))
end
decomposeEssentialMat(E::Image; R1::Image = (Mat()), R2::Image = (Mat()), t::Image = (Mat())) = decomposeEssentialMat(E, R1, R2, t)

function decomposeEssentialMat(E::UMat, R1::UMat, R2::UMat, t::UMat)
	return cpp_to_julia(jlopencv_cv_cv_decomposeEssentialMat(julia_to_cpp(E),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(t)))
end
decomposeEssentialMat(E::UMat; R1::UMat = (UMat()), R2::UMat = (UMat()), t::UMat = (UMat())) = decomposeEssentialMat(E, R1, R2, t)

function recoverPose(E::Image, points1::Image, points2::Image, cameraMatrix::Image, R::Image, t::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask)))
end
recoverPose(E::Image, points1::Image, points2::Image, cameraMatrix::Image; R::Image = (Mat()), t::Image = (Mat()), mask::Image = (MatOP)) = recoverPose(E, points1, points2, cameraMatrix, R, t, mask)

function recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat, R::UMat, t::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask)))
end
recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat; R::UMat = (UMat()), t::UMat = (UMat()), mask::UMat = (UMatOP)) = recoverPose(E, points1, points2, cameraMatrix, R, t, mask)

function recoverPose(E::Image, points1::Image, points2::Image, R::Image, t::Image, focal::Float64, pp::Point{Float64}, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(mask)))
end
recoverPose(E::Image, points1::Image, points2::Image; R::Image = (Mat()), t::Image = (Mat()), focal::Float64 = Float64(1.0), pp::Point{Float64} = (PointYdOWSGWP), mask::Image = (MatOP)) = recoverPose(E, points1, points2, R, t, focal, pp, mask)

function recoverPose(E::UMat, points1::UMat, points2::UMat, R::UMat, t::UMat, focal::Float64, pp::Point{Float64}, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(mask)))
end
recoverPose(E::UMat, points1::UMat, points2::UMat; R::UMat = (UMat()), t::UMat = (UMat()), focal::Float64 = Float64(1.0), pp::Point{Float64} = (PointYdOWSGWP), mask::UMat = (UMatOP)) = recoverPose(E, points1, points2, R, t, focal, pp, mask)

function recoverPose(E::Image, points1::Image, points2::Image, cameraMatrix::Image, distanceThresh::Float64, R::Image, t::Image, mask::Image, triangulatedPoints::Image)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(distanceThresh),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask),julia_to_cpp(triangulatedPoints)))
end
recoverPose(E::Image, points1::Image, points2::Image, cameraMatrix::Image, distanceThresh::Float64; R::Image = (Mat()), t::Image = (Mat()), mask::Image = (MatOP), triangulatedPoints::Image = (MatOP)) = recoverPose(E, points1, points2, cameraMatrix, distanceThresh, R, t, mask, triangulatedPoints)

function recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat, distanceThresh::Float64, R::UMat, t::UMat, mask::UMat, triangulatedPoints::UMat)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(distanceThresh),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask),julia_to_cpp(triangulatedPoints)))
end
recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat, distanceThresh::Float64; R::UMat = (UMat()), t::UMat = (UMat()), mask::UMat = (UMatOP), triangulatedPoints::UMat = (UMatOP)) = recoverPose(E, points1, points2, cameraMatrix, distanceThresh, R, t, mask, triangulatedPoints)

function computeCorrespondEpilines(points::Image, whichImage::Int32, F::Image, lines::Image)
	return cpp_to_julia(jlopencv_cv_cv_computeCorrespondEpilines(julia_to_cpp(points),julia_to_cpp(whichImage),julia_to_cpp(F),julia_to_cpp(lines)))
end
computeCorrespondEpilines(points::Image, whichImage::Int32, F::Image; lines::Image = (Mat())) = computeCorrespondEpilines(points, whichImage, F, lines)

function computeCorrespondEpilines(points::UMat, whichImage::Int32, F::UMat, lines::UMat)
	return cpp_to_julia(jlopencv_cv_cv_computeCorrespondEpilines(julia_to_cpp(points),julia_to_cpp(whichImage),julia_to_cpp(F),julia_to_cpp(lines)))
end
computeCorrespondEpilines(points::UMat, whichImage::Int32, F::UMat; lines::UMat = (UMat())) = computeCorrespondEpilines(points, whichImage, F, lines)

function triangulatePoints(projMatr1::Image, projMatr2::Image, projPoints1::Image, projPoints2::Image, points4D::Image)
	return cpp_to_julia(jlopencv_cv_cv_triangulatePoints(julia_to_cpp(projMatr1),julia_to_cpp(projMatr2),julia_to_cpp(projPoints1),julia_to_cpp(projPoints2),julia_to_cpp(points4D)))
end
triangulatePoints(projMatr1::Image, projMatr2::Image, projPoints1::Image, projPoints2::Image; points4D::Image = (Mat())) = triangulatePoints(projMatr1, projMatr2, projPoints1, projPoints2, points4D)

function triangulatePoints(projMatr1::UMat, projMatr2::UMat, projPoints1::UMat, projPoints2::UMat, points4D::UMat)
	return cpp_to_julia(jlopencv_cv_cv_triangulatePoints(julia_to_cpp(projMatr1),julia_to_cpp(projMatr2),julia_to_cpp(projPoints1),julia_to_cpp(projPoints2),julia_to_cpp(points4D)))
end
triangulatePoints(projMatr1::UMat, projMatr2::UMat, projPoints1::UMat, projPoints2::UMat; points4D::UMat = (UMat())) = triangulatePoints(projMatr1, projMatr2, projPoints1, projPoints2, points4D)

function correctMatches(F::Image, points1::Image, points2::Image, newPoints1::Image, newPoints2::Image)
	return cpp_to_julia(jlopencv_cv_cv_correctMatches(julia_to_cpp(F),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(newPoints1),julia_to_cpp(newPoints2)))
end
correctMatches(F::Image, points1::Image, points2::Image; newPoints1::Image = (Mat()), newPoints2::Image = (Mat())) = correctMatches(F, points1, points2, newPoints1, newPoints2)

function correctMatches(F::UMat, points1::UMat, points2::UMat, newPoints1::UMat, newPoints2::UMat)
	return cpp_to_julia(jlopencv_cv_cv_correctMatches(julia_to_cpp(F),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(newPoints1),julia_to_cpp(newPoints2)))
end
correctMatches(F::UMat, points1::UMat, points2::UMat; newPoints1::UMat = (UMat()), newPoints2::UMat = (UMat())) = correctMatches(F, points1, points2, newPoints1, newPoints2)

function filterSpeckles(img::Image, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64, buf::Image)
	return cpp_to_julia(jlopencv_cv_cv_filterSpeckles(julia_to_cpp(img),julia_to_cpp(newVal),julia_to_cpp(maxSpeckleSize),julia_to_cpp(maxDiff),julia_to_cpp(buf)))
end
filterSpeckles(img::Image, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64; buf::Image = (MatOP)) = filterSpeckles(img, newVal, maxSpeckleSize, maxDiff, buf)

function filterSpeckles(img::UMat, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64, buf::UMat)
	return cpp_to_julia(jlopencv_cv_cv_filterSpeckles(julia_to_cpp(img),julia_to_cpp(newVal),julia_to_cpp(maxSpeckleSize),julia_to_cpp(maxDiff),julia_to_cpp(buf)))
end
filterSpeckles(img::UMat, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64; buf::UMat = (UMatOP)) = filterSpeckles(img, newVal, maxSpeckleSize, maxDiff, buf)

function getValidDisparityROI(roi1::Rect, roi2::Rect, minDisparity::Int32, numberOfDisparities::Int32, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getValidDisparityROI(julia_to_cpp(roi1),julia_to_cpp(roi2),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(blockSize)))
end

function validateDisparity(disparity::Image, cost::Image, minDisparity::Int32, numberOfDisparities::Int32, disp12MaxDisp::Int32)
	return cpp_to_julia(jlopencv_cv_cv_validateDisparity(julia_to_cpp(disparity),julia_to_cpp(cost),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(disp12MaxDisp)))
end
validateDisparity(disparity::Image, cost::Image, minDisparity::Int32, numberOfDisparities::Int32; disp12MaxDisp::Int32 = Int32(1)) = validateDisparity(disparity, cost, minDisparity, numberOfDisparities, disp12MaxDisp)

function validateDisparity(disparity::UMat, cost::UMat, minDisparity::Int32, numberOfDisparities::Int32, disp12MaxDisp::Int32)
	return cpp_to_julia(jlopencv_cv_cv_validateDisparity(julia_to_cpp(disparity),julia_to_cpp(cost),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(disp12MaxDisp)))
end
validateDisparity(disparity::UMat, cost::UMat, minDisparity::Int32, numberOfDisparities::Int32; disp12MaxDisp::Int32 = Int32(1)) = validateDisparity(disparity, cost, minDisparity, numberOfDisparities, disp12MaxDisp)

function reprojectImageTo3D(disparity::Image, Q::Image, _3dImage::Image, handleMissingValues::Bool, ddepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_reprojectImageTo3D(julia_to_cpp(disparity),julia_to_cpp(Q),julia_to_cpp(_3dImage),julia_to_cpp(handleMissingValues),julia_to_cpp(ddepth)))
end
reprojectImageTo3D(disparity::Image, Q::Image; _3dImage::Image = (Mat()), handleMissingValues::Bool = (false), ddepth::Int32 = Int32(-1)) = reprojectImageTo3D(disparity, Q, _3dImage, handleMissingValues, ddepth)

function reprojectImageTo3D(disparity::UMat, Q::UMat, _3dImage::UMat, handleMissingValues::Bool, ddepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_reprojectImageTo3D(julia_to_cpp(disparity),julia_to_cpp(Q),julia_to_cpp(_3dImage),julia_to_cpp(handleMissingValues),julia_to_cpp(ddepth)))
end
reprojectImageTo3D(disparity::UMat, Q::UMat; _3dImage::UMat = (UMat()), handleMissingValues::Bool = (false), ddepth::Int32 = Int32(-1)) = reprojectImageTo3D(disparity, Q, _3dImage, handleMissingValues, ddepth)

function sampsonDistance(pt1::Image, pt2::Image, F::Image)
	return cpp_to_julia(jlopencv_cv_cv_sampsonDistance(julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(F)))
end

function sampsonDistance(pt1::UMat, pt2::UMat, F::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sampsonDistance(julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(F)))
end

function estimateAffine3D(src::Image, dst::Image, out::Image, inliers::Image, ransacThreshold::Float64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(out),julia_to_cpp(inliers),julia_to_cpp(ransacThreshold),julia_to_cpp(confidence)))
end
estimateAffine3D(src::Image, dst::Image; out::Image = (Mat()), inliers::Image = (Mat()), ransacThreshold::Float64 = Float64(3), confidence::Float64 = Float64(0.99)) = estimateAffine3D(src, dst, out, inliers, ransacThreshold, confidence)

function estimateAffine3D(src::UMat, dst::UMat, out::UMat, inliers::UMat, ransacThreshold::Float64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(out),julia_to_cpp(inliers),julia_to_cpp(ransacThreshold),julia_to_cpp(confidence)))
end
estimateAffine3D(src::UMat, dst::UMat; out::UMat = (UMat()), inliers::UMat = (UMat()), ransacThreshold::Float64 = Float64(3), confidence::Float64 = Float64(0.99)) = estimateAffine3D(src, dst, out, inliers, ransacThreshold, confidence)

function estimateAffine2D(from::Image, to::Image, inliers::Image, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffine2D(from::Image, to::Image; inliers::Image = (MatOP), method::Int32 = Int32(RANSAC), ransacReprojThreshold::Float64 = Float64(3), maxIters::size_t = (2000), confidence::Float64 = Float64(0.99), refineIters::size_t = (10)) = estimateAffine2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function estimateAffine2D(from::UMat, to::UMat, inliers::UMat, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffine2D(from::UMat, to::UMat; inliers::UMat = (UMatOP), method::Int32 = Int32(RANSAC), ransacReprojThreshold::Float64 = Float64(3), maxIters::size_t = (2000), confidence::Float64 = Float64(0.99), refineIters::size_t = (10)) = estimateAffine2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function estimateAffinePartial2D(from::Image, to::Image, inliers::Image, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffinePartial2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffinePartial2D(from::Image, to::Image; inliers::Image = (MatOP), method::Int32 = Int32(RANSAC), ransacReprojThreshold::Float64 = Float64(3), maxIters::size_t = (2000), confidence::Float64 = Float64(0.99), refineIters::size_t = (10)) = estimateAffinePartial2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function estimateAffinePartial2D(from::UMat, to::UMat, inliers::UMat, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffinePartial2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffinePartial2D(from::UMat, to::UMat; inliers::UMat = (UMatOP), method::Int32 = Int32(RANSAC), ransacReprojThreshold::Float64 = Float64(3), maxIters::size_t = (2000), confidence::Float64 = Float64(0.99), refineIters::size_t = (10)) = estimateAffinePartial2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function decomposeHomographyMat(H::Image, K::Image, rotations::Array{Image, 1}, translations::Array{Image, 1}, normals::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_decomposeHomographyMat(julia_to_cpp(H),julia_to_cpp(K),julia_to_cpp(rotations),julia_to_cpp(translations),julia_to_cpp(normals)))
end
decomposeHomographyMat(H::Image, K::Image; rotations::Array{Image, 1} = (Array{Image, 1}()), translations::Array{Image, 1} = (Array{Image, 1}()), normals::Array{Image, 1} = (Array{Image, 1}())) = decomposeHomographyMat(H, K, rotations, translations, normals)

function decomposeHomographyMat(H::UMat, K::UMat, rotations::Array{UMat, 1}, translations::Array{UMat, 1}, normals::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_decomposeHomographyMat(julia_to_cpp(H),julia_to_cpp(K),julia_to_cpp(rotations),julia_to_cpp(translations),julia_to_cpp(normals)))
end
decomposeHomographyMat(H::UMat, K::UMat; rotations::Array{UMat, 1} = (Array{UMat, 1}()), translations::Array{UMat, 1} = (Array{UMat, 1}()), normals::Array{UMat, 1} = (Array{UMat, 1}())) = decomposeHomographyMat(H, K, rotations, translations, normals)

function filterHomographyDecompByVisibleRefpoints(rotations::Array{Image, 1}, normals::Array{Image, 1}, beforePoints::Image, afterPoints::Image, possibleSolutions::Image, pointsMask::Image)
	return cpp_to_julia(jlopencv_cv_cv_filterHomographyDecompByVisibleRefpoints(julia_to_cpp(rotations),julia_to_cpp(normals),julia_to_cpp(beforePoints),julia_to_cpp(afterPoints),julia_to_cpp(possibleSolutions),julia_to_cpp(pointsMask)))
end
filterHomographyDecompByVisibleRefpoints(rotations::Array{Image, 1}, normals::Array{Image, 1}, beforePoints::Image, afterPoints::Image; possibleSolutions::Image = (Mat()), pointsMask::Image = (MatOP)) = filterHomographyDecompByVisibleRefpoints(rotations, normals, beforePoints, afterPoints, possibleSolutions, pointsMask)

function filterHomographyDecompByVisibleRefpoints(rotations::Array{UMat, 1}, normals::Array{UMat, 1}, beforePoints::UMat, afterPoints::UMat, possibleSolutions::UMat, pointsMask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_filterHomographyDecompByVisibleRefpoints(julia_to_cpp(rotations),julia_to_cpp(normals),julia_to_cpp(beforePoints),julia_to_cpp(afterPoints),julia_to_cpp(possibleSolutions),julia_to_cpp(pointsMask)))
end
filterHomographyDecompByVisibleRefpoints(rotations::Array{UMat, 1}, normals::Array{UMat, 1}, beforePoints::UMat, afterPoints::UMat; possibleSolutions::UMat = (UMat()), pointsMask::UMat = (UMatOP)) = filterHomographyDecompByVisibleRefpoints(rotations, normals, beforePoints, afterPoints, possibleSolutions, pointsMask)

function StereoBM_create(numDisparities::Int32, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_create(julia_to_cpp(numDisparities),julia_to_cpp(blockSize)))
end
StereoBM_create(; numDisparities::Int32 = Int32(0), blockSize::Int32 = Int32(21)) = StereoBM_create(numDisparities, blockSize)

function StereoSGBM_create(minDisparity::Int32, numDisparities::Int32, blockSize::Int32, P1::Int32, P2::Int32, disp12MaxDiff::Int32, preFilterCap::Int32, uniquenessRatio::Int32, speckleWindowSize::Int32, speckleRange::Int32, mode::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_create(julia_to_cpp(minDisparity),julia_to_cpp(numDisparities),julia_to_cpp(blockSize),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(disp12MaxDiff),julia_to_cpp(preFilterCap),julia_to_cpp(uniquenessRatio),julia_to_cpp(speckleWindowSize),julia_to_cpp(speckleRange),julia_to_cpp(mode)))
end
StereoSGBM_create(; minDisparity::Int32 = Int32(0), numDisparities::Int32 = Int32(16), blockSize::Int32 = Int32(3), P1::Int32 = Int32(0), P2::Int32 = Int32(0), disp12MaxDiff::Int32 = Int32(0), preFilterCap::Int32 = Int32(0), uniquenessRatio::Int32 = Int32(0), speckleWindowSize::Int32 = Int32(0), speckleRange::Int32 = Int32(0), mode::Int32 = Int32(StereoSGBM::MODE_SGBM)) = StereoSGBM_create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize, speckleRange, mode)

function undistort(src::Image, cameraMatrix::Image, distCoeffs::Image, dst::Image, newCameraMatrix::Image)
	return cpp_to_julia(jlopencv_cv_cv_undistort(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(newCameraMatrix)))
end
undistort(src::Image, cameraMatrix::Image, distCoeffs::Image; dst::Image = (Mat()), newCameraMatrix::Image = (MatOP)) = undistort(src, cameraMatrix, distCoeffs, dst, newCameraMatrix)

function undistort(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, dst::UMat, newCameraMatrix::UMat)
	return cpp_to_julia(jlopencv_cv_cv_undistort(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(newCameraMatrix)))
end
undistort(src::UMat, cameraMatrix::UMat, distCoeffs::UMat; dst::UMat = (UMat()), newCameraMatrix::UMat = (UMatOP)) = undistort(src, cameraMatrix, distCoeffs, dst, newCameraMatrix)

function initUndistortRectifyMap(cameraMatrix::Image, distCoeffs::Image, R::Image, newCameraMatrix::Image, size::Size, m1type::Int32, map1::Image, map2::Image)
	return cpp_to_julia(jlopencv_cv_cv_initUndistortRectifyMap(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(newCameraMatrix),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(cameraMatrix::Image, distCoeffs::Image, R::Image, newCameraMatrix::Image, size::Size, m1type::Int32; map1::Image = (Mat()), map2::Image = (Mat())) = initUndistortRectifyMap(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2)

function initUndistortRectifyMap(cameraMatrix::UMat, distCoeffs::UMat, R::UMat, newCameraMatrix::UMat, size::Size, m1type::Int32, map1::UMat, map2::UMat)
	return cpp_to_julia(jlopencv_cv_cv_initUndistortRectifyMap(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(newCameraMatrix),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(cameraMatrix::UMat, distCoeffs::UMat, R::UMat, newCameraMatrix::UMat, size::Size, m1type::Int32; map1::UMat = (UMat()), map2::UMat = (UMat())) = initUndistortRectifyMap(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2)

function getDefaultNewCameraMatrix(cameraMatrix::Image, imgsize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getDefaultNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(imgsize),julia_to_cpp(centerPrincipalPoint)))
end
getDefaultNewCameraMatrix(cameraMatrix::Image; imgsize::Size = (SizeOP), centerPrincipalPoint::Bool = (false)) = getDefaultNewCameraMatrix(cameraMatrix, imgsize, centerPrincipalPoint)

function getDefaultNewCameraMatrix(cameraMatrix::UMat, imgsize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getDefaultNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(imgsize),julia_to_cpp(centerPrincipalPoint)))
end
getDefaultNewCameraMatrix(cameraMatrix::UMat; imgsize::Size = (SizeOP), centerPrincipalPoint::Bool = (false)) = getDefaultNewCameraMatrix(cameraMatrix, imgsize, centerPrincipalPoint)

function undistortPoints(src::Image, cameraMatrix::Image, distCoeffs::Image, dst::Image, R::Image, P::Image)
	return cpp_to_julia(jlopencv_cv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(R),julia_to_cpp(P)))
end
undistortPoints(src::Image, cameraMatrix::Image, distCoeffs::Image; dst::Image = (Mat()), R::Image = (MatOP), P::Image = (MatOP)) = undistortPoints(src, cameraMatrix, distCoeffs, dst, R, P)

function undistortPoints(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, dst::UMat, R::UMat, P::UMat)
	return cpp_to_julia(jlopencv_cv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(R),julia_to_cpp(P)))
end
undistortPoints(src::UMat, cameraMatrix::UMat, distCoeffs::UMat; dst::UMat = (UMat()), R::UMat = (UMatOP), P::UMat = (UMatOP)) = undistortPoints(src, cameraMatrix, distCoeffs, dst, R, P)

function undistortPointsIter(src::Image, cameraMatrix::Image, distCoeffs::Image, R::Image, P::Image, criteria::TermCriteria, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(criteria),julia_to_cpp(dst)))
end
undistortPointsIter(src::Image, cameraMatrix::Image, distCoeffs::Image, R::Image, P::Image, criteria::TermCriteria; dst::Image = (Mat())) = undistortPointsIter(src, cameraMatrix, distCoeffs, R, P, criteria, dst)

function undistortPointsIter(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, R::UMat, P::UMat, criteria::TermCriteria, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(criteria),julia_to_cpp(dst)))
end
undistortPointsIter(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, R::UMat, P::UMat, criteria::TermCriteria; dst::UMat = (UMat())) = undistortPointsIter(src, cameraMatrix, distCoeffs, R, P, criteria, dst)

function BRISK_create(thresh::Int32, octaves::Int32, patternScale::Float32)
	return cpp_to_julia(jlopencv_cv_cv_BRISK_create(julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(patternScale)))
end
BRISK_create(; thresh::Int32 = Int32(30), octaves::Int32 = Int32(3), patternScale::Float32 = Float32(1.0f)) = BRISK_create(thresh, octaves, patternScale)

function BRISK_create(radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}, dMax::Float32, dMin::Float32, indexChange::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_BRISK_create(julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
BRISK_create(radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}; dMax::Float32 = Float32(5.85f), dMin::Float32 = Float32(8.2f), indexChange::Array{Int32, 1} = (stdggvectoriintkOP)) = BRISK_create(radiusList, numberList, dMax, dMin, indexChange)

function BRISK_create(thresh::Int32, octaves::Int32, radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}, dMax::Float32, dMin::Float32, indexChange::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_BRISK_create(julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
BRISK_create(thresh::Int32, octaves::Int32, radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}; dMax::Float32 = Float32(5.85f), dMin::Float32 = Float32(8.2f), indexChange::Array{Int32, 1} = (stdggvectoriintkOP)) = BRISK_create(thresh, octaves, radiusList, numberList, dMax, dMin, indexChange)

function ORB_create(nfeatures::Int32, scaleFactor::Float32, nlevels::Int32, edgeThreshold::Int32, firstLevel::Int32, WTA_K::Int32, scoreType::ORB_ScoreType, patchSize::Int32, fastThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ORB_create(julia_to_cpp(nfeatures),julia_to_cpp(scaleFactor),julia_to_cpp(nlevels),julia_to_cpp(edgeThreshold),julia_to_cpp(firstLevel),julia_to_cpp(WTA_K),julia_to_cpp(scoreType),julia_to_cpp(patchSize),julia_to_cpp(fastThreshold)))
end
ORB_create(; nfeatures::Int32 = Int32(500), scaleFactor::Float32 = Float32(1.2f), nlevels::Int32 = Int32(8), edgeThreshold::Int32 = Int32(31), firstLevel::Int32 = Int32(0), WTA_K::Int32 = Int32(2), scoreType::ORB_ScoreType = (ORBggHARRISRSCORE), patchSize::Int32 = Int32(31), fastThreshold::Int32 = Int32(20)) = ORB_create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, scoreType, patchSize, fastThreshold)

function MSER_create(_delta::Int32, _min_area::Int32, _max_area::Int32, _max_variation::Float64, _min_diversity::Float64, _max_evolution::Int32, _area_threshold::Float64, _min_margin::Float64, _edge_blur_size::Int32)
	return cpp_to_julia(jlopencv_cv_cv_MSER_create(julia_to_cpp(_delta),julia_to_cpp(_min_area),julia_to_cpp(_max_area),julia_to_cpp(_max_variation),julia_to_cpp(_min_diversity),julia_to_cpp(_max_evolution),julia_to_cpp(_area_threshold),julia_to_cpp(_min_margin),julia_to_cpp(_edge_blur_size)))
end
MSER_create(; _delta::Int32 = Int32(5), _min_area::Int32 = Int32(60), _max_area::Int32 = Int32(14400), _max_variation::Float64 = Float64(0.25), _min_diversity::Float64 = Float64(.2), _max_evolution::Int32 = Int32(200), _area_threshold::Float64 = Float64(1.01), _min_margin::Float64 = Float64(0.003), _edge_blur_size::Int32 = Int32(5)) = MSER_create(_delta, _min_area, _max_area, _max_variation, _min_diversity, _max_evolution, _area_threshold, _min_margin, _edge_blur_size)

function FastFeatureDetector_create(threshold::Int32, nonmaxSuppression::Bool, type::FastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_create(julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end
FastFeatureDetector_create(; threshold::Int32 = Int32(10), nonmaxSuppression::Bool = (true), type::FastFeatureDetector_DetectorType = (FastFeatureDetectorggTYPERfRXc)) = FastFeatureDetector_create(threshold, nonmaxSuppression, type)

function AgastFeatureDetector_create(threshold::Int32, nonmaxSuppression::Bool, type::AgastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_create(julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end
AgastFeatureDetector_create(; threshold::Int32 = Int32(10), nonmaxSuppression::Bool = (true), type::AgastFeatureDetector_DetectorType = (AgastFeatureDetectorggOASTRfRXc)) = AgastFeatureDetector_create(threshold, nonmaxSuppression, type)

function GFTTDetector_create(maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_create(julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
GFTTDetector_create(; maxCorners::Int32 = Int32(1000), qualityLevel::Float64 = Float64(0.01), minDistance::Float64 = Float64(1), blockSize::Int32 = Int32(3), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = GFTTDetector_create(maxCorners, qualityLevel, minDistance, blockSize, useHarrisDetector, k)

function GFTTDetector_create(maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, gradiantSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_create(julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(gradiantSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
GFTTDetector_create(maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, gradiantSize::Int32; useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = GFTTDetector_create(maxCorners, qualityLevel, minDistance, blockSize, gradiantSize, useHarrisDetector, k)

function SimpleBlobDetector_create(parameters::SimpleBlobDetector_Params)
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_create(julia_to_cpp(parameters)))
end
SimpleBlobDetector_create(; parameters::SimpleBlobDetector_Params = (SimpleBlobDetectorggParamsOP)) = SimpleBlobDetector_create(parameters)

function KAZE_create(extended::Bool, upright::Bool, threshold::Float32, nOctaves::Int32, nOctaveLayers::Int32, diffusivity::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_create(julia_to_cpp(extended),julia_to_cpp(upright),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity)))
end
KAZE_create(; extended::Bool = (false), upright::Bool = (false), threshold::Float32 = Float32(0.001f), nOctaves::Int32 = Int32(4), nOctaveLayers::Int32 = Int32(4), diffusivity::KAZE_DiffusivityType = (KAZEggDIFFRPMRGY)) = KAZE_create(extended, upright, threshold, nOctaves, nOctaveLayers, diffusivity)

function AKAZE_create(descriptor_type::AKAZE_DescriptorType, descriptor_size::Int32, descriptor_channels::Int32, threshold::Float32, nOctaves::Int32, nOctaveLayers::Int32, diffusivity::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_create(julia_to_cpp(descriptor_type),julia_to_cpp(descriptor_size),julia_to_cpp(descriptor_channels),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity)))
end
AKAZE_create(; descriptor_type::AKAZE_DescriptorType = (AKAZEggDESCRIPTORRMLDB), descriptor_size::Int32 = Int32(0), descriptor_channels::Int32 = Int32(3), threshold::Float32 = Float32(0.001f), nOctaves::Int32 = Int32(4), nOctaveLayers::Int32 = Int32(4), diffusivity::KAZE_DiffusivityType = (KAZEggDIFFRPMRGY)) = AKAZE_create(descriptor_type, descriptor_size, descriptor_channels, threshold, nOctaves, nOctaveLayers, diffusivity)

function DescriptorMatcher_create(descriptorMatcherType::String)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_create(julia_to_cpp(descriptorMatcherType)))
end

function DescriptorMatcher_create(matcherType::DescriptorMatcher_MatcherType)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_create(julia_to_cpp(matcherType)))
end

function BFMatcher_create(normType::Int32, crossCheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_BFMatcher_create(julia_to_cpp(normType),julia_to_cpp(crossCheck)))
end
BFMatcher_create(; normType::Int32 = Int32(NORM_L2), crossCheck::Bool = (false)) = BFMatcher_create(normType, crossCheck)

function FlannBasedMatcher_create()
	return cpp_to_julia(jlopencv_cv_cv_FlannBasedMatcher_create())
end

function drawKeypoints(image::Image, keypoints::Array{KeyPoint, 1}, outImage::Image, color::Scalar, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawKeypoints(julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(outImage),julia_to_cpp(color),julia_to_cpp(flags)))
end
drawKeypoints(image::Image, keypoints::Array{KeyPoint, 1}, outImage::Image; color::Scalar = (ScalarggallOTXP), flags::DrawMatchesFlags = (DrawMatchesFlagsggDEFAULT)) = drawKeypoints(image, keypoints, outImage, color, flags)

function drawKeypoints(image::UMat, keypoints::Array{KeyPoint, 1}, outImage::UMat, color::Scalar, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawKeypoints(julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(outImage),julia_to_cpp(color),julia_to_cpp(flags)))
end
drawKeypoints(image::UMat, keypoints::Array{KeyPoint, 1}, outImage::UMat; color::Scalar = (ScalarggallOTXP), flags::DrawMatchesFlags = (DrawMatchesFlagsggDEFAULT)) = drawKeypoints(image, keypoints, outImage, color, flags)

function drawMatches(img1::Image, keypoints1::Array{KeyPoint, 1}, img2::Image, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::Image, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Char, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatches(img1::Image, keypoints1::Array{KeyPoint, 1}, img2::Image, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::Image; matchColor::Scalar = (ScalarggallOTXP), singlePointColor::Scalar = (ScalarggallOTXP), matchesMask::Array{Char, 1} = (stdggvectoricharkOP), flags::DrawMatchesFlags = (DrawMatchesFlagsggDEFAULT)) = drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function drawMatches(img1::UMat, keypoints1::Array{KeyPoint, 1}, img2::UMat, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::UMat, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Char, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatches(img1::UMat, keypoints1::Array{KeyPoint, 1}, img2::UMat, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::UMat; matchColor::Scalar = (ScalarggallOTXP), singlePointColor::Scalar = (ScalarggallOTXP), matchesMask::Array{Char, 1} = (stdggvectoricharkOP), flags::DrawMatchesFlags = (DrawMatchesFlagsggDEFAULT)) = drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function drawMatchesKnn(img1::Image, keypoints1::Array{KeyPoint, 1}, img2::Image, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{Array{DMatch, 1}, 1}, outImg::Image, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Array{Char, 1}, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatchesKnn(img1::Image, keypoints1::Array{KeyPoint, 1}, img2::Image, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{Array{DMatch, 1}, 1}, outImg::Image; matchColor::Scalar = (ScalarggallOTXP), singlePointColor::Scalar = (ScalarggallOTXP), matchesMask::Array{Array{Char, 1}, 1} = (stdggvectoristdggvectoricharkGkOP), flags::DrawMatchesFlags = (DrawMatchesFlagsggDEFAULT)) = drawMatchesKnn(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function drawMatchesKnn(img1::UMat, keypoints1::Array{KeyPoint, 1}, img2::UMat, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{Array{DMatch, 1}, 1}, outImg::UMat, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Array{Char, 1}, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatchesKnn(img1::UMat, keypoints1::Array{KeyPoint, 1}, img2::UMat, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{Array{DMatch, 1}, 1}, outImg::UMat; matchColor::Scalar = (ScalarggallOTXP), singlePointColor::Scalar = (ScalarggallOTXP), matchesMask::Array{Array{Char, 1}, 1} = (stdggvectoristdggvectoricharkGkOP), flags::DrawMatchesFlags = (DrawMatchesFlagsggDEFAULT)) = drawMatchesKnn(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function CamShift(probImage::Image, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_CamShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end

function CamShift(probImage::UMat, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_CamShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end

function meanShift(probImage::Image, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_meanShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end

function meanShift(probImage::UMat, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_meanShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end

function buildOpticalFlowPyramid(img::Image, winSize::Size, maxLevel::Int32, pyramid::Array{Image, 1}, withDerivatives::Bool, pyrBorder::Int32, derivBorder::Int32, tryReuseInputImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_buildOpticalFlowPyramid(julia_to_cpp(img),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(pyramid),julia_to_cpp(withDerivatives),julia_to_cpp(pyrBorder),julia_to_cpp(derivBorder),julia_to_cpp(tryReuseInputImage)))
end
buildOpticalFlowPyramid(img::Image, winSize::Size, maxLevel::Int32; pyramid::Array{Image, 1} = (Array{Image, 1}()), withDerivatives::Bool = (true), pyrBorder::Int32 = Int32(BORDER_REFLECT_101), derivBorder::Int32 = Int32(BORDER_CONSTANT), tryReuseInputImage::Bool = (true)) = buildOpticalFlowPyramid(img, winSize, maxLevel, pyramid, withDerivatives, pyrBorder, derivBorder, tryReuseInputImage)

function buildOpticalFlowPyramid(img::UMat, winSize::Size, maxLevel::Int32, pyramid::Array{UMat, 1}, withDerivatives::Bool, pyrBorder::Int32, derivBorder::Int32, tryReuseInputImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_buildOpticalFlowPyramid(julia_to_cpp(img),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(pyramid),julia_to_cpp(withDerivatives),julia_to_cpp(pyrBorder),julia_to_cpp(derivBorder),julia_to_cpp(tryReuseInputImage)))
end
buildOpticalFlowPyramid(img::UMat, winSize::Size, maxLevel::Int32; pyramid::Array{UMat, 1} = (Array{UMat, 1}()), withDerivatives::Bool = (true), pyrBorder::Int32 = Int32(BORDER_REFLECT_101), derivBorder::Int32 = Int32(BORDER_CONSTANT), tryReuseInputImage::Bool = (true)) = buildOpticalFlowPyramid(img, winSize, maxLevel, pyramid, withDerivatives, pyrBorder, derivBorder, tryReuseInputImage)

function calcOpticalFlowPyrLK(prevImg::Image, nextImg::Image, prevPts::Image, nextPts::Image, status::Image, err::Image, winSize::Size, maxLevel::Int32, criteria::TermCriteria, flags::Int32, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_calcOpticalFlowPyrLK(julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(criteria),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
calcOpticalFlowPyrLK(prevImg::Image, nextImg::Image, prevPts::Image, nextPts::Image; status::Image = (Mat()), err::Image = (Mat()), winSize::Size = (SizeOYXSYXP), maxLevel::Int32 = Int32(3), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGWUWXP), flags::Int32 = Int32(0), minEigThreshold::Float64 = Float64(1e-4)) = calcOpticalFlowPyrLK(prevImg, nextImg, prevPts, nextPts, status, err, winSize, maxLevel, criteria, flags, minEigThreshold)

function calcOpticalFlowPyrLK(prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat, status::UMat, err::UMat, winSize::Size, maxLevel::Int32, criteria::TermCriteria, flags::Int32, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_calcOpticalFlowPyrLK(julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(criteria),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
calcOpticalFlowPyrLK(prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat; status::UMat = (UMat()), err::UMat = (UMat()), winSize::Size = (SizeOYXSYXP), maxLevel::Int32 = Int32(3), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGWUWXP), flags::Int32 = Int32(0), minEigThreshold::Float64 = Float64(1e-4)) = calcOpticalFlowPyrLK(prevImg, nextImg, prevPts, nextPts, status, err, winSize, maxLevel, criteria, flags, minEigThreshold)

function calcOpticalFlowFarneback(prev::Image, next::Image, flow::Image, pyr_scale::Float64, levels::Int32, winsize::Int32, iterations::Int32, poly_n::Int32, poly_sigma::Float64, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_calcOpticalFlowFarneback(julia_to_cpp(prev),julia_to_cpp(next),julia_to_cpp(flow),julia_to_cpp(pyr_scale),julia_to_cpp(levels),julia_to_cpp(winsize),julia_to_cpp(iterations),julia_to_cpp(poly_n),julia_to_cpp(poly_sigma),julia_to_cpp(flags)))
end

function calcOpticalFlowFarneback(prev::UMat, next::UMat, flow::UMat, pyr_scale::Float64, levels::Int32, winsize::Int32, iterations::Int32, poly_n::Int32, poly_sigma::Float64, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_calcOpticalFlowFarneback(julia_to_cpp(prev),julia_to_cpp(next),julia_to_cpp(flow),julia_to_cpp(pyr_scale),julia_to_cpp(levels),julia_to_cpp(winsize),julia_to_cpp(iterations),julia_to_cpp(poly_n),julia_to_cpp(poly_sigma),julia_to_cpp(flags)))
end

function computeECC(templateImage::Image, inputImage::Image, inputMask::Image)
	return cpp_to_julia(jlopencv_cv_cv_computeECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(inputMask)))
end
computeECC(templateImage::Image, inputImage::Image; inputMask::Image = (MatOP)) = computeECC(templateImage, inputImage, inputMask)

function computeECC(templateImage::UMat, inputImage::UMat, inputMask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_computeECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(inputMask)))
end
computeECC(templateImage::UMat, inputImage::UMat; inputMask::UMat = (UMatOP)) = computeECC(templateImage, inputImage, inputMask)

function findTransformECC(templateImage::Image, inputImage::Image, warpMatrix::Image, motionType::Int32, criteria::TermCriteria, inputMask::Image, gaussFiltSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findTransformECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(warpMatrix),julia_to_cpp(motionType),julia_to_cpp(criteria),julia_to_cpp(inputMask),julia_to_cpp(gaussFiltSize)))
end

function findTransformECC(templateImage::UMat, inputImage::UMat, warpMatrix::UMat, motionType::Int32, criteria::TermCriteria, inputMask::UMat, gaussFiltSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findTransformECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(warpMatrix),julia_to_cpp(motionType),julia_to_cpp(criteria),julia_to_cpp(inputMask),julia_to_cpp(gaussFiltSize)))
end

function readOpticalFlow(path::String)
	return cpp_to_julia(jlopencv_cv_cv_readOpticalFlow(julia_to_cpp(path)))
end

function writeOpticalFlow(path::String, flow::Image)
	return cpp_to_julia(jlopencv_cv_cv_writeOpticalFlow(julia_to_cpp(path),julia_to_cpp(flow)))
end

function writeOpticalFlow(path::String, flow::UMat)
	return cpp_to_julia(jlopencv_cv_cv_writeOpticalFlow(julia_to_cpp(path),julia_to_cpp(flow)))
end

function FarnebackOpticalFlow_create(numLevels::Int32, pyrScale::Float64, fastPyramids::Bool, winSize::Int32, numIters::Int32, polyN::Int32, polySigma::Float64, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_create(julia_to_cpp(numLevels),julia_to_cpp(pyrScale),julia_to_cpp(fastPyramids),julia_to_cpp(winSize),julia_to_cpp(numIters),julia_to_cpp(polyN),julia_to_cpp(polySigma),julia_to_cpp(flags)))
end
FarnebackOpticalFlow_create(; numLevels::Int32 = Int32(5), pyrScale::Float64 = Float64(0.5), fastPyramids::Bool = (false), winSize::Int32 = Int32(13), numIters::Int32 = Int32(10), polyN::Int32 = Int32(5), polySigma::Float64 = Float64(1.1), flags::Int32 = Int32(0)) = FarnebackOpticalFlow_create(numLevels, pyrScale, fastPyramids, winSize, numIters, polyN, polySigma, flags)

function VariationalRefinement_create()
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_create())
end

function DISOpticalFlow_create(preset::Int32)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_create(julia_to_cpp(preset)))
end
DISOpticalFlow_create(; preset::Int32 = Int32(DISOpticalFlow::PRESET_FAST)) = DISOpticalFlow_create(preset)

function SparsePyrLKOpticalFlow_create(winSize::Size, maxLevel::Int32, crit::TermCriteria, flags::Int32, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_create(julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(crit),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
SparsePyrLKOpticalFlow_create(; winSize::Size = (SizeOYXSGYXP), maxLevel::Int32 = Int32(3), crit::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGWUWXP), flags::Int32 = Int32(0), minEigThreshold::Float64 = Float64(1e-4)) = SparsePyrLKOpticalFlow_create(winSize, maxLevel, crit, flags, minEigThreshold)

function createBackgroundSubtractorMOG2(history::Int32, varThreshold::Float64, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_cv_createBackgroundSubtractorMOG2(julia_to_cpp(history),julia_to_cpp(varThreshold),julia_to_cpp(detectShadows)))
end
createBackgroundSubtractorMOG2(; history::Int32 = Int32(500), varThreshold::Float64 = Float64(16), detectShadows::Bool = (true)) = createBackgroundSubtractorMOG2(history, varThreshold, detectShadows)

function createBackgroundSubtractorKNN(history::Int32, dist2Threshold::Float64, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_cv_createBackgroundSubtractorKNN(julia_to_cpp(history),julia_to_cpp(dist2Threshold),julia_to_cpp(detectShadows)))
end
createBackgroundSubtractorKNN(; history::Int32 = Int32(500), dist2Threshold::Float64 = Float64(400.0), detectShadows::Bool = (true)) = createBackgroundSubtractorKNN(history, dist2Threshold, detectShadows)

function groupRectangles(rectList::Array{Rect, 1}, groupThreshold::Int32, eps::Float64)
	return cpp_to_julia(jlopencv_cv_cv_groupRectangles(julia_to_cpp(rectList),julia_to_cpp(groupThreshold),julia_to_cpp(eps)))
end
groupRectangles(rectList::Array{Rect, 1}, groupThreshold::Int32; eps::Float64 = Float64(0.2)) = groupRectangles(rectList, groupThreshold, eps)

function CascadeClassifier_convert(oldcascade::String, newcascade::String)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_convert(julia_to_cpp(oldcascade),julia_to_cpp(newcascade)))
end

function HOGDescriptor_getDefaultPeopleDetector()
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_getDefaultPeopleDetector())
end

function HOGDescriptor_getDaimlerPeopleDetector()
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_getDaimlerPeopleDetector())
end

function imread(filename::String, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imread(julia_to_cpp(filename),julia_to_cpp(flags)))
end
imread(filename::String; flags::Int32 = Int32(IMREAD_COLOR)) = imread(filename, flags)

function imreadmulti(filename::String, mats::Array{Image, 1}, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imreadmulti(julia_to_cpp(filename),julia_to_cpp(mats),julia_to_cpp(flags)))
end
imreadmulti(filename::String; mats::Array{Image, 1} = (Array{Image, 1}()), flags::Int32 = Int32(IMREAD_ANYCOLOR)) = imreadmulti(filename, mats, flags)

function imwrite(filename::String, img::Image, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imwrite(julia_to_cpp(filename),julia_to_cpp(img),julia_to_cpp(params)))
end
imwrite(filename::String, img::Image; params::Array{Int32, 1} = (stdggvectoriintkOP)) = imwrite(filename, img, params)

function imwrite(filename::String, img::UMat, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imwrite(julia_to_cpp(filename),julia_to_cpp(img),julia_to_cpp(params)))
end
imwrite(filename::String, img::UMat; params::Array{Int32, 1} = (stdggvectoriintkOP)) = imwrite(filename, img, params)

function imdecode(buf::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imdecode(julia_to_cpp(buf),julia_to_cpp(flags)))
end

function imdecode(buf::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imdecode(julia_to_cpp(buf),julia_to_cpp(flags)))
end

function imencode(ext::String, img::Image, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imencode(julia_to_cpp(ext),julia_to_cpp(img),julia_to_cpp(params)))
end
imencode(ext::String, img::Image; params::Array{Int32, 1} = (stdggvectoriintkOP)) = imencode(ext, img, params)

function imencode(ext::String, img::UMat, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imencode(julia_to_cpp(ext),julia_to_cpp(img),julia_to_cpp(params)))
end
imencode(ext::String, img::UMat; params::Array{Int32, 1} = (stdggvectoriintkOP)) = imencode(ext, img, params)

function haveImageReader(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_haveImageReader(julia_to_cpp(filename)))
end

function haveImageWriter(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_haveImageWriter(julia_to_cpp(filename)))
end

function VideoWriter_fourcc(c1::Char, c2::Char, c3::Char, c4::Char)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_fourcc(julia_to_cpp(c1),julia_to_cpp(c2),julia_to_cpp(c3),julia_to_cpp(c4)))
end

function namedWindow(winname::String, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_namedWindow(julia_to_cpp(winname),julia_to_cpp(flags)))
end
namedWindow(winname::String; flags::Int32 = Int32(WINDOW_AUTOSIZE)) = namedWindow(winname, flags)

function destroyWindow(winname::String)
	return cpp_to_julia(jlopencv_cv_cv_destroyWindow(julia_to_cpp(winname)))
end

function destroyAllWindows()
	return cpp_to_julia(jlopencv_cv_cv_destroyAllWindows())
end

function startWindowThread()
	return cpp_to_julia(jlopencv_cv_cv_startWindowThread())
end

function waitKeyEx(delay::Int32)
	return cpp_to_julia(jlopencv_cv_cv_waitKeyEx(julia_to_cpp(delay)))
end
waitKeyEx(; delay::Int32 = Int32(0)) = waitKeyEx(delay)

function waitKey(delay::Int32)
	return cpp_to_julia(jlopencv_cv_cv_waitKey(julia_to_cpp(delay)))
end
waitKey(; delay::Int32 = Int32(0)) = waitKey(delay)

function imshow(winname::String, mat::Image)
	return cpp_to_julia(jlopencv_cv_cv_imshow(julia_to_cpp(winname),julia_to_cpp(mat)))
end

function imshow(winname::String, mat::UMat)
	return cpp_to_julia(jlopencv_cv_cv_imshow(julia_to_cpp(winname),julia_to_cpp(mat)))
end

function resizeWindow(winname::String, width::Int32, height::Int32)
	return cpp_to_julia(jlopencv_cv_cv_resizeWindow(julia_to_cpp(winname),julia_to_cpp(width),julia_to_cpp(height)))
end

function resizeWindow(winname::String, size::Size)
	return cpp_to_julia(jlopencv_cv_cv_resizeWindow(julia_to_cpp(winname),julia_to_cpp(size)))
end

function moveWindow(winname::String, x::Int32, y::Int32)
	return cpp_to_julia(jlopencv_cv_cv_moveWindow(julia_to_cpp(winname),julia_to_cpp(x),julia_to_cpp(y)))
end

function setWindowProperty(winname::String, prop_id::Int32, prop_value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_setWindowProperty(julia_to_cpp(winname),julia_to_cpp(prop_id),julia_to_cpp(prop_value)))
end

function setWindowTitle(winname::String, title::String)
	return cpp_to_julia(jlopencv_cv_cv_setWindowTitle(julia_to_cpp(winname),julia_to_cpp(title)))
end

function getWindowProperty(winname::String, prop_id::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getWindowProperty(julia_to_cpp(winname),julia_to_cpp(prop_id)))
end

function getWindowImageRect(winname::String)
	return cpp_to_julia(jlopencv_cv_cv_getWindowImageRect(julia_to_cpp(winname)))
end

function selectROI(windowName::String, img::Image, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(windowName::String, img::Image; showCrosshair::Bool = (true), fromCenter::Bool = (false)) = selectROI(windowName, img, showCrosshair, fromCenter)

function selectROI(windowName::String, img::UMat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(windowName::String, img::UMat; showCrosshair::Bool = (true), fromCenter::Bool = (false)) = selectROI(windowName, img, showCrosshair, fromCenter)

function selectROI(img::Image, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(img::Image; showCrosshair::Bool = (true), fromCenter::Bool = (false)) = selectROI(img, showCrosshair, fromCenter)

function selectROI(img::UMat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(img::UMat; showCrosshair::Bool = (true), fromCenter::Bool = (false)) = selectROI(img, showCrosshair, fromCenter)

function selectROIs(windowName::String, img::Image, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROIs(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROIs(windowName::String, img::Image; showCrosshair::Bool = (true), fromCenter::Bool = (false)) = selectROIs(windowName, img, showCrosshair, fromCenter)

function selectROIs(windowName::String, img::UMat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROIs(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROIs(windowName::String, img::UMat; showCrosshair::Bool = (true), fromCenter::Bool = (false)) = selectROIs(windowName, img, showCrosshair, fromCenter)

function getTrackbarPos(trackbarname::String, winname::String)
	return cpp_to_julia(jlopencv_cv_cv_getTrackbarPos(julia_to_cpp(trackbarname),julia_to_cpp(winname)))
end

function setTrackbarPos(trackbarname::String, winname::String, pos::Int32)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarPos(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(pos)))
end

function setTrackbarMax(trackbarname::String, winname::String, maxval::Int32)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarMax(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(maxval)))
end

function setTrackbarMin(trackbarname::String, winname::String, minval::Int32)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarMin(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(minval)))
end

function addText(img::Image, text::String, org::Point{Int32}, nameFont::String, pointSize::Int32, color::Scalar, weight::Int32, style::Int32, spacing::Int32)
	return cpp_to_julia(jlopencv_cv_cv_addText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(nameFont),julia_to_cpp(pointSize),julia_to_cpp(color),julia_to_cpp(weight),julia_to_cpp(style),julia_to_cpp(spacing)))
end
addText(img::Image, text::String, org::Point{Int32}, nameFont::String; pointSize::Int32 = Int32(-1), color::Scalar = (ScalarggallOWP), weight::Int32 = Int32(QT_FONT_NORMAL), style::Int32 = Int32(QT_STYLE_NORMAL), spacing::Int32 = Int32(0)) = addText(img, text, org, nameFont, pointSize, color, weight, style, spacing)

function displayOverlay(winname::String, text::String, delayms::Int32)
	return cpp_to_julia(jlopencv_cv_cv_displayOverlay(julia_to_cpp(winname),julia_to_cpp(text),julia_to_cpp(delayms)))
end
displayOverlay(winname::String, text::String; delayms::Int32 = Int32(0)) = displayOverlay(winname, text, delayms)

function displayStatusBar(winname::String, text::String, delayms::Int32)
	return cpp_to_julia(jlopencv_cv_cv_displayStatusBar(julia_to_cpp(winname),julia_to_cpp(text),julia_to_cpp(delayms)))
end
displayStatusBar(winname::String, text::String; delayms::Int32 = Int32(0)) = displayStatusBar(winname, text, delayms)



include("cv_traits_wrap.jl")
include("cv_ocl_wrap.jl")
include("cv_fisheye_wrap.jl")
include("cv_internal_wrap.jl")