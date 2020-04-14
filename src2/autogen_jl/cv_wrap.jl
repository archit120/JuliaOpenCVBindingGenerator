@wrapmodule(joinpath("lib","libcv2_jl"), :cv_wrap)
# @wrapmodule(joinpath("TODO","libcv2_jl"), :cv_wrap)

function Base.getproperty(m::Algorithm, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Algorithm, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function clear(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_clear(julia_to_cpp(cobj)))
end
clear(cobj::Any; ) = clear(cobj)

function write(cobj::Any, fs::Ptr{FileStorage}, name::String)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
write(cobj::Any, fs::Ptr{FileStorage}; name::String = "") = write(cobj, fs, name)

function read(cobj::Any, fn::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_read(julia_to_cpp(cobj),julia_to_cpp(fn)))
end
read(cobj::Any, fn::FileNode; ) = read(cobj, fn)

function empty(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_empty(julia_to_cpp(cobj)))
end
empty(cobj::Any; ) = empty(cobj)

function save(cobj::Any, filename::String)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_save(julia_to_cpp(cobj),julia_to_cpp(filename)))
end
save(cobj::Any, filename::String; ) = save(cobj, filename)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)
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

function setTemplate(cobj::Any, templ::Image, templCenter::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(templ),julia_to_cpp(templCenter)))
end
setTemplate(cobj::Any, templ::Image; templCenter::Point{Int32} = Point(-1, -1)) = setTemplate(cobj, templ, templCenter)

function setTemplate(cobj::Any, templ::UMat, templCenter::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(templ),julia_to_cpp(templCenter)))
end
setTemplate(cobj::Any, templ::UMat; templCenter::Point{Int32} = Point(-1, -1)) = setTemplate(cobj, templ, templCenter)

function setTemplate(cobj::Any, edges::Image, dx::Image, dy::Image, templCenter::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(templCenter)))
end
setTemplate(cobj::Any, edges::Image, dx::Image, dy::Image; templCenter::Point{Int32} = Point(-1, -1)) = setTemplate(cobj, edges, dx, dy, templCenter)

function setTemplate(cobj::Any, edges::UMat, dx::UMat, dy::UMat, templCenter::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(templCenter)))
end
setTemplate(cobj::Any, edges::UMat, dx::UMat, dy::UMat; templCenter::Point{Int32} = Point(-1, -1)) = setTemplate(cobj, edges, dx, dy, templCenter)

function detect(cobj::Any, image::Image, positions::Image, votes::Image)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(positions),julia_to_cpp(votes)))
end
detect(cobj::Any, image::Image; positions::Image = _Mat(), votes::Image = Mat()) = detect(cobj, image, positions, votes)

function detect(cobj::Any, image::UMat, positions::UMat, votes::UMat)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(positions),julia_to_cpp(votes)))
end
detect(cobj::Any, image::UMat; positions::UMat = UMat(), votes::UMat = UMat()) = detect(cobj, image, positions, votes)

function detect(cobj::Any, edges::Image, dx::Image, dy::Image, positions::Image, votes::Image)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(positions),julia_to_cpp(votes)))
end
detect(cobj::Any, edges::Image, dx::Image, dy::Image; positions::Image = _Mat(), votes::Image = Mat()) = detect(cobj, edges, dx, dy, positions, votes)

function detect(cobj::Any, edges::UMat, dx::UMat, dy::UMat, positions::UMat, votes::UMat)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(positions),julia_to_cpp(votes)))
end
detect(cobj::Any, edges::UMat, dx::UMat, dy::UMat; positions::UMat = UMat(), votes::UMat = UMat()) = detect(cobj, edges, dx, dy, positions, votes)

function setCannyLowThresh(cobj::Any, cannyLowThresh::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setCannyLowThresh(julia_to_cpp(cobj),julia_to_cpp(cannyLowThresh)))
end
setCannyLowThresh(cobj::Any, cannyLowThresh::Int32; ) = setCannyLowThresh(cobj, cannyLowThresh)

function getCannyLowThresh(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_getCannyLowThresh(julia_to_cpp(cobj)))
end
getCannyLowThresh(cobj::Any; ) = getCannyLowThresh(cobj)

function setCannyHighThresh(cobj::Any, cannyHighThresh::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setCannyHighThresh(julia_to_cpp(cobj),julia_to_cpp(cannyHighThresh)))
end
setCannyHighThresh(cobj::Any, cannyHighThresh::Int32; ) = setCannyHighThresh(cobj, cannyHighThresh)

function getCannyHighThresh(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_getCannyHighThresh(julia_to_cpp(cobj)))
end
getCannyHighThresh(cobj::Any; ) = getCannyHighThresh(cobj)

function setMinDist(cobj::Any, minDist::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setMinDist(julia_to_cpp(cobj),julia_to_cpp(minDist)))
end
setMinDist(cobj::Any, minDist::Float64; ) = setMinDist(cobj, minDist)

function getMinDist(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_getMinDist(julia_to_cpp(cobj)))
end
getMinDist(cobj::Any; ) = getMinDist(cobj)

function setDp(cobj::Any, dp::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setDp(julia_to_cpp(cobj),julia_to_cpp(dp)))
end
setDp(cobj::Any, dp::Float64; ) = setDp(cobj, dp)

function getDp(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_getDp(julia_to_cpp(cobj)))
end
getDp(cobj::Any; ) = getDp(cobj)

function setMaxBufferSize(cobj::Any, maxBufferSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_setMaxBufferSize(julia_to_cpp(cobj),julia_to_cpp(maxBufferSize)))
end
setMaxBufferSize(cobj::Any, maxBufferSize::Int32; ) = setMaxBufferSize(cobj, maxBufferSize)

function getMaxBufferSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHough_cv_GeneralizedHough_getMaxBufferSize(julia_to_cpp(cobj)))
end
getMaxBufferSize(cobj::Any; ) = getMaxBufferSize(cobj)
function Base.getproperty(m::GeneralizedHoughBallard, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GeneralizedHoughBallard, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setLevels(cobj::Any, levels::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughBallard_cv_GeneralizedHoughBallard_setLevels(julia_to_cpp(cobj),julia_to_cpp(levels)))
end
setLevels(cobj::Any, levels::Int32; ) = setLevels(cobj, levels)

function getLevels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughBallard_cv_GeneralizedHoughBallard_getLevels(julia_to_cpp(cobj)))
end
getLevels(cobj::Any; ) = getLevels(cobj)

function setVotesThreshold(cobj::Any, votesThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughBallard_cv_GeneralizedHoughBallard_setVotesThreshold(julia_to_cpp(cobj),julia_to_cpp(votesThreshold)))
end
setVotesThreshold(cobj::Any, votesThreshold::Int32; ) = setVotesThreshold(cobj, votesThreshold)

function getVotesThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughBallard_cv_GeneralizedHoughBallard_getVotesThreshold(julia_to_cpp(cobj)))
end
getVotesThreshold(cobj::Any; ) = getVotesThreshold(cobj)
function Base.getproperty(m::GeneralizedHoughGuil, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GeneralizedHoughGuil, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setXi(cobj::Any, xi::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setXi(julia_to_cpp(cobj),julia_to_cpp(xi)))
end
setXi(cobj::Any, xi::Float64; ) = setXi(cobj, xi)

function getXi(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getXi(julia_to_cpp(cobj)))
end
getXi(cobj::Any; ) = getXi(cobj)

function setLevels(cobj::Any, levels::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setLevels(julia_to_cpp(cobj),julia_to_cpp(levels)))
end
setLevels(cobj::Any, levels::Int32; ) = setLevels(cobj, levels)

function getLevels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getLevels(julia_to_cpp(cobj)))
end
getLevels(cobj::Any; ) = getLevels(cobj)

function setAngleEpsilon(cobj::Any, angleEpsilon::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setAngleEpsilon(julia_to_cpp(cobj),julia_to_cpp(angleEpsilon)))
end
setAngleEpsilon(cobj::Any, angleEpsilon::Float64; ) = setAngleEpsilon(cobj, angleEpsilon)

function getAngleEpsilon(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getAngleEpsilon(julia_to_cpp(cobj)))
end
getAngleEpsilon(cobj::Any; ) = getAngleEpsilon(cobj)

function setMinAngle(cobj::Any, minAngle::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setMinAngle(julia_to_cpp(cobj),julia_to_cpp(minAngle)))
end
setMinAngle(cobj::Any, minAngle::Float64; ) = setMinAngle(cobj, minAngle)

function getMinAngle(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getMinAngle(julia_to_cpp(cobj)))
end
getMinAngle(cobj::Any; ) = getMinAngle(cobj)

function setMaxAngle(cobj::Any, maxAngle::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setMaxAngle(julia_to_cpp(cobj),julia_to_cpp(maxAngle)))
end
setMaxAngle(cobj::Any, maxAngle::Float64; ) = setMaxAngle(cobj, maxAngle)

function getMaxAngle(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getMaxAngle(julia_to_cpp(cobj)))
end
getMaxAngle(cobj::Any; ) = getMaxAngle(cobj)

function setAngleStep(cobj::Any, angleStep::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setAngleStep(julia_to_cpp(cobj),julia_to_cpp(angleStep)))
end
setAngleStep(cobj::Any, angleStep::Float64; ) = setAngleStep(cobj, angleStep)

function getAngleStep(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getAngleStep(julia_to_cpp(cobj)))
end
getAngleStep(cobj::Any; ) = getAngleStep(cobj)

function setAngleThresh(cobj::Any, angleThresh::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setAngleThresh(julia_to_cpp(cobj),julia_to_cpp(angleThresh)))
end
setAngleThresh(cobj::Any, angleThresh::Int32; ) = setAngleThresh(cobj, angleThresh)

function getAngleThresh(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getAngleThresh(julia_to_cpp(cobj)))
end
getAngleThresh(cobj::Any; ) = getAngleThresh(cobj)

function setMinScale(cobj::Any, minScale::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setMinScale(julia_to_cpp(cobj),julia_to_cpp(minScale)))
end
setMinScale(cobj::Any, minScale::Float64; ) = setMinScale(cobj, minScale)

function getMinScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getMinScale(julia_to_cpp(cobj)))
end
getMinScale(cobj::Any; ) = getMinScale(cobj)

function setMaxScale(cobj::Any, maxScale::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setMaxScale(julia_to_cpp(cobj),julia_to_cpp(maxScale)))
end
setMaxScale(cobj::Any, maxScale::Float64; ) = setMaxScale(cobj, maxScale)

function getMaxScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getMaxScale(julia_to_cpp(cobj)))
end
getMaxScale(cobj::Any; ) = getMaxScale(cobj)

function setScaleStep(cobj::Any, scaleStep::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setScaleStep(julia_to_cpp(cobj),julia_to_cpp(scaleStep)))
end
setScaleStep(cobj::Any, scaleStep::Float64; ) = setScaleStep(cobj, scaleStep)

function getScaleStep(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getScaleStep(julia_to_cpp(cobj)))
end
getScaleStep(cobj::Any; ) = getScaleStep(cobj)

function setScaleThresh(cobj::Any, scaleThresh::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setScaleThresh(julia_to_cpp(cobj),julia_to_cpp(scaleThresh)))
end
setScaleThresh(cobj::Any, scaleThresh::Int32; ) = setScaleThresh(cobj, scaleThresh)

function getScaleThresh(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getScaleThresh(julia_to_cpp(cobj)))
end
getScaleThresh(cobj::Any; ) = getScaleThresh(cobj)

function setPosThresh(cobj::Any, posThresh::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_setPosThresh(julia_to_cpp(cobj),julia_to_cpp(posThresh)))
end
setPosThresh(cobj::Any, posThresh::Int32; ) = setPosThresh(cobj, posThresh)

function getPosThresh(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GeneralizedHoughGuil_cv_GeneralizedHoughGuil_getPosThresh(julia_to_cpp(cobj)))
end
getPosThresh(cobj::Any; ) = getPosThresh(cobj)
function Base.getproperty(m::CLAHE, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::CLAHE, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function apply(cobj::Any, src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_apply(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
apply(cobj::Any, src::Image; dst::Image = _Mat()) = apply(cobj, src, dst)

function apply(cobj::Any, src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_apply(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
apply(cobj::Any, src::UMat; dst::UMat = UMat()) = apply(cobj, src, dst)

function setClipLimit(cobj::Any, clipLimit::Float64)
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_setClipLimit(julia_to_cpp(cobj),julia_to_cpp(clipLimit)))
end
setClipLimit(cobj::Any, clipLimit::Float64; ) = setClipLimit(cobj, clipLimit)

function getClipLimit(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_getClipLimit(julia_to_cpp(cobj)))
end
getClipLimit(cobj::Any; ) = getClipLimit(cobj)

function setTilesGridSize(cobj::Any, tileGridSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_setTilesGridSize(julia_to_cpp(cobj),julia_to_cpp(tileGridSize)))
end
setTilesGridSize(cobj::Any, tileGridSize::Size; ) = setTilesGridSize(cobj, tileGridSize)

function getTilesGridSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_getTilesGridSize(julia_to_cpp(cobj)))
end
getTilesGridSize(cobj::Any; ) = getTilesGridSize(cobj)

function collectGarbage(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_CLAHE_cv_CLAHE_collectGarbage(julia_to_cpp(cobj)))
end
collectGarbage(cobj::Any; ) = collectGarbage(cobj)
function Base.getproperty(m::Subdiv2D, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Subdiv2D, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function initDelaunay(cobj::Any, rect::Rect)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_initDelaunay(julia_to_cpp(cobj),julia_to_cpp(rect)))
end
initDelaunay(cobj::Any, rect::Rect; ) = initDelaunay(cobj, rect)

function insert(cobj::Any, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_insert(julia_to_cpp(cobj),julia_to_cpp(pt)))
end
insert(cobj::Any, pt::Point{Float32}; ) = insert(cobj, pt)

function insert(cobj::Any, ptvec::Array{Point{Int32}{Int32}{Float32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_insert(julia_to_cpp(cobj),julia_to_cpp(ptvec)))
end
insert(cobj::Any, ptvec::Array{Point{Int32}{Int32}{Float32}, 1}; ) = insert(cobj, ptvec)

function locate(cobj::Any, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_locate(julia_to_cpp(cobj),julia_to_cpp(pt)))
end
locate(cobj::Any, pt::Point{Float32}; ) = locate(cobj, pt)

function findNearest(cobj::Any, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_findNearest(julia_to_cpp(cobj),julia_to_cpp(pt)))
end
findNearest(cobj::Any, pt::Point{Float32}; ) = findNearest(cobj, pt)

function getEdgeList(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getEdgeList(julia_to_cpp(cobj)))
end
getEdgeList(cobj::Any; ) = getEdgeList(cobj)

function getLeadingEdgeList(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getLeadingEdgeList(julia_to_cpp(cobj)))
end
getLeadingEdgeList(cobj::Any; ) = getLeadingEdgeList(cobj)

function getTriangleList(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getTriangleList(julia_to_cpp(cobj)))
end
getTriangleList(cobj::Any; ) = getTriangleList(cobj)

function getVoronoiFacetList(cobj::Any, idx::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getVoronoiFacetList(julia_to_cpp(cobj),julia_to_cpp(idx)))
end
getVoronoiFacetList(cobj::Any, idx::Array{Int32, 1}; ) = getVoronoiFacetList(cobj, idx)

function getVertex(cobj::Any, vertex::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getVertex(julia_to_cpp(cobj),julia_to_cpp(vertex)))
end
getVertex(cobj::Any, vertex::Int32; ) = getVertex(cobj, vertex)

function getEdge(cobj::Any, edge::Int32, nextEdgeType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getEdge(julia_to_cpp(cobj),julia_to_cpp(edge),julia_to_cpp(nextEdgeType)))
end
getEdge(cobj::Any, edge::Int32, nextEdgeType::Int32; ) = getEdge(cobj, edge, nextEdgeType)

function nextEdge(cobj::Any, edge::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_nextEdge(julia_to_cpp(cobj),julia_to_cpp(edge)))
end
nextEdge(cobj::Any, edge::Int32; ) = nextEdge(cobj, edge)

function rotateEdge(cobj::Any, edge::Int32, rotate::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_rotateEdge(julia_to_cpp(cobj),julia_to_cpp(edge),julia_to_cpp(rotate)))
end
rotateEdge(cobj::Any, edge::Int32, rotate::Int32; ) = rotateEdge(cobj, edge, rotate)

function symEdge(cobj::Any, edge::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_symEdge(julia_to_cpp(cobj),julia_to_cpp(edge)))
end
symEdge(cobj::Any, edge::Int32; ) = symEdge(cobj, edge)

function edgeOrg(cobj::Any, edge::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_edgeOrg(julia_to_cpp(cobj),julia_to_cpp(edge)))
end
edgeOrg(cobj::Any, edge::Int32; ) = edgeOrg(cobj, edge)

function edgeDst(cobj::Any, edge::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_edgeDst(julia_to_cpp(cobj),julia_to_cpp(edge)))
end
edgeDst(cobj::Any, edge::Int32; ) = edgeDst(cobj, edge)
function Base.getproperty(m::LineSegmentDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::LineSegmentDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function detect(cobj::Any, _image::Image, _lines::Image, width::Image, prec::Image, nfa::Image)
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_detect(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(_lines),julia_to_cpp(width),julia_to_cpp(prec),julia_to_cpp(nfa)))
end
detect(cobj::Any, _image::Image; _lines::Image = _Mat(), width::Image = Mat(), prec::Image = Mat(), nfa::Image = Mat()) = detect(cobj, _image, _lines, width, prec, nfa)

function detect(cobj::Any, _image::UMat, _lines::UMat, width::UMat, prec::UMat, nfa::UMat)
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_detect(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(_lines),julia_to_cpp(width),julia_to_cpp(prec),julia_to_cpp(nfa)))
end
detect(cobj::Any, _image::UMat; _lines::UMat = UMat(), width::UMat = UMat(), prec::UMat = UMat(), nfa::UMat = UMat()) = detect(cobj, _image, _lines, width, prec, nfa)

function drawSegments(cobj::Any, _image::Image, lines::Image)
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_drawSegments(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(lines)))
end
drawSegments(cobj::Any, _image::Image, lines::Image; ) = drawSegments(cobj, _image, lines)

function drawSegments(cobj::Any, _image::UMat, lines::UMat)
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_drawSegments(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(lines)))
end
drawSegments(cobj::Any, _image::UMat, lines::UMat; ) = drawSegments(cobj, _image, lines)

function compareSegments(cobj::Any, size::Size, lines1::Image, lines2::Image, _image::Image)
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_compareSegments(julia_to_cpp(cobj),julia_to_cpp(size),julia_to_cpp(lines1),julia_to_cpp(lines2),julia_to_cpp(_image)))
end
compareSegments(cobj::Any, size::Size, lines1::Image, lines2::Image; _image::Image = Mat()) = compareSegments(cobj, size, lines1, lines2, _image)

function compareSegments(cobj::Any, size::Size, lines1::UMat, lines2::UMat, _image::UMat)
	return cpp_to_julia(jlopencv_cv_cv_LineSegmentDetector_cv_LineSegmentDetector_compareSegments(julia_to_cpp(cobj),julia_to_cpp(size),julia_to_cpp(lines1),julia_to_cpp(lines2),julia_to_cpp(_image)))
end
compareSegments(cobj::Any, size::Size, lines1::UMat, lines2::UMat; _image::UMat = UMat()) = compareSegments(cobj, size, lines1, lines2, _image)
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
function Base.getproperty(m::StereoMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::StereoMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function compute(cobj::Any, left::Image, right::Image, disparity::Image)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_compute(julia_to_cpp(cobj),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(disparity)))
end
compute(cobj::Any, left::Image, right::Image; disparity::Image = _Mat()) = compute(cobj, left, right, disparity)

function compute(cobj::Any, left::UMat, right::UMat, disparity::UMat)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_compute(julia_to_cpp(cobj),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(disparity)))
end
compute(cobj::Any, left::UMat, right::UMat; disparity::UMat = UMat()) = compute(cobj, left, right, disparity)

function getMinDisparity(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getMinDisparity(julia_to_cpp(cobj)))
end
getMinDisparity(cobj::Any; ) = getMinDisparity(cobj)

function setMinDisparity(cobj::Any, minDisparity::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setMinDisparity(julia_to_cpp(cobj),julia_to_cpp(minDisparity)))
end
setMinDisparity(cobj::Any, minDisparity::Int32; ) = setMinDisparity(cobj, minDisparity)

function getNumDisparities(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getNumDisparities(julia_to_cpp(cobj)))
end
getNumDisparities(cobj::Any; ) = getNumDisparities(cobj)

function setNumDisparities(cobj::Any, numDisparities::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setNumDisparities(julia_to_cpp(cobj),julia_to_cpp(numDisparities)))
end
setNumDisparities(cobj::Any, numDisparities::Int32; ) = setNumDisparities(cobj, numDisparities)

function getBlockSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getBlockSize(julia_to_cpp(cobj)))
end
getBlockSize(cobj::Any; ) = getBlockSize(cobj)

function setBlockSize(cobj::Any, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end
setBlockSize(cobj::Any, blockSize::Int32; ) = setBlockSize(cobj, blockSize)

function getSpeckleWindowSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getSpeckleWindowSize(julia_to_cpp(cobj)))
end
getSpeckleWindowSize(cobj::Any; ) = getSpeckleWindowSize(cobj)

function setSpeckleWindowSize(cobj::Any, speckleWindowSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setSpeckleWindowSize(julia_to_cpp(cobj),julia_to_cpp(speckleWindowSize)))
end
setSpeckleWindowSize(cobj::Any, speckleWindowSize::Int32; ) = setSpeckleWindowSize(cobj, speckleWindowSize)

function getSpeckleRange(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getSpeckleRange(julia_to_cpp(cobj)))
end
getSpeckleRange(cobj::Any; ) = getSpeckleRange(cobj)

function setSpeckleRange(cobj::Any, speckleRange::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setSpeckleRange(julia_to_cpp(cobj),julia_to_cpp(speckleRange)))
end
setSpeckleRange(cobj::Any, speckleRange::Int32; ) = setSpeckleRange(cobj, speckleRange)

function getDisp12MaxDiff(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getDisp12MaxDiff(julia_to_cpp(cobj)))
end
getDisp12MaxDiff(cobj::Any; ) = getDisp12MaxDiff(cobj)

function setDisp12MaxDiff(cobj::Any, disp12MaxDiff::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setDisp12MaxDiff(julia_to_cpp(cobj),julia_to_cpp(disp12MaxDiff)))
end
setDisp12MaxDiff(cobj::Any, disp12MaxDiff::Int32; ) = setDisp12MaxDiff(cobj, disp12MaxDiff)
function Base.getproperty(m::StereoBM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::StereoBM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getPreFilterType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterType(julia_to_cpp(cobj)))
end
getPreFilterType(cobj::Any; ) = getPreFilterType(cobj)

function setPreFilterType(cobj::Any, preFilterType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterType(julia_to_cpp(cobj),julia_to_cpp(preFilterType)))
end
setPreFilterType(cobj::Any, preFilterType::Int32; ) = setPreFilterType(cobj, preFilterType)

function getPreFilterSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterSize(julia_to_cpp(cobj)))
end
getPreFilterSize(cobj::Any; ) = getPreFilterSize(cobj)

function setPreFilterSize(cobj::Any, preFilterSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterSize(julia_to_cpp(cobj),julia_to_cpp(preFilterSize)))
end
setPreFilterSize(cobj::Any, preFilterSize::Int32; ) = setPreFilterSize(cobj, preFilterSize)

function getPreFilterCap(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterCap(julia_to_cpp(cobj)))
end
getPreFilterCap(cobj::Any; ) = getPreFilterCap(cobj)

function setPreFilterCap(cobj::Any, preFilterCap::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterCap(julia_to_cpp(cobj),julia_to_cpp(preFilterCap)))
end
setPreFilterCap(cobj::Any, preFilterCap::Int32; ) = setPreFilterCap(cobj, preFilterCap)

function getTextureThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getTextureThreshold(julia_to_cpp(cobj)))
end
getTextureThreshold(cobj::Any; ) = getTextureThreshold(cobj)

function setTextureThreshold(cobj::Any, textureThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setTextureThreshold(julia_to_cpp(cobj),julia_to_cpp(textureThreshold)))
end
setTextureThreshold(cobj::Any, textureThreshold::Int32; ) = setTextureThreshold(cobj, textureThreshold)

function getUniquenessRatio(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getUniquenessRatio(julia_to_cpp(cobj)))
end
getUniquenessRatio(cobj::Any; ) = getUniquenessRatio(cobj)

function setUniquenessRatio(cobj::Any, uniquenessRatio::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setUniquenessRatio(julia_to_cpp(cobj),julia_to_cpp(uniquenessRatio)))
end
setUniquenessRatio(cobj::Any, uniquenessRatio::Int32; ) = setUniquenessRatio(cobj, uniquenessRatio)

function getSmallerBlockSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getSmallerBlockSize(julia_to_cpp(cobj)))
end
getSmallerBlockSize(cobj::Any; ) = getSmallerBlockSize(cobj)

function setSmallerBlockSize(cobj::Any, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setSmallerBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end
setSmallerBlockSize(cobj::Any, blockSize::Int32; ) = setSmallerBlockSize(cobj, blockSize)

function getROI1(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getROI1(julia_to_cpp(cobj)))
end
getROI1(cobj::Any; ) = getROI1(cobj)

function setROI1(cobj::Any, roi1::Rect)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setROI1(julia_to_cpp(cobj),julia_to_cpp(roi1)))
end
setROI1(cobj::Any, roi1::Rect; ) = setROI1(cobj, roi1)

function getROI2(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getROI2(julia_to_cpp(cobj)))
end
getROI2(cobj::Any; ) = getROI2(cobj)

function setROI2(cobj::Any, roi2::Rect)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setROI2(julia_to_cpp(cobj),julia_to_cpp(roi2)))
end
setROI2(cobj::Any, roi2::Rect; ) = setROI2(cobj, roi2)
function Base.getproperty(m::StereoSGBM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::StereoSGBM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getPreFilterCap(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getPreFilterCap(julia_to_cpp(cobj)))
end
getPreFilterCap(cobj::Any; ) = getPreFilterCap(cobj)

function setPreFilterCap(cobj::Any, preFilterCap::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setPreFilterCap(julia_to_cpp(cobj),julia_to_cpp(preFilterCap)))
end
setPreFilterCap(cobj::Any, preFilterCap::Int32; ) = setPreFilterCap(cobj, preFilterCap)

function getUniquenessRatio(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getUniquenessRatio(julia_to_cpp(cobj)))
end
getUniquenessRatio(cobj::Any; ) = getUniquenessRatio(cobj)

function setUniquenessRatio(cobj::Any, uniquenessRatio::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setUniquenessRatio(julia_to_cpp(cobj),julia_to_cpp(uniquenessRatio)))
end
setUniquenessRatio(cobj::Any, uniquenessRatio::Int32; ) = setUniquenessRatio(cobj, uniquenessRatio)

function getP1(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getP1(julia_to_cpp(cobj)))
end
getP1(cobj::Any; ) = getP1(cobj)

function setP1(cobj::Any, P1::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setP1(julia_to_cpp(cobj),julia_to_cpp(P1)))
end
setP1(cobj::Any, P1::Int32; ) = setP1(cobj, P1)

function getP2(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getP2(julia_to_cpp(cobj)))
end
getP2(cobj::Any; ) = getP2(cobj)

function setP2(cobj::Any, P2::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setP2(julia_to_cpp(cobj),julia_to_cpp(P2)))
end
setP2(cobj::Any, P2::Int32; ) = setP2(cobj, P2)

function getMode(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getMode(julia_to_cpp(cobj)))
end
getMode(cobj::Any; ) = getMode(cobj)

function setMode(cobj::Any, mode::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setMode(julia_to_cpp(cobj),julia_to_cpp(mode)))
end
setMode(cobj::Any, mode::Int32; ) = setMode(cobj, mode)
function Base.getproperty(m::Feature2D, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Feature2D, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function detect(cobj::Any, image::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask)))
end
detect(cobj::Any, image::Image; mask::Image = Mat()) = detect(cobj, image, mask)

function detect(cobj::Any, image::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask)))
end
detect(cobj::Any, image::UMat; mask::UMat = UMat()) = detect(cobj, image, mask)

function detect(cobj::Any, images::Array{Image, 1}, masks::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(masks)))
end
detect(cobj::Any, images::Array{Image, 1}; masks::Array{Image, 1} = vector_Mat()) = detect(cobj, images, masks)

function detect(cobj::Any, images::Array{UMat, 1}, masks::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(masks)))
end
detect(cobj::Any, images::Array{UMat, 1}; masks::Array{UMat, 1} = vector_UMat()) = detect(cobj, images, masks)

function compute(cobj::Any, image::Image, keypoints::Array{KeyPoint, 1}, descriptors::Image)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::Any, image::Image, keypoints::Array{KeyPoint, 1}; descriptors::Image = _Mat()) = compute(cobj, image, keypoints, descriptors)

function compute(cobj::Any, image::UMat, keypoints::Array{KeyPoint, 1}, descriptors::UMat)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::Any, image::UMat, keypoints::Array{KeyPoint, 1}; descriptors::UMat = UMat()) = compute(cobj, image, keypoints, descriptors)

function compute(cobj::Any, images::Array{Image, 1}, keypoints::Array{Array{KeyPoint, 1}, 1}, descriptors::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::Any, images::Array{Image, 1}, keypoints::Array{Array{KeyPoint, 1}, 1}; descriptors::Array{Image, 1} = Array{Image, 1}()) = compute(cobj, images, keypoints, descriptors)

function compute(cobj::Any, images::Array{UMat, 1}, keypoints::Array{Array{KeyPoint, 1}, 1}, descriptors::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::Any, images::Array{UMat, 1}, keypoints::Array{Array{KeyPoint, 1}, 1}; descriptors::Array{UMat, 1} = Array{UMat, 1}()) = compute(cobj, images, keypoints, descriptors)

function detectAndCompute(cobj::Any, image::Image, mask::Image, descriptors::Image, useProvidedKeypoints::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detectAndCompute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(descriptors),julia_to_cpp(useProvidedKeypoints)))
end
detectAndCompute(cobj::Any, image::Image, mask::Image; descriptors::Image = _Mat(), useProvidedKeypoints::Bool = false) = detectAndCompute(cobj, image, mask, descriptors, useProvidedKeypoints)

function detectAndCompute(cobj::Any, image::UMat, mask::UMat, descriptors::UMat, useProvidedKeypoints::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detectAndCompute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(descriptors),julia_to_cpp(useProvidedKeypoints)))
end
detectAndCompute(cobj::Any, image::UMat, mask::UMat; descriptors::UMat = UMat(), useProvidedKeypoints::Bool = false) = detectAndCompute(cobj, image, mask, descriptors, useProvidedKeypoints)

function descriptorSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_descriptorSize(julia_to_cpp(cobj)))
end
descriptorSize(cobj::Any; ) = descriptorSize(cobj)

function descriptorType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_descriptorType(julia_to_cpp(cobj)))
end
descriptorType(cobj::Any; ) = descriptorType(cobj)

function defaultNorm(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_defaultNorm(julia_to_cpp(cobj)))
end
defaultNorm(cobj::Any; ) = defaultNorm(cobj)

function write(cobj::Any, fileName::String)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_write(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end
write(cobj::Any, fileName::String; ) = write(cobj, fileName)

function write(cobj::Any, fs::Ptr{FileStorage}, name::String)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
write(cobj::Any, fs::Ptr{FileStorage}; name::String = "") = write(cobj, fs, name)

function read(cobj::Any, fileName::String)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_read(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end
read(cobj::Any, fileName::String; ) = read(cobj, fileName)

function read(cobj::Any, arg1::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_read(julia_to_cpp(cobj),julia_to_cpp(arg1)))
end
read(cobj::Any, arg1::FileNode; ) = read(cobj, arg1)

function empty(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_empty(julia_to_cpp(cobj)))
end
empty(cobj::Any; ) = empty(cobj)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)
function Base.getproperty(m::BRISK, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BRISK, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function setThreshold(cobj::Any, threshold::Int32)
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setThreshold(cobj::Any, threshold::Int32; ) = setThreshold(cobj, threshold)

function getThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_getThreshold(julia_to_cpp(cobj)))
end
getThreshold(cobj::Any; ) = getThreshold(cobj)

function setOctaves(cobj::Any, octaves::Int32)
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_setOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end
setOctaves(cobj::Any, octaves::Int32; ) = setOctaves(cobj, octaves)

function getOctaves(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_getOctaves(julia_to_cpp(cobj)))
end
getOctaves(cobj::Any; ) = getOctaves(cobj)
function Base.getproperty(m::ORB, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ORB, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setMaxFeatures(cobj::Any, maxFeatures::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setMaxFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end
setMaxFeatures(cobj::Any, maxFeatures::Int32; ) = setMaxFeatures(cobj, maxFeatures)

function getMaxFeatures(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getMaxFeatures(julia_to_cpp(cobj)))
end
getMaxFeatures(cobj::Any; ) = getMaxFeatures(cobj)

function setScaleFactor(cobj::Any, scaleFactor::Float64)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setScaleFactor(julia_to_cpp(cobj),julia_to_cpp(scaleFactor)))
end
setScaleFactor(cobj::Any, scaleFactor::Float64; ) = setScaleFactor(cobj, scaleFactor)

function getScaleFactor(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getScaleFactor(julia_to_cpp(cobj)))
end
getScaleFactor(cobj::Any; ) = getScaleFactor(cobj)

function setNLevels(cobj::Any, nlevels::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setNLevels(julia_to_cpp(cobj),julia_to_cpp(nlevels)))
end
setNLevels(cobj::Any, nlevels::Int32; ) = setNLevels(cobj, nlevels)

function getNLevels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getNLevels(julia_to_cpp(cobj)))
end
getNLevels(cobj::Any; ) = getNLevels(cobj)

function setEdgeThreshold(cobj::Any, edgeThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setEdgeThreshold(julia_to_cpp(cobj),julia_to_cpp(edgeThreshold)))
end
setEdgeThreshold(cobj::Any, edgeThreshold::Int32; ) = setEdgeThreshold(cobj, edgeThreshold)

function getEdgeThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getEdgeThreshold(julia_to_cpp(cobj)))
end
getEdgeThreshold(cobj::Any; ) = getEdgeThreshold(cobj)

function setFirstLevel(cobj::Any, firstLevel::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setFirstLevel(julia_to_cpp(cobj),julia_to_cpp(firstLevel)))
end
setFirstLevel(cobj::Any, firstLevel::Int32; ) = setFirstLevel(cobj, firstLevel)

function getFirstLevel(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getFirstLevel(julia_to_cpp(cobj)))
end
getFirstLevel(cobj::Any; ) = getFirstLevel(cobj)

function setWTA_K(cobj::Any, wta_k::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setWTA_K(julia_to_cpp(cobj),julia_to_cpp(wta_k)))
end
setWTA_K(cobj::Any, wta_k::Int32; ) = setWTA_K(cobj, wta_k)

function getWTA_K(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getWTA_K(julia_to_cpp(cobj)))
end
getWTA_K(cobj::Any; ) = getWTA_K(cobj)

function setScoreType(cobj::Any, scoreType::ORB_ScoreType)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setScoreType(julia_to_cpp(cobj),julia_to_cpp(scoreType)))
end
setScoreType(cobj::Any, scoreType::ORB_ScoreType; ) = setScoreType(cobj, scoreType)

function getScoreType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getScoreType(julia_to_cpp(cobj)))
end
getScoreType(cobj::Any; ) = getScoreType(cobj)

function setPatchSize(cobj::Any, patchSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setPatchSize(julia_to_cpp(cobj),julia_to_cpp(patchSize)))
end
setPatchSize(cobj::Any, patchSize::Int32; ) = setPatchSize(cobj, patchSize)

function getPatchSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getPatchSize(julia_to_cpp(cobj)))
end
getPatchSize(cobj::Any; ) = getPatchSize(cobj)

function setFastThreshold(cobj::Any, fastThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setFastThreshold(julia_to_cpp(cobj),julia_to_cpp(fastThreshold)))
end
setFastThreshold(cobj::Any, fastThreshold::Int32; ) = setFastThreshold(cobj, fastThreshold)

function getFastThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getFastThreshold(julia_to_cpp(cobj)))
end
getFastThreshold(cobj::Any; ) = getFastThreshold(cobj)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)
function Base.getproperty(m::MSER, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::MSER, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function detectRegions(cobj::Any, image::Image)
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_detectRegions(julia_to_cpp(cobj),julia_to_cpp(image)))
end
detectRegions(cobj::Any, image::Image; ) = detectRegions(cobj, image)

function detectRegions(cobj::Any, image::UMat)
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_detectRegions(julia_to_cpp(cobj),julia_to_cpp(image)))
end
detectRegions(cobj::Any, image::UMat; ) = detectRegions(cobj, image)

function setDelta(cobj::Any, delta::Int32)
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setDelta(julia_to_cpp(cobj),julia_to_cpp(delta)))
end
setDelta(cobj::Any, delta::Int32; ) = setDelta(cobj, delta)

function getDelta(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getDelta(julia_to_cpp(cobj)))
end
getDelta(cobj::Any; ) = getDelta(cobj)

function setMinArea(cobj::Any, minArea::Int32)
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMinArea(julia_to_cpp(cobj),julia_to_cpp(minArea)))
end
setMinArea(cobj::Any, minArea::Int32; ) = setMinArea(cobj, minArea)

function getMinArea(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMinArea(julia_to_cpp(cobj)))
end
getMinArea(cobj::Any; ) = getMinArea(cobj)

function setMaxArea(cobj::Any, maxArea::Int32)
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMaxArea(julia_to_cpp(cobj),julia_to_cpp(maxArea)))
end
setMaxArea(cobj::Any, maxArea::Int32; ) = setMaxArea(cobj, maxArea)

function getMaxArea(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMaxArea(julia_to_cpp(cobj)))
end
getMaxArea(cobj::Any; ) = getMaxArea(cobj)

function setPass2Only(cobj::Any, f::Bool)
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setPass2Only(julia_to_cpp(cobj),julia_to_cpp(f)))
end
setPass2Only(cobj::Any, f::Bool; ) = setPass2Only(cobj, f)

function getPass2Only(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getPass2Only(julia_to_cpp(cobj)))
end
getPass2Only(cobj::Any; ) = getPass2Only(cobj)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)
function Base.getproperty(m::FastFeatureDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FastFeatureDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setThreshold(cobj::Any, threshold::Int32)
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setThreshold(cobj::Any, threshold::Int32; ) = setThreshold(cobj, threshold)

function getThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getThreshold(julia_to_cpp(cobj)))
end
getThreshold(cobj::Any; ) = getThreshold(cobj)

function setNonmaxSuppression(cobj::Any, f::Bool)
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setNonmaxSuppression(julia_to_cpp(cobj),julia_to_cpp(f)))
end
setNonmaxSuppression(cobj::Any, f::Bool; ) = setNonmaxSuppression(cobj, f)

function getNonmaxSuppression(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getNonmaxSuppression(julia_to_cpp(cobj)))
end
getNonmaxSuppression(cobj::Any; ) = getNonmaxSuppression(cobj)

function setType(cobj::Any, type::FastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setType(julia_to_cpp(cobj),julia_to_cpp(type)))
end
setType(cobj::Any, type::FastFeatureDetector_DetectorType; ) = setType(cobj, type)

function getType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getType(julia_to_cpp(cobj)))
end
getType(cobj::Any; ) = getType(cobj)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)
function Base.getproperty(m::AgastFeatureDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::AgastFeatureDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setThreshold(cobj::Any, threshold::Int32)
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setThreshold(cobj::Any, threshold::Int32; ) = setThreshold(cobj, threshold)

function getThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getThreshold(julia_to_cpp(cobj)))
end
getThreshold(cobj::Any; ) = getThreshold(cobj)

function setNonmaxSuppression(cobj::Any, f::Bool)
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_setNonmaxSuppression(julia_to_cpp(cobj),julia_to_cpp(f)))
end
setNonmaxSuppression(cobj::Any, f::Bool; ) = setNonmaxSuppression(cobj, f)

function getNonmaxSuppression(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getNonmaxSuppression(julia_to_cpp(cobj)))
end
getNonmaxSuppression(cobj::Any; ) = getNonmaxSuppression(cobj)

function setType(cobj::Any, type::AgastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_setType(julia_to_cpp(cobj),julia_to_cpp(type)))
end
setType(cobj::Any, type::AgastFeatureDetector_DetectorType; ) = setType(cobj, type)

function getType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getType(julia_to_cpp(cobj)))
end
getType(cobj::Any; ) = getType(cobj)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)
function Base.getproperty(m::GFTTDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GFTTDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setMaxFeatures(cobj::Any, maxFeatures::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setMaxFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end
setMaxFeatures(cobj::Any, maxFeatures::Int32; ) = setMaxFeatures(cobj, maxFeatures)

function getMaxFeatures(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getMaxFeatures(julia_to_cpp(cobj)))
end
getMaxFeatures(cobj::Any; ) = getMaxFeatures(cobj)

function setQualityLevel(cobj::Any, qlevel::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setQualityLevel(julia_to_cpp(cobj),julia_to_cpp(qlevel)))
end
setQualityLevel(cobj::Any, qlevel::Float64; ) = setQualityLevel(cobj, qlevel)

function getQualityLevel(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getQualityLevel(julia_to_cpp(cobj)))
end
getQualityLevel(cobj::Any; ) = getQualityLevel(cobj)

function setMinDistance(cobj::Any, minDistance::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setMinDistance(julia_to_cpp(cobj),julia_to_cpp(minDistance)))
end
setMinDistance(cobj::Any, minDistance::Float64; ) = setMinDistance(cobj, minDistance)

function getMinDistance(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getMinDistance(julia_to_cpp(cobj)))
end
getMinDistance(cobj::Any; ) = getMinDistance(cobj)

function setBlockSize(cobj::Any, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end
setBlockSize(cobj::Any, blockSize::Int32; ) = setBlockSize(cobj, blockSize)

function getBlockSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getBlockSize(julia_to_cpp(cobj)))
end
getBlockSize(cobj::Any; ) = getBlockSize(cobj)

function setHarrisDetector(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setHarrisDetector(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setHarrisDetector(cobj::Any, val::Bool; ) = setHarrisDetector(cobj, val)

function getHarrisDetector(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getHarrisDetector(julia_to_cpp(cobj)))
end
getHarrisDetector(cobj::Any; ) = getHarrisDetector(cobj)

function setK(cobj::Any, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setK(julia_to_cpp(cobj),julia_to_cpp(k)))
end
setK(cobj::Any, k::Float64; ) = setK(cobj, k)

function getK(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getK(julia_to_cpp(cobj)))
end
getK(cobj::Any; ) = getK(cobj)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)
function Base.getproperty(m::SimpleBlobDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SimpleBlobDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_cv_SimpleBlobDetector_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)
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
function Base.getproperty(m::KAZE, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KAZE, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setExtended(cobj::Any, extended::Bool)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setExtended(julia_to_cpp(cobj),julia_to_cpp(extended)))
end
setExtended(cobj::Any, extended::Bool; ) = setExtended(cobj, extended)

function getExtended(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getExtended(julia_to_cpp(cobj)))
end
getExtended(cobj::Any; ) = getExtended(cobj)

function setUpright(cobj::Any, upright::Bool)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setUpright(julia_to_cpp(cobj),julia_to_cpp(upright)))
end
setUpright(cobj::Any, upright::Bool; ) = setUpright(cobj, upright)

function getUpright(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getUpright(julia_to_cpp(cobj)))
end
getUpright(cobj::Any; ) = getUpright(cobj)

function setThreshold(cobj::Any, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setThreshold(cobj::Any, threshold::Float64; ) = setThreshold(cobj, threshold)

function getThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getThreshold(julia_to_cpp(cobj)))
end
getThreshold(cobj::Any; ) = getThreshold(cobj)

function setNOctaves(cobj::Any, octaves::Int32)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setNOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end
setNOctaves(cobj::Any, octaves::Int32; ) = setNOctaves(cobj, octaves)

function getNOctaves(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getNOctaves(julia_to_cpp(cobj)))
end
getNOctaves(cobj::Any; ) = getNOctaves(cobj)

function setNOctaveLayers(cobj::Any, octaveLayers::Int32)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(octaveLayers)))
end
setNOctaveLayers(cobj::Any, octaveLayers::Int32; ) = setNOctaveLayers(cobj, octaveLayers)

function getNOctaveLayers(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getNOctaveLayers(julia_to_cpp(cobj)))
end
getNOctaveLayers(cobj::Any; ) = getNOctaveLayers(cobj)

function setDiffusivity(cobj::Any, diff::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setDiffusivity(julia_to_cpp(cobj),julia_to_cpp(diff)))
end
setDiffusivity(cobj::Any, diff::KAZE_DiffusivityType; ) = setDiffusivity(cobj, diff)

function getDiffusivity(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getDiffusivity(julia_to_cpp(cobj)))
end
getDiffusivity(cobj::Any; ) = getDiffusivity(cobj)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)
function Base.getproperty(m::AKAZE, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::AKAZE, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setDescriptorType(cobj::Any, dtype::AKAZE_DescriptorType)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDescriptorType(julia_to_cpp(cobj),julia_to_cpp(dtype)))
end
setDescriptorType(cobj::Any, dtype::AKAZE_DescriptorType; ) = setDescriptorType(cobj, dtype)

function getDescriptorType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDescriptorType(julia_to_cpp(cobj)))
end
getDescriptorType(cobj::Any; ) = getDescriptorType(cobj)

function setDescriptorSize(cobj::Any, dsize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDescriptorSize(julia_to_cpp(cobj),julia_to_cpp(dsize)))
end
setDescriptorSize(cobj::Any, dsize::Int32; ) = setDescriptorSize(cobj, dsize)

function getDescriptorSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDescriptorSize(julia_to_cpp(cobj)))
end
getDescriptorSize(cobj::Any; ) = getDescriptorSize(cobj)

function setDescriptorChannels(cobj::Any, dch::Int32)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDescriptorChannels(julia_to_cpp(cobj),julia_to_cpp(dch)))
end
setDescriptorChannels(cobj::Any, dch::Int32; ) = setDescriptorChannels(cobj, dch)

function getDescriptorChannels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDescriptorChannels(julia_to_cpp(cobj)))
end
getDescriptorChannels(cobj::Any; ) = getDescriptorChannels(cobj)

function setThreshold(cobj::Any, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setThreshold(cobj::Any, threshold::Float64; ) = setThreshold(cobj, threshold)

function getThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getThreshold(julia_to_cpp(cobj)))
end
getThreshold(cobj::Any; ) = getThreshold(cobj)

function setNOctaves(cobj::Any, octaves::Int32)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setNOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end
setNOctaves(cobj::Any, octaves::Int32; ) = setNOctaves(cobj, octaves)

function getNOctaves(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getNOctaves(julia_to_cpp(cobj)))
end
getNOctaves(cobj::Any; ) = getNOctaves(cobj)

function setNOctaveLayers(cobj::Any, octaveLayers::Int32)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(octaveLayers)))
end
setNOctaveLayers(cobj::Any, octaveLayers::Int32; ) = setNOctaveLayers(cobj, octaveLayers)

function getNOctaveLayers(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getNOctaveLayers(julia_to_cpp(cobj)))
end
getNOctaveLayers(cobj::Any; ) = getNOctaveLayers(cobj)

function setDiffusivity(cobj::Any, diff::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDiffusivity(julia_to_cpp(cobj),julia_to_cpp(diff)))
end
setDiffusivity(cobj::Any, diff::KAZE_DiffusivityType; ) = setDiffusivity(cobj, diff)

function getDiffusivity(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDiffusivity(julia_to_cpp(cobj)))
end
getDiffusivity(cobj::Any; ) = getDiffusivity(cobj)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)
function Base.getproperty(m::DescriptorMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DescriptorMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function add(cobj::Any, descriptors::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
add(cobj::Any, descriptors::Array{Image, 1}; ) = add(cobj, descriptors)

function add(cobj::Any, descriptors::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
add(cobj::Any, descriptors::Array{UMat, 1}; ) = add(cobj, descriptors)

function getTrainDescriptors(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_getTrainDescriptors(julia_to_cpp(cobj)))
end
getTrainDescriptors(cobj::Any; ) = getTrainDescriptors(cobj)

function clear(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_clear(julia_to_cpp(cobj)))
end
clear(cobj::Any; ) = clear(cobj)

function empty(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_empty(julia_to_cpp(cobj)))
end
empty(cobj::Any; ) = empty(cobj)

function isMaskSupported(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_isMaskSupported(julia_to_cpp(cobj)))
end
isMaskSupported(cobj::Any; ) = isMaskSupported(cobj)

function train(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_train(julia_to_cpp(cobj)))
end
train(cobj::Any; ) = train(cobj)

function match(cobj::Any, queryDescriptors::Image, trainDescriptors::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(mask)))
end
match(cobj::Any, queryDescriptors::Image, trainDescriptors::Image; mask::Image = Mat()) = match(cobj, queryDescriptors, trainDescriptors, mask)

function match(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(mask)))
end
match(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat; mask::UMat = UMat()) = match(cobj, queryDescriptors, trainDescriptors, mask)

function match(cobj::Any, queryDescriptors::Image, masks::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(masks)))
end
match(cobj::Any, queryDescriptors::Image; masks::Array{Image, 1} = vector_Mat()) = match(cobj, queryDescriptors, masks)

function match(cobj::Any, queryDescriptors::UMat, masks::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(masks)))
end
match(cobj::Any, queryDescriptors::UMat; masks::Array{UMat, 1} = vector_UMat()) = match(cobj, queryDescriptors, masks)

function knnMatch(cobj::Any, queryDescriptors::Image, trainDescriptors::Image, k::Int32, mask::Image, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(k),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
knnMatch(cobj::Any, queryDescriptors::Image, trainDescriptors::Image, k::Int32; mask::Image = Mat(), compactResult::Bool = false) = knnMatch(cobj, queryDescriptors, trainDescriptors, k, mask, compactResult)

function knnMatch(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat, k::Int32, mask::UMat, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(k),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
knnMatch(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat, k::Int32; mask::UMat = UMat(), compactResult::Bool = false) = knnMatch(cobj, queryDescriptors, trainDescriptors, k, mask, compactResult)

function knnMatch(cobj::Any, queryDescriptors::Image, k::Int32, masks::Array{Image, 1}, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(k),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
knnMatch(cobj::Any, queryDescriptors::Image, k::Int32; masks::Array{Image, 1} = vector_Mat(), compactResult::Bool = false) = knnMatch(cobj, queryDescriptors, k, masks, compactResult)

function knnMatch(cobj::Any, queryDescriptors::UMat, k::Int32, masks::Array{UMat, 1}, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(k),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
knnMatch(cobj::Any, queryDescriptors::UMat, k::Int32; masks::Array{UMat, 1} = vector_UMat(), compactResult::Bool = false) = knnMatch(cobj, queryDescriptors, k, masks, compactResult)

function radiusMatch(cobj::Any, queryDescriptors::Image, trainDescriptors::Image, maxDistance::Float32, mask::Image, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::Any, queryDescriptors::Image, trainDescriptors::Image, maxDistance::Float32; mask::Image = Mat(), compactResult::Bool = false) = radiusMatch(cobj, queryDescriptors, trainDescriptors, maxDistance, mask, compactResult)

function radiusMatch(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat, maxDistance::Float32, mask::UMat, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat, maxDistance::Float32; mask::UMat = UMat(), compactResult::Bool = false) = radiusMatch(cobj, queryDescriptors, trainDescriptors, maxDistance, mask, compactResult)

function radiusMatch(cobj::Any, queryDescriptors::Image, maxDistance::Float32, masks::Array{Image, 1}, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::Any, queryDescriptors::Image, maxDistance::Float32; masks::Array{Image, 1} = vector_Mat(), compactResult::Bool = false) = radiusMatch(cobj, queryDescriptors, maxDistance, masks, compactResult)

function radiusMatch(cobj::Any, queryDescriptors::UMat, maxDistance::Float32, masks::Array{UMat, 1}, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::Any, queryDescriptors::UMat, maxDistance::Float32; masks::Array{UMat, 1} = vector_UMat(), compactResult::Bool = false) = radiusMatch(cobj, queryDescriptors, maxDistance, masks, compactResult)

function write(cobj::Any, fileName::String)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_write(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end
write(cobj::Any, fileName::String; ) = write(cobj, fileName)

function write(cobj::Any, fs::Ptr{FileStorage}, name::String)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
write(cobj::Any, fs::Ptr{FileStorage}; name::String = "") = write(cobj, fs, name)

function read(cobj::Any, fileName::String)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_read(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end
read(cobj::Any, fileName::String; ) = read(cobj, fileName)

function read(cobj::Any, arg1::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_read(julia_to_cpp(cobj),julia_to_cpp(arg1)))
end
read(cobj::Any, arg1::FileNode; ) = read(cobj, arg1)

function clone(cobj::Any, emptyTrainData::Bool)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_clone(julia_to_cpp(cobj),julia_to_cpp(emptyTrainData)))
end
clone(cobj::Any; emptyTrainData::Bool = false) = clone(cobj, emptyTrainData)
function Base.getproperty(m::BFMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BFMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::FlannBasedMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FlannBasedMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::BOWTrainer, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWTrainer, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function add(cobj::Any, descriptors::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
add(cobj::Any, descriptors::Image; ) = add(cobj, descriptors)

function add(cobj::Any, descriptors::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
add(cobj::Any, descriptors::Image; ) = add(cobj, descriptors)

function getDescriptors(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_getDescriptors(julia_to_cpp(cobj)))
end
getDescriptors(cobj::Any; ) = getDescriptors(cobj)

function descriptorsCount(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_descriptorsCount(julia_to_cpp(cobj)))
end
descriptorsCount(cobj::Any; ) = descriptorsCount(cobj)

function clear(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_clear(julia_to_cpp(cobj)))
end
clear(cobj::Any; ) = clear(cobj)

function cluster(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_cluster(julia_to_cpp(cobj)))
end
cluster(cobj::Any; ) = cluster(cobj)

function cluster(cobj::Any, descriptors::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
cluster(cobj::Any, descriptors::Image; ) = cluster(cobj, descriptors)

function cluster(cobj::Any, descriptors::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWTrainer_cv_BOWTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
cluster(cobj::Any, descriptors::Image; ) = cluster(cobj, descriptors)
function Base.getproperty(m::BOWKMeansTrainer, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWKMeansTrainer, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function cluster(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BOWKMeansTrainer_cv_BOWKMeansTrainer_cluster(julia_to_cpp(cobj)))
end
cluster(cobj::Any; ) = cluster(cobj)

function cluster(cobj::Any, descriptors::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWKMeansTrainer_cv_BOWKMeansTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
cluster(cobj::Any, descriptors::Image; ) = cluster(cobj, descriptors)

function cluster(cobj::Any, descriptors::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWKMeansTrainer_cv_BOWKMeansTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
cluster(cobj::Any, descriptors::Image; ) = cluster(cobj, descriptors)
function Base.getproperty(m::BOWImgDescriptorExtractor, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWImgDescriptorExtractor, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setVocabulary(cobj::Any, vocabulary::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_setVocabulary(julia_to_cpp(cobj),julia_to_cpp(vocabulary)))
end
setVocabulary(cobj::Any, vocabulary::Image; ) = setVocabulary(cobj, vocabulary)

function setVocabulary(cobj::Any, vocabulary::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_setVocabulary(julia_to_cpp(cobj),julia_to_cpp(vocabulary)))
end
setVocabulary(cobj::Any, vocabulary::Image; ) = setVocabulary(cobj, vocabulary)

function getVocabulary(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_getVocabulary(julia_to_cpp(cobj)))
end
getVocabulary(cobj::Any; ) = getVocabulary(cobj)

function compute2(cobj::Any, image::Image, keypoints::Array{KeyPoint, 1}, imgDescriptor::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_compute2(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(imgDescriptor)))
end
compute2(cobj::Any, image::Image, keypoints::Array{KeyPoint, 1}; imgDescriptor::Image = _Mat()) = compute2(cobj, image, keypoints, imgDescriptor)

function compute2(cobj::Any, image::Image, keypoints::Array{KeyPoint, 1}, imgDescriptor::Image)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_compute2(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(imgDescriptor)))
end
compute2(cobj::Any, image::Image, keypoints::Array{KeyPoint, 1}; imgDescriptor::Image = _Mat()) = compute2(cobj, image, keypoints, imgDescriptor)

function descriptorSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_descriptorSize(julia_to_cpp(cobj)))
end
descriptorSize(cobj::Any; ) = descriptorSize(cobj)

function descriptorType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BOWImgDescriptorExtractor_cv_BOWImgDescriptorExtractor_descriptorType(julia_to_cpp(cobj)))
end
descriptorType(cobj::Any; ) = descriptorType(cobj)
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

function predict(cobj::Any, control::Image)
	return cpp_to_julia(jlopencv_cv_cv_KalmanFilter_cv_KalmanFilter_predict(julia_to_cpp(cobj),julia_to_cpp(control)))
end
predict(cobj::Any; control::Image = Mat()) = predict(cobj, control)

function predict(cobj::Any, control::Image)
	return cpp_to_julia(jlopencv_cv_cv_KalmanFilter_cv_KalmanFilter_predict(julia_to_cpp(cobj),julia_to_cpp(control)))
end
predict(cobj::Any; control::Image = Mat()) = predict(cobj, control)

function correct(cobj::Any, measurement::Image)
	return cpp_to_julia(jlopencv_cv_cv_KalmanFilter_cv_KalmanFilter_correct(julia_to_cpp(cobj),julia_to_cpp(measurement)))
end
correct(cobj::Any, measurement::Image; ) = correct(cobj, measurement)

function correct(cobj::Any, measurement::Image)
	return cpp_to_julia(jlopencv_cv_cv_KalmanFilter_cv_KalmanFilter_correct(julia_to_cpp(cobj),julia_to_cpp(measurement)))
end
correct(cobj::Any, measurement::Image; ) = correct(cobj, measurement)
function Base.getproperty(m::DenseOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DenseOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function calc(cobj::Any, I0::Image, I1::Image, flow::Image)
	return cpp_to_julia(jlopencv_cv_cv_DenseOpticalFlow_cv_DenseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow)))
end
calc(cobj::Any, I0::Image, I1::Image, flow::Image; ) = calc(cobj, I0, I1, flow)

function calc(cobj::Any, I0::UMat, I1::UMat, flow::UMat)
	return cpp_to_julia(jlopencv_cv_cv_DenseOpticalFlow_cv_DenseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow)))
end
calc(cobj::Any, I0::UMat, I1::UMat, flow::UMat; ) = calc(cobj, I0, I1, flow)

function collectGarbage(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DenseOpticalFlow_cv_DenseOpticalFlow_collectGarbage(julia_to_cpp(cobj)))
end
collectGarbage(cobj::Any; ) = collectGarbage(cobj)
function Base.getproperty(m::SparseOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SparseOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function calc(cobj::Any, prevImg::Image, nextImg::Image, prevPts::Image, nextPts::Image, status::Image, err::Image)
	return cpp_to_julia(jlopencv_cv_cv_SparseOpticalFlow_cv_SparseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err)))
end
calc(cobj::Any, prevImg::Image, nextImg::Image, prevPts::Image, nextPts::Image; status::Image = _Mat(), err::Image = Mat()) = calc(cobj, prevImg, nextImg, prevPts, nextPts, status, err)

function calc(cobj::Any, prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat, status::UMat, err::UMat)
	return cpp_to_julia(jlopencv_cv_cv_SparseOpticalFlow_cv_SparseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err)))
end
calc(cobj::Any, prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat; status::UMat = UMat(), err::UMat = UMat()) = calc(cobj, prevImg, nextImg, prevPts, nextPts, status, err)
function Base.getproperty(m::FarnebackOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FarnebackOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getNumLevels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getNumLevels(julia_to_cpp(cobj)))
end
getNumLevels(cobj::Any; ) = getNumLevels(cobj)

function setNumLevels(cobj::Any, numLevels::Int32)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setNumLevels(julia_to_cpp(cobj),julia_to_cpp(numLevels)))
end
setNumLevels(cobj::Any, numLevels::Int32; ) = setNumLevels(cobj, numLevels)

function getPyrScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getPyrScale(julia_to_cpp(cobj)))
end
getPyrScale(cobj::Any; ) = getPyrScale(cobj)

function setPyrScale(cobj::Any, pyrScale::Float64)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setPyrScale(julia_to_cpp(cobj),julia_to_cpp(pyrScale)))
end
setPyrScale(cobj::Any, pyrScale::Float64; ) = setPyrScale(cobj, pyrScale)

function getFastPyramids(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getFastPyramids(julia_to_cpp(cobj)))
end
getFastPyramids(cobj::Any; ) = getFastPyramids(cobj)

function setFastPyramids(cobj::Any, fastPyramids::Bool)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setFastPyramids(julia_to_cpp(cobj),julia_to_cpp(fastPyramids)))
end
setFastPyramids(cobj::Any, fastPyramids::Bool; ) = setFastPyramids(cobj, fastPyramids)

function getWinSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getWinSize(julia_to_cpp(cobj)))
end
getWinSize(cobj::Any; ) = getWinSize(cobj)

function setWinSize(cobj::Any, winSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setWinSize(julia_to_cpp(cobj),julia_to_cpp(winSize)))
end
setWinSize(cobj::Any, winSize::Int32; ) = setWinSize(cobj, winSize)

function getNumIters(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getNumIters(julia_to_cpp(cobj)))
end
getNumIters(cobj::Any; ) = getNumIters(cobj)

function setNumIters(cobj::Any, numIters::Int32)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setNumIters(julia_to_cpp(cobj),julia_to_cpp(numIters)))
end
setNumIters(cobj::Any, numIters::Int32; ) = setNumIters(cobj, numIters)

function getPolyN(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getPolyN(julia_to_cpp(cobj)))
end
getPolyN(cobj::Any; ) = getPolyN(cobj)

function setPolyN(cobj::Any, polyN::Int32)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setPolyN(julia_to_cpp(cobj),julia_to_cpp(polyN)))
end
setPolyN(cobj::Any, polyN::Int32; ) = setPolyN(cobj, polyN)

function getPolySigma(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getPolySigma(julia_to_cpp(cobj)))
end
getPolySigma(cobj::Any; ) = getPolySigma(cobj)

function setPolySigma(cobj::Any, polySigma::Float64)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setPolySigma(julia_to_cpp(cobj),julia_to_cpp(polySigma)))
end
setPolySigma(cobj::Any, polySigma::Float64; ) = setPolySigma(cobj, polySigma)

function getFlags(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getFlags(julia_to_cpp(cobj)))
end
getFlags(cobj::Any; ) = getFlags(cobj)

function setFlags(cobj::Any, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setFlags(julia_to_cpp(cobj),julia_to_cpp(flags)))
end
setFlags(cobj::Any, flags::Int32; ) = setFlags(cobj, flags)
function Base.getproperty(m::VariationalRefinement, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VariationalRefinement, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function calcUV(cobj::Any, I0::Image, I1::Image, flow_u::Image, flow_v::Image)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_calcUV(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow_u),julia_to_cpp(flow_v)))
end
calcUV(cobj::Any, I0::Image, I1::Image, flow_u::Image, flow_v::Image; ) = calcUV(cobj, I0, I1, flow_u, flow_v)

function calcUV(cobj::Any, I0::UMat, I1::UMat, flow_u::UMat, flow_v::UMat)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_calcUV(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow_u),julia_to_cpp(flow_v)))
end
calcUV(cobj::Any, I0::UMat, I1::UMat, flow_u::UMat, flow_v::UMat; ) = calcUV(cobj, I0, I1, flow_u, flow_v)

function getFixedPointIterations(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getFixedPointIterations(julia_to_cpp(cobj)))
end
getFixedPointIterations(cobj::Any; ) = getFixedPointIterations(cobj)

function setFixedPointIterations(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setFixedPointIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setFixedPointIterations(cobj::Any, val::Int32; ) = setFixedPointIterations(cobj, val)

function getSorIterations(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getSorIterations(julia_to_cpp(cobj)))
end
getSorIterations(cobj::Any; ) = getSorIterations(cobj)

function setSorIterations(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setSorIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setSorIterations(cobj::Any, val::Int32; ) = setSorIterations(cobj, val)

function getOmega(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getOmega(julia_to_cpp(cobj)))
end
getOmega(cobj::Any; ) = getOmega(cobj)

function setOmega(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setOmega(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setOmega(cobj::Any, val::Float32; ) = setOmega(cobj, val)

function getAlpha(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getAlpha(julia_to_cpp(cobj)))
end
getAlpha(cobj::Any; ) = getAlpha(cobj)

function setAlpha(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setAlpha(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setAlpha(cobj::Any, val::Float32; ) = setAlpha(cobj, val)

function getDelta(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getDelta(julia_to_cpp(cobj)))
end
getDelta(cobj::Any; ) = getDelta(cobj)

function setDelta(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setDelta(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setDelta(cobj::Any, val::Float32; ) = setDelta(cobj, val)

function getGamma(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getGamma(julia_to_cpp(cobj)))
end
getGamma(cobj::Any; ) = getGamma(cobj)

function setGamma(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setGamma(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setGamma(cobj::Any, val::Float32; ) = setGamma(cobj, val)
function Base.getproperty(m::DISOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DISOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getFinestScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getFinestScale(julia_to_cpp(cobj)))
end
getFinestScale(cobj::Any; ) = getFinestScale(cobj)

function setFinestScale(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setFinestScale(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setFinestScale(cobj::Any, val::Int32; ) = setFinestScale(cobj, val)

function getPatchSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getPatchSize(julia_to_cpp(cobj)))
end
getPatchSize(cobj::Any; ) = getPatchSize(cobj)

function setPatchSize(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setPatchSize(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setPatchSize(cobj::Any, val::Int32; ) = setPatchSize(cobj, val)

function getPatchStride(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getPatchStride(julia_to_cpp(cobj)))
end
getPatchStride(cobj::Any; ) = getPatchStride(cobj)

function setPatchStride(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setPatchStride(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setPatchStride(cobj::Any, val::Int32; ) = setPatchStride(cobj, val)

function getGradientDescentIterations(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getGradientDescentIterations(julia_to_cpp(cobj)))
end
getGradientDescentIterations(cobj::Any; ) = getGradientDescentIterations(cobj)

function setGradientDescentIterations(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setGradientDescentIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setGradientDescentIterations(cobj::Any, val::Int32; ) = setGradientDescentIterations(cobj, val)

function getVariationalRefinementIterations(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementIterations(julia_to_cpp(cobj)))
end
getVariationalRefinementIterations(cobj::Any; ) = getVariationalRefinementIterations(cobj)

function setVariationalRefinementIterations(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setVariationalRefinementIterations(cobj::Any, val::Int32; ) = setVariationalRefinementIterations(cobj, val)

function getVariationalRefinementAlpha(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementAlpha(julia_to_cpp(cobj)))
end
getVariationalRefinementAlpha(cobj::Any; ) = getVariationalRefinementAlpha(cobj)

function setVariationalRefinementAlpha(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementAlpha(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setVariationalRefinementAlpha(cobj::Any, val::Float32; ) = setVariationalRefinementAlpha(cobj, val)

function getVariationalRefinementDelta(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementDelta(julia_to_cpp(cobj)))
end
getVariationalRefinementDelta(cobj::Any; ) = getVariationalRefinementDelta(cobj)

function setVariationalRefinementDelta(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementDelta(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setVariationalRefinementDelta(cobj::Any, val::Float32; ) = setVariationalRefinementDelta(cobj, val)

function getVariationalRefinementGamma(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementGamma(julia_to_cpp(cobj)))
end
getVariationalRefinementGamma(cobj::Any; ) = getVariationalRefinementGamma(cobj)

function setVariationalRefinementGamma(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementGamma(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setVariationalRefinementGamma(cobj::Any, val::Float32; ) = setVariationalRefinementGamma(cobj, val)

function getUseMeanNormalization(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getUseMeanNormalization(julia_to_cpp(cobj)))
end
getUseMeanNormalization(cobj::Any; ) = getUseMeanNormalization(cobj)

function setUseMeanNormalization(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setUseMeanNormalization(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setUseMeanNormalization(cobj::Any, val::Bool; ) = setUseMeanNormalization(cobj, val)

function getUseSpatialPropagation(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getUseSpatialPropagation(julia_to_cpp(cobj)))
end
getUseSpatialPropagation(cobj::Any; ) = getUseSpatialPropagation(cobj)

function setUseSpatialPropagation(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setUseSpatialPropagation(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setUseSpatialPropagation(cobj::Any, val::Bool; ) = setUseSpatialPropagation(cobj, val)
function Base.getproperty(m::SparsePyrLKOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SparsePyrLKOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getWinSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getWinSize(julia_to_cpp(cobj)))
end
getWinSize(cobj::Any; ) = getWinSize(cobj)

function setWinSize(cobj::Any, winSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setWinSize(julia_to_cpp(cobj),julia_to_cpp(winSize)))
end
setWinSize(cobj::Any, winSize::Size; ) = setWinSize(cobj, winSize)

function getMaxLevel(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getMaxLevel(julia_to_cpp(cobj)))
end
getMaxLevel(cobj::Any; ) = getMaxLevel(cobj)

function setMaxLevel(cobj::Any, maxLevel::Int32)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setMaxLevel(julia_to_cpp(cobj),julia_to_cpp(maxLevel)))
end
setMaxLevel(cobj::Any, maxLevel::Int32; ) = setMaxLevel(cobj, maxLevel)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getTermCriteria(julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, crit::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(crit)))
end
setTermCriteria(cobj::Any, crit::TermCriteria; ) = setTermCriteria(cobj, crit)

function getFlags(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getFlags(julia_to_cpp(cobj)))
end
getFlags(cobj::Any; ) = getFlags(cobj)

function setFlags(cobj::Any, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setFlags(julia_to_cpp(cobj),julia_to_cpp(flags)))
end
setFlags(cobj::Any, flags::Int32; ) = setFlags(cobj, flags)

function getMinEigThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getMinEigThreshold(julia_to_cpp(cobj)))
end
getMinEigThreshold(cobj::Any; ) = getMinEigThreshold(cobj)

function setMinEigThreshold(cobj::Any, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setMinEigThreshold(julia_to_cpp(cobj),julia_to_cpp(minEigThreshold)))
end
setMinEigThreshold(cobj::Any, minEigThreshold::Float64; ) = setMinEigThreshold(cobj, minEigThreshold)
function Base.getproperty(m::BackgroundSubtractor, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BackgroundSubtractor, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function apply(cobj::Any, image::Image, fgmask::Image, learningRate::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractor_cv_BackgroundSubtractor_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::Any, image::Image; fgmask::Image = _Mat(), learningRate::Float64 = -1) = apply(cobj, image, fgmask, learningRate)

function apply(cobj::Any, image::UMat, fgmask::UMat, learningRate::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractor_cv_BackgroundSubtractor_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::Any, image::UMat; fgmask::UMat = UMat(), learningRate::Float64 = -1) = apply(cobj, image, fgmask, learningRate)

function getBackgroundImage(cobj::Any, backgroundImage::Image)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractor_cv_BackgroundSubtractor_getBackgroundImage(julia_to_cpp(cobj),julia_to_cpp(backgroundImage)))
end
getBackgroundImage(cobj::Any; backgroundImage::Image = _Mat()) = getBackgroundImage(cobj, backgroundImage)

function getBackgroundImage(cobj::Any, backgroundImage::UMat)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractor_cv_BackgroundSubtractor_getBackgroundImage(julia_to_cpp(cobj),julia_to_cpp(backgroundImage)))
end
getBackgroundImage(cobj::Any; backgroundImage::UMat = UMat()) = getBackgroundImage(cobj, backgroundImage)
function Base.getproperty(m::BackgroundSubtractorMOG2, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BackgroundSubtractorMOG2, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getHistory(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getHistory(julia_to_cpp(cobj)))
end
getHistory(cobj::Any; ) = getHistory(cobj)

function setHistory(cobj::Any, history::Int32)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setHistory(julia_to_cpp(cobj),julia_to_cpp(history)))
end
setHistory(cobj::Any, history::Int32; ) = setHistory(cobj, history)

function getNMixtures(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getNMixtures(julia_to_cpp(cobj)))
end
getNMixtures(cobj::Any; ) = getNMixtures(cobj)

function setNMixtures(cobj::Any, nmixtures::Int32)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setNMixtures(julia_to_cpp(cobj),julia_to_cpp(nmixtures)))
end
setNMixtures(cobj::Any, nmixtures::Int32; ) = setNMixtures(cobj, nmixtures)

function getBackgroundRatio(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getBackgroundRatio(julia_to_cpp(cobj)))
end
getBackgroundRatio(cobj::Any; ) = getBackgroundRatio(cobj)

function setBackgroundRatio(cobj::Any, ratio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setBackgroundRatio(julia_to_cpp(cobj),julia_to_cpp(ratio)))
end
setBackgroundRatio(cobj::Any, ratio::Float64; ) = setBackgroundRatio(cobj, ratio)

function getVarThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarThreshold(julia_to_cpp(cobj)))
end
getVarThreshold(cobj::Any; ) = getVarThreshold(cobj)

function setVarThreshold(cobj::Any, varThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarThreshold(julia_to_cpp(cobj),julia_to_cpp(varThreshold)))
end
setVarThreshold(cobj::Any, varThreshold::Float64; ) = setVarThreshold(cobj, varThreshold)

function getVarThresholdGen(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarThresholdGen(julia_to_cpp(cobj)))
end
getVarThresholdGen(cobj::Any; ) = getVarThresholdGen(cobj)

function setVarThresholdGen(cobj::Any, varThresholdGen::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarThresholdGen(julia_to_cpp(cobj),julia_to_cpp(varThresholdGen)))
end
setVarThresholdGen(cobj::Any, varThresholdGen::Float64; ) = setVarThresholdGen(cobj, varThresholdGen)

function getVarInit(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarInit(julia_to_cpp(cobj)))
end
getVarInit(cobj::Any; ) = getVarInit(cobj)

function setVarInit(cobj::Any, varInit::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarInit(julia_to_cpp(cobj),julia_to_cpp(varInit)))
end
setVarInit(cobj::Any, varInit::Float64; ) = setVarInit(cobj, varInit)

function getVarMin(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarMin(julia_to_cpp(cobj)))
end
getVarMin(cobj::Any; ) = getVarMin(cobj)

function setVarMin(cobj::Any, varMin::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarMin(julia_to_cpp(cobj),julia_to_cpp(varMin)))
end
setVarMin(cobj::Any, varMin::Float64; ) = setVarMin(cobj, varMin)

function getVarMax(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarMax(julia_to_cpp(cobj)))
end
getVarMax(cobj::Any; ) = getVarMax(cobj)

function setVarMax(cobj::Any, varMax::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarMax(julia_to_cpp(cobj),julia_to_cpp(varMax)))
end
setVarMax(cobj::Any, varMax::Float64; ) = setVarMax(cobj, varMax)

function getComplexityReductionThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getComplexityReductionThreshold(julia_to_cpp(cobj)))
end
getComplexityReductionThreshold(cobj::Any; ) = getComplexityReductionThreshold(cobj)

function setComplexityReductionThreshold(cobj::Any, ct::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setComplexityReductionThreshold(julia_to_cpp(cobj),julia_to_cpp(ct)))
end
setComplexityReductionThreshold(cobj::Any, ct::Float64; ) = setComplexityReductionThreshold(cobj, ct)

function getDetectShadows(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getDetectShadows(julia_to_cpp(cobj)))
end
getDetectShadows(cobj::Any; ) = getDetectShadows(cobj)

function setDetectShadows(cobj::Any, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setDetectShadows(julia_to_cpp(cobj),julia_to_cpp(detectShadows)))
end
setDetectShadows(cobj::Any, detectShadows::Bool; ) = setDetectShadows(cobj, detectShadows)

function getShadowValue(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getShadowValue(julia_to_cpp(cobj)))
end
getShadowValue(cobj::Any; ) = getShadowValue(cobj)

function setShadowValue(cobj::Any, value::Int32)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setShadowValue(julia_to_cpp(cobj),julia_to_cpp(value)))
end
setShadowValue(cobj::Any, value::Int32; ) = setShadowValue(cobj, value)

function getShadowThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getShadowThreshold(julia_to_cpp(cobj)))
end
getShadowThreshold(cobj::Any; ) = getShadowThreshold(cobj)

function setShadowThreshold(cobj::Any, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setShadowThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setShadowThreshold(cobj::Any, threshold::Float64; ) = setShadowThreshold(cobj, threshold)

function apply(cobj::Any, image::Image, fgmask::Image, learningRate::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::Any, image::Image; fgmask::Image = _Mat(), learningRate::Float64 = -1) = apply(cobj, image, fgmask, learningRate)

function apply(cobj::Any, image::UMat, fgmask::UMat, learningRate::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::Any, image::UMat; fgmask::UMat = UMat(), learningRate::Float64 = -1) = apply(cobj, image, fgmask, learningRate)
function Base.getproperty(m::BackgroundSubtractorKNN, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BackgroundSubtractorKNN, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getHistory(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getHistory(julia_to_cpp(cobj)))
end
getHistory(cobj::Any; ) = getHistory(cobj)

function setHistory(cobj::Any, history::Int32)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setHistory(julia_to_cpp(cobj),julia_to_cpp(history)))
end
setHistory(cobj::Any, history::Int32; ) = setHistory(cobj, history)

function getNSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getNSamples(julia_to_cpp(cobj)))
end
getNSamples(cobj::Any; ) = getNSamples(cobj)

function setNSamples(cobj::Any, _nN::Int32)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setNSamples(julia_to_cpp(cobj),julia_to_cpp(_nN)))
end
setNSamples(cobj::Any, _nN::Int32; ) = setNSamples(cobj, _nN)

function getDist2Threshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getDist2Threshold(julia_to_cpp(cobj)))
end
getDist2Threshold(cobj::Any; ) = getDist2Threshold(cobj)

function setDist2Threshold(cobj::Any, _dist2Threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setDist2Threshold(julia_to_cpp(cobj),julia_to_cpp(_dist2Threshold)))
end
setDist2Threshold(cobj::Any, _dist2Threshold::Float64; ) = setDist2Threshold(cobj, _dist2Threshold)

function getkNNSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getkNNSamples(julia_to_cpp(cobj)))
end
getkNNSamples(cobj::Any; ) = getkNNSamples(cobj)

function setkNNSamples(cobj::Any, _nkNN::Int32)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setkNNSamples(julia_to_cpp(cobj),julia_to_cpp(_nkNN)))
end
setkNNSamples(cobj::Any, _nkNN::Int32; ) = setkNNSamples(cobj, _nkNN)

function getDetectShadows(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getDetectShadows(julia_to_cpp(cobj)))
end
getDetectShadows(cobj::Any; ) = getDetectShadows(cobj)

function setDetectShadows(cobj::Any, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setDetectShadows(julia_to_cpp(cobj),julia_to_cpp(detectShadows)))
end
setDetectShadows(cobj::Any, detectShadows::Bool; ) = setDetectShadows(cobj, detectShadows)

function getShadowValue(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getShadowValue(julia_to_cpp(cobj)))
end
getShadowValue(cobj::Any; ) = getShadowValue(cobj)

function setShadowValue(cobj::Any, value::Int32)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setShadowValue(julia_to_cpp(cobj),julia_to_cpp(value)))
end
setShadowValue(cobj::Any, value::Int32; ) = setShadowValue(cobj, value)

function getShadowThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getShadowThreshold(julia_to_cpp(cobj)))
end
getShadowThreshold(cobj::Any; ) = getShadowThreshold(cobj)

function setShadowThreshold(cobj::Any, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setShadowThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setShadowThreshold(cobj::Any, threshold::Float64; ) = setShadowThreshold(cobj, threshold)
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

function empty(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_empty(julia_to_cpp(cobj)))
end
empty(cobj::Any; ) = empty(cobj)

function load(cobj::Any, filename::String)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_load(julia_to_cpp(cobj),julia_to_cpp(filename)))
end
load(cobj::Any, filename::String; ) = load(cobj, filename)

function read(cobj::Any, node::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_read(julia_to_cpp(cobj),julia_to_cpp(node)))
end
read(cobj::Any, node::FileNode; ) = read(cobj, node)

function detectMultiScale(cobj::Any, image::Image, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale(cobj::Any, image::Image; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size()) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function detectMultiScale(cobj::Any, image::UMat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale(cobj::Any, image::UMat; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size()) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function detectMultiScale(cobj::Any, image::Image, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale(cobj::Any, image::Image; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size()) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function detectMultiScale(cobj::Any, image::UMat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale(cobj::Any, image::UMat; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size()) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function detectMultiScale(cobj::Any, image::Image, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size, outputRejectLevels::Bool)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize),julia_to_cpp(outputRejectLevels)))
end
detectMultiScale(cobj::Any, image::Image; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size(), outputRejectLevels::Bool = false) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize, outputRejectLevels)

function detectMultiScale(cobj::Any, image::UMat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size, outputRejectLevels::Bool)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize),julia_to_cpp(outputRejectLevels)))
end
detectMultiScale(cobj::Any, image::UMat; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size(), outputRejectLevels::Bool = false) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize, outputRejectLevels)

function isOldFormatCascade(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_isOldFormatCascade(julia_to_cpp(cobj)))
end
isOldFormatCascade(cobj::Any; ) = isOldFormatCascade(cobj)

function getOriginalWindowSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_getOriginalWindowSize(julia_to_cpp(cobj)))
end
getOriginalWindowSize(cobj::Any; ) = getOriginalWindowSize(cobj)

function getFeatureType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_getFeatureType(julia_to_cpp(cobj)))
end
getFeatureType(cobj::Any; ) = getFeatureType(cobj)
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
        jlopencv_HOGDescriptor_set_winSize(m, julia_to_cpp(v, Size))
    end
    if s==:blockSize
        jlopencv_HOGDescriptor_set_blockSize(m, julia_to_cpp(v, Size))
    end
    if s==:blockStride
        jlopencv_HOGDescriptor_set_blockStride(m, julia_to_cpp(v, Size))
    end
    if s==:cellSize
        jlopencv_HOGDescriptor_set_cellSize(m, julia_to_cpp(v, Size))
    end
    if s==:nbins
        jlopencv_HOGDescriptor_set_nbins(m, julia_to_cpp(v, Int32))
    end
    if s==:derivAperture
        jlopencv_HOGDescriptor_set_derivAperture(m, julia_to_cpp(v, Int32))
    end
    if s==:winSigma
        jlopencv_HOGDescriptor_set_winSigma(m, julia_to_cpp(v, Float64))
    end
    if s==:histogramNormType
        jlopencv_HOGDescriptor_set_histogramNormType(m, julia_to_cpp(v, HOGDescriptor_HistogramNormType))
    end
    if s==:L2HysThreshold
        jlopencv_HOGDescriptor_set_L2HysThreshold(m, julia_to_cpp(v, Float64))
    end
    if s==:gammaCorrection
        jlopencv_HOGDescriptor_set_gammaCorrection(m, julia_to_cpp(v, Bool))
    end
    if s==:svmDetector
        jlopencv_HOGDescriptor_set_svmDetector(m, julia_to_cpp(v, vector_float))
    end
    if s==:nlevels
        jlopencv_HOGDescriptor_set_nlevels(m, julia_to_cpp(v, Int32))
    end
    if s==:signedGradient
        jlopencv_HOGDescriptor_set_signedGradient(m, julia_to_cpp(v, Bool))
    end
    return Base.setfield(m, s, v)
end

function getDescriptorSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_getDescriptorSize(julia_to_cpp(cobj)))
end
getDescriptorSize(cobj::Any; ) = getDescriptorSize(cobj)

function checkDetectorSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_checkDetectorSize(julia_to_cpp(cobj)))
end
checkDetectorSize(cobj::Any; ) = checkDetectorSize(cobj)

function getWinSigma(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_getWinSigma(julia_to_cpp(cobj)))
end
getWinSigma(cobj::Any; ) = getWinSigma(cobj)

function setSVMDetector(cobj::Any, svmdetector::Image)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_setSVMDetector(julia_to_cpp(cobj),julia_to_cpp(svmdetector)))
end
setSVMDetector(cobj::Any, svmdetector::Image; ) = setSVMDetector(cobj, svmdetector)

function setSVMDetector(cobj::Any, svmdetector::UMat)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_setSVMDetector(julia_to_cpp(cobj),julia_to_cpp(svmdetector)))
end
setSVMDetector(cobj::Any, svmdetector::UMat; ) = setSVMDetector(cobj, svmdetector)

function load(cobj::Any, filename::String, objname::String)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_load(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(objname)))
end
load(cobj::Any, filename::String; objname::String = "") = load(cobj, filename, objname)

function save(cobj::Any, filename::String, objname::String)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_save(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(objname)))
end
save(cobj::Any, filename::String; objname::String = "") = save(cobj, filename, objname)

function compute(cobj::Any, img::Image, winStride::Size, padding::Size, locations::Array{Point{Int32}{Int32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_compute(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(locations)))
end
compute(cobj::Any, img::Image; winStride::Size = Size(), padding::Size = Size(), locations::Array{Point{Int32}{Int32}, 1} = Array{Point{Int32}{Int32}, 1}()) = compute(cobj, img, winStride, padding, locations)

function compute(cobj::Any, img::UMat, winStride::Size, padding::Size, locations::Array{Point{Int32}{Int32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_compute(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(locations)))
end
compute(cobj::Any, img::UMat; winStride::Size = Size(), padding::Size = Size(), locations::Array{Point{Int32}{Int32}, 1} = Array{Point{Int32}{Int32}, 1}()) = compute(cobj, img, winStride, padding, locations)

function detect(cobj::Any, img::Image, hitThreshold::Float64, winStride::Size, padding::Size, searchLocations::Array{Point{Int32}{Int32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(searchLocations)))
end
detect(cobj::Any, img::Image; hitThreshold::Float64 = 0, winStride::Size = Size(), padding::Size = Size(), searchLocations::Array{Point{Int32}{Int32}, 1} = Array{Point{Int32}{Int32}, 1}()) = detect(cobj, img, hitThreshold, winStride, padding, searchLocations)

function detect(cobj::Any, img::UMat, hitThreshold::Float64, winStride::Size, padding::Size, searchLocations::Array{Point{Int32}{Int32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(searchLocations)))
end
detect(cobj::Any, img::UMat; hitThreshold::Float64 = 0, winStride::Size = Size(), padding::Size = Size(), searchLocations::Array{Point{Int32}{Int32}, 1} = Array{Point{Int32}{Int32}, 1}()) = detect(cobj, img, hitThreshold, winStride, padding, searchLocations)

function detectMultiScale(cobj::Any, img::Image, hitThreshold::Float64, winStride::Size, padding::Size, scale::Float64, finalThreshold::Float64, useMeanshiftGrouping::Bool)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(scale),julia_to_cpp(finalThreshold),julia_to_cpp(useMeanshiftGrouping)))
end
detectMultiScale(cobj::Any, img::Image; hitThreshold::Float64 = 0, winStride::Size = Size(), padding::Size = Size(), scale::Float64 = 1.05, finalThreshold::Float64 = 2.0, useMeanshiftGrouping::Bool = false) = detectMultiScale(cobj, img, hitThreshold, winStride, padding, scale, finalThreshold, useMeanshiftGrouping)

function detectMultiScale(cobj::Any, img::UMat, hitThreshold::Float64, winStride::Size, padding::Size, scale::Float64, finalThreshold::Float64, useMeanshiftGrouping::Bool)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(scale),julia_to_cpp(finalThreshold),julia_to_cpp(useMeanshiftGrouping)))
end
detectMultiScale(cobj::Any, img::UMat; hitThreshold::Float64 = 0, winStride::Size = Size(), padding::Size = Size(), scale::Float64 = 1.05, finalThreshold::Float64 = 2.0, useMeanshiftGrouping::Bool = false) = detectMultiScale(cobj, img, hitThreshold, winStride, padding, scale, finalThreshold, useMeanshiftGrouping)

function computeGradient(cobj::Any, img::Image, grad::Image, angleOfs::Image, paddingTL::Size, paddingBR::Size)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_computeGradient(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(grad),julia_to_cpp(angleOfs),julia_to_cpp(paddingTL),julia_to_cpp(paddingBR)))
end
computeGradient(cobj::Any, img::Image, grad::Image, angleOfs::Image; paddingTL::Size = Size(), paddingBR::Size = Size()) = computeGradient(cobj, img, grad, angleOfs, paddingTL, paddingBR)

function computeGradient(cobj::Any, img::UMat, grad::UMat, angleOfs::UMat, paddingTL::Size, paddingBR::Size)
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_cv_HOGDescriptor_computeGradient(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(grad),julia_to_cpp(angleOfs),julia_to_cpp(paddingTL),julia_to_cpp(paddingBR)))
end
computeGradient(cobj::Any, img::UMat, grad::UMat, angleOfs::UMat; paddingTL::Size = Size(), paddingBR::Size = Size()) = computeGradient(cobj, img, grad, angleOfs, paddingTL, paddingBR)
function Base.getproperty(m::QRCodeDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::QRCodeDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setEpsX(cobj::Any, epsX::Float64)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_setEpsX(julia_to_cpp(cobj),julia_to_cpp(epsX)))
end
setEpsX(cobj::Any, epsX::Float64; ) = setEpsX(cobj, epsX)

function setEpsY(cobj::Any, epsY::Float64)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_setEpsY(julia_to_cpp(cobj),julia_to_cpp(epsY)))
end
setEpsY(cobj::Any, epsY::Float64; ) = setEpsY(cobj, epsY)

function detect(cobj::Any, img::Image, points::Image)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detect(cobj::Any, img::Image; points::Image = _Mat()) = detect(cobj, img, points)

function detect(cobj::Any, img::UMat, points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detect(cobj::Any, img::UMat; points::UMat = UMat()) = detect(cobj, img, points)

function decode(cobj::Any, img::Image, points::Image, straight_qrcode::Image)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_decode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
decode(cobj::Any, img::Image, points::Image; straight_qrcode::Image = Mat()) = decode(cobj, img, points, straight_qrcode)

function decode(cobj::Any, img::UMat, points::UMat, straight_qrcode::UMat)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_decode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
decode(cobj::Any, img::UMat, points::UMat; straight_qrcode::UMat = UMat()) = decode(cobj, img, points, straight_qrcode)

function detectAndDecode(cobj::Any, img::Image, points::Image, straight_qrcode::Image)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectAndDecode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
detectAndDecode(cobj::Any, img::Image; points::Image = Mat(), straight_qrcode::Image = Mat()) = detectAndDecode(cobj, img, points, straight_qrcode)

function detectAndDecode(cobj::Any, img::UMat, points::UMat, straight_qrcode::UMat)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectAndDecode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
detectAndDecode(cobj::Any, img::UMat; points::UMat = UMat(), straight_qrcode::UMat = UMat()) = detectAndDecode(cobj, img, points, straight_qrcode)

function detectMulti(cobj::Any, img::Image, points::Image)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detectMulti(cobj::Any, img::Image; points::Image = _Mat()) = detectMulti(cobj, img, points)

function detectMulti(cobj::Any, img::UMat, points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detectMulti(cobj::Any, img::UMat; points::UMat = UMat()) = detectMulti(cobj, img, points)

function decodeMulti(cobj::Any, img::Image, points::Image, straight_qrcode::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_decodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
decodeMulti(cobj::Any, img::Image, points::Image; straight_qrcode::Array{Image, 1} = vector_Mat()) = decodeMulti(cobj, img, points, straight_qrcode)

function decodeMulti(cobj::Any, img::UMat, points::UMat, straight_qrcode::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_decodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
decodeMulti(cobj::Any, img::UMat, points::UMat; straight_qrcode::Array{UMat, 1} = vector_UMat()) = decodeMulti(cobj, img, points, straight_qrcode)

function detectAndDecodeMulti(cobj::Any, img::Image, points::Image, straight_qrcode::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectAndDecodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
detectAndDecodeMulti(cobj::Any, img::Image; points::Image = Mat(), straight_qrcode::Array{Image, 1} = vector_Mat()) = detectAndDecodeMulti(cobj, img, points, straight_qrcode)

function detectAndDecodeMulti(cobj::Any, img::UMat, points::UMat, straight_qrcode::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectAndDecodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
detectAndDecodeMulti(cobj::Any, img::UMat; points::UMat = UMat(), straight_qrcode::Array{UMat, 1} = vector_UMat()) = detectAndDecodeMulti(cobj, img, points, straight_qrcode)
function Base.getproperty(m::VideoCapture, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoCapture, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function open(cobj::Any, filename::String, apiPreference::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference)))
end
open(cobj::Any, filename::String; apiPreference::Int32 = CAP_ANY) = open(cobj, filename, apiPreference)

function open(cobj::Any, index::Int32, apiPreference::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(index),julia_to_cpp(apiPreference)))
end
open(cobj::Any, index::Int32; apiPreference::Int32 = CAP_ANY) = open(cobj, index, apiPreference)

function isOpened(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_isOpened(julia_to_cpp(cobj)))
end
isOpened(cobj::Any; ) = isOpened(cobj)

function release(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_release(julia_to_cpp(cobj)))
end
release(cobj::Any; ) = release(cobj)

function grab(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_grab(julia_to_cpp(cobj)))
end
grab(cobj::Any; ) = grab(cobj)

function retrieve(cobj::Any, image::Image, flag::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_retrieve(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(flag)))
end
retrieve(cobj::Any; image::Image = _Mat(), flag::Int32 = 0) = retrieve(cobj, image, flag)

function retrieve(cobj::Any, image::UMat, flag::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_retrieve(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(flag)))
end
retrieve(cobj::Any; image::UMat = UMat(), flag::Int32 = 0) = retrieve(cobj, image, flag)

function read(cobj::Any, image::Image)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_read(julia_to_cpp(cobj),julia_to_cpp(image)))
end
read(cobj::Any; image::Image = _Mat()) = read(cobj, image)

function read(cobj::Any, image::UMat)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_read(julia_to_cpp(cobj),julia_to_cpp(image)))
end
read(cobj::Any; image::UMat = UMat()) = read(cobj, image)

function set(cobj::Any, propId::Int32, value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_set(julia_to_cpp(cobj),julia_to_cpp(propId),julia_to_cpp(value)))
end
set(cobj::Any, propId::Int32, value::Float64; ) = set(cobj, propId, value)

function get(cobj::Any, propId::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_get(julia_to_cpp(cobj),julia_to_cpp(propId)))
end
get(cobj::Any, propId::Int32; ) = get(cobj, propId)

function getBackendName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_getBackendName(julia_to_cpp(cobj)))
end
getBackendName(cobj::Any; ) = getBackendName(cobj)

function setExceptionMode(cobj::Any, enable::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_setExceptionMode(julia_to_cpp(cobj),julia_to_cpp(enable)))
end
setExceptionMode(cobj::Any, enable::Bool; ) = setExceptionMode(cobj, enable)

function getExceptionMode(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_getExceptionMode(julia_to_cpp(cobj)))
end
getExceptionMode(cobj::Any; ) = getExceptionMode(cobj)
function Base.getproperty(m::VideoWriter, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoWriter, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function open(cobj::Any, filename::String, fourcc::Int32, fps::Float64, frameSize::Size, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::Any, filename::String, fourcc::Int32, fps::Float64, frameSize::Size; isColor::Bool = true) = open(cobj, filename, fourcc, fps, frameSize, isColor)

function open(cobj::Any, filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::Any, filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size; isColor::Bool = true) = open(cobj, filename, apiPreference, fourcc, fps, frameSize, isColor)

function isOpened(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_isOpened(julia_to_cpp(cobj)))
end
isOpened(cobj::Any; ) = isOpened(cobj)

function release(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_release(julia_to_cpp(cobj)))
end
release(cobj::Any; ) = release(cobj)

function write(cobj::Any, image::Image)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_write(julia_to_cpp(cobj),julia_to_cpp(image)))
end
write(cobj::Any, image::Image; ) = write(cobj, image)

function write(cobj::Any, image::UMat)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_write(julia_to_cpp(cobj),julia_to_cpp(image)))
end
write(cobj::Any, image::UMat; ) = write(cobj, image)

function set(cobj::Any, propId::Int32, value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_set(julia_to_cpp(cobj),julia_to_cpp(propId),julia_to_cpp(value)))
end
set(cobj::Any, propId::Int32, value::Float64; ) = set(cobj, propId, value)

function get(cobj::Any, propId::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_get(julia_to_cpp(cobj),julia_to_cpp(propId)))
end
get(cobj::Any, propId::Int32; ) = get(cobj, propId)

function getBackendName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_getBackendName(julia_to_cpp(cobj)))
end
getBackendName(cobj::Any; ) = getBackendName(cobj)

function borderInterpolate(p::Int32, len::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_borderInterpolate(julia_to_cpp(p),julia_to_cpp(len),julia_to_cpp(borderType)))
end
borderInterpolate(p::Int32, len::Int32, borderType::Int32; ) = borderInterpolate(p, len, borderType)

function copyMakeBorder(src::Image, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32, dst::Image, value::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_copyMakeBorder(julia_to_cpp(src),julia_to_cpp(top),julia_to_cpp(bottom),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(borderType),julia_to_cpp(dst),julia_to_cpp(value)))
end
copyMakeBorder(src::Image, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32; dst::Image = _Mat(), value::Scalar = Scalar()) = copyMakeBorder(src, top, bottom, left, right, borderType, dst, value)

function copyMakeBorder(src::UMat, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32, dst::UMat, value::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_copyMakeBorder(julia_to_cpp(src),julia_to_cpp(top),julia_to_cpp(bottom),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(borderType),julia_to_cpp(dst),julia_to_cpp(value)))
end
copyMakeBorder(src::UMat, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32; dst::UMat = UMat(), value::Scalar = Scalar()) = copyMakeBorder(src, top, bottom, left, right, borderType, dst, value)

function add(src1::Image, src2::Image, dst::Image, mask::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_add(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
add(src1::Image, src2::Image; dst::Image = _Mat(), mask::Image = Mat(), dtype::Int32 = -1) = add(src1, src2, dst, mask, dtype)

function add(src1::UMat, src2::UMat, dst::UMat, mask::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_add(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
add(src1::UMat, src2::UMat; dst::UMat = UMat(), mask::UMat = UMat(), dtype::Int32 = -1) = add(src1, src2, dst, mask, dtype)

function subtract(src1::Image, src2::Image, dst::Image, mask::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_subtract(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
subtract(src1::Image, src2::Image; dst::Image = _Mat(), mask::Image = Mat(), dtype::Int32 = -1) = subtract(src1, src2, dst, mask, dtype)

function subtract(src1::UMat, src2::UMat, dst::UMat, mask::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_subtract(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
subtract(src1::UMat, src2::UMat; dst::UMat = UMat(), mask::UMat = UMat(), dtype::Int32 = -1) = subtract(src1, src2, dst, mask, dtype)

function multiply(src1::Image, src2::Image, dst::Image, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_multiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
multiply(src1::Image, src2::Image; dst::Image = _Mat(), scale::Float64 = 1, dtype::Int32 = -1) = multiply(src1, src2, dst, scale, dtype)

function multiply(src1::UMat, src2::UMat, dst::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_multiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
multiply(src1::UMat, src2::UMat; dst::UMat = UMat(), scale::Float64 = 1, dtype::Int32 = -1) = multiply(src1, src2, dst, scale, dtype)

function divide(src1::Image, src2::Image, dst::Image, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
divide(src1::Image, src2::Image; dst::Image = _Mat(), scale::Float64 = 1, dtype::Int32 = -1) = divide(src1, src2, dst, scale, dtype)

function divide(src1::UMat, src2::UMat, dst::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
divide(src1::UMat, src2::UMat; dst::UMat = UMat(), scale::Float64 = 1, dtype::Int32 = -1) = divide(src1, src2, dst, scale, dtype)

function divide(scale::Float64, src2::Image, dst::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(scale),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
divide(scale::Float64, src2::Image; dst::Image = _Mat(), dtype::Int32 = -1) = divide(scale, src2, dst, dtype)

function divide(scale::Float64, src2::UMat, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(scale),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
divide(scale::Float64, src2::UMat; dst::UMat = UMat(), dtype::Int32 = -1) = divide(scale, src2, dst, dtype)

function scaleAdd(src1::Image, alpha::Float64, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_scaleAdd(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(dst)))
end
scaleAdd(src1::Image, alpha::Float64, src2::Image; dst::Image = _Mat()) = scaleAdd(src1, alpha, src2, dst)

function scaleAdd(src1::UMat, alpha::Float64, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_scaleAdd(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(dst)))
end
scaleAdd(src1::UMat, alpha::Float64, src2::UMat; dst::UMat = UMat()) = scaleAdd(src1, alpha, src2, dst)

function addWeighted(src1::Image, alpha::Float64, src2::Image, beta::Float64, gamma::Float64, dst::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_addWeighted(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(beta),julia_to_cpp(gamma),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
addWeighted(src1::Image, alpha::Float64, src2::Image, beta::Float64, gamma::Float64; dst::Image = _Mat(), dtype::Int32 = -1) = addWeighted(src1, alpha, src2, beta, gamma, dst, dtype)

function addWeighted(src1::UMat, alpha::Float64, src2::UMat, beta::Float64, gamma::Float64, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_addWeighted(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(beta),julia_to_cpp(gamma),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
addWeighted(src1::UMat, alpha::Float64, src2::UMat, beta::Float64, gamma::Float64; dst::UMat = UMat(), dtype::Int32 = -1) = addWeighted(src1, alpha, src2, beta, gamma, dst, dtype)

function convertScaleAbs(src::Image, dst::Image, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_convertScaleAbs(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
convertScaleAbs(src::Image; dst::Image = _Mat(), alpha::Float64 = 1, beta::Float64 = 0) = convertScaleAbs(src, dst, alpha, beta)

function convertScaleAbs(src::UMat, dst::UMat, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_convertScaleAbs(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
convertScaleAbs(src::UMat; dst::UMat = UMat(), alpha::Float64 = 1, beta::Float64 = 0) = convertScaleAbs(src, dst, alpha, beta)

function convertFp16(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_convertFp16(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertFp16(src::Image; dst::Image = _Mat()) = convertFp16(src, dst)

function convertFp16(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_convertFp16(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertFp16(src::UMat; dst::UMat = UMat()) = convertFp16(src, dst)

function LUT(src::Image, lut::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_LUT(julia_to_cpp(src),julia_to_cpp(lut),julia_to_cpp(dst)))
end
LUT(src::Image, lut::Image; dst::Image = _Mat()) = LUT(src, lut, dst)

function LUT(src::UMat, lut::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_LUT(julia_to_cpp(src),julia_to_cpp(lut),julia_to_cpp(dst)))
end
LUT(src::UMat, lut::UMat; dst::UMat = UMat()) = LUT(src, lut, dst)

function sumElems(src::Image)
	return cpp_to_julia(jlopencv_cv_cv_sum(julia_to_cpp(src)))
end
sumElems(src::Image; ) = sumElems(src)

function sumElems(src::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sum(julia_to_cpp(src)))
end
sumElems(src::UMat; ) = sumElems(src)

function countNonZero(src::Image)
	return cpp_to_julia(jlopencv_cv_cv_countNonZero(julia_to_cpp(src)))
end
countNonZero(src::Image; ) = countNonZero(src)

function countNonZero(src::UMat)
	return cpp_to_julia(jlopencv_cv_cv_countNonZero(julia_to_cpp(src)))
end
countNonZero(src::UMat; ) = countNonZero(src)

function findNonZero(src::Image, idx::Image)
	return cpp_to_julia(jlopencv_cv_cv_findNonZero(julia_to_cpp(src),julia_to_cpp(idx)))
end
findNonZero(src::Image; idx::Image = _Mat()) = findNonZero(src, idx)

function findNonZero(src::UMat, idx::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findNonZero(julia_to_cpp(src),julia_to_cpp(idx)))
end
findNonZero(src::UMat; idx::UMat = UMat()) = findNonZero(src, idx)

function mean(src::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_mean(julia_to_cpp(src),julia_to_cpp(mask)))
end
mean(src::Image; mask::Image = Mat()) = mean(src, mask)

function mean(src::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_mean(julia_to_cpp(src),julia_to_cpp(mask)))
end
mean(src::UMat; mask::UMat = UMat()) = mean(src, mask)

function meanStdDev(src::Image, mean::Image, stddev::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_meanStdDev(julia_to_cpp(src),julia_to_cpp(mean),julia_to_cpp(stddev),julia_to_cpp(mask)))
end
meanStdDev(src::Image; mean::Image = _Mat(), stddev::Image = _Mat(), mask::Image = Mat()) = meanStdDev(src, mean, stddev, mask)

function meanStdDev(src::UMat, mean::UMat, stddev::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_meanStdDev(julia_to_cpp(src),julia_to_cpp(mean),julia_to_cpp(stddev),julia_to_cpp(mask)))
end
meanStdDev(src::UMat; mean::UMat = UMat(), stddev::UMat = UMat(), mask::UMat = UMat()) = meanStdDev(src, mean, stddev, mask)

function norm(src1::Image, normType::Int32, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::Image; normType::Int32 = NORM_L2, mask::Image = Mat()) = norm(src1, normType, mask)

function norm(src1::UMat, normType::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::UMat; normType::Int32 = NORM_L2, mask::UMat = UMat()) = norm(src1, normType, mask)

function norm(src1::Image, src2::Image, normType::Int32, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::Image, src2::Image; normType::Int32 = NORM_L2, mask::Image = Mat()) = norm(src1, src2, normType, mask)

function norm(src1::UMat, src2::UMat, normType::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::UMat, src2::UMat; normType::Int32 = NORM_L2, mask::UMat = UMat()) = norm(src1, src2, normType, mask)

function PSNR(src1::Image, src2::Image, R::Float64)
	return cpp_to_julia(jlopencv_cv_cv_PSNR(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(R)))
end
PSNR(src1::Image, src2::Image; R::Float64 = 255.) = PSNR(src1, src2, R)

function PSNR(src1::UMat, src2::UMat, R::Float64)
	return cpp_to_julia(jlopencv_cv_cv_PSNR(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(R)))
end
PSNR(src1::UMat, src2::UMat; R::Float64 = 255.) = PSNR(src1, src2, R)

function batchDistance(src1::Image, src2::Image, dtype::Int32, dist::Image, nidx::Image, normType::Int32, K::Int32, mask::Image, update::Int32, crosscheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_batchDistance(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dtype),julia_to_cpp(dist),julia_to_cpp(nidx),julia_to_cpp(normType),julia_to_cpp(K),julia_to_cpp(mask),julia_to_cpp(update),julia_to_cpp(crosscheck)))
end
batchDistance(src1::Image, src2::Image, dtype::Int32; dist::Image = _Mat(), nidx::Image = _Mat(), normType::Int32 = NORM_L2, K::Int32 = 0, mask::Image = Mat(), update::Int32 = 0, crosscheck::Bool = false) = batchDistance(src1, src2, dtype, dist, nidx, normType, K, mask, update, crosscheck)

function batchDistance(src1::UMat, src2::UMat, dtype::Int32, dist::UMat, nidx::UMat, normType::Int32, K::Int32, mask::UMat, update::Int32, crosscheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_batchDistance(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dtype),julia_to_cpp(dist),julia_to_cpp(nidx),julia_to_cpp(normType),julia_to_cpp(K),julia_to_cpp(mask),julia_to_cpp(update),julia_to_cpp(crosscheck)))
end
batchDistance(src1::UMat, src2::UMat, dtype::Int32; dist::UMat = UMat(), nidx::UMat = UMat(), normType::Int32 = NORM_L2, K::Int32 = 0, mask::UMat = UMat(), update::Int32 = 0, crosscheck::Bool = false) = batchDistance(src1, src2, dtype, dist, nidx, normType, K, mask, update, crosscheck)

function normalize(src::Image, dst::Image, alpha::Float64, beta::Float64, norm_type::Int32, dtype::Int32, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_normalize(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(norm_type),julia_to_cpp(dtype),julia_to_cpp(mask)))
end
normalize(src::Image, dst::Image; alpha::Float64 = 1, beta::Float64 = 0, norm_type::Int32 = NORM_L2, dtype::Int32 = -1, mask::Image = Mat()) = normalize(src, dst, alpha, beta, norm_type, dtype, mask)

function normalize(src::UMat, dst::UMat, alpha::Float64, beta::Float64, norm_type::Int32, dtype::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_normalize(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(norm_type),julia_to_cpp(dtype),julia_to_cpp(mask)))
end
normalize(src::UMat, dst::UMat; alpha::Float64 = 1, beta::Float64 = 0, norm_type::Int32 = NORM_L2, dtype::Int32 = -1, mask::UMat = UMat()) = normalize(src, dst, alpha, beta, norm_type, dtype, mask)

function minMaxLoc(src::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_minMaxLoc(julia_to_cpp(src),julia_to_cpp(mask)))
end
minMaxLoc(src::Image; mask::Image = Mat()) = minMaxLoc(src, mask)

function minMaxLoc(src::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_minMaxLoc(julia_to_cpp(src),julia_to_cpp(mask)))
end
minMaxLoc(src::UMat; mask::UMat = UMat()) = minMaxLoc(src, mask)

function reduce(src::Image, dim::Int32, rtype::Int32, dst::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_reduce(julia_to_cpp(src),julia_to_cpp(dim),julia_to_cpp(rtype),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
reduce(src::Image, dim::Int32, rtype::Int32; dst::Image = _Mat(), dtype::Int32 = -1) = reduce(src, dim, rtype, dst, dtype)

function reduce(src::UMat, dim::Int32, rtype::Int32, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_reduce(julia_to_cpp(src),julia_to_cpp(dim),julia_to_cpp(rtype),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
reduce(src::UMat, dim::Int32, rtype::Int32; dst::UMat = UMat(), dtype::Int32 = -1) = reduce(src, dim, rtype, dst, dtype)

function merge(mv::Array{Image, 1}, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_merge(julia_to_cpp(mv),julia_to_cpp(dst)))
end
merge(mv::Array{Image, 1}; dst::Image = _Mat()) = merge(mv, dst)

function merge(mv::Array{UMat, 1}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_merge(julia_to_cpp(mv),julia_to_cpp(dst)))
end
merge(mv::Array{UMat, 1}; dst::UMat = UMat()) = merge(mv, dst)

function split(m::Image, mv::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_split(julia_to_cpp(m),julia_to_cpp(mv)))
end
split(m::Image; mv::Array{Image, 1} = Array{Image, 1}()) = split(m, mv)

function split(m::UMat, mv::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_split(julia_to_cpp(m),julia_to_cpp(mv)))
end
split(m::UMat; mv::Array{UMat, 1} = Array{UMat, 1}()) = split(m, mv)

function mixChannels(src::Array{Image, 1}, dst::Array{Image, 1}, fromTo::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_mixChannels(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fromTo)))
end
mixChannels(src::Array{Image, 1}, dst::Array{Image, 1}, fromTo::Array{Int32, 1}; ) = mixChannels(src, dst, fromTo)

function mixChannels(src::Array{UMat, 1}, dst::Array{UMat, 1}, fromTo::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_mixChannels(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fromTo)))
end
mixChannels(src::Array{UMat, 1}, dst::Array{UMat, 1}, fromTo::Array{Int32, 1}; ) = mixChannels(src, dst, fromTo)

function extractChannel(src::Image, coi::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_extractChannel(julia_to_cpp(src),julia_to_cpp(coi),julia_to_cpp(dst)))
end
extractChannel(src::Image, coi::Int32; dst::Image = _Mat()) = extractChannel(src, coi, dst)

function extractChannel(src::UMat, coi::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_extractChannel(julia_to_cpp(src),julia_to_cpp(coi),julia_to_cpp(dst)))
end
extractChannel(src::UMat, coi::Int32; dst::UMat = UMat()) = extractChannel(src, coi, dst)

function insertChannel(src::Image, dst::Image, coi::Int32)
	return cpp_to_julia(jlopencv_cv_cv_insertChannel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(coi)))
end
insertChannel(src::Image, dst::Image, coi::Int32; ) = insertChannel(src, dst, coi)

function insertChannel(src::UMat, dst::UMat, coi::Int32)
	return cpp_to_julia(jlopencv_cv_cv_insertChannel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(coi)))
end
insertChannel(src::UMat, dst::UMat, coi::Int32; ) = insertChannel(src, dst, coi)

function flip(src::Image, flipCode::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_flip(julia_to_cpp(src),julia_to_cpp(flipCode),julia_to_cpp(dst)))
end
flip(src::Image, flipCode::Int32; dst::Image = _Mat()) = flip(src, flipCode, dst)

function flip(src::UMat, flipCode::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_flip(julia_to_cpp(src),julia_to_cpp(flipCode),julia_to_cpp(dst)))
end
flip(src::UMat, flipCode::Int32; dst::UMat = UMat()) = flip(src, flipCode, dst)

function rotate(src::Image, rotateCode::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_rotate(julia_to_cpp(src),julia_to_cpp(rotateCode),julia_to_cpp(dst)))
end
rotate(src::Image, rotateCode::Int32; dst::Image = _Mat()) = rotate(src, rotateCode, dst)

function rotate(src::UMat, rotateCode::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_rotate(julia_to_cpp(src),julia_to_cpp(rotateCode),julia_to_cpp(dst)))
end
rotate(src::UMat, rotateCode::Int32; dst::UMat = UMat()) = rotate(src, rotateCode, dst)

function repeat(src::Image, ny::Int32, nx::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_repeat(julia_to_cpp(src),julia_to_cpp(ny),julia_to_cpp(nx),julia_to_cpp(dst)))
end
repeat(src::Image, ny::Int32, nx::Int32; dst::Image = _Mat()) = repeat(src, ny, nx, dst)

function repeat(src::UMat, ny::Int32, nx::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_repeat(julia_to_cpp(src),julia_to_cpp(ny),julia_to_cpp(nx),julia_to_cpp(dst)))
end
repeat(src::UMat, ny::Int32, nx::Int32; dst::UMat = UMat()) = repeat(src, ny, nx, dst)

function hconcat(src::Array{Image, 1}, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_hconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
hconcat(src::Array{Image, 1}; dst::Image = _Mat()) = hconcat(src, dst)

function hconcat(src::Array{UMat, 1}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_hconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
hconcat(src::Array{UMat, 1}; dst::UMat = UMat()) = hconcat(src, dst)

function vconcat(src::Array{Image, 1}, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_vconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
vconcat(src::Array{Image, 1}; dst::Image = _Mat()) = vconcat(src, dst)

function vconcat(src::Array{UMat, 1}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_vconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
vconcat(src::Array{UMat, 1}; dst::UMat = UMat()) = vconcat(src, dst)

function bitwise_and(src1::Image, src2::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_and(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_and(src1::Image, src2::Image; dst::Image = _Mat(), mask::Image = Mat()) = bitwise_and(src1, src2, dst, mask)

function bitwise_and(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_and(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_and(src1::UMat, src2::UMat; dst::UMat = UMat(), mask::UMat = UMat()) = bitwise_and(src1, src2, dst, mask)

function bitwise_or(src1::Image, src2::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_or(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_or(src1::Image, src2::Image; dst::Image = _Mat(), mask::Image = Mat()) = bitwise_or(src1, src2, dst, mask)

function bitwise_or(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_or(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_or(src1::UMat, src2::UMat; dst::UMat = UMat(), mask::UMat = UMat()) = bitwise_or(src1, src2, dst, mask)

function bitwise_xor(src1::Image, src2::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_xor(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_xor(src1::Image, src2::Image; dst::Image = _Mat(), mask::Image = Mat()) = bitwise_xor(src1, src2, dst, mask)

function bitwise_xor(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_xor(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_xor(src1::UMat, src2::UMat; dst::UMat = UMat(), mask::UMat = UMat()) = bitwise_xor(src1, src2, dst, mask)

function bitwise_not(src::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_not(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_not(src::Image; dst::Image = _Mat(), mask::Image = Mat()) = bitwise_not(src, dst, mask)

function bitwise_not(src::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_not(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_not(src::UMat; dst::UMat = UMat(), mask::UMat = UMat()) = bitwise_not(src, dst, mask)

function absdiff(src1::Image, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_absdiff(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
absdiff(src1::Image, src2::Image; dst::Image = _Mat()) = absdiff(src1, src2, dst)

function absdiff(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_absdiff(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
absdiff(src1::UMat, src2::UMat; dst::UMat = UMat()) = absdiff(src1, src2, dst)

function copyTo(src::Image, mask::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_copyTo(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst)))
end
copyTo(src::Image, mask::Image; dst::Image = _Mat()) = copyTo(src, mask, dst)

function copyTo(src::UMat, mask::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_copyTo(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst)))
end
copyTo(src::UMat, mask::UMat; dst::UMat = UMat()) = copyTo(src, mask, dst)

function inRange(src::Image, lowerb::Image, upperb::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_inRange(julia_to_cpp(src),julia_to_cpp(lowerb),julia_to_cpp(upperb),julia_to_cpp(dst)))
end
inRange(src::Image, lowerb::Image, upperb::Image; dst::Image = _Mat()) = inRange(src, lowerb, upperb, dst)

function inRange(src::UMat, lowerb::UMat, upperb::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_inRange(julia_to_cpp(src),julia_to_cpp(lowerb),julia_to_cpp(upperb),julia_to_cpp(dst)))
end
inRange(src::UMat, lowerb::UMat, upperb::UMat; dst::UMat = UMat()) = inRange(src, lowerb, upperb, dst)

function compare(src1::Image, src2::Image, cmpop::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_compare(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(cmpop),julia_to_cpp(dst)))
end
compare(src1::Image, src2::Image, cmpop::Int32; dst::Image = _Mat()) = compare(src1, src2, cmpop, dst)

function compare(src1::UMat, src2::UMat, cmpop::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_compare(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(cmpop),julia_to_cpp(dst)))
end
compare(src1::UMat, src2::UMat, cmpop::Int32; dst::UMat = UMat()) = compare(src1, src2, cmpop, dst)

function min(src1::Image, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_min(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
min(src1::Image, src2::Image; dst::Image = _Mat()) = min(src1, src2, dst)

function min(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_min(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
min(src1::UMat, src2::UMat; dst::UMat = UMat()) = min(src1, src2, dst)

function max(src1::Image, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_max(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
max(src1::Image, src2::Image; dst::Image = _Mat()) = max(src1, src2, dst)

function max(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_max(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
max(src1::UMat, src2::UMat; dst::UMat = UMat()) = max(src1, src2, dst)

function sqrt(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_sqrt(julia_to_cpp(src),julia_to_cpp(dst)))
end
sqrt(src::Image; dst::Image = _Mat()) = sqrt(src, dst)

function sqrt(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sqrt(julia_to_cpp(src),julia_to_cpp(dst)))
end
sqrt(src::UMat; dst::UMat = UMat()) = sqrt(src, dst)

function pow(src::Image, power::Float64, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_pow(julia_to_cpp(src),julia_to_cpp(power),julia_to_cpp(dst)))
end
pow(src::Image, power::Float64; dst::Image = _Mat()) = pow(src, power, dst)

function pow(src::UMat, power::Float64, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_pow(julia_to_cpp(src),julia_to_cpp(power),julia_to_cpp(dst)))
end
pow(src::UMat, power::Float64; dst::UMat = UMat()) = pow(src, power, dst)

function exp(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_exp(julia_to_cpp(src),julia_to_cpp(dst)))
end
exp(src::Image; dst::Image = _Mat()) = exp(src, dst)

function exp(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_exp(julia_to_cpp(src),julia_to_cpp(dst)))
end
exp(src::UMat; dst::UMat = UMat()) = exp(src, dst)

function log(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_log(julia_to_cpp(src),julia_to_cpp(dst)))
end
log(src::Image; dst::Image = _Mat()) = log(src, dst)

function log(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_log(julia_to_cpp(src),julia_to_cpp(dst)))
end
log(src::UMat; dst::UMat = UMat()) = log(src, dst)

function polarToCart(magnitude::Image, angle::Image, x::Image, y::Image, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_polarToCart(julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angleInDegrees)))
end
polarToCart(magnitude::Image, angle::Image; x::Image = _Mat(), y::Image = _Mat(), angleInDegrees::Bool = false) = polarToCart(magnitude, angle, x, y, angleInDegrees)

function polarToCart(magnitude::UMat, angle::UMat, x::UMat, y::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_polarToCart(julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angleInDegrees)))
end
polarToCart(magnitude::UMat, angle::UMat; x::UMat = UMat(), y::UMat = UMat(), angleInDegrees::Bool = false) = polarToCart(magnitude, angle, x, y, angleInDegrees)

function cartToPolar(x::Image, y::Image, magnitude::Image, angle::Image, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_cartToPolar(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
cartToPolar(x::Image, y::Image; magnitude::Image = _Mat(), angle::Image = _Mat(), angleInDegrees::Bool = false) = cartToPolar(x, y, magnitude, angle, angleInDegrees)

function cartToPolar(x::UMat, y::UMat, magnitude::UMat, angle::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_cartToPolar(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
cartToPolar(x::UMat, y::UMat; magnitude::UMat = UMat(), angle::UMat = UMat(), angleInDegrees::Bool = false) = cartToPolar(x, y, magnitude, angle, angleInDegrees)

function phase(x::Image, y::Image, angle::Image, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_phase(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
phase(x::Image, y::Image; angle::Image = _Mat(), angleInDegrees::Bool = false) = phase(x, y, angle, angleInDegrees)

function phase(x::UMat, y::UMat, angle::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_phase(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
phase(x::UMat, y::UMat; angle::UMat = UMat(), angleInDegrees::Bool = false) = phase(x, y, angle, angleInDegrees)

function magnitude(x::Image, y::Image, magnitude::Image)
	return cpp_to_julia(jlopencv_cv_cv_magnitude(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude)))
end
magnitude(x::Image, y::Image; magnitude::Image = _Mat()) = magnitude(x, y, magnitude)

function magnitude(x::UMat, y::UMat, magnitude::UMat)
	return cpp_to_julia(jlopencv_cv_cv_magnitude(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude)))
end
magnitude(x::UMat, y::UMat; magnitude::UMat = UMat()) = magnitude(x, y, magnitude)

function checkRange(a::Image, quiet::Bool, minVal::Float64, maxVal::Float64)
	return cpp_to_julia(jlopencv_cv_cv_checkRange(julia_to_cpp(a),julia_to_cpp(quiet),julia_to_cpp(minVal),julia_to_cpp(maxVal)))
end
checkRange(a::Image; quiet::Bool = true, minVal::Float64 = -DBL_MAX, maxVal::Float64 = DBL_MAX) = checkRange(a, quiet, minVal, maxVal)

function checkRange(a::UMat, quiet::Bool, minVal::Float64, maxVal::Float64)
	return cpp_to_julia(jlopencv_cv_cv_checkRange(julia_to_cpp(a),julia_to_cpp(quiet),julia_to_cpp(minVal),julia_to_cpp(maxVal)))
end
checkRange(a::UMat; quiet::Bool = true, minVal::Float64 = -DBL_MAX, maxVal::Float64 = DBL_MAX) = checkRange(a, quiet, minVal, maxVal)

function patchNaNs(a::Image, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_patchNaNs(julia_to_cpp(a),julia_to_cpp(val)))
end
patchNaNs(a::Image; val::Float64 = 0) = patchNaNs(a, val)

function patchNaNs(a::UMat, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_patchNaNs(julia_to_cpp(a),julia_to_cpp(val)))
end
patchNaNs(a::UMat; val::Float64 = 0) = patchNaNs(a, val)

function gemm(src1::Image, src2::Image, alpha::Float64, src3::Image, beta::Float64, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_gemm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(alpha),julia_to_cpp(src3),julia_to_cpp(beta),julia_to_cpp(dst),julia_to_cpp(flags)))
end
gemm(src1::Image, src2::Image, alpha::Float64, src3::Image, beta::Float64; dst::Image = _Mat(), flags::Int32 = 0) = gemm(src1, src2, alpha, src3, beta, dst, flags)

function gemm(src1::UMat, src2::UMat, alpha::Float64, src3::UMat, beta::Float64, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_gemm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(alpha),julia_to_cpp(src3),julia_to_cpp(beta),julia_to_cpp(dst),julia_to_cpp(flags)))
end
gemm(src1::UMat, src2::UMat, alpha::Float64, src3::UMat, beta::Float64; dst::UMat = UMat(), flags::Int32 = 0) = gemm(src1, src2, alpha, src3, beta, dst, flags)

function mulTransposed(src::Image, aTa::Bool, dst::Image, delta::Image, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_mulTransposed(julia_to_cpp(src),julia_to_cpp(aTa),julia_to_cpp(dst),julia_to_cpp(delta),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
mulTransposed(src::Image, aTa::Bool; dst::Image = _Mat(), delta::Image = Mat(), scale::Float64 = 1, dtype::Int32 = -1) = mulTransposed(src, aTa, dst, delta, scale, dtype)

function mulTransposed(src::UMat, aTa::Bool, dst::UMat, delta::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_mulTransposed(julia_to_cpp(src),julia_to_cpp(aTa),julia_to_cpp(dst),julia_to_cpp(delta),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
mulTransposed(src::UMat, aTa::Bool; dst::UMat = UMat(), delta::UMat = UMat(), scale::Float64 = 1, dtype::Int32 = -1) = mulTransposed(src, aTa, dst, delta, scale, dtype)

function transpose(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_transpose(julia_to_cpp(src),julia_to_cpp(dst)))
end
transpose(src::Image; dst::Image = _Mat()) = transpose(src, dst)

function transpose(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_transpose(julia_to_cpp(src),julia_to_cpp(dst)))
end
transpose(src::UMat; dst::UMat = UMat()) = transpose(src, dst)

function transform(src::Image, m::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_transform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
transform(src::Image, m::Image; dst::Image = _Mat()) = transform(src, m, dst)

function transform(src::UMat, m::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_transform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
transform(src::UMat, m::UMat; dst::UMat = UMat()) = transform(src, m, dst)

function perspectiveTransform(src::Image, m::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_perspectiveTransform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
perspectiveTransform(src::Image, m::Image; dst::Image = _Mat()) = perspectiveTransform(src, m, dst)

function perspectiveTransform(src::UMat, m::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_perspectiveTransform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
perspectiveTransform(src::UMat, m::UMat; dst::UMat = UMat()) = perspectiveTransform(src, m, dst)

function completeSymm(m::Image, lowerToUpper::Bool)
	return cpp_to_julia(jlopencv_cv_cv_completeSymm(julia_to_cpp(m),julia_to_cpp(lowerToUpper)))
end
completeSymm(m::Image; lowerToUpper::Bool = false) = completeSymm(m, lowerToUpper)

function completeSymm(m::UMat, lowerToUpper::Bool)
	return cpp_to_julia(jlopencv_cv_cv_completeSymm(julia_to_cpp(m),julia_to_cpp(lowerToUpper)))
end
completeSymm(m::UMat; lowerToUpper::Bool = false) = completeSymm(m, lowerToUpper)

function setIdentity(mtx::Image, s::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_setIdentity(julia_to_cpp(mtx),julia_to_cpp(s)))
end
setIdentity(mtx::Image; s::Scalar = Scalar(1)) = setIdentity(mtx, s)

function setIdentity(mtx::UMat, s::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_setIdentity(julia_to_cpp(mtx),julia_to_cpp(s)))
end
setIdentity(mtx::UMat; s::Scalar = Scalar(1)) = setIdentity(mtx, s)

function determinant(mtx::Image)
	return cpp_to_julia(jlopencv_cv_cv_determinant(julia_to_cpp(mtx)))
end
determinant(mtx::Image; ) = determinant(mtx)

function determinant(mtx::UMat)
	return cpp_to_julia(jlopencv_cv_cv_determinant(julia_to_cpp(mtx)))
end
determinant(mtx::UMat; ) = determinant(mtx)

function trace(mtx::Image)
	return cpp_to_julia(jlopencv_cv_cv_trace(julia_to_cpp(mtx)))
end
trace(mtx::Image; ) = trace(mtx)

function trace(mtx::UMat)
	return cpp_to_julia(jlopencv_cv_cv_trace(julia_to_cpp(mtx)))
end
trace(mtx::UMat; ) = trace(mtx)

function invert(src::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_invert(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
invert(src::Image; dst::Image = _Mat(), flags::Int32 = DECOMP_LU) = invert(src, dst, flags)

function invert(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_invert(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
invert(src::UMat; dst::UMat = UMat(), flags::Int32 = DECOMP_LU) = invert(src, dst, flags)

function solve(src1::Image, src2::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solve(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(flags)))
end
solve(src1::Image, src2::Image; dst::Image = _Mat(), flags::Int32 = DECOMP_LU) = solve(src1, src2, dst, flags)

function solve(src1::UMat, src2::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solve(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(flags)))
end
solve(src1::UMat, src2::UMat; dst::UMat = UMat(), flags::Int32 = DECOMP_LU) = solve(src1, src2, dst, flags)

function sort(src::Image, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_sort(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sort(src::Image, flags::Int32; dst::Image = _Mat()) = sort(src, flags, dst)

function sort(src::UMat, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sort(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sort(src::UMat, flags::Int32; dst::UMat = UMat()) = sort(src, flags, dst)

function sortIdx(src::Image, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_sortIdx(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sortIdx(src::Image, flags::Int32; dst::Image = _Mat()) = sortIdx(src, flags, dst)

function sortIdx(src::UMat, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sortIdx(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sortIdx(src::UMat, flags::Int32; dst::UMat = UMat()) = sortIdx(src, flags, dst)

function solveCubic(coeffs::Image, roots::Image)
	return cpp_to_julia(jlopencv_cv_cv_solveCubic(julia_to_cpp(coeffs),julia_to_cpp(roots)))
end
solveCubic(coeffs::Image; roots::Image = _Mat()) = solveCubic(coeffs, roots)

function solveCubic(coeffs::UMat, roots::UMat)
	return cpp_to_julia(jlopencv_cv_cv_solveCubic(julia_to_cpp(coeffs),julia_to_cpp(roots)))
end
solveCubic(coeffs::UMat; roots::UMat = UMat()) = solveCubic(coeffs, roots)

function solvePoly(coeffs::Image, roots::Image, maxIters::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePoly(julia_to_cpp(coeffs),julia_to_cpp(roots),julia_to_cpp(maxIters)))
end
solvePoly(coeffs::Image; roots::Image = _Mat(), maxIters::Int32 = 300) = solvePoly(coeffs, roots, maxIters)

function solvePoly(coeffs::UMat, roots::UMat, maxIters::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePoly(julia_to_cpp(coeffs),julia_to_cpp(roots),julia_to_cpp(maxIters)))
end
solvePoly(coeffs::UMat; roots::UMat = UMat(), maxIters::Int32 = 300) = solvePoly(coeffs, roots, maxIters)

function eigen(src::Image, eigenvalues::Image, eigenvectors::Image)
	return cpp_to_julia(jlopencv_cv_cv_eigen(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigen(src::Image; eigenvalues::Image = _Mat(), eigenvectors::Image = Mat()) = eigen(src, eigenvalues, eigenvectors)

function eigen(src::UMat, eigenvalues::UMat, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_cv_eigen(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigen(src::UMat; eigenvalues::UMat = UMat(), eigenvectors::UMat = UMat()) = eigen(src, eigenvalues, eigenvectors)

function eigenNonSymmetric(src::Image, eigenvalues::Image, eigenvectors::Image)
	return cpp_to_julia(jlopencv_cv_cv_eigenNonSymmetric(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigenNonSymmetric(src::Image; eigenvalues::Image = _Mat(), eigenvectors::Image = _Mat()) = eigenNonSymmetric(src, eigenvalues, eigenvectors)

function eigenNonSymmetric(src::UMat, eigenvalues::UMat, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_cv_eigenNonSymmetric(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigenNonSymmetric(src::UMat; eigenvalues::UMat = UMat(), eigenvectors::UMat = UMat()) = eigenNonSymmetric(src, eigenvalues, eigenvectors)

function calcCovarMatrix(samples::Image, mean::Image, flags::Int32, covar::Image, ctype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_calcCovarMatrix(julia_to_cpp(samples),julia_to_cpp(mean),julia_to_cpp(flags),julia_to_cpp(covar),julia_to_cpp(ctype)))
end
calcCovarMatrix(samples::Image, mean::Image, flags::Int32; covar::Image = _Mat(), ctype::Int32 = CV_64F) = calcCovarMatrix(samples, mean, flags, covar, ctype)

function calcCovarMatrix(samples::UMat, mean::UMat, flags::Int32, covar::UMat, ctype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_calcCovarMatrix(julia_to_cpp(samples),julia_to_cpp(mean),julia_to_cpp(flags),julia_to_cpp(covar),julia_to_cpp(ctype)))
end
calcCovarMatrix(samples::UMat, mean::UMat, flags::Int32; covar::UMat = UMat(), ctype::Int32 = CV_64F) = calcCovarMatrix(samples, mean, flags, covar, ctype)

function PCACompute(data::Image, mean::Image, eigenvectors::Image, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(maxComponents)))
end
PCACompute(data::Image, mean::Image; eigenvectors::Image = _Mat(), maxComponents::Int32 = 0) = PCACompute(data, mean, eigenvectors, maxComponents)

function PCACompute(data::UMat, mean::UMat, eigenvectors::UMat, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(maxComponents)))
end
PCACompute(data::UMat, mean::UMat; eigenvectors::UMat = UMat(), maxComponents::Int32 = 0) = PCACompute(data, mean, eigenvectors, maxComponents)

function PCACompute2(data::Image, mean::Image, eigenvectors::Image, eigenvalues::Image, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues),julia_to_cpp(maxComponents)))
end
PCACompute2(data::Image, mean::Image; eigenvectors::Image = _Mat(), eigenvalues::Image = _Mat(), maxComponents::Int32 = 0) = PCACompute2(data, mean, eigenvectors, eigenvalues, maxComponents)

function PCACompute2(data::UMat, mean::UMat, eigenvectors::UMat, eigenvalues::UMat, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues),julia_to_cpp(maxComponents)))
end
PCACompute2(data::UMat, mean::UMat; eigenvectors::UMat = UMat(), eigenvalues::UMat = UMat(), maxComponents::Int32 = 0) = PCACompute2(data, mean, eigenvectors, eigenvalues, maxComponents)

function PCACompute(data::Image, mean::Image, retainedVariance::Float64, eigenvectors::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors)))
end
PCACompute(data::Image, mean::Image, retainedVariance::Float64; eigenvectors::Image = _Mat()) = PCACompute(data, mean, retainedVariance, eigenvectors)

function PCACompute(data::UMat, mean::UMat, retainedVariance::Float64, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors)))
end
PCACompute(data::UMat, mean::UMat, retainedVariance::Float64; eigenvectors::UMat = UMat()) = PCACompute(data, mean, retainedVariance, eigenvectors)

function PCACompute2(data::Image, mean::Image, retainedVariance::Float64, eigenvectors::Image, eigenvalues::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues)))
end
PCACompute2(data::Image, mean::Image, retainedVariance::Float64; eigenvectors::Image = _Mat(), eigenvalues::Image = _Mat()) = PCACompute2(data, mean, retainedVariance, eigenvectors, eigenvalues)

function PCACompute2(data::UMat, mean::UMat, retainedVariance::Float64, eigenvectors::UMat, eigenvalues::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues)))
end
PCACompute2(data::UMat, mean::UMat, retainedVariance::Float64; eigenvectors::UMat = UMat(), eigenvalues::UMat = UMat()) = PCACompute2(data, mean, retainedVariance, eigenvectors, eigenvalues)

function PCAProject(data::Image, mean::Image, eigenvectors::Image, result::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCAProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCAProject(data::Image, mean::Image, eigenvectors::Image; result::Image = _Mat()) = PCAProject(data, mean, eigenvectors, result)

function PCAProject(data::UMat, mean::UMat, eigenvectors::UMat, result::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCAProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCAProject(data::UMat, mean::UMat, eigenvectors::UMat; result::UMat = UMat()) = PCAProject(data, mean, eigenvectors, result)

function PCABackProject(data::Image, mean::Image, eigenvectors::Image, result::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCABackProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCABackProject(data::Image, mean::Image, eigenvectors::Image; result::Image = _Mat()) = PCABackProject(data, mean, eigenvectors, result)

function PCABackProject(data::UMat, mean::UMat, eigenvectors::UMat, result::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCABackProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCABackProject(data::UMat, mean::UMat, eigenvectors::UMat; result::UMat = UMat()) = PCABackProject(data, mean, eigenvectors, result)

function SVDecomp(src::Image, w::Image, u::Image, vt::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_SVDecomp(julia_to_cpp(src),julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(flags)))
end
SVDecomp(src::Image; w::Image = _Mat(), u::Image = _Mat(), vt::Image = _Mat(), flags::Int32 = 0) = SVDecomp(src, w, u, vt, flags)

function SVDecomp(src::UMat, w::UMat, u::UMat, vt::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_SVDecomp(julia_to_cpp(src),julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(flags)))
end
SVDecomp(src::UMat; w::UMat = UMat(), u::UMat = UMat(), vt::UMat = UMat(), flags::Int32 = 0) = SVDecomp(src, w, u, vt, flags)

function SVBackSubst(w::Image, u::Image, vt::Image, rhs::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_SVBackSubst(julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(rhs),julia_to_cpp(dst)))
end
SVBackSubst(w::Image, u::Image, vt::Image, rhs::Image; dst::Image = _Mat()) = SVBackSubst(w, u, vt, rhs, dst)

function SVBackSubst(w::UMat, u::UMat, vt::UMat, rhs::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_SVBackSubst(julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(rhs),julia_to_cpp(dst)))
end
SVBackSubst(w::UMat, u::UMat, vt::UMat, rhs::UMat; dst::UMat = UMat()) = SVBackSubst(w, u, vt, rhs, dst)

function Mahalanobis(v1::Image, v2::Image, icovar::Image)
	return cpp_to_julia(jlopencv_cv_cv_Mahalanobis(julia_to_cpp(v1),julia_to_cpp(v2),julia_to_cpp(icovar)))
end
Mahalanobis(v1::Image, v2::Image, icovar::Image; ) = Mahalanobis(v1, v2, icovar)

function Mahalanobis(v1::UMat, v2::UMat, icovar::UMat)
	return cpp_to_julia(jlopencv_cv_cv_Mahalanobis(julia_to_cpp(v1),julia_to_cpp(v2),julia_to_cpp(icovar)))
end
Mahalanobis(v1::UMat, v2::UMat, icovar::UMat; ) = Mahalanobis(v1, v2, icovar)

function dft(src::Image, dst::Image, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
dft(src::Image; dst::Image = _Mat(), flags::Int32 = 0, nonzeroRows::Int32 = 0) = dft(src, dst, flags, nonzeroRows)

function dft(src::UMat, dst::UMat, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
dft(src::UMat; dst::UMat = UMat(), flags::Int32 = 0, nonzeroRows::Int32 = 0) = dft(src, dst, flags, nonzeroRows)

function idft(src::Image, dst::Image, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
idft(src::Image; dst::Image = _Mat(), flags::Int32 = 0, nonzeroRows::Int32 = 0) = idft(src, dst, flags, nonzeroRows)

function idft(src::UMat, dst::UMat, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
idft(src::UMat; dst::UMat = UMat(), flags::Int32 = 0, nonzeroRows::Int32 = 0) = idft(src, dst, flags, nonzeroRows)

function dct(src::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
dct(src::Image; dst::Image = _Mat(), flags::Int32 = 0) = dct(src, dst, flags)

function dct(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
dct(src::UMat; dst::UMat = UMat(), flags::Int32 = 0) = dct(src, dst, flags)

function idct(src::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
idct(src::Image; dst::Image = _Mat(), flags::Int32 = 0) = idct(src, dst, flags)

function idct(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
idct(src::UMat; dst::UMat = UMat(), flags::Int32 = 0) = idct(src, dst, flags)

function mulSpectrums(a::Image, b::Image, flags::Int32, c::Image, conjB::Bool)
	return cpp_to_julia(jlopencv_cv_cv_mulSpectrums(julia_to_cpp(a),julia_to_cpp(b),julia_to_cpp(flags),julia_to_cpp(c),julia_to_cpp(conjB)))
end
mulSpectrums(a::Image, b::Image, flags::Int32; c::Image = _Mat(), conjB::Bool = false) = mulSpectrums(a, b, flags, c, conjB)

function mulSpectrums(a::UMat, b::UMat, flags::Int32, c::UMat, conjB::Bool)
	return cpp_to_julia(jlopencv_cv_cv_mulSpectrums(julia_to_cpp(a),julia_to_cpp(b),julia_to_cpp(flags),julia_to_cpp(c),julia_to_cpp(conjB)))
end
mulSpectrums(a::UMat, b::UMat, flags::Int32; c::UMat = UMat(), conjB::Bool = false) = mulSpectrums(a, b, flags, c, conjB)

function getOptimalDFTSize(vecsize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalDFTSize(julia_to_cpp(vecsize)))
end
getOptimalDFTSize(vecsize::Int32; ) = getOptimalDFTSize(vecsize)

function setRNGSeed(seed::Int32)
	return cpp_to_julia(jlopencv_cv_cv_setRNGSeed(julia_to_cpp(seed)))
end
setRNGSeed(seed::Int32; ) = setRNGSeed(seed)

function randu(dst::Image, low::Image, high::Image)
	return cpp_to_julia(jlopencv_cv_cv_randu(julia_to_cpp(dst),julia_to_cpp(low),julia_to_cpp(high)))
end
randu(dst::Image, low::Image, high::Image; ) = randu(dst, low, high)

function randu(dst::UMat, low::UMat, high::UMat)
	return cpp_to_julia(jlopencv_cv_cv_randu(julia_to_cpp(dst),julia_to_cpp(low),julia_to_cpp(high)))
end
randu(dst::UMat, low::UMat, high::UMat; ) = randu(dst, low, high)

function randn(dst::Image, mean::Image, stddev::Image)
	return cpp_to_julia(jlopencv_cv_cv_randn(julia_to_cpp(dst),julia_to_cpp(mean),julia_to_cpp(stddev)))
end
randn(dst::Image, mean::Image, stddev::Image; ) = randn(dst, mean, stddev)

function randn(dst::UMat, mean::UMat, stddev::UMat)
	return cpp_to_julia(jlopencv_cv_cv_randn(julia_to_cpp(dst),julia_to_cpp(mean),julia_to_cpp(stddev)))
end
randn(dst::UMat, mean::UMat, stddev::UMat; ) = randn(dst, mean, stddev)

function randShuffle(dst::Image, iterFactor::Float64)
	return cpp_to_julia(jlopencv_cv_cv_randShuffle(julia_to_cpp(dst),julia_to_cpp(iterFactor)))
end
randShuffle(dst::Image; iterFactor::Float64 = 1.) = randShuffle(dst, iterFactor)

function randShuffle(dst::UMat, iterFactor::Float64)
	return cpp_to_julia(jlopencv_cv_cv_randShuffle(julia_to_cpp(dst),julia_to_cpp(iterFactor)))
end
randShuffle(dst::UMat; iterFactor::Float64 = 1.) = randShuffle(dst, iterFactor)

function kmeans(data::Image, K::Int32, bestLabels::Image, criteria::TermCriteria, attempts::Int32, flags::Int32, centers::Image)
	return cpp_to_julia(jlopencv_cv_cv_kmeans(julia_to_cpp(data),julia_to_cpp(K),julia_to_cpp(bestLabels),julia_to_cpp(criteria),julia_to_cpp(attempts),julia_to_cpp(flags),julia_to_cpp(centers)))
end
kmeans(data::Image, K::Int32, bestLabels::Image, criteria::TermCriteria, attempts::Int32, flags::Int32; centers::Image = Mat()) = kmeans(data, K, bestLabels, criteria, attempts, flags, centers)

function kmeans(data::UMat, K::Int32, bestLabels::UMat, criteria::TermCriteria, attempts::Int32, flags::Int32, centers::UMat)
	return cpp_to_julia(jlopencv_cv_cv_kmeans(julia_to_cpp(data),julia_to_cpp(K),julia_to_cpp(bestLabels),julia_to_cpp(criteria),julia_to_cpp(attempts),julia_to_cpp(flags),julia_to_cpp(centers)))
end
kmeans(data::UMat, K::Int32, bestLabels::UMat, criteria::TermCriteria, attempts::Int32, flags::Int32; centers::UMat = UMat()) = kmeans(data, K, bestLabels, criteria, attempts, flags, centers)

function KeyPoint_convert(keypoints::Array{KeyPoint, 1}, keypointIndexes::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_convert(julia_to_cpp(keypoints),julia_to_cpp(keypointIndexes)))
end
KeyPoint_convert(keypoints::Array{KeyPoint, 1}; keypointIndexes::Array{Int32, 1} = Array{Int32, 1}()) = KeyPoint_convert(keypoints, keypointIndexes)

function KeyPoint_convert(points2f::Array{Point{Int32}{Int32}{Float32}, 1}, size::Float32, response::Float32, octave::Int32, class_id::Int32)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_convert(julia_to_cpp(points2f),julia_to_cpp(size),julia_to_cpp(response),julia_to_cpp(octave),julia_to_cpp(class_id)))
end
KeyPoint_convert(points2f::Array{Point{Int32}{Int32}{Float32}, 1}; size::Float32 = 1, response::Float32 = 1, octave::Int32 = 0, class_id::Int32 = -1) = KeyPoint_convert(points2f, size, response, octave, class_id)

function KeyPoint_overlap(kp1::KeyPoint, kp2::KeyPoint)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_overlap(julia_to_cpp(kp1),julia_to_cpp(kp2)))
end
KeyPoint_overlap(kp1::KeyPoint, kp2::KeyPoint; ) = KeyPoint_overlap(kp1, kp2)

function createLineSegmentDetector(_refine::Int32, _scale::Float64, _sigma_scale::Float64, _quant::Float64, _ang_th::Float64, _log_eps::Float64, _density_th::Float64, _n_bins::Int32)
	return cpp_to_julia(jlopencv_cv_cv_createLineSegmentDetector(julia_to_cpp(_refine),julia_to_cpp(_scale),julia_to_cpp(_sigma_scale),julia_to_cpp(_quant),julia_to_cpp(_ang_th),julia_to_cpp(_log_eps),julia_to_cpp(_density_th),julia_to_cpp(_n_bins)))
end
createLineSegmentDetector(; _refine::Int32 = LSD_REFINE_STD, _scale::Float64 = 0.8, _sigma_scale::Float64 = 0.6, _quant::Float64 = 2.0, _ang_th::Float64 = 22.5, _log_eps::Float64 = 0, _density_th::Float64 = 0.7, _n_bins::Int32 = 1024) = createLineSegmentDetector(_refine, _scale, _sigma_scale, _quant, _ang_th, _log_eps, _density_th, _n_bins)

function getGaussianKernel(ksize::Int32, sigma::Float64, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getGaussianKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(ktype)))
end
getGaussianKernel(ksize::Int32, sigma::Float64; ktype::Int32 = CV_64F) = getGaussianKernel(ksize, sigma, ktype)

function getDerivKernels(dx::Int32, dy::Int32, ksize::Int32, kx::Image, ky::Image, normalize::Bool, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getDerivKernels(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(kx),julia_to_cpp(ky),julia_to_cpp(normalize),julia_to_cpp(ktype)))
end
getDerivKernels(dx::Int32, dy::Int32, ksize::Int32; kx::Image = _Mat(), ky::Image = _Mat(), normalize::Bool = false, ktype::Int32 = CV_32F) = getDerivKernels(dx, dy, ksize, kx, ky, normalize, ktype)

function getDerivKernels(dx::Int32, dy::Int32, ksize::Int32, kx::UMat, ky::UMat, normalize::Bool, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getDerivKernels(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(kx),julia_to_cpp(ky),julia_to_cpp(normalize),julia_to_cpp(ktype)))
end
getDerivKernels(dx::Int32, dy::Int32, ksize::Int32; kx::UMat = UMat(), ky::UMat = UMat(), normalize::Bool = false, ktype::Int32 = CV_32F) = getDerivKernels(dx, dy, ksize, kx, ky, normalize, ktype)

function getGaborKernel(ksize::Size, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64, psi::Float64, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getGaborKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(theta),julia_to_cpp(lambd),julia_to_cpp(gamma),julia_to_cpp(psi),julia_to_cpp(ktype)))
end
getGaborKernel(ksize::Size, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64; psi::Float64 = CV_PI*0.5, ktype::Int32 = CV_64F) = getGaborKernel(ksize, sigma, theta, lambd, gamma, psi, ktype)

function getStructuringElement(shape::Int32, ksize::Size, anchor::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_getStructuringElement(julia_to_cpp(shape),julia_to_cpp(ksize),julia_to_cpp(anchor)))
end
getStructuringElement(shape::Int32, ksize::Size; anchor::Point{Int32} = Point(-1,-1)) = getStructuringElement(shape, ksize, anchor)

function medianBlur(src::Image, ksize::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_medianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst)))
end
medianBlur(src::Image, ksize::Int32; dst::Image = _Mat()) = medianBlur(src, ksize, dst)

function medianBlur(src::UMat, ksize::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_medianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst)))
end
medianBlur(src::UMat, ksize::Int32; dst::UMat = UMat()) = medianBlur(src, ksize, dst)

function GaussianBlur(src::Image, ksize::Size, sigmaX::Float64, dst::Image, sigmaY::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GaussianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(sigmaX),julia_to_cpp(dst),julia_to_cpp(sigmaY),julia_to_cpp(borderType)))
end
GaussianBlur(src::Image, ksize::Size, sigmaX::Float64; dst::Image = _Mat(), sigmaY::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = GaussianBlur(src, ksize, sigmaX, dst, sigmaY, borderType)

function GaussianBlur(src::UMat, ksize::Size, sigmaX::Float64, dst::UMat, sigmaY::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GaussianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(sigmaX),julia_to_cpp(dst),julia_to_cpp(sigmaY),julia_to_cpp(borderType)))
end
GaussianBlur(src::UMat, ksize::Size, sigmaX::Float64; dst::UMat = UMat(), sigmaY::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = GaussianBlur(src, ksize, sigmaX, dst, sigmaY, borderType)

function bilateralFilter(src::Image, d::Int32, sigmaColor::Float64, sigmaSpace::Float64, dst::Image, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_bilateralFilter(julia_to_cpp(src),julia_to_cpp(d),julia_to_cpp(sigmaColor),julia_to_cpp(sigmaSpace),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
bilateralFilter(src::Image, d::Int32, sigmaColor::Float64, sigmaSpace::Float64; dst::Image = _Mat(), borderType::Int32 = BORDER_DEFAULT) = bilateralFilter(src, d, sigmaColor, sigmaSpace, dst, borderType)

function bilateralFilter(src::UMat, d::Int32, sigmaColor::Float64, sigmaSpace::Float64, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_bilateralFilter(julia_to_cpp(src),julia_to_cpp(d),julia_to_cpp(sigmaColor),julia_to_cpp(sigmaSpace),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
bilateralFilter(src::UMat, d::Int32, sigmaColor::Float64, sigmaSpace::Float64; dst::UMat = UMat(), borderType::Int32 = BORDER_DEFAULT) = bilateralFilter(src, d, sigmaColor, sigmaSpace, dst, borderType)

function boxFilter(src::Image, ddepth::Int32, ksize::Size, dst::Image, anchor::Point{Int32}, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_boxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
boxFilter(src::Image, ddepth::Int32, ksize::Size; dst::Image = _Mat(), anchor::Point{Int32} = Point(-1,-1), normalize::Bool = true, borderType::Int32 = BORDER_DEFAULT) = boxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function boxFilter(src::UMat, ddepth::Int32, ksize::Size, dst::UMat, anchor::Point{Int32}, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_boxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
boxFilter(src::UMat, ddepth::Int32, ksize::Size; dst::UMat = UMat(), anchor::Point{Int32} = Point(-1,-1), normalize::Bool = true, borderType::Int32 = BORDER_DEFAULT) = boxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function sqrBoxFilter(src::Image, ddepth::Int32, ksize::Size, dst::Image, anchor::Point{Int32}, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_sqrBoxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
sqrBoxFilter(src::Image, ddepth::Int32, ksize::Size; dst::Image = _Mat(), anchor::Point{Int32} = Point(-1, -1), normalize::Bool = true, borderType::Int32 = BORDER_DEFAULT) = sqrBoxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function sqrBoxFilter(src::UMat, ddepth::Int32, ksize::Size, dst::UMat, anchor::Point{Int32}, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_sqrBoxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
sqrBoxFilter(src::UMat, ddepth::Int32, ksize::Size; dst::UMat = UMat(), anchor::Point{Int32} = Point(-1, -1), normalize::Bool = true, borderType::Int32 = BORDER_DEFAULT) = sqrBoxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function blur(src::Image, ksize::Size, dst::Image, anchor::Point{Int32}, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_blur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(borderType)))
end
blur(src::Image, ksize::Size; dst::Image = _Mat(), anchor::Point{Int32} = Point(-1,-1), borderType::Int32 = BORDER_DEFAULT) = blur(src, ksize, dst, anchor, borderType)

function blur(src::UMat, ksize::Size, dst::UMat, anchor::Point{Int32}, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_blur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(borderType)))
end
blur(src::UMat, ksize::Size; dst::UMat = UMat(), anchor::Point{Int32} = Point(-1,-1), borderType::Int32 = BORDER_DEFAULT) = blur(src, ksize, dst, anchor, borderType)

function filter2D(src::Image, ddepth::Int32, kernel::Image, dst::Image, anchor::Point{Int32}, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_filter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
filter2D(src::Image, ddepth::Int32, kernel::Image; dst::Image = _Mat(), anchor::Point{Int32} = Point(-1,-1), delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = filter2D(src, ddepth, kernel, dst, anchor, delta, borderType)

function filter2D(src::UMat, ddepth::Int32, kernel::UMat, dst::UMat, anchor::Point{Int32}, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_filter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
filter2D(src::UMat, ddepth::Int32, kernel::UMat; dst::UMat = UMat(), anchor::Point{Int32} = Point(-1,-1), delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = filter2D(src, ddepth, kernel, dst, anchor, delta, borderType)

function sepFilter2D(src::Image, ddepth::Int32, kernelX::Image, kernelY::Image, dst::Image, anchor::Point{Int32}, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_sepFilter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernelX),julia_to_cpp(kernelY),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
sepFilter2D(src::Image, ddepth::Int32, kernelX::Image, kernelY::Image; dst::Image = _Mat(), anchor::Point{Int32} = Point(-1,-1), delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = sepFilter2D(src, ddepth, kernelX, kernelY, dst, anchor, delta, borderType)

function sepFilter2D(src::UMat, ddepth::Int32, kernelX::UMat, kernelY::UMat, dst::UMat, anchor::Point{Int32}, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_sepFilter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernelX),julia_to_cpp(kernelY),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
sepFilter2D(src::UMat, ddepth::Int32, kernelX::UMat, kernelY::UMat; dst::UMat = UMat(), anchor::Point{Int32} = Point(-1,-1), delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = sepFilter2D(src, ddepth, kernelX, kernelY, dst, anchor, delta, borderType)

function Sobel(src::Image, ddepth::Int32, dx::Int32, dy::Int32, dst::Image, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Sobel(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Sobel(src::Image, ddepth::Int32, dx::Int32, dy::Int32; dst::Image = _Mat(), ksize::Int32 = 3, scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Sobel(src, ddepth, dx, dy, dst, ksize, scale, delta, borderType)

function Sobel(src::UMat, ddepth::Int32, dx::Int32, dy::Int32, dst::UMat, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Sobel(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Sobel(src::UMat, ddepth::Int32, dx::Int32, dy::Int32; dst::UMat = UMat(), ksize::Int32 = 3, scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Sobel(src, ddepth, dx, dy, dst, ksize, scale, delta, borderType)

function spatialGradient(src::Image, dx::Image, dy::Image, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_spatialGradient(julia_to_cpp(src),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
spatialGradient(src::Image; dx::Image = _Mat(), dy::Image = _Mat(), ksize::Int32 = 3, borderType::Int32 = BORDER_DEFAULT) = spatialGradient(src, dx, dy, ksize, borderType)

function spatialGradient(src::UMat, dx::UMat, dy::UMat, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_spatialGradient(julia_to_cpp(src),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
spatialGradient(src::UMat; dx::UMat = UMat(), dy::UMat = UMat(), ksize::Int32 = 3, borderType::Int32 = BORDER_DEFAULT) = spatialGradient(src, dx, dy, ksize, borderType)

function Scharr(src::Image, ddepth::Int32, dx::Int32, dy::Int32, dst::Image, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Scharr(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Scharr(src::Image, ddepth::Int32, dx::Int32, dy::Int32; dst::Image = _Mat(), scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Scharr(src, ddepth, dx, dy, dst, scale, delta, borderType)

function Scharr(src::UMat, ddepth::Int32, dx::Int32, dy::Int32, dst::UMat, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Scharr(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Scharr(src::UMat, ddepth::Int32, dx::Int32, dy::Int32; dst::UMat = UMat(), scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Scharr(src, ddepth, dx, dy, dst, scale, delta, borderType)

function Laplacian(src::Image, ddepth::Int32, dst::Image, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Laplacian(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Laplacian(src::Image, ddepth::Int32; dst::Image = _Mat(), ksize::Int32 = 1, scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Laplacian(src, ddepth, dst, ksize, scale, delta, borderType)

function Laplacian(src::UMat, ddepth::Int32, dst::UMat, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Laplacian(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Laplacian(src::UMat, ddepth::Int32; dst::UMat = UMat(), ksize::Int32 = 1, scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Laplacian(src, ddepth, dst, ksize, scale, delta, borderType)

function Canny(image::Image, threshold1::Float64, threshold2::Float64, edges::Image, apertureSize::Int32, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(image),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(apertureSize),julia_to_cpp(L2gradient)))
end
Canny(image::Image, threshold1::Float64, threshold2::Float64; edges::Image = _Mat(), apertureSize::Int32 = 3, L2gradient::Bool = false) = Canny(image, threshold1, threshold2, edges, apertureSize, L2gradient)

function Canny(image::UMat, threshold1::Float64, threshold2::Float64, edges::UMat, apertureSize::Int32, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(image),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(apertureSize),julia_to_cpp(L2gradient)))
end
Canny(image::UMat, threshold1::Float64, threshold2::Float64; edges::UMat = UMat(), apertureSize::Int32 = 3, L2gradient::Bool = false) = Canny(image, threshold1, threshold2, edges, apertureSize, L2gradient)

function Canny(dx::Image, dy::Image, threshold1::Float64, threshold2::Float64, edges::Image, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(L2gradient)))
end
Canny(dx::Image, dy::Image, threshold1::Float64, threshold2::Float64; edges::Image = _Mat(), L2gradient::Bool = false) = Canny(dx, dy, threshold1, threshold2, edges, L2gradient)

function Canny(dx::UMat, dy::UMat, threshold1::Float64, threshold2::Float64, edges::UMat, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(L2gradient)))
end
Canny(dx::UMat, dy::UMat, threshold1::Float64, threshold2::Float64; edges::UMat = UMat(), L2gradient::Bool = false) = Canny(dx, dy, threshold1, threshold2, edges, L2gradient)

function cornerMinEigenVal(src::Image, blockSize::Int32, dst::Image, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerMinEigenVal(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
cornerMinEigenVal(src::Image, blockSize::Int32; dst::Image = _Mat(), ksize::Int32 = 3, borderType::Int32 = BORDER_DEFAULT) = cornerMinEigenVal(src, blockSize, dst, ksize, borderType)

function cornerMinEigenVal(src::UMat, blockSize::Int32, dst::UMat, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerMinEigenVal(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
cornerMinEigenVal(src::UMat, blockSize::Int32; dst::UMat = UMat(), ksize::Int32 = 3, borderType::Int32 = BORDER_DEFAULT) = cornerMinEigenVal(src, blockSize, dst, ksize, borderType)

function cornerHarris(src::Image, blockSize::Int32, ksize::Int32, k::Float64, dst::Image, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerHarris(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(k),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerHarris(src::Image, blockSize::Int32, ksize::Int32, k::Float64; dst::Image = _Mat(), borderType::Int32 = BORDER_DEFAULT) = cornerHarris(src, blockSize, ksize, k, dst, borderType)

function cornerHarris(src::UMat, blockSize::Int32, ksize::Int32, k::Float64, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerHarris(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(k),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerHarris(src::UMat, blockSize::Int32, ksize::Int32, k::Float64; dst::UMat = UMat(), borderType::Int32 = BORDER_DEFAULT) = cornerHarris(src, blockSize, ksize, k, dst, borderType)

function cornerEigenValsAndVecs(src::Image, blockSize::Int32, ksize::Int32, dst::Image, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerEigenValsAndVecs(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerEigenValsAndVecs(src::Image, blockSize::Int32, ksize::Int32; dst::Image = _Mat(), borderType::Int32 = BORDER_DEFAULT) = cornerEigenValsAndVecs(src, blockSize, ksize, dst, borderType)

function cornerEigenValsAndVecs(src::UMat, blockSize::Int32, ksize::Int32, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerEigenValsAndVecs(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerEigenValsAndVecs(src::UMat, blockSize::Int32, ksize::Int32; dst::UMat = UMat(), borderType::Int32 = BORDER_DEFAULT) = cornerEigenValsAndVecs(src, blockSize, ksize, dst, borderType)

function preCornerDetect(src::Image, ksize::Int32, dst::Image, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_preCornerDetect(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
preCornerDetect(src::Image, ksize::Int32; dst::Image = _Mat(), borderType::Int32 = BORDER_DEFAULT) = preCornerDetect(src, ksize, dst, borderType)

function preCornerDetect(src::UMat, ksize::Int32, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_preCornerDetect(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
preCornerDetect(src::UMat, ksize::Int32; dst::UMat = UMat(), borderType::Int32 = BORDER_DEFAULT) = preCornerDetect(src, ksize, dst, borderType)

function cornerSubPix(image::Image, corners::Image, winSize::Size, zeroZone::Size, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_cornerSubPix(julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(winSize),julia_to_cpp(zeroZone),julia_to_cpp(criteria)))
end
cornerSubPix(image::Image, corners::Image, winSize::Size, zeroZone::Size, criteria::TermCriteria; ) = cornerSubPix(image, corners, winSize, zeroZone, criteria)

function cornerSubPix(image::UMat, corners::UMat, winSize::Size, zeroZone::Size, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_cornerSubPix(julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(winSize),julia_to_cpp(zeroZone),julia_to_cpp(criteria)))
end
cornerSubPix(image::UMat, corners::UMat, winSize::Size, zeroZone::Size, criteria::TermCriteria; ) = cornerSubPix(image, corners, winSize, zeroZone, criteria)

function goodFeaturesToTrack(image::Image, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, corners::Image, mask::Image, blockSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(corners),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::Image, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64; corners::Image = _Mat(), mask::Image = Mat(), blockSize::Int32 = 3, useHarrisDetector::Bool = false, k::Float64 = 0.04) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, corners, mask, blockSize, useHarrisDetector, k)

function goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, corners::UMat, mask::UMat, blockSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(corners),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64; corners::UMat = UMat(), mask::UMat = UMat(), blockSize::Int32 = 3, useHarrisDetector::Bool = false, k::Float64 = 0.04) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, corners, mask, blockSize, useHarrisDetector, k)

function goodFeaturesToTrack(image::Image, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::Image, blockSize::Int32, gradientSize::Int32, corners::Image, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(corners),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::Image, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::Image, blockSize::Int32, gradientSize::Int32; corners::Image = _Mat(), useHarrisDetector::Bool = false, k::Float64 = 0.04) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, corners, useHarrisDetector, k)

function goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::UMat, blockSize::Int32, gradientSize::Int32, corners::UMat, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(corners),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::UMat, blockSize::Int32, gradientSize::Int32; corners::UMat = UMat(), useHarrisDetector::Bool = false, k::Float64 = 0.04) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, corners, useHarrisDetector, k)

function HoughLines(image::Image, rho::Float64, theta::Float64, threshold::Int32, lines::Image, srn::Float64, stn::Float64, min_theta::Float64, max_theta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLines(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(srn),julia_to_cpp(stn),julia_to_cpp(min_theta),julia_to_cpp(max_theta)))
end
HoughLines(image::Image, rho::Float64, theta::Float64, threshold::Int32; lines::Image = _Mat(), srn::Float64 = 0, stn::Float64 = 0, min_theta::Float64 = 0, max_theta::Float64 = CV_PI) = HoughLines(image, rho, theta, threshold, lines, srn, stn, min_theta, max_theta)

function HoughLines(image::UMat, rho::Float64, theta::Float64, threshold::Int32, lines::UMat, srn::Float64, stn::Float64, min_theta::Float64, max_theta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLines(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(srn),julia_to_cpp(stn),julia_to_cpp(min_theta),julia_to_cpp(max_theta)))
end
HoughLines(image::UMat, rho::Float64, theta::Float64, threshold::Int32; lines::UMat = UMat(), srn::Float64 = 0, stn::Float64 = 0, min_theta::Float64 = 0, max_theta::Float64 = CV_PI) = HoughLines(image, rho, theta, threshold, lines, srn, stn, min_theta, max_theta)

function HoughLinesP(image::Image, rho::Float64, theta::Float64, threshold::Int32, lines::Image, minLineLength::Float64, maxLineGap::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesP(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(minLineLength),julia_to_cpp(maxLineGap)))
end
HoughLinesP(image::Image, rho::Float64, theta::Float64, threshold::Int32; lines::Image = _Mat(), minLineLength::Float64 = 0, maxLineGap::Float64 = 0) = HoughLinesP(image, rho, theta, threshold, lines, minLineLength, maxLineGap)

function HoughLinesP(image::UMat, rho::Float64, theta::Float64, threshold::Int32, lines::UMat, minLineLength::Float64, maxLineGap::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesP(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(minLineLength),julia_to_cpp(maxLineGap)))
end
HoughLinesP(image::UMat, rho::Float64, theta::Float64, threshold::Int32; lines::UMat = UMat(), minLineLength::Float64 = 0, maxLineGap::Float64 = 0) = HoughLinesP(image, rho, theta, threshold, lines, minLineLength, maxLineGap)

function HoughLinesPointSet(_point::Image, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64, _lines::Image)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesPointSet(julia_to_cpp(_point),julia_to_cpp(lines_max),julia_to_cpp(threshold),julia_to_cpp(min_rho),julia_to_cpp(max_rho),julia_to_cpp(rho_step),julia_to_cpp(min_theta),julia_to_cpp(max_theta),julia_to_cpp(theta_step),julia_to_cpp(_lines)))
end
HoughLinesPointSet(_point::Image, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64; _lines::Image = _Mat()) = HoughLinesPointSet(_point, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step, _lines)

function HoughLinesPointSet(_point::UMat, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64, _lines::UMat)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesPointSet(julia_to_cpp(_point),julia_to_cpp(lines_max),julia_to_cpp(threshold),julia_to_cpp(min_rho),julia_to_cpp(max_rho),julia_to_cpp(rho_step),julia_to_cpp(min_theta),julia_to_cpp(max_theta),julia_to_cpp(theta_step),julia_to_cpp(_lines)))
end
HoughLinesPointSet(_point::UMat, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64; _lines::UMat = UMat()) = HoughLinesPointSet(_point, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step, _lines)

function HoughCircles(image::Image, method::Int32, dp::Float64, minDist::Float64, circles::Image, param1::Float64, param2::Float64, minRadius::Int32, maxRadius::Int32)
	return cpp_to_julia(jlopencv_cv_cv_HoughCircles(julia_to_cpp(image),julia_to_cpp(method),julia_to_cpp(dp),julia_to_cpp(minDist),julia_to_cpp(circles),julia_to_cpp(param1),julia_to_cpp(param2),julia_to_cpp(minRadius),julia_to_cpp(maxRadius)))
end
HoughCircles(image::Image, method::Int32, dp::Float64, minDist::Float64; circles::Image = _Mat(), param1::Float64 = 100, param2::Float64 = 100, minRadius::Int32 = 0, maxRadius::Int32 = 0) = HoughCircles(image, method, dp, minDist, circles, param1, param2, minRadius, maxRadius)

function HoughCircles(image::UMat, method::Int32, dp::Float64, minDist::Float64, circles::UMat, param1::Float64, param2::Float64, minRadius::Int32, maxRadius::Int32)
	return cpp_to_julia(jlopencv_cv_cv_HoughCircles(julia_to_cpp(image),julia_to_cpp(method),julia_to_cpp(dp),julia_to_cpp(minDist),julia_to_cpp(circles),julia_to_cpp(param1),julia_to_cpp(param2),julia_to_cpp(minRadius),julia_to_cpp(maxRadius)))
end
HoughCircles(image::UMat, method::Int32, dp::Float64, minDist::Float64; circles::UMat = UMat(), param1::Float64 = 100, param2::Float64 = 100, minRadius::Int32 = 0, maxRadius::Int32 = 0) = HoughCircles(image, method, dp, minDist, circles, param1, param2, minRadius, maxRadius)

function erode(src::Image, kernel::Image, dst::Image, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_erode(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
erode(src::Image, kernel::Image; dst::Image = _Mat(), anchor::Point{Int32} = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = erode(src, kernel, dst, anchor, iterations, borderType, borderValue)

function erode(src::UMat, kernel::UMat, dst::UMat, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_erode(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
erode(src::UMat, kernel::UMat; dst::UMat = UMat(), anchor::Point{Int32} = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = erode(src, kernel, dst, anchor, iterations, borderType, borderValue)

function dilate(src::Image, kernel::Image, dst::Image, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_dilate(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
dilate(src::Image, kernel::Image; dst::Image = _Mat(), anchor::Point{Int32} = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = dilate(src, kernel, dst, anchor, iterations, borderType, borderValue)

function dilate(src::UMat, kernel::UMat, dst::UMat, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_dilate(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
dilate(src::UMat, kernel::UMat; dst::UMat = UMat(), anchor::Point{Int32} = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = dilate(src, kernel, dst, anchor, iterations, borderType, borderValue)

function morphologyEx(src::Image, op::Int32, kernel::Image, dst::Image, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_morphologyEx(julia_to_cpp(src),julia_to_cpp(op),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
morphologyEx(src::Image, op::Int32, kernel::Image; dst::Image = _Mat(), anchor::Point{Int32} = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = morphologyEx(src, op, kernel, dst, anchor, iterations, borderType, borderValue)

function morphologyEx(src::UMat, op::Int32, kernel::UMat, dst::UMat, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_morphologyEx(julia_to_cpp(src),julia_to_cpp(op),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
morphologyEx(src::UMat, op::Int32, kernel::UMat; dst::UMat = UMat(), anchor::Point{Int32} = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = morphologyEx(src, op, kernel, dst, anchor, iterations, borderType, borderValue)

function resize(src::Image, dsize::Size, dst::Image, fx::Float64, fy::Float64, interpolation::Int32)
	return cpp_to_julia(jlopencv_cv_cv_resize(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(fx),julia_to_cpp(fy),julia_to_cpp(interpolation)))
end
resize(src::Image, dsize::Size; dst::Image = _Mat(), fx::Float64 = 0, fy::Float64 = 0, interpolation::Int32 = INTER_LINEAR) = resize(src, dsize, dst, fx, fy, interpolation)

function resize(src::UMat, dsize::Size, dst::UMat, fx::Float64, fy::Float64, interpolation::Int32)
	return cpp_to_julia(jlopencv_cv_cv_resize(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(fx),julia_to_cpp(fy),julia_to_cpp(interpolation)))
end
resize(src::UMat, dsize::Size; dst::UMat = UMat(), fx::Float64 = 0, fy::Float64 = 0, interpolation::Int32 = INTER_LINEAR) = resize(src, dsize, dst, fx, fy, interpolation)

function warpAffine(src::Image, M::Image, dsize::Size, dst::Image, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpAffine(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpAffine(src::Image, M::Image, dsize::Size; dst::Image = _Mat(), flags::Int32 = INTER_LINEAR, borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = warpAffine(src, M, dsize, dst, flags, borderMode, borderValue)

function warpAffine(src::UMat, M::UMat, dsize::Size, dst::UMat, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpAffine(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpAffine(src::UMat, M::UMat, dsize::Size; dst::UMat = UMat(), flags::Int32 = INTER_LINEAR, borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = warpAffine(src, M, dsize, dst, flags, borderMode, borderValue)

function warpPerspective(src::Image, M::Image, dsize::Size, dst::Image, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpPerspective(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpPerspective(src::Image, M::Image, dsize::Size; dst::Image = _Mat(), flags::Int32 = INTER_LINEAR, borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = warpPerspective(src, M, dsize, dst, flags, borderMode, borderValue)

function warpPerspective(src::UMat, M::UMat, dsize::Size, dst::UMat, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpPerspective(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpPerspective(src::UMat, M::UMat, dsize::Size; dst::UMat = UMat(), flags::Int32 = INTER_LINEAR, borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = warpPerspective(src, M, dsize, dst, flags, borderMode, borderValue)

function remap(src::Image, map1::Image, map2::Image, interpolation::Int32, dst::Image, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_remap(julia_to_cpp(src),julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(interpolation),julia_to_cpp(dst),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
remap(src::Image, map1::Image, map2::Image, interpolation::Int32; dst::Image = _Mat(), borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = remap(src, map1, map2, interpolation, dst, borderMode, borderValue)

function remap(src::UMat, map1::UMat, map2::UMat, interpolation::Int32, dst::UMat, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_remap(julia_to_cpp(src),julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(interpolation),julia_to_cpp(dst),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
remap(src::UMat, map1::UMat, map2::UMat, interpolation::Int32; dst::UMat = UMat(), borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = remap(src, map1, map2, interpolation, dst, borderMode, borderValue)

function convertMaps(map1::Image, map2::Image, dstmap1type::Int32, dstmap1::Image, dstmap2::Image, nninterpolation::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convertMaps(julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(dstmap1type),julia_to_cpp(dstmap1),julia_to_cpp(dstmap2),julia_to_cpp(nninterpolation)))
end
convertMaps(map1::Image, map2::Image, dstmap1type::Int32; dstmap1::Image = _Mat(), dstmap2::Image = _Mat(), nninterpolation::Bool = false) = convertMaps(map1, map2, dstmap1type, dstmap1, dstmap2, nninterpolation)

function convertMaps(map1::UMat, map2::UMat, dstmap1type::Int32, dstmap1::UMat, dstmap2::UMat, nninterpolation::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convertMaps(julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(dstmap1type),julia_to_cpp(dstmap1),julia_to_cpp(dstmap2),julia_to_cpp(nninterpolation)))
end
convertMaps(map1::UMat, map2::UMat, dstmap1type::Int32; dstmap1::UMat = UMat(), dstmap2::UMat = UMat(), nninterpolation::Bool = false) = convertMaps(map1, map2, dstmap1type, dstmap1, dstmap2, nninterpolation)

function getRotationMatrix2D(center::Point{Float32}, angle::Float64, scale::Float64)
	return cpp_to_julia(jlopencv_cv_cv_getRotationMatrix2D(julia_to_cpp(center),julia_to_cpp(angle),julia_to_cpp(scale)))
end
getRotationMatrix2D(center::Point{Float32}, angle::Float64, scale::Float64; ) = getRotationMatrix2D(center, angle, scale)

function invertAffineTransform(M::Image, iM::Image)
	return cpp_to_julia(jlopencv_cv_cv_invertAffineTransform(julia_to_cpp(M),julia_to_cpp(iM)))
end
invertAffineTransform(M::Image; iM::Image = _Mat()) = invertAffineTransform(M, iM)

function invertAffineTransform(M::UMat, iM::UMat)
	return cpp_to_julia(jlopencv_cv_cv_invertAffineTransform(julia_to_cpp(M),julia_to_cpp(iM)))
end
invertAffineTransform(M::UMat; iM::UMat = UMat()) = invertAffineTransform(M, iM)

function getPerspectiveTransform(src::Image, dst::Image, solveMethod::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getPerspectiveTransform(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(solveMethod)))
end
getPerspectiveTransform(src::Image, dst::Image; solveMethod::Int32 = DECOMP_LU) = getPerspectiveTransform(src, dst, solveMethod)

function getPerspectiveTransform(src::UMat, dst::UMat, solveMethod::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getPerspectiveTransform(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(solveMethod)))
end
getPerspectiveTransform(src::UMat, dst::UMat; solveMethod::Int32 = DECOMP_LU) = getPerspectiveTransform(src, dst, solveMethod)

function getAffineTransform(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_getAffineTransform(julia_to_cpp(src),julia_to_cpp(dst)))
end
getAffineTransform(src::Image, dst::Image; ) = getAffineTransform(src, dst)

function getAffineTransform(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_getAffineTransform(julia_to_cpp(src),julia_to_cpp(dst)))
end
getAffineTransform(src::UMat, dst::UMat; ) = getAffineTransform(src, dst)

function getRectSubPix(image::Image, patchSize::Size, center::Point{Float32}, patch::Image, patchType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getRectSubPix(julia_to_cpp(image),julia_to_cpp(patchSize),julia_to_cpp(center),julia_to_cpp(patch),julia_to_cpp(patchType)))
end
getRectSubPix(image::Image, patchSize::Size, center::Point{Float32}; patch::Image = _Mat(), patchType::Int32 = -1) = getRectSubPix(image, patchSize, center, patch, patchType)

function getRectSubPix(image::UMat, patchSize::Size, center::Point{Float32}, patch::UMat, patchType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getRectSubPix(julia_to_cpp(image),julia_to_cpp(patchSize),julia_to_cpp(center),julia_to_cpp(patch),julia_to_cpp(patchType)))
end
getRectSubPix(image::UMat, patchSize::Size, center::Point{Float32}; patch::UMat = UMat(), patchType::Int32 = -1) = getRectSubPix(image, patchSize, center, patch, patchType)

function logPolar(src::Image, center::Point{Float32}, M::Float64, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_logPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(M),julia_to_cpp(flags),julia_to_cpp(dst)))
end
logPolar(src::Image, center::Point{Float32}, M::Float64, flags::Int32; dst::Image = _Mat()) = logPolar(src, center, M, flags, dst)

function logPolar(src::UMat, center::Point{Float32}, M::Float64, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_logPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(M),julia_to_cpp(flags),julia_to_cpp(dst)))
end
logPolar(src::UMat, center::Point{Float32}, M::Float64, flags::Int32; dst::UMat = UMat()) = logPolar(src, center, M, flags, dst)

function linearPolar(src::Image, center::Point{Float32}, maxRadius::Float64, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_linearPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
linearPolar(src::Image, center::Point{Float32}, maxRadius::Float64, flags::Int32; dst::Image = _Mat()) = linearPolar(src, center, maxRadius, flags, dst)

function linearPolar(src::UMat, center::Point{Float32}, maxRadius::Float64, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_linearPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
linearPolar(src::UMat, center::Point{Float32}, maxRadius::Float64, flags::Int32; dst::UMat = UMat()) = linearPolar(src, center, maxRadius, flags, dst)

function warpPolar(src::Image, dsize::Size, center::Point{Float32}, maxRadius::Float64, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_warpPolar(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
warpPolar(src::Image, dsize::Size, center::Point{Float32}, maxRadius::Float64, flags::Int32; dst::Image = _Mat()) = warpPolar(src, dsize, center, maxRadius, flags, dst)

function warpPolar(src::UMat, dsize::Size, center::Point{Float32}, maxRadius::Float64, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_warpPolar(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
warpPolar(src::UMat, dsize::Size, center::Point{Float32}, maxRadius::Float64, flags::Int32; dst::UMat = UMat()) = warpPolar(src, dsize, center, maxRadius, flags, dst)

function integral(src::Image, sum::Image, sdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sdepth)))
end
integral(src::Image; sum::Image = _Mat(), sdepth::Int32 = -1) = integral(src, sum, sdepth)

function integral(src::UMat, sum::UMat, sdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sdepth)))
end
integral(src::UMat; sum::UMat = UMat(), sdepth::Int32 = -1) = integral(src, sum, sdepth)

function integral2(src::Image, sum::Image, sqsum::Image, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral2(src::Image; sum::Image = _Mat(), sqsum::Image = _Mat(), sdepth::Int32 = -1, sqdepth::Int32 = -1) = integral2(src, sum, sqsum, sdepth, sqdepth)

function integral2(src::UMat, sum::UMat, sqsum::UMat, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral2(src::UMat; sum::UMat = UMat(), sqsum::UMat = UMat(), sdepth::Int32 = -1, sqdepth::Int32 = -1) = integral2(src, sum, sqsum, sdepth, sqdepth)

function integral3(src::Image, sum::Image, sqsum::Image, tilted::Image, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(tilted),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral3(src::Image; sum::Image = _Mat(), sqsum::Image = _Mat(), tilted::Image = _Mat(), sdepth::Int32 = -1, sqdepth::Int32 = -1) = integral3(src, sum, sqsum, tilted, sdepth, sqdepth)

function integral3(src::UMat, sum::UMat, sqsum::UMat, tilted::UMat, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(tilted),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral3(src::UMat; sum::UMat = UMat(), sqsum::UMat = UMat(), tilted::UMat = UMat(), sdepth::Int32 = -1, sqdepth::Int32 = -1) = integral3(src, sum, sqsum, tilted, sdepth, sqdepth)

function accumulate(src::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_accumulate(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulate(src::Image, dst::Image; mask::Image = Mat()) = accumulate(src, dst, mask)

function accumulate(src::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_accumulate(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulate(src::UMat, dst::UMat; mask::UMat = UMat()) = accumulate(src, dst, mask)

function accumulateSquare(src::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_accumulateSquare(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateSquare(src::Image, dst::Image; mask::Image = Mat()) = accumulateSquare(src, dst, mask)

function accumulateSquare(src::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_accumulateSquare(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateSquare(src::UMat, dst::UMat; mask::UMat = UMat()) = accumulateSquare(src, dst, mask)

function accumulateProduct(src1::Image, src2::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_accumulateProduct(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateProduct(src1::Image, src2::Image, dst::Image; mask::Image = Mat()) = accumulateProduct(src1, src2, dst, mask)

function accumulateProduct(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_accumulateProduct(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateProduct(src1::UMat, src2::UMat, dst::UMat; mask::UMat = UMat()) = accumulateProduct(src1, src2, dst, mask)

function accumulateWeighted(src::Image, dst::Image, alpha::Float64, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_accumulateWeighted(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(mask)))
end
accumulateWeighted(src::Image, dst::Image, alpha::Float64; mask::Image = Mat()) = accumulateWeighted(src, dst, alpha, mask)

function accumulateWeighted(src::UMat, dst::UMat, alpha::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_accumulateWeighted(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(mask)))
end
accumulateWeighted(src::UMat, dst::UMat, alpha::Float64; mask::UMat = UMat()) = accumulateWeighted(src, dst, alpha, mask)

function phaseCorrelate(src1::Image, src2::Image, window::Image)
	return cpp_to_julia(jlopencv_cv_cv_phaseCorrelate(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(window)))
end
phaseCorrelate(src1::Image, src2::Image; window::Image = Mat()) = phaseCorrelate(src1, src2, window)

function phaseCorrelate(src1::UMat, src2::UMat, window::UMat)
	return cpp_to_julia(jlopencv_cv_cv_phaseCorrelate(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(window)))
end
phaseCorrelate(src1::UMat, src2::UMat; window::UMat = UMat()) = phaseCorrelate(src1, src2, window)

function createHanningWindow(winSize::Size, type::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_createHanningWindow(julia_to_cpp(winSize),julia_to_cpp(type),julia_to_cpp(dst)))
end
createHanningWindow(winSize::Size, type::Int32; dst::Image = _Mat()) = createHanningWindow(winSize, type, dst)

function createHanningWindow(winSize::Size, type::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_createHanningWindow(julia_to_cpp(winSize),julia_to_cpp(type),julia_to_cpp(dst)))
end
createHanningWindow(winSize::Size, type::Int32; dst::UMat = UMat()) = createHanningWindow(winSize, type, dst)

function threshold(src::Image, thresh::Float64, maxval::Float64, type::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_threshold(julia_to_cpp(src),julia_to_cpp(thresh),julia_to_cpp(maxval),julia_to_cpp(type),julia_to_cpp(dst)))
end
threshold(src::Image, thresh::Float64, maxval::Float64, type::Int32; dst::Image = _Mat()) = threshold(src, thresh, maxval, type, dst)

function threshold(src::UMat, thresh::Float64, maxval::Float64, type::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_threshold(julia_to_cpp(src),julia_to_cpp(thresh),julia_to_cpp(maxval),julia_to_cpp(type),julia_to_cpp(dst)))
end
threshold(src::UMat, thresh::Float64, maxval::Float64, type::Int32; dst::UMat = UMat()) = threshold(src, thresh, maxval, type, dst)

function adaptiveThreshold(src::Image, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_adaptiveThreshold(julia_to_cpp(src),julia_to_cpp(maxValue),julia_to_cpp(adaptiveMethod),julia_to_cpp(thresholdType),julia_to_cpp(blockSize),julia_to_cpp(C),julia_to_cpp(dst)))
end
adaptiveThreshold(src::Image, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64; dst::Image = _Mat()) = adaptiveThreshold(src, maxValue, adaptiveMethod, thresholdType, blockSize, C, dst)

function adaptiveThreshold(src::UMat, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_adaptiveThreshold(julia_to_cpp(src),julia_to_cpp(maxValue),julia_to_cpp(adaptiveMethod),julia_to_cpp(thresholdType),julia_to_cpp(blockSize),julia_to_cpp(C),julia_to_cpp(dst)))
end
adaptiveThreshold(src::UMat, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64; dst::UMat = UMat()) = adaptiveThreshold(src, maxValue, adaptiveMethod, thresholdType, blockSize, C, dst)

function pyrDown(src::Image, dst::Image, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_pyrDown(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrDown(src::Image; dst::Image = _Mat(), dstsize::Size = Size(), borderType::Int32 = BORDER_DEFAULT) = pyrDown(src, dst, dstsize, borderType)

function pyrDown(src::UMat, dst::UMat, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_pyrDown(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrDown(src::UMat; dst::UMat = UMat(), dstsize::Size = Size(), borderType::Int32 = BORDER_DEFAULT) = pyrDown(src, dst, dstsize, borderType)

function pyrUp(src::Image, dst::Image, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_pyrUp(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrUp(src::Image; dst::Image = _Mat(), dstsize::Size = Size(), borderType::Int32 = BORDER_DEFAULT) = pyrUp(src, dst, dstsize, borderType)

function pyrUp(src::UMat, dst::UMat, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_pyrUp(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrUp(src::UMat; dst::UMat = UMat(), dstsize::Size = Size(), borderType::Int32 = BORDER_DEFAULT) = pyrUp(src, dst, dstsize, borderType)

function calcHist(images::Array{Image, 1}, channels::Array{Int32, 1}, mask::Image, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}, hist::Image, accumulate::Bool)
	return cpp_to_julia(jlopencv_cv_cv_calcHist(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(mask),julia_to_cpp(histSize),julia_to_cpp(ranges),julia_to_cpp(hist),julia_to_cpp(accumulate)))
end
calcHist(images::Array{Image, 1}, channels::Array{Int32, 1}, mask::Image, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}; hist::Image = _Mat(), accumulate::Bool = false) = calcHist(images, channels, mask, histSize, ranges, hist, accumulate)

function calcHist(images::Array{UMat, 1}, channels::Array{Int32, 1}, mask::UMat, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}, hist::UMat, accumulate::Bool)
	return cpp_to_julia(jlopencv_cv_cv_calcHist(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(mask),julia_to_cpp(histSize),julia_to_cpp(ranges),julia_to_cpp(hist),julia_to_cpp(accumulate)))
end
calcHist(images::Array{UMat, 1}, channels::Array{Int32, 1}, mask::UMat, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}; hist::UMat = UMat(), accumulate::Bool = false) = calcHist(images, channels, mask, histSize, ranges, hist, accumulate)

function calcBackProject(images::Array{Image, 1}, channels::Array{Int32, 1}, hist::Image, ranges::Array{Float32, 1}, scale::Float64, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_calcBackProject(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(hist),julia_to_cpp(ranges),julia_to_cpp(scale),julia_to_cpp(dst)))
end
calcBackProject(images::Array{Image, 1}, channels::Array{Int32, 1}, hist::Image, ranges::Array{Float32, 1}, scale::Float64; dst::Image = _Mat()) = calcBackProject(images, channels, hist, ranges, scale, dst)

function calcBackProject(images::Array{UMat, 1}, channels::Array{Int32, 1}, hist::UMat, ranges::Array{Float32, 1}, scale::Float64, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_calcBackProject(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(hist),julia_to_cpp(ranges),julia_to_cpp(scale),julia_to_cpp(dst)))
end
calcBackProject(images::Array{UMat, 1}, channels::Array{Int32, 1}, hist::UMat, ranges::Array{Float32, 1}, scale::Float64; dst::UMat = UMat()) = calcBackProject(images, channels, hist, ranges, scale, dst)

function compareHist(H1::Image, H2::Image, method::Int32)
	return cpp_to_julia(jlopencv_cv_cv_compareHist(julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(method)))
end
compareHist(H1::Image, H2::Image, method::Int32; ) = compareHist(H1, H2, method)

function compareHist(H1::UMat, H2::UMat, method::Int32)
	return cpp_to_julia(jlopencv_cv_cv_compareHist(julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(method)))
end
compareHist(H1::UMat, H2::UMat, method::Int32; ) = compareHist(H1, H2, method)

function equalizeHist(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_equalizeHist(julia_to_cpp(src),julia_to_cpp(dst)))
end
equalizeHist(src::Image; dst::Image = _Mat()) = equalizeHist(src, dst)

function equalizeHist(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_equalizeHist(julia_to_cpp(src),julia_to_cpp(dst)))
end
equalizeHist(src::UMat; dst::UMat = UMat()) = equalizeHist(src, dst)

function createCLAHE(clipLimit::Float64, tileGridSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_createCLAHE(julia_to_cpp(clipLimit),julia_to_cpp(tileGridSize)))
end
createCLAHE(; clipLimit::Float64 = 40.0, tileGridSize::Size = Size(8, 8)) = createCLAHE(clipLimit, tileGridSize)

function EMD(signature1::Image, signature2::Image, distType::Int32, cost::Image, lowerBound::Ptr{Float32}, flow::Image)
	return cpp_to_julia(jlopencv_cv_cv_wrapperEMD(julia_to_cpp(signature1),julia_to_cpp(signature2),julia_to_cpp(distType),julia_to_cpp(cost),julia_to_cpp(lowerBound),julia_to_cpp(flow)))
end
EMD(signature1::Image, signature2::Image, distType::Int32; cost::Image = Mat(), lowerBound::Ptr{Float32} = Ptr{Float32}(), flow::Image = Mat()) = EMD(signature1, signature2, distType, cost, lowerBound, flow)

function EMD(signature1::UMat, signature2::UMat, distType::Int32, cost::UMat, lowerBound::Ptr{Float32}, flow::UMat)
	return cpp_to_julia(jlopencv_cv_cv_wrapperEMD(julia_to_cpp(signature1),julia_to_cpp(signature2),julia_to_cpp(distType),julia_to_cpp(cost),julia_to_cpp(lowerBound),julia_to_cpp(flow)))
end
EMD(signature1::UMat, signature2::UMat, distType::Int32; cost::UMat = UMat(), lowerBound::Ptr{Float32} = Ptr{Float32}(), flow::UMat = UMat()) = EMD(signature1, signature2, distType, cost, lowerBound, flow)

function watershed(image::Image, markers::Image)
	return cpp_to_julia(jlopencv_cv_cv_watershed(julia_to_cpp(image),julia_to_cpp(markers)))
end
watershed(image::Image, markers::Image; ) = watershed(image, markers)

function watershed(image::UMat, markers::UMat)
	return cpp_to_julia(jlopencv_cv_cv_watershed(julia_to_cpp(image),julia_to_cpp(markers)))
end
watershed(image::UMat, markers::UMat; ) = watershed(image, markers)

function pyrMeanShiftFiltering(src::Image, sp::Float64, sr::Float64, dst::Image, maxLevel::Int32, termcrit::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_pyrMeanShiftFiltering(julia_to_cpp(src),julia_to_cpp(sp),julia_to_cpp(sr),julia_to_cpp(dst),julia_to_cpp(maxLevel),julia_to_cpp(termcrit)))
end
pyrMeanShiftFiltering(src::Image, sp::Float64, sr::Float64; dst::Image = _Mat(), maxLevel::Int32 = 1, termcrit::TermCriteria = TermCriteria(TermCriteria::MAX_ITER+TermCriteria::EPS,5,1)) = pyrMeanShiftFiltering(src, sp, sr, dst, maxLevel, termcrit)

function pyrMeanShiftFiltering(src::UMat, sp::Float64, sr::Float64, dst::UMat, maxLevel::Int32, termcrit::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_pyrMeanShiftFiltering(julia_to_cpp(src),julia_to_cpp(sp),julia_to_cpp(sr),julia_to_cpp(dst),julia_to_cpp(maxLevel),julia_to_cpp(termcrit)))
end
pyrMeanShiftFiltering(src::UMat, sp::Float64, sr::Float64; dst::UMat = UMat(), maxLevel::Int32 = 1, termcrit::TermCriteria = TermCriteria(TermCriteria::MAX_ITER+TermCriteria::EPS,5,1)) = pyrMeanShiftFiltering(src, sp, sr, dst, maxLevel, termcrit)

function grabCut(img::Image, mask::Image, rect::Rect, bgdModel::Image, fgdModel::Image, iterCount::Int32, mode::Int32)
	return cpp_to_julia(jlopencv_cv_cv_grabCut(julia_to_cpp(img),julia_to_cpp(mask),julia_to_cpp(rect),julia_to_cpp(bgdModel),julia_to_cpp(fgdModel),julia_to_cpp(iterCount),julia_to_cpp(mode)))
end
grabCut(img::Image, mask::Image, rect::Rect, bgdModel::Image, fgdModel::Image, iterCount::Int32; mode::Int32 = GC_EVAL) = grabCut(img, mask, rect, bgdModel, fgdModel, iterCount, mode)

function grabCut(img::UMat, mask::UMat, rect::Rect, bgdModel::UMat, fgdModel::UMat, iterCount::Int32, mode::Int32)
	return cpp_to_julia(jlopencv_cv_cv_grabCut(julia_to_cpp(img),julia_to_cpp(mask),julia_to_cpp(rect),julia_to_cpp(bgdModel),julia_to_cpp(fgdModel),julia_to_cpp(iterCount),julia_to_cpp(mode)))
end
grabCut(img::UMat, mask::UMat, rect::Rect, bgdModel::UMat, fgdModel::UMat, iterCount::Int32; mode::Int32 = GC_EVAL) = grabCut(img, mask, rect, bgdModel, fgdModel, iterCount, mode)

function distanceTransformWithLabels(src::Image, distanceType::Int32, maskSize::Int32, dst::Image, labels::Image, labelType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(labels),julia_to_cpp(labelType)))
end
distanceTransformWithLabels(src::Image, distanceType::Int32, maskSize::Int32; dst::Image = _Mat(), labels::Image = _Mat(), labelType::Int32 = DIST_LABEL_CCOMP) = distanceTransformWithLabels(src, distanceType, maskSize, dst, labels, labelType)

function distanceTransformWithLabels(src::UMat, distanceType::Int32, maskSize::Int32, dst::UMat, labels::UMat, labelType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(labels),julia_to_cpp(labelType)))
end
distanceTransformWithLabels(src::UMat, distanceType::Int32, maskSize::Int32; dst::UMat = UMat(), labels::UMat = UMat(), labelType::Int32 = DIST_LABEL_CCOMP) = distanceTransformWithLabels(src, distanceType, maskSize, dst, labels, labelType)

function distanceTransform(src::Image, distanceType::Int32, maskSize::Int32, dst::Image, dstType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(dstType)))
end
distanceTransform(src::Image, distanceType::Int32, maskSize::Int32; dst::Image = _Mat(), dstType::Int32 = CV_32F) = distanceTransform(src, distanceType, maskSize, dst, dstType)

function distanceTransform(src::UMat, distanceType::Int32, maskSize::Int32, dst::UMat, dstType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(dstType)))
end
distanceTransform(src::UMat, distanceType::Int32, maskSize::Int32; dst::UMat = UMat(), dstType::Int32 = CV_32F) = distanceTransform(src, distanceType, maskSize, dst, dstType)

function floodFill(image::Image, mask::Image, seedPoint::Point{Int32}, newVal::Scalar, loDiff::Scalar, upDiff::Scalar, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_floodFill(julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(seedPoint),julia_to_cpp(newVal),julia_to_cpp(loDiff),julia_to_cpp(upDiff),julia_to_cpp(flags)))
end
floodFill(image::Image, mask::Image, seedPoint::Point{Int32}, newVal::Scalar; loDiff::Scalar = Scalar(), upDiff::Scalar = Scalar(), flags::Int32 = 4) = floodFill(image, mask, seedPoint, newVal, loDiff, upDiff, flags)

function floodFill(image::UMat, mask::UMat, seedPoint::Point{Int32}, newVal::Scalar, loDiff::Scalar, upDiff::Scalar, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_floodFill(julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(seedPoint),julia_to_cpp(newVal),julia_to_cpp(loDiff),julia_to_cpp(upDiff),julia_to_cpp(flags)))
end
floodFill(image::UMat, mask::UMat, seedPoint::Point{Int32}, newVal::Scalar; loDiff::Scalar = Scalar(), upDiff::Scalar = Scalar(), flags::Int32 = 4) = floodFill(image, mask, seedPoint, newVal, loDiff, upDiff, flags)

function cvtColor(src::Image, code::Int32, dst::Image, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cvtColor(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
cvtColor(src::Image, code::Int32; dst::Image = _Mat(), dstCn::Int32 = 0) = cvtColor(src, code, dst, dstCn)

function cvtColor(src::UMat, code::Int32, dst::UMat, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cvtColor(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
cvtColor(src::UMat, code::Int32; dst::UMat = UMat(), dstCn::Int32 = 0) = cvtColor(src, code, dst, dstCn)

function cvtColorTwoPlane(src1::Image, src2::Image, code::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_cvtColorTwoPlane(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(code),julia_to_cpp(dst)))
end
cvtColorTwoPlane(src1::Image, src2::Image, code::Int32; dst::Image = _Mat()) = cvtColorTwoPlane(src1, src2, code, dst)

function cvtColorTwoPlane(src1::UMat, src2::UMat, code::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_cvtColorTwoPlane(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(code),julia_to_cpp(dst)))
end
cvtColorTwoPlane(src1::UMat, src2::UMat, code::Int32; dst::UMat = UMat()) = cvtColorTwoPlane(src1, src2, code, dst)

function demosaicing(src::Image, code::Int32, dst::Image, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cv_demosaicing(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
demosaicing(src::Image, code::Int32; dst::Image = _Mat(), dstCn::Int32 = 0) = demosaicing(src, code, dst, dstCn)

function demosaicing(src::UMat, code::Int32, dst::UMat, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cv_demosaicing(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
demosaicing(src::UMat, code::Int32; dst::UMat = UMat(), dstCn::Int32 = 0) = demosaicing(src, code, dst, dstCn)

function moments(array::Image, binaryImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_moments(julia_to_cpp(array),julia_to_cpp(binaryImage)))
end
moments(array::Image; binaryImage::Bool = false) = moments(array, binaryImage)

function moments(array::UMat, binaryImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_moments(julia_to_cpp(array),julia_to_cpp(binaryImage)))
end
moments(array::UMat; binaryImage::Bool = false) = moments(array, binaryImage)

function HuMoments(m::Moments, hu::Image)
	return cpp_to_julia(jlopencv_cv_cv_HuMoments(julia_to_cpp(m),julia_to_cpp(hu)))
end
HuMoments(m::Moments; hu::Image = _Mat()) = HuMoments(m, hu)

function HuMoments(m::Moments, hu::UMat)
	return cpp_to_julia(jlopencv_cv_cv_HuMoments(julia_to_cpp(m),julia_to_cpp(hu)))
end
HuMoments(m::Moments; hu::UMat = UMat()) = HuMoments(m, hu)

function matchTemplate(image::Image, templ::Image, method::Int32, result::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_matchTemplate(julia_to_cpp(image),julia_to_cpp(templ),julia_to_cpp(method),julia_to_cpp(result),julia_to_cpp(mask)))
end
matchTemplate(image::Image, templ::Image, method::Int32; result::Image = _Mat(), mask::Image = Mat()) = matchTemplate(image, templ, method, result, mask)

function matchTemplate(image::UMat, templ::UMat, method::Int32, result::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_matchTemplate(julia_to_cpp(image),julia_to_cpp(templ),julia_to_cpp(method),julia_to_cpp(result),julia_to_cpp(mask)))
end
matchTemplate(image::UMat, templ::UMat, method::Int32; result::UMat = UMat(), mask::UMat = UMat()) = matchTemplate(image, templ, method, result, mask)

function connectedComponentsWithAlgorithm(image::Image, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::Image)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels)))
end
connectedComponentsWithAlgorithm(image::Image, connectivity::Int32, ltype::Int32, ccltype::Int32; labels::Image = _Mat()) = connectedComponentsWithAlgorithm(image, connectivity, ltype, ccltype, labels)

function connectedComponentsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::UMat)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels)))
end
connectedComponentsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32; labels::UMat = UMat()) = connectedComponentsWithAlgorithm(image, connectivity, ltype, ccltype, labels)

function connectedComponents(image::Image, labels::Image, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponents(image::Image; labels::Image = _Mat(), connectivity::Int32 = 8, ltype::Int32 = CV_32S) = connectedComponents(image, labels, connectivity, ltype)

function connectedComponents(image::UMat, labels::UMat, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponents(image::UMat; labels::UMat = UMat(), connectivity::Int32 = 8, ltype::Int32 = CV_32S) = connectedComponents(image, labels, connectivity, ltype)

function connectedComponentsWithStatsWithAlgorithm(image::Image, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::Image, stats::Image, centroids::Image)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids)))
end
connectedComponentsWithStatsWithAlgorithm(image::Image, connectivity::Int32, ltype::Int32, ccltype::Int32; labels::Image = _Mat(), stats::Image = _Mat(), centroids::Image = _Mat()) = connectedComponentsWithStatsWithAlgorithm(image, connectivity, ltype, ccltype, labels, stats, centroids)

function connectedComponentsWithStatsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::UMat, stats::UMat, centroids::UMat)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids)))
end
connectedComponentsWithStatsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32; labels::UMat = UMat(), stats::UMat = UMat(), centroids::UMat = UMat()) = connectedComponentsWithStatsWithAlgorithm(image, connectivity, ltype, ccltype, labels, stats, centroids)

function connectedComponentsWithStats(image::Image, labels::Image, stats::Image, centroids::Image, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponentsWithStats(image::Image; labels::Image = _Mat(), stats::Image = _Mat(), centroids::Image = _Mat(), connectivity::Int32 = 8, ltype::Int32 = CV_32S) = connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype)

function connectedComponentsWithStats(image::UMat, labels::UMat, stats::UMat, centroids::UMat, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponentsWithStats(image::UMat; labels::UMat = UMat(), stats::UMat = UMat(), centroids::UMat = UMat(), connectivity::Int32 = 8, ltype::Int32 = CV_32S) = connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype)

function findContours(image::Image, mode::Int32, method::Int32, contours::Array{Image, 1}, hierarchy::Image, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_findContours(julia_to_cpp(image),julia_to_cpp(mode),julia_to_cpp(method),julia_to_cpp(contours),julia_to_cpp(hierarchy),julia_to_cpp(offset)))
end
findContours(image::Image, mode::Int32, method::Int32; contours::Array{Image, 1} = Array{Image, 1}(), hierarchy::Image = _Mat(), offset::Point{Int32} = Point()) = findContours(image, mode, method, contours, hierarchy, offset)

function findContours(image::UMat, mode::Int32, method::Int32, contours::Array{UMat, 1}, hierarchy::UMat, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_findContours(julia_to_cpp(image),julia_to_cpp(mode),julia_to_cpp(method),julia_to_cpp(contours),julia_to_cpp(hierarchy),julia_to_cpp(offset)))
end
findContours(image::UMat, mode::Int32, method::Int32; contours::Array{UMat, 1} = Array{UMat, 1}(), hierarchy::UMat = UMat(), offset::Point{Int32} = Point()) = findContours(image, mode, method, contours, hierarchy, offset)

function approxPolyDP(curve::Image, epsilon::Float64, closed::Bool, approxCurve::Image)
	return cpp_to_julia(jlopencv_cv_cv_approxPolyDP(julia_to_cpp(curve),julia_to_cpp(epsilon),julia_to_cpp(closed),julia_to_cpp(approxCurve)))
end
approxPolyDP(curve::Image, epsilon::Float64, closed::Bool; approxCurve::Image = _Mat()) = approxPolyDP(curve, epsilon, closed, approxCurve)

function approxPolyDP(curve::UMat, epsilon::Float64, closed::Bool, approxCurve::UMat)
	return cpp_to_julia(jlopencv_cv_cv_approxPolyDP(julia_to_cpp(curve),julia_to_cpp(epsilon),julia_to_cpp(closed),julia_to_cpp(approxCurve)))
end
approxPolyDP(curve::UMat, epsilon::Float64, closed::Bool; approxCurve::UMat = UMat()) = approxPolyDP(curve, epsilon, closed, approxCurve)

function arcLength(curve::Image, closed::Bool)
	return cpp_to_julia(jlopencv_cv_cv_arcLength(julia_to_cpp(curve),julia_to_cpp(closed)))
end
arcLength(curve::Image, closed::Bool; ) = arcLength(curve, closed)

function arcLength(curve::UMat, closed::Bool)
	return cpp_to_julia(jlopencv_cv_cv_arcLength(julia_to_cpp(curve),julia_to_cpp(closed)))
end
arcLength(curve::UMat, closed::Bool; ) = arcLength(curve, closed)

function boundingRect(array::Image)
	return cpp_to_julia(jlopencv_cv_cv_boundingRect(julia_to_cpp(array)))
end
boundingRect(array::Image; ) = boundingRect(array)

function boundingRect(array::UMat)
	return cpp_to_julia(jlopencv_cv_cv_boundingRect(julia_to_cpp(array)))
end
boundingRect(array::UMat; ) = boundingRect(array)

function contourArea(contour::Image, oriented::Bool)
	return cpp_to_julia(jlopencv_cv_cv_contourArea(julia_to_cpp(contour),julia_to_cpp(oriented)))
end
contourArea(contour::Image; oriented::Bool = false) = contourArea(contour, oriented)

function contourArea(contour::UMat, oriented::Bool)
	return cpp_to_julia(jlopencv_cv_cv_contourArea(julia_to_cpp(contour),julia_to_cpp(oriented)))
end
contourArea(contour::UMat; oriented::Bool = false) = contourArea(contour, oriented)

function minAreaRect(points::Image)
	return cpp_to_julia(jlopencv_cv_cv_minAreaRect(julia_to_cpp(points)))
end
minAreaRect(points::Image; ) = minAreaRect(points)

function minAreaRect(points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_minAreaRect(julia_to_cpp(points)))
end
minAreaRect(points::UMat; ) = minAreaRect(points)

function boxPoints(box::RotatedRect, points::Image)
	return cpp_to_julia(jlopencv_cv_cv_boxPoints(julia_to_cpp(box),julia_to_cpp(points)))
end
boxPoints(box::RotatedRect; points::Image = _Mat()) = boxPoints(box, points)

function boxPoints(box::RotatedRect, points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_boxPoints(julia_to_cpp(box),julia_to_cpp(points)))
end
boxPoints(box::RotatedRect; points::UMat = UMat()) = boxPoints(box, points)

function minEnclosingCircle(points::Image)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingCircle(julia_to_cpp(points)))
end
minEnclosingCircle(points::Image; ) = minEnclosingCircle(points)

function minEnclosingCircle(points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingCircle(julia_to_cpp(points)))
end
minEnclosingCircle(points::UMat; ) = minEnclosingCircle(points)

function minEnclosingTriangle(points::Image, triangle::Image)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingTriangle(julia_to_cpp(points),julia_to_cpp(triangle)))
end
minEnclosingTriangle(points::Image; triangle::Image = _Mat()) = minEnclosingTriangle(points, triangle)

function minEnclosingTriangle(points::UMat, triangle::UMat)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingTriangle(julia_to_cpp(points),julia_to_cpp(triangle)))
end
minEnclosingTriangle(points::UMat; triangle::UMat = UMat()) = minEnclosingTriangle(points, triangle)

function matchShapes(contour1::Image, contour2::Image, method::Int32, parameter::Float64)
	return cpp_to_julia(jlopencv_cv_cv_matchShapes(julia_to_cpp(contour1),julia_to_cpp(contour2),julia_to_cpp(method),julia_to_cpp(parameter)))
end
matchShapes(contour1::Image, contour2::Image, method::Int32, parameter::Float64; ) = matchShapes(contour1, contour2, method, parameter)

function matchShapes(contour1::UMat, contour2::UMat, method::Int32, parameter::Float64)
	return cpp_to_julia(jlopencv_cv_cv_matchShapes(julia_to_cpp(contour1),julia_to_cpp(contour2),julia_to_cpp(method),julia_to_cpp(parameter)))
end
matchShapes(contour1::UMat, contour2::UMat, method::Int32, parameter::Float64; ) = matchShapes(contour1, contour2, method, parameter)

function convexHull(points::Image, hull::Image, clockwise::Bool, returnPoints::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convexHull(julia_to_cpp(points),julia_to_cpp(hull),julia_to_cpp(clockwise),julia_to_cpp(returnPoints)))
end
convexHull(points::Image; hull::Image = _Mat(), clockwise::Bool = false, returnPoints::Bool = true) = convexHull(points, hull, clockwise, returnPoints)

function convexHull(points::UMat, hull::UMat, clockwise::Bool, returnPoints::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convexHull(julia_to_cpp(points),julia_to_cpp(hull),julia_to_cpp(clockwise),julia_to_cpp(returnPoints)))
end
convexHull(points::UMat; hull::UMat = UMat(), clockwise::Bool = false, returnPoints::Bool = true) = convexHull(points, hull, clockwise, returnPoints)

function convexityDefects(contour::Image, convexhull::Image, convexityDefects::Image)
	return cpp_to_julia(jlopencv_cv_cv_convexityDefects(julia_to_cpp(contour),julia_to_cpp(convexhull),julia_to_cpp(convexityDefects)))
end
convexityDefects(contour::Image, convexhull::Image; convexityDefects::Image = _Mat()) = convexityDefects(contour, convexhull, convexityDefects)

function convexityDefects(contour::UMat, convexhull::UMat, convexityDefects::UMat)
	return cpp_to_julia(jlopencv_cv_cv_convexityDefects(julia_to_cpp(contour),julia_to_cpp(convexhull),julia_to_cpp(convexityDefects)))
end
convexityDefects(contour::UMat, convexhull::UMat; convexityDefects::UMat = UMat()) = convexityDefects(contour, convexhull, convexityDefects)

function isContourConvex(contour::Image)
	return cpp_to_julia(jlopencv_cv_cv_isContourConvex(julia_to_cpp(contour)))
end
isContourConvex(contour::Image; ) = isContourConvex(contour)

function isContourConvex(contour::UMat)
	return cpp_to_julia(jlopencv_cv_cv_isContourConvex(julia_to_cpp(contour)))
end
isContourConvex(contour::UMat; ) = isContourConvex(contour)

function intersectConvexConvex(_p1::Image, _p2::Image, _p12::Image, handleNested::Bool)
	return cpp_to_julia(jlopencv_cv_cv_intersectConvexConvex(julia_to_cpp(_p1),julia_to_cpp(_p2),julia_to_cpp(_p12),julia_to_cpp(handleNested)))
end
intersectConvexConvex(_p1::Image, _p2::Image; _p12::Image = _Mat(), handleNested::Bool = true) = intersectConvexConvex(_p1, _p2, _p12, handleNested)

function intersectConvexConvex(_p1::UMat, _p2::UMat, _p12::UMat, handleNested::Bool)
	return cpp_to_julia(jlopencv_cv_cv_intersectConvexConvex(julia_to_cpp(_p1),julia_to_cpp(_p2),julia_to_cpp(_p12),julia_to_cpp(handleNested)))
end
intersectConvexConvex(_p1::UMat, _p2::UMat; _p12::UMat = UMat(), handleNested::Bool = true) = intersectConvexConvex(_p1, _p2, _p12, handleNested)

function fitEllipse(points::Image)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipse(julia_to_cpp(points)))
end
fitEllipse(points::Image; ) = fitEllipse(points)

function fitEllipse(points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipse(julia_to_cpp(points)))
end
fitEllipse(points::UMat; ) = fitEllipse(points)

function fitEllipseAMS(points::Image)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseAMS(julia_to_cpp(points)))
end
fitEllipseAMS(points::Image; ) = fitEllipseAMS(points)

function fitEllipseAMS(points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseAMS(julia_to_cpp(points)))
end
fitEllipseAMS(points::UMat; ) = fitEllipseAMS(points)

function fitEllipseDirect(points::Image)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseDirect(julia_to_cpp(points)))
end
fitEllipseDirect(points::Image; ) = fitEllipseDirect(points)

function fitEllipseDirect(points::UMat)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseDirect(julia_to_cpp(points)))
end
fitEllipseDirect(points::UMat; ) = fitEllipseDirect(points)

function fitLine(points::Image, distType::Int32, param::Float64, reps::Float64, aeps::Float64, line::Image)
	return cpp_to_julia(jlopencv_cv_cv_fitLine(julia_to_cpp(points),julia_to_cpp(distType),julia_to_cpp(param),julia_to_cpp(reps),julia_to_cpp(aeps),julia_to_cpp(line)))
end
fitLine(points::Image, distType::Int32, param::Float64, reps::Float64, aeps::Float64; line::Image = _Mat()) = fitLine(points, distType, param, reps, aeps, line)

function fitLine(points::UMat, distType::Int32, param::Float64, reps::Float64, aeps::Float64, line::UMat)
	return cpp_to_julia(jlopencv_cv_cv_fitLine(julia_to_cpp(points),julia_to_cpp(distType),julia_to_cpp(param),julia_to_cpp(reps),julia_to_cpp(aeps),julia_to_cpp(line)))
end
fitLine(points::UMat, distType::Int32, param::Float64, reps::Float64, aeps::Float64; line::UMat = UMat()) = fitLine(points, distType, param, reps, aeps, line)

function pointPolygonTest(contour::Image, pt::Point{Float32}, measureDist::Bool)
	return cpp_to_julia(jlopencv_cv_cv_pointPolygonTest(julia_to_cpp(contour),julia_to_cpp(pt),julia_to_cpp(measureDist)))
end
pointPolygonTest(contour::Image, pt::Point{Float32}, measureDist::Bool; ) = pointPolygonTest(contour, pt, measureDist)

function pointPolygonTest(contour::UMat, pt::Point{Float32}, measureDist::Bool)
	return cpp_to_julia(jlopencv_cv_cv_pointPolygonTest(julia_to_cpp(contour),julia_to_cpp(pt),julia_to_cpp(measureDist)))
end
pointPolygonTest(contour::UMat, pt::Point{Float32}, measureDist::Bool; ) = pointPolygonTest(contour, pt, measureDist)

function rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect, intersectingRegion::Image)
	return cpp_to_julia(jlopencv_cv_cv_rotatedRectangleIntersection(julia_to_cpp(rect1),julia_to_cpp(rect2),julia_to_cpp(intersectingRegion)))
end
rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect; intersectingRegion::Image = _Mat()) = rotatedRectangleIntersection(rect1, rect2, intersectingRegion)

function rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect, intersectingRegion::UMat)
	return cpp_to_julia(jlopencv_cv_cv_rotatedRectangleIntersection(julia_to_cpp(rect1),julia_to_cpp(rect2),julia_to_cpp(intersectingRegion)))
end
rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect; intersectingRegion::UMat = UMat()) = rotatedRectangleIntersection(rect1, rect2, intersectingRegion)

function createGeneralizedHoughBallard()
	return cpp_to_julia(jlopencv_cv_cv_createGeneralizedHoughBallard())
end
createGeneralizedHoughBallard(; ) = createGeneralizedHoughBallard()

function createGeneralizedHoughGuil()
	return cpp_to_julia(jlopencv_cv_cv_createGeneralizedHoughGuil())
end
createGeneralizedHoughGuil(; ) = createGeneralizedHoughGuil()

function applyColorMap(src::Image, colormap::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(colormap),julia_to_cpp(dst)))
end
applyColorMap(src::Image, colormap::Int32; dst::Image = _Mat()) = applyColorMap(src, colormap, dst)

function applyColorMap(src::UMat, colormap::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(colormap),julia_to_cpp(dst)))
end
applyColorMap(src::UMat, colormap::Int32; dst::UMat = UMat()) = applyColorMap(src, colormap, dst)

function applyColorMap(src::Image, userColor::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(userColor),julia_to_cpp(dst)))
end
applyColorMap(src::Image, userColor::Image; dst::Image = _Mat()) = applyColorMap(src, userColor, dst)

function applyColorMap(src::UMat, userColor::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(userColor),julia_to_cpp(dst)))
end
applyColorMap(src::UMat, userColor::UMat; dst::UMat = UMat()) = applyColorMap(src, userColor, dst)

function line(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_line(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
line(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = line(img, pt1, pt2, color, thickness, lineType, shift)

function line(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_line(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
line(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = line(img, pt1, pt2, color, thickness, lineType, shift)

function arrowedLine(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, line_type::Int32, shift::Int32, tipLength::Float64)
	return cpp_to_julia(jlopencv_cv_cv_arrowedLine(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(line_type),julia_to_cpp(shift),julia_to_cpp(tipLength)))
end
arrowedLine(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = 1, line_type::Int32 = 8, shift::Int32 = 0, tipLength::Float64 = 0.1) = arrowedLine(img, pt1, pt2, color, thickness, line_type, shift, tipLength)

function arrowedLine(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, line_type::Int32, shift::Int32, tipLength::Float64)
	return cpp_to_julia(jlopencv_cv_cv_arrowedLine(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(line_type),julia_to_cpp(shift),julia_to_cpp(tipLength)))
end
arrowedLine(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = 1, line_type::Int32 = 8, shift::Int32 = 0, tipLength::Float64 = 0.1) = arrowedLine(img, pt1, pt2, color, thickness, line_type, shift, tipLength)

function rectangle(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::Image, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = rectangle(img, pt1, pt2, color, thickness, lineType, shift)

function rectangle(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::UMat, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = rectangle(img, pt1, pt2, color, thickness, lineType, shift)

function rectangle(img::Image, rec::Rect, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(rec),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::Image, rec::Rect, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = rectangle(img, rec, color, thickness, lineType, shift)

function rectangle(img::UMat, rec::Rect, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(rec),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::UMat, rec::Rect, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = rectangle(img, rec, color, thickness, lineType, shift)

function circle(img::Image, center::Point{Int32}, radius::Int32, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_circle(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(radius),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
circle(img::Image, center::Point{Int32}, radius::Int32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = circle(img, center, radius, color, thickness, lineType, shift)

function circle(img::UMat, center::Point{Int32}, radius::Int32, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_circle(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(radius),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
circle(img::UMat, center::Point{Int32}, radius::Int32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = circle(img, center, radius, color, thickness, lineType, shift)

function ellipse(img::Image, center::Point{Int32}, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(startAngle),julia_to_cpp(endAngle),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
ellipse(img::Image, center::Point{Int32}, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = ellipse(img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift)

function ellipse(img::UMat, center::Point{Int32}, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(startAngle),julia_to_cpp(endAngle),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
ellipse(img::UMat, center::Point{Int32}, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = ellipse(img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift)

function ellipse(img::Image, box::RotatedRect, color::Scalar, thickness::Int32, lineType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(box),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType)))
end
ellipse(img::Image, box::RotatedRect, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8) = ellipse(img, box, color, thickness, lineType)

function ellipse(img::UMat, box::RotatedRect, color::Scalar, thickness::Int32, lineType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(box),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType)))
end
ellipse(img::UMat, box::RotatedRect, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8) = ellipse(img, box, color, thickness, lineType)

function drawMarker(img::Image, position::Point{Int32}, color::Scalar, markerType::Int32, markerSize::Int32, thickness::Int32, line_type::Int32)
	return cpp_to_julia(jlopencv_cv_cv_drawMarker(julia_to_cpp(img),julia_to_cpp(position),julia_to_cpp(color),julia_to_cpp(markerType),julia_to_cpp(markerSize),julia_to_cpp(thickness),julia_to_cpp(line_type)))
end
drawMarker(img::Image, position::Point{Int32}, color::Scalar; markerType::Int32 = MARKER_CROSS, markerSize::Int32 = 20, thickness::Int32 = 1, line_type::Int32 = 8) = drawMarker(img, position, color, markerType, markerSize, thickness, line_type)

function drawMarker(img::UMat, position::Point{Int32}, color::Scalar, markerType::Int32, markerSize::Int32, thickness::Int32, line_type::Int32)
	return cpp_to_julia(jlopencv_cv_cv_drawMarker(julia_to_cpp(img),julia_to_cpp(position),julia_to_cpp(color),julia_to_cpp(markerType),julia_to_cpp(markerSize),julia_to_cpp(thickness),julia_to_cpp(line_type)))
end
drawMarker(img::UMat, position::Point{Int32}, color::Scalar; markerType::Int32 = MARKER_CROSS, markerSize::Int32 = 20, thickness::Int32 = 1, line_type::Int32 = 8) = drawMarker(img, position, color, markerType, markerSize, thickness, line_type)

function fillConvexPoly(img::Image, points::Image, color::Scalar, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_fillConvexPoly(julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
fillConvexPoly(img::Image, points::Image, color::Scalar; lineType::Int32 = LINE_8, shift::Int32 = 0) = fillConvexPoly(img, points, color, lineType, shift)

function fillConvexPoly(img::UMat, points::UMat, color::Scalar, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_fillConvexPoly(julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
fillConvexPoly(img::UMat, points::UMat, color::Scalar; lineType::Int32 = LINE_8, shift::Int32 = 0) = fillConvexPoly(img, points, color, lineType, shift)

function fillPoly(img::Image, pts::Array{Image, 1}, color::Scalar, lineType::Int32, shift::Int32, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_fillPoly(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift),julia_to_cpp(offset)))
end
fillPoly(img::Image, pts::Array{Image, 1}, color::Scalar; lineType::Int32 = LINE_8, shift::Int32 = 0, offset::Point{Int32} = Point()) = fillPoly(img, pts, color, lineType, shift, offset)

function fillPoly(img::UMat, pts::Array{UMat, 1}, color::Scalar, lineType::Int32, shift::Int32, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_fillPoly(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift),julia_to_cpp(offset)))
end
fillPoly(img::UMat, pts::Array{UMat, 1}, color::Scalar; lineType::Int32 = LINE_8, shift::Int32 = 0, offset::Point{Int32} = Point()) = fillPoly(img, pts, color, lineType, shift, offset)

function polylines(img::Image, pts::Array{Image, 1}, isClosed::Bool, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_polylines(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(isClosed),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
polylines(img::Image, pts::Array{Image, 1}, isClosed::Bool, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = polylines(img, pts, isClosed, color, thickness, lineType, shift)

function polylines(img::UMat, pts::Array{UMat, 1}, isClosed::Bool, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_polylines(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(isClosed),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
polylines(img::UMat, pts::Array{UMat, 1}, isClosed::Bool, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = polylines(img, pts, isClosed, color, thickness, lineType, shift)

function drawContours(image::Image, contours::Array{Image, 1}, contourIdx::Int32, color::Scalar, thickness::Int32, lineType::Int32, hierarchy::Image, maxLevel::Int32, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_drawContours(julia_to_cpp(image),julia_to_cpp(contours),julia_to_cpp(contourIdx),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(hierarchy),julia_to_cpp(maxLevel),julia_to_cpp(offset)))
end
drawContours(image::Image, contours::Array{Image, 1}, contourIdx::Int32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, hierarchy::Image = Mat(), maxLevel::Int32 = INT_MAX, offset::Point{Int32} = Point()) = drawContours(image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset)

function drawContours(image::UMat, contours::Array{UMat, 1}, contourIdx::Int32, color::Scalar, thickness::Int32, lineType::Int32, hierarchy::UMat, maxLevel::Int32, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_drawContours(julia_to_cpp(image),julia_to_cpp(contours),julia_to_cpp(contourIdx),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(hierarchy),julia_to_cpp(maxLevel),julia_to_cpp(offset)))
end
drawContours(image::UMat, contours::Array{UMat, 1}, contourIdx::Int32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, hierarchy::UMat = UMat(), maxLevel::Int32 = INT_MAX, offset::Point{Int32} = Point()) = drawContours(image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset)

function clipLine(imgRect::Rect, pt1::Point{Int32}, pt2::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_clipLine(julia_to_cpp(imgRect),julia_to_cpp(pt1),julia_to_cpp(pt2)))
end
clipLine(imgRect::Rect, pt1::Point{Int32}, pt2::Point{Int32}; ) = clipLine(imgRect, pt1, pt2)

function ellipse2Poly(center::Point{Int32}, axes::Size, angle::Int32, arcStart::Int32, arcEnd::Int32, delta::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse2Poly(julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(arcStart),julia_to_cpp(arcEnd),julia_to_cpp(delta)))
end
ellipse2Poly(center::Point{Int32}, axes::Size, angle::Int32, arcStart::Int32, arcEnd::Int32, delta::Int32; ) = ellipse2Poly(center, axes, angle, arcStart, arcEnd, delta)

function putText(img::Image, text::String, org::Point{Int32}, fontFace::Int32, fontScale::Float64, color::Scalar, thickness::Int32, lineType::Int32, bottomLeftOrigin::Bool)
	return cpp_to_julia(jlopencv_cv_cv_putText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(bottomLeftOrigin)))
end
putText(img::Image, text::String, org::Point{Int32}, fontFace::Int32, fontScale::Float64, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, bottomLeftOrigin::Bool = false) = putText(img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin)

function putText(img::UMat, text::String, org::Point{Int32}, fontFace::Int32, fontScale::Float64, color::Scalar, thickness::Int32, lineType::Int32, bottomLeftOrigin::Bool)
	return cpp_to_julia(jlopencv_cv_cv_putText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(bottomLeftOrigin)))
end
putText(img::UMat, text::String, org::Point{Int32}, fontFace::Int32, fontScale::Float64, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, bottomLeftOrigin::Bool = false) = putText(img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin)

function getTextSize(text::String, fontFace::Int32, fontScale::Float64, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getTextSize(julia_to_cpp(text),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(thickness)))
end
getTextSize(text::String, fontFace::Int32, fontScale::Float64, thickness::Int32; ) = getTextSize(text, fontFace, fontScale, thickness)

function getFontScaleFromHeight(fontFace::Int32, pixelHeight::Int32, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getFontScaleFromHeight(julia_to_cpp(fontFace),julia_to_cpp(pixelHeight),julia_to_cpp(thickness)))
end
getFontScaleFromHeight(fontFace::Int32, pixelHeight::Int32; thickness::Int32 = 1) = getFontScaleFromHeight(fontFace, pixelHeight, thickness)

function Rodrigues(src::Image, dst::Image, jacobian::Image)
	return cpp_to_julia(jlopencv_cv_cv_Rodrigues(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(jacobian)))
end
Rodrigues(src::Image; dst::Image = _Mat(), jacobian::Image = Mat()) = Rodrigues(src, dst, jacobian)

function Rodrigues(src::UMat, dst::UMat, jacobian::UMat)
	return cpp_to_julia(jlopencv_cv_cv_Rodrigues(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(jacobian)))
end
Rodrigues(src::UMat; dst::UMat = UMat(), jacobian::UMat = UMat()) = Rodrigues(src, dst, jacobian)

function findHomography(srcPoints::Image, dstPoints::Image, method::Int32, ransacReprojThreshold::Float64, mask::Image, maxIters::Int32, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_findHomography(julia_to_cpp(srcPoints),julia_to_cpp(dstPoints),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(mask),julia_to_cpp(maxIters),julia_to_cpp(confidence)))
end
findHomography(srcPoints::Image, dstPoints::Image; method::Int32 = 0, ransacReprojThreshold::Float64 = 3, mask::Image = Mat(), maxIters::Int32 = 2000, confidence::Float64 = 0.995) = findHomography(srcPoints, dstPoints, method, ransacReprojThreshold, mask, maxIters, confidence)

function findHomography(srcPoints::UMat, dstPoints::UMat, method::Int32, ransacReprojThreshold::Float64, mask::UMat, maxIters::Int32, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_findHomography(julia_to_cpp(srcPoints),julia_to_cpp(dstPoints),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(mask),julia_to_cpp(maxIters),julia_to_cpp(confidence)))
end
findHomography(srcPoints::UMat, dstPoints::UMat; method::Int32 = 0, ransacReprojThreshold::Float64 = 3, mask::UMat = UMat(), maxIters::Int32 = 2000, confidence::Float64 = 0.995) = findHomography(srcPoints, dstPoints, method, ransacReprojThreshold, mask, maxIters, confidence)

function RQDecomp3x3(src::Image, mtxR::Image, mtxQ::Image, Qx::Image, Qy::Image, Qz::Image)
	return cpp_to_julia(jlopencv_cv_cv_RQDecomp3x3(julia_to_cpp(src),julia_to_cpp(mtxR),julia_to_cpp(mtxQ),julia_to_cpp(Qx),julia_to_cpp(Qy),julia_to_cpp(Qz)))
end
RQDecomp3x3(src::Image; mtxR::Image = _Mat(), mtxQ::Image = _Mat(), Qx::Image = Mat(), Qy::Image = Mat(), Qz::Image = Mat()) = RQDecomp3x3(src, mtxR, mtxQ, Qx, Qy, Qz)

function RQDecomp3x3(src::UMat, mtxR::UMat, mtxQ::UMat, Qx::UMat, Qy::UMat, Qz::UMat)
	return cpp_to_julia(jlopencv_cv_cv_RQDecomp3x3(julia_to_cpp(src),julia_to_cpp(mtxR),julia_to_cpp(mtxQ),julia_to_cpp(Qx),julia_to_cpp(Qy),julia_to_cpp(Qz)))
end
RQDecomp3x3(src::UMat; mtxR::UMat = UMat(), mtxQ::UMat = UMat(), Qx::UMat = UMat(), Qy::UMat = UMat(), Qz::UMat = UMat()) = RQDecomp3x3(src, mtxR, mtxQ, Qx, Qy, Qz)

function decomposeProjectionMatrix(projMatrix::Image, cameraMatrix::Image, rotMatrix::Image, transVect::Image, rotMatrixX::Image, rotMatrixY::Image, rotMatrixZ::Image, eulerAngles::Image)
	return cpp_to_julia(jlopencv_cv_cv_decomposeProjectionMatrix(julia_to_cpp(projMatrix),julia_to_cpp(cameraMatrix),julia_to_cpp(rotMatrix),julia_to_cpp(transVect),julia_to_cpp(rotMatrixX),julia_to_cpp(rotMatrixY),julia_to_cpp(rotMatrixZ),julia_to_cpp(eulerAngles)))
end
decomposeProjectionMatrix(projMatrix::Image; cameraMatrix::Image = _Mat(), rotMatrix::Image = _Mat(), transVect::Image = _Mat(), rotMatrixX::Image = Mat(), rotMatrixY::Image = Mat(), rotMatrixZ::Image = Mat(), eulerAngles::Image = Mat()) = decomposeProjectionMatrix(projMatrix, cameraMatrix, rotMatrix, transVect, rotMatrixX, rotMatrixY, rotMatrixZ, eulerAngles)

function decomposeProjectionMatrix(projMatrix::UMat, cameraMatrix::UMat, rotMatrix::UMat, transVect::UMat, rotMatrixX::UMat, rotMatrixY::UMat, rotMatrixZ::UMat, eulerAngles::UMat)
	return cpp_to_julia(jlopencv_cv_cv_decomposeProjectionMatrix(julia_to_cpp(projMatrix),julia_to_cpp(cameraMatrix),julia_to_cpp(rotMatrix),julia_to_cpp(transVect),julia_to_cpp(rotMatrixX),julia_to_cpp(rotMatrixY),julia_to_cpp(rotMatrixZ),julia_to_cpp(eulerAngles)))
end
decomposeProjectionMatrix(projMatrix::UMat; cameraMatrix::UMat = UMat(), rotMatrix::UMat = UMat(), transVect::UMat = UMat(), rotMatrixX::UMat = UMat(), rotMatrixY::UMat = UMat(), rotMatrixZ::UMat = UMat(), eulerAngles::UMat = UMat()) = decomposeProjectionMatrix(projMatrix, cameraMatrix, rotMatrix, transVect, rotMatrixX, rotMatrixY, rotMatrixZ, eulerAngles)

function matMulDeriv(A::Image, B::Image, dABdA::Image, dABdB::Image)
	return cpp_to_julia(jlopencv_cv_cv_matMulDeriv(julia_to_cpp(A),julia_to_cpp(B),julia_to_cpp(dABdA),julia_to_cpp(dABdB)))
end
matMulDeriv(A::Image, B::Image; dABdA::Image = _Mat(), dABdB::Image = _Mat()) = matMulDeriv(A, B, dABdA, dABdB)

function matMulDeriv(A::UMat, B::UMat, dABdA::UMat, dABdB::UMat)
	return cpp_to_julia(jlopencv_cv_cv_matMulDeriv(julia_to_cpp(A),julia_to_cpp(B),julia_to_cpp(dABdA),julia_to_cpp(dABdB)))
end
matMulDeriv(A::UMat, B::UMat; dABdA::UMat = UMat(), dABdB::UMat = UMat()) = matMulDeriv(A, B, dABdA, dABdB)

function composeRT(rvec1::Image, tvec1::Image, rvec2::Image, tvec2::Image, rvec3::Image, tvec3::Image, dr3dr1::Image, dr3dt1::Image, dr3dr2::Image, dr3dt2::Image, dt3dr1::Image, dt3dt1::Image, dt3dr2::Image, dt3dt2::Image)
	return cpp_to_julia(jlopencv_cv_cv_composeRT(julia_to_cpp(rvec1),julia_to_cpp(tvec1),julia_to_cpp(rvec2),julia_to_cpp(tvec2),julia_to_cpp(rvec3),julia_to_cpp(tvec3),julia_to_cpp(dr3dr1),julia_to_cpp(dr3dt1),julia_to_cpp(dr3dr2),julia_to_cpp(dr3dt2),julia_to_cpp(dt3dr1),julia_to_cpp(dt3dt1),julia_to_cpp(dt3dr2),julia_to_cpp(dt3dt2)))
end
composeRT(rvec1::Image, tvec1::Image, rvec2::Image, tvec2::Image; rvec3::Image = _Mat(), tvec3::Image = _Mat(), dr3dr1::Image = Mat(), dr3dt1::Image = Mat(), dr3dr2::Image = Mat(), dr3dt2::Image = Mat(), dt3dr1::Image = Mat(), dt3dt1::Image = Mat(), dt3dr2::Image = Mat(), dt3dt2::Image = Mat()) = composeRT(rvec1, tvec1, rvec2, tvec2, rvec3, tvec3, dr3dr1, dr3dt1, dr3dr2, dr3dt2, dt3dr1, dt3dt1, dt3dr2, dt3dt2)

function composeRT(rvec1::UMat, tvec1::UMat, rvec2::UMat, tvec2::UMat, rvec3::UMat, tvec3::UMat, dr3dr1::UMat, dr3dt1::UMat, dr3dr2::UMat, dr3dt2::UMat, dt3dr1::UMat, dt3dt1::UMat, dt3dr2::UMat, dt3dt2::UMat)
	return cpp_to_julia(jlopencv_cv_cv_composeRT(julia_to_cpp(rvec1),julia_to_cpp(tvec1),julia_to_cpp(rvec2),julia_to_cpp(tvec2),julia_to_cpp(rvec3),julia_to_cpp(tvec3),julia_to_cpp(dr3dr1),julia_to_cpp(dr3dt1),julia_to_cpp(dr3dr2),julia_to_cpp(dr3dt2),julia_to_cpp(dt3dr1),julia_to_cpp(dt3dt1),julia_to_cpp(dt3dr2),julia_to_cpp(dt3dt2)))
end
composeRT(rvec1::UMat, tvec1::UMat, rvec2::UMat, tvec2::UMat; rvec3::UMat = UMat(), tvec3::UMat = UMat(), dr3dr1::UMat = UMat(), dr3dt1::UMat = UMat(), dr3dr2::UMat = UMat(), dr3dt2::UMat = UMat(), dt3dr1::UMat = UMat(), dt3dt1::UMat = UMat(), dt3dr2::UMat = UMat(), dt3dt2::UMat = UMat()) = composeRT(rvec1, tvec1, rvec2, tvec2, rvec3, tvec3, dr3dr1, dr3dt1, dr3dr2, dr3dt2, dt3dr1, dt3dt1, dt3dr2, dt3dt2)

function projectPoints(objectPoints::Image, rvec::Image, tvec::Image, cameraMatrix::Image, distCoeffs::Image, imagePoints::Image, jacobian::Image, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imagePoints),julia_to_cpp(jacobian),julia_to_cpp(aspectRatio)))
end
projectPoints(objectPoints::Image, rvec::Image, tvec::Image, cameraMatrix::Image, distCoeffs::Image; imagePoints::Image = _Mat(), jacobian::Image = Mat(), aspectRatio::Float64 = 0) = projectPoints(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, imagePoints, jacobian, aspectRatio)

function projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, cameraMatrix::UMat, distCoeffs::UMat, imagePoints::UMat, jacobian::UMat, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imagePoints),julia_to_cpp(jacobian),julia_to_cpp(aspectRatio)))
end
projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, cameraMatrix::UMat, distCoeffs::UMat; imagePoints::UMat = UMat(), jacobian::UMat = UMat(), aspectRatio::Float64 = 0) = projectPoints(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, imagePoints, jacobian, aspectRatio)

function solvePnP(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, useExtrinsicGuess::Bool, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePnP(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags)))
end
solvePnP(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image; rvec::Image = _Mat(), tvec::Image = _Mat(), useExtrinsicGuess::Bool = false, flags::Int32 = SOLVEPNP_ITERATIVE) = solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, flags)

function solvePnP(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, useExtrinsicGuess::Bool, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePnP(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags)))
end
solvePnP(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat; rvec::UMat = UMat(), tvec::UMat = UMat(), useExtrinsicGuess::Bool = false, flags::Int32 = SOLVEPNP_ITERATIVE) = solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, flags)

function solvePnPRansac(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, useExtrinsicGuess::Bool, iterationsCount::Int32, reprojectionError::Float32, confidence::Float64, inliers::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRansac(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(iterationsCount),julia_to_cpp(reprojectionError),julia_to_cpp(confidence),julia_to_cpp(inliers),julia_to_cpp(flags)))
end
solvePnPRansac(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image; rvec::Image = _Mat(), tvec::Image = _Mat(), useExtrinsicGuess::Bool = false, iterationsCount::Int32 = 100, reprojectionError::Float32 = 8.0, confidence::Float64 = 0.99, inliers::Image = Mat(), flags::Int32 = SOLVEPNP_ITERATIVE) = solvePnPRansac(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers, flags)

function solvePnPRansac(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, useExtrinsicGuess::Bool, iterationsCount::Int32, reprojectionError::Float32, confidence::Float64, inliers::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRansac(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(iterationsCount),julia_to_cpp(reprojectionError),julia_to_cpp(confidence),julia_to_cpp(inliers),julia_to_cpp(flags)))
end
solvePnPRansac(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat; rvec::UMat = UMat(), tvec::UMat = UMat(), useExtrinsicGuess::Bool = false, iterationsCount::Int32 = 100, reprojectionError::Float32 = 8.0, confidence::Float64 = 0.99, inliers::UMat = UMat(), flags::Int32 = SOLVEPNP_ITERATIVE) = solvePnPRansac(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers, flags)

function solveP3P(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, flags::Int32, rvecs::Array{Image, 1}, tvecs::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_solveP3P(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(flags),julia_to_cpp(rvecs),julia_to_cpp(tvecs)))
end
solveP3P(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, flags::Int32; rvecs::Array{Image, 1} = Array{Image, 1}(), tvecs::Array{Image, 1} = Array{Image, 1}()) = solveP3P(objectPoints, imagePoints, cameraMatrix, distCoeffs, flags, rvecs, tvecs)

function solveP3P(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, flags::Int32, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_solveP3P(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(flags),julia_to_cpp(rvecs),julia_to_cpp(tvecs)))
end
solveP3P(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, flags::Int32; rvecs::Array{UMat, 1} = Array{UMat, 1}(), tvecs::Array{UMat, 1} = Array{UMat, 1}()) = solveP3P(objectPoints, imagePoints, cameraMatrix, distCoeffs, flags, rvecs, tvecs)

function solvePnPRefineLM(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineLM(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria)))
end
solvePnPRefineLM(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image; criteria::TermCriteria = TermCriteria(TermCriteria::EPS + TermCriteria::COUNT, 20, FLT_EPSILON)) = solvePnPRefineLM(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria)

function solvePnPRefineLM(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineLM(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria)))
end
solvePnPRefineLM(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat; criteria::TermCriteria = TermCriteria(TermCriteria::EPS + TermCriteria::COUNT, 20, FLT_EPSILON)) = solvePnPRefineLM(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria)

function solvePnPRefineVVS(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, criteria::TermCriteria, VVSlambda::Float64)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineVVS(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria),julia_to_cpp(VVSlambda)))
end
solvePnPRefineVVS(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image; criteria::TermCriteria = TermCriteria(TermCriteria::EPS + TermCriteria::COUNT, 20, FLT_EPSILON), VVSlambda::Float64 = 1) = solvePnPRefineVVS(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria, VVSlambda)

function solvePnPRefineVVS(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, criteria::TermCriteria, VVSlambda::Float64)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineVVS(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria),julia_to_cpp(VVSlambda)))
end
solvePnPRefineVVS(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat; criteria::TermCriteria = TermCriteria(TermCriteria::EPS + TermCriteria::COUNT, 20, FLT_EPSILON), VVSlambda::Float64 = 1) = solvePnPRefineVVS(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria, VVSlambda)

function solvePnPGeneric(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, useExtrinsicGuess::Bool, flags::SolvePnPMethod, rvec::Image, tvec::Image, reprojectionError::Image)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPGeneric(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(reprojectionError)))
end
solvePnPGeneric(objectPoints::Image, imagePoints::Image, cameraMatrix::Image, distCoeffs::Image; rvecs::Array{Image, 1} = Array{Image, 1}(), tvecs::Array{Image, 1} = Array{Image, 1}(), useExtrinsicGuess::Bool = false, flags::SolvePnPMethod = SOLVEPNP_ITERATIVE, rvec::Image = Mat(), tvec::Image = Mat(), reprojectionError::Image = Mat()) = solvePnPGeneric(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvecs, tvecs, useExtrinsicGuess, flags, rvec, tvec, reprojectionError)

function solvePnPGeneric(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, useExtrinsicGuess::Bool, flags::SolvePnPMethod, rvec::UMat, tvec::UMat, reprojectionError::UMat)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPGeneric(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(reprojectionError)))
end
solvePnPGeneric(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat; rvecs::Array{UMat, 1} = Array{UMat, 1}(), tvecs::Array{UMat, 1} = Array{UMat, 1}(), useExtrinsicGuess::Bool = false, flags::SolvePnPMethod = SOLVEPNP_ITERATIVE, rvec::UMat = UMat(), tvec::UMat = UMat(), reprojectionError::UMat = UMat()) = solvePnPGeneric(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvecs, tvecs, useExtrinsicGuess, flags, rvec, tvec, reprojectionError)

function initCameraMatrix2D(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_initCameraMatrix2D(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(aspectRatio)))
end
initCameraMatrix2D(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size; aspectRatio::Float64 = 1.0) = initCameraMatrix2D(objectPoints, imagePoints, imageSize, aspectRatio)

function initCameraMatrix2D(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_initCameraMatrix2D(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(aspectRatio)))
end
initCameraMatrix2D(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size; aspectRatio::Float64 = 1.0) = initCameraMatrix2D(objectPoints, imagePoints, imageSize, aspectRatio)

function findChessboardCorners(image::Image, patternSize::Size, corners::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCorners(image::Image, patternSize::Size; corners::Image = _Mat(), flags::Int32 = CALIB_CB_ADAPTIVE_THRESH + CALIB_CB_NORMALIZE_IMAGE) = findChessboardCorners(image, patternSize, corners, flags)

function findChessboardCorners(image::UMat, patternSize::Size, corners::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCorners(image::UMat, patternSize::Size; corners::UMat = UMat(), flags::Int32 = CALIB_CB_ADAPTIVE_THRESH + CALIB_CB_NORMALIZE_IMAGE) = findChessboardCorners(image, patternSize, corners, flags)

function checkChessboard(img::Image, size::Size)
	return cpp_to_julia(jlopencv_cv_cv_checkChessboard(julia_to_cpp(img),julia_to_cpp(size)))
end
checkChessboard(img::Image, size::Size; ) = checkChessboard(img, size)

function checkChessboard(img::UMat, size::Size)
	return cpp_to_julia(jlopencv_cv_cv_checkChessboard(julia_to_cpp(img),julia_to_cpp(size)))
end
checkChessboard(img::UMat, size::Size; ) = checkChessboard(img, size)

function findChessboardCornersSBWithMeta(image::Image, patternSize::Size, flags::Int32, corners::Image, meta::Image)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(corners),julia_to_cpp(meta)))
end
findChessboardCornersSBWithMeta(image::Image, patternSize::Size, flags::Int32; corners::Image = _Mat(), meta::Image = _Mat()) = findChessboardCornersSBWithMeta(image, patternSize, flags, corners, meta)

function findChessboardCornersSBWithMeta(image::UMat, patternSize::Size, flags::Int32, corners::UMat, meta::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(corners),julia_to_cpp(meta)))
end
findChessboardCornersSBWithMeta(image::UMat, patternSize::Size, flags::Int32; corners::UMat = UMat(), meta::UMat = UMat()) = findChessboardCornersSBWithMeta(image, patternSize, flags, corners, meta)

function findChessboardCornersSB(image::Image, patternSize::Size, corners::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCornersSB(image::Image, patternSize::Size; corners::Image = _Mat(), flags::Int32 = 0) = findChessboardCornersSB(image, patternSize, corners, flags)

function findChessboardCornersSB(image::UMat, patternSize::Size, corners::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCornersSB(image::UMat, patternSize::Size; corners::UMat = UMat(), flags::Int32 = 0) = findChessboardCornersSB(image, patternSize, corners, flags)

function estimateChessboardSharpness(image::Image, patternSize::Size, corners::Image, rise_distance::Float32, vertical::Bool, sharpness::Image)
	return cpp_to_julia(jlopencv_cv_cv_estimateChessboardSharpness(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(rise_distance),julia_to_cpp(vertical),julia_to_cpp(sharpness)))
end
estimateChessboardSharpness(image::Image, patternSize::Size, corners::Image; rise_distance::Float32 = 0.8F, vertical::Bool = false, sharpness::Image = Mat()) = estimateChessboardSharpness(image, patternSize, corners, rise_distance, vertical, sharpness)

function estimateChessboardSharpness(image::UMat, patternSize::Size, corners::UMat, rise_distance::Float32, vertical::Bool, sharpness::UMat)
	return cpp_to_julia(jlopencv_cv_cv_estimateChessboardSharpness(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(rise_distance),julia_to_cpp(vertical),julia_to_cpp(sharpness)))
end
estimateChessboardSharpness(image::UMat, patternSize::Size, corners::UMat; rise_distance::Float32 = 0.8F, vertical::Bool = false, sharpness::UMat = UMat()) = estimateChessboardSharpness(image, patternSize, corners, rise_distance, vertical, sharpness)

function find4QuadCornerSubpix(img::Image, corners::Image, region_size::Size)
	return cpp_to_julia(jlopencv_cv_cv_find4QuadCornerSubpix(julia_to_cpp(img),julia_to_cpp(corners),julia_to_cpp(region_size)))
end
find4QuadCornerSubpix(img::Image, corners::Image, region_size::Size; ) = find4QuadCornerSubpix(img, corners, region_size)

function find4QuadCornerSubpix(img::UMat, corners::UMat, region_size::Size)
	return cpp_to_julia(jlopencv_cv_cv_find4QuadCornerSubpix(julia_to_cpp(img),julia_to_cpp(corners),julia_to_cpp(region_size)))
end
find4QuadCornerSubpix(img::UMat, corners::UMat, region_size::Size; ) = find4QuadCornerSubpix(img, corners, region_size)

function drawChessboardCorners(image::Image, patternSize::Size, corners::Image, patternWasFound::Bool)
	return cpp_to_julia(jlopencv_cv_cv_drawChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(patternWasFound)))
end
drawChessboardCorners(image::Image, patternSize::Size, corners::Image, patternWasFound::Bool; ) = drawChessboardCorners(image, patternSize, corners, patternWasFound)

function drawChessboardCorners(image::UMat, patternSize::Size, corners::UMat, patternWasFound::Bool)
	return cpp_to_julia(jlopencv_cv_cv_drawChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(patternWasFound)))
end
drawChessboardCorners(image::UMat, patternSize::Size, corners::UMat, patternWasFound::Bool; ) = drawChessboardCorners(image, patternSize, corners, patternWasFound)

function drawFrameAxes(image::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, length::Float32, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_cv_drawFrameAxes(julia_to_cpp(image),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(length),julia_to_cpp(thickness)))
end
drawFrameAxes(image::Image, cameraMatrix::Image, distCoeffs::Image, rvec::Image, tvec::Image, length::Float32; thickness::Int32 = 3) = drawFrameAxes(image, cameraMatrix, distCoeffs, rvec, tvec, length, thickness)

function drawFrameAxes(image::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, length::Float32, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_cv_drawFrameAxes(julia_to_cpp(image),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(length),julia_to_cpp(thickness)))
end
drawFrameAxes(image::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, length::Float32; thickness::Int32 = 3) = drawFrameAxes(image, cameraMatrix, distCoeffs, rvec, tvec, length, thickness)

function findCirclesGrid(image::Image, patternSize::Size, flags::Int32, blobDetector::Ptr{FeatureDetector}, parameters::CirclesGridFinderParameters, centers::Image)
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(blobDetector),julia_to_cpp(parameters),julia_to_cpp(centers)))
end
findCirclesGrid(image::Image, patternSize::Size, flags::Int32, blobDetector::Ptr{FeatureDetector}, parameters::CirclesGridFinderParameters; centers::Image = _Mat()) = findCirclesGrid(image, patternSize, flags, blobDetector, parameters, centers)

function findCirclesGrid(image::UMat, patternSize::Size, flags::Int32, blobDetector::Ptr{FeatureDetector}, parameters::CirclesGridFinderParameters, centers::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(blobDetector),julia_to_cpp(parameters),julia_to_cpp(centers)))
end
findCirclesGrid(image::UMat, patternSize::Size, flags::Int32, blobDetector::Ptr{FeatureDetector}, parameters::CirclesGridFinderParameters; centers::UMat = UMat()) = findCirclesGrid(image, patternSize, flags, blobDetector, parameters, centers)

function findCirclesGrid(image::Image, patternSize::Size, centers::Image, flags::Int32, blobDetector::Ptr{FeatureDetector})
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(centers),julia_to_cpp(flags),julia_to_cpp(blobDetector)))
end
findCirclesGrid(image::Image, patternSize::Size; centers::Image = _Mat(), flags::Int32 = CALIB_CB_SYMMETRIC_GRID, blobDetector::Ptr{FeatureDetector} = SimpleBlobDetector::create()) = findCirclesGrid(image, patternSize, centers, flags, blobDetector)

function findCirclesGrid(image::UMat, patternSize::Size, centers::UMat, flags::Int32, blobDetector::Ptr{FeatureDetector})
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(centers),julia_to_cpp(flags),julia_to_cpp(blobDetector)))
end
findCirclesGrid(image::UMat, patternSize::Size; centers::UMat = UMat(), flags::Int32 = CALIB_CB_SYMMETRIC_GRID, blobDetector::Ptr{FeatureDetector} = SimpleBlobDetector::create()) = findCirclesGrid(image, patternSize, centers, flags, blobDetector)

function calibrateCameraExtended(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, cameraMatrix::Image, distCoeffs::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, stdDeviationsIntrinsics::Image, stdDeviationsExtrinsics::Image, perViewErrors::Image, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraExtended(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, cameraMatrix::Image, distCoeffs::Image; rvecs::Array{Image, 1} = Array{Image, 1}(), tvecs::Array{Image, 1} = Array{Image, 1}(), stdDeviationsIntrinsics::Image = _Mat(), stdDeviationsExtrinsics::Image = _Mat(), perViewErrors::Image = _Mat(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraExtended(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, stdDeviationsIntrinsics, stdDeviationsExtrinsics, perViewErrors, flags, criteria)

function calibrateCameraExtended(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, stdDeviationsIntrinsics::UMat, stdDeviationsExtrinsics::UMat, perViewErrors::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraExtended(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat; rvecs::Array{UMat, 1} = Array{UMat, 1}(), tvecs::Array{UMat, 1} = Array{UMat, 1}(), stdDeviationsIntrinsics::UMat = UMat(), stdDeviationsExtrinsics::UMat = UMat(), perViewErrors::UMat = UMat(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraExtended(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, stdDeviationsIntrinsics, stdDeviationsExtrinsics, perViewErrors, flags, criteria)

function calibrateCamera(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, cameraMatrix::Image, distCoeffs::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCamera(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, cameraMatrix::Image, distCoeffs::Image; rvecs::Array{Image, 1} = Array{Image, 1}(), tvecs::Array{Image, 1} = Array{Image, 1}(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, flags, criteria)

function calibrateCamera(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCamera(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat; rvecs::Array{UMat, 1} = Array{UMat, 1}(), tvecs::Array{UMat, 1} = Array{UMat, 1}(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, flags, criteria)

function calibrateCameraROExtended(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Image, distCoeffs::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, newObjPoints::Image, stdDeviationsIntrinsics::Image, stdDeviationsExtrinsics::Image, stdDeviationsObjPoints::Image, perViewErrors::Image, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(stdDeviationsObjPoints),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraROExtended(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Image, distCoeffs::Image; rvecs::Array{Image, 1} = Array{Image, 1}(), tvecs::Array{Image, 1} = Array{Image, 1}(), newObjPoints::Image = _Mat(), stdDeviationsIntrinsics::Image = _Mat(), stdDeviationsExtrinsics::Image = _Mat(), stdDeviationsObjPoints::Image = _Mat(), perViewErrors::Image = _Mat(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraROExtended(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, stdDeviationsIntrinsics, stdDeviationsExtrinsics, stdDeviationsObjPoints, perViewErrors, flags, criteria)

function calibrateCameraROExtended(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, newObjPoints::UMat, stdDeviationsIntrinsics::UMat, stdDeviationsExtrinsics::UMat, stdDeviationsObjPoints::UMat, perViewErrors::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(stdDeviationsObjPoints),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraROExtended(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat; rvecs::Array{UMat, 1} = Array{UMat, 1}(), tvecs::Array{UMat, 1} = Array{UMat, 1}(), newObjPoints::UMat = UMat(), stdDeviationsIntrinsics::UMat = UMat(), stdDeviationsExtrinsics::UMat = UMat(), stdDeviationsObjPoints::UMat = UMat(), perViewErrors::UMat = UMat(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraROExtended(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, stdDeviationsIntrinsics, stdDeviationsExtrinsics, stdDeviationsObjPoints, perViewErrors, flags, criteria)

function calibrateCameraRO(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Image, distCoeffs::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, newObjPoints::Image, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraRO(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Image, distCoeffs::Image; rvecs::Array{Image, 1} = Array{Image, 1}(), tvecs::Array{Image, 1} = Array{Image, 1}(), newObjPoints::Image = _Mat(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, flags, criteria)

function calibrateCameraRO(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, newObjPoints::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraRO(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat; rvecs::Array{UMat, 1} = Array{UMat, 1}(), tvecs::Array{UMat, 1} = Array{UMat, 1}(), newObjPoints::UMat = UMat(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, flags, criteria)

function calibrationMatrixValues(cameraMatrix::Image, imageSize::Size, apertureWidth::Float64, apertureHeight::Float64)
	return cpp_to_julia(jlopencv_cv_cv_calibrationMatrixValues(julia_to_cpp(cameraMatrix),julia_to_cpp(imageSize),julia_to_cpp(apertureWidth),julia_to_cpp(apertureHeight)))
end
calibrationMatrixValues(cameraMatrix::Image, imageSize::Size, apertureWidth::Float64, apertureHeight::Float64; ) = calibrationMatrixValues(cameraMatrix, imageSize, apertureWidth, apertureHeight)

function calibrationMatrixValues(cameraMatrix::UMat, imageSize::Size, apertureWidth::Float64, apertureHeight::Float64)
	return cpp_to_julia(jlopencv_cv_cv_calibrationMatrixValues(julia_to_cpp(cameraMatrix),julia_to_cpp(imageSize),julia_to_cpp(apertureWidth),julia_to_cpp(apertureHeight)))
end
calibrationMatrixValues(cameraMatrix::UMat, imageSize::Size, apertureWidth::Float64, apertureHeight::Float64; ) = calibrationMatrixValues(cameraMatrix, imageSize, apertureWidth, apertureHeight)

function stereoCalibrateExtended(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size, R::Image, T::Image, E::Image, F::Image, perViewErrors::Image, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrateExtended(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size, R::Image, T::Image; E::Image = _Mat(), F::Image = _Mat(), perViewErrors::Image = _Mat(), flags::Int32 = CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6)) = stereoCalibrateExtended(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, perViewErrors, flags, criteria)

function stereoCalibrateExtended(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, E::UMat, F::UMat, perViewErrors::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrateExtended(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat; E::UMat = UMat(), F::UMat = UMat(), perViewErrors::UMat = UMat(), flags::Int32 = CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6)) = stereoCalibrateExtended(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, perViewErrors, flags, criteria)

function stereoCalibrate(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size, R::Image, T::Image, E::Image, F::Image, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size; R::Image = _Mat(), T::Image = _Mat(), E::Image = _Mat(), F::Image = _Mat(), flags::Int32 = CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, flags, criteria)

function stereoCalibrate(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, E::UMat, F::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size; R::UMat = UMat(), T::UMat = UMat(), E::UMat = UMat(), F::UMat = UMat(), flags::Int32 = CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, flags, criteria)

function stereoRectify(cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size, R::Image, T::Image, R1::Image, R2::Image, P1::Image, P2::Image, Q::Image, flags::Int32, alpha::Float64, newImageSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_stereoRectify(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(flags),julia_to_cpp(alpha),julia_to_cpp(newImageSize)))
end
stereoRectify(cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, imageSize::Size, R::Image, T::Image; R1::Image = _Mat(), R2::Image = _Mat(), P1::Image = _Mat(), P2::Image = _Mat(), Q::Image = _Mat(), flags::Int32 = CALIB_ZERO_DISPARITY, alpha::Float64 = -1, newImageSize::Size = Size()) = stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, R1, R2, P1, P2, Q, flags, alpha, newImageSize)

function stereoRectify(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, R1::UMat, R2::UMat, P1::UMat, P2::UMat, Q::UMat, flags::Int32, alpha::Float64, newImageSize::Size)
	return cpp_to_julia(jlopencv_cv_cv_stereoRectify(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(flags),julia_to_cpp(alpha),julia_to_cpp(newImageSize)))
end
stereoRectify(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat; R1::UMat = UMat(), R2::UMat = UMat(), P1::UMat = UMat(), P2::UMat = UMat(), Q::UMat = UMat(), flags::Int32 = CALIB_ZERO_DISPARITY, alpha::Float64 = -1, newImageSize::Size = Size()) = stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, R1, R2, P1, P2, Q, flags, alpha, newImageSize)

function stereoRectifyUncalibrated(points1::Image, points2::Image, F::Image, imgSize::Size, H1::Image, H2::Image, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_stereoRectifyUncalibrated(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(F),julia_to_cpp(imgSize),julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(threshold)))
end
stereoRectifyUncalibrated(points1::Image, points2::Image, F::Image, imgSize::Size; H1::Image = _Mat(), H2::Image = _Mat(), threshold::Float64 = 5) = stereoRectifyUncalibrated(points1, points2, F, imgSize, H1, H2, threshold)

function stereoRectifyUncalibrated(points1::UMat, points2::UMat, F::UMat, imgSize::Size, H1::UMat, H2::UMat, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_stereoRectifyUncalibrated(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(F),julia_to_cpp(imgSize),julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(threshold)))
end
stereoRectifyUncalibrated(points1::UMat, points2::UMat, F::UMat, imgSize::Size; H1::UMat = UMat(), H2::UMat = UMat(), threshold::Float64 = 5) = stereoRectifyUncalibrated(points1, points2, F, imgSize, H1, H2, threshold)

function rectify3Collinear(cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, cameraMatrix3::Image, distCoeffs3::Image, imgpt1::Array{Image, 1}, imgpt3::Array{Image, 1}, imageSize::Size, R12::Image, T12::Image, R13::Image, T13::Image, alpha::Float64, newImgSize::Size, flags::Int32, R1::Image, R2::Image, R3::Image, P1::Image, P2::Image, P3::Image, Q::Image)
	return cpp_to_julia(jlopencv_cv_cv_rectify3Collinear(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(cameraMatrix3),julia_to_cpp(distCoeffs3),julia_to_cpp(imgpt1),julia_to_cpp(imgpt3),julia_to_cpp(imageSize),julia_to_cpp(R12),julia_to_cpp(T12),julia_to_cpp(R13),julia_to_cpp(T13),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(R3),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(P3),julia_to_cpp(Q)))
end
rectify3Collinear(cameraMatrix1::Image, distCoeffs1::Image, cameraMatrix2::Image, distCoeffs2::Image, cameraMatrix3::Image, distCoeffs3::Image, imgpt1::Array{Image, 1}, imgpt3::Array{Image, 1}, imageSize::Size, R12::Image, T12::Image, R13::Image, T13::Image, alpha::Float64, newImgSize::Size, flags::Int32; R1::Image = _Mat(), R2::Image = _Mat(), R3::Image = _Mat(), P1::Image = _Mat(), P2::Image = _Mat(), P3::Image = _Mat(), Q::Image = _Mat()) = rectify3Collinear(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, R12, T12, R13, T13, alpha, newImgSize, flags, R1, R2, R3, P1, P2, P3, Q)

function rectify3Collinear(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, cameraMatrix3::UMat, distCoeffs3::UMat, imgpt1::Array{UMat, 1}, imgpt3::Array{UMat, 1}, imageSize::Size, R12::UMat, T12::UMat, R13::UMat, T13::UMat, alpha::Float64, newImgSize::Size, flags::Int32, R1::UMat, R2::UMat, R3::UMat, P1::UMat, P2::UMat, P3::UMat, Q::UMat)
	return cpp_to_julia(jlopencv_cv_cv_rectify3Collinear(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(cameraMatrix3),julia_to_cpp(distCoeffs3),julia_to_cpp(imgpt1),julia_to_cpp(imgpt3),julia_to_cpp(imageSize),julia_to_cpp(R12),julia_to_cpp(T12),julia_to_cpp(R13),julia_to_cpp(T13),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(R3),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(P3),julia_to_cpp(Q)))
end
rectify3Collinear(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, cameraMatrix3::UMat, distCoeffs3::UMat, imgpt1::Array{UMat, 1}, imgpt3::Array{UMat, 1}, imageSize::Size, R12::UMat, T12::UMat, R13::UMat, T13::UMat, alpha::Float64, newImgSize::Size, flags::Int32; R1::UMat = UMat(), R2::UMat = UMat(), R3::UMat = UMat(), P1::UMat = UMat(), P2::UMat = UMat(), P3::UMat = UMat(), Q::UMat = UMat()) = rectify3Collinear(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, R12, T12, R13, T13, alpha, newImgSize, flags, R1, R2, R3, P1, P2, P3, Q)

function getOptimalNewCameraMatrix(cameraMatrix::Image, distCoeffs::Image, imageSize::Size, alpha::Float64, newImgSize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imageSize),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(centerPrincipalPoint)))
end
getOptimalNewCameraMatrix(cameraMatrix::Image, distCoeffs::Image, imageSize::Size, alpha::Float64; newImgSize::Size = Size(), centerPrincipalPoint::Bool = false) = getOptimalNewCameraMatrix(cameraMatrix, distCoeffs, imageSize, alpha, newImgSize, centerPrincipalPoint)

function getOptimalNewCameraMatrix(cameraMatrix::UMat, distCoeffs::UMat, imageSize::Size, alpha::Float64, newImgSize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imageSize),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(centerPrincipalPoint)))
end
getOptimalNewCameraMatrix(cameraMatrix::UMat, distCoeffs::UMat, imageSize::Size, alpha::Float64; newImgSize::Size = Size(), centerPrincipalPoint::Bool = false) = getOptimalNewCameraMatrix(cameraMatrix, distCoeffs, imageSize, alpha, newImgSize, centerPrincipalPoint)

function calibrateHandEye(R_gripper2base::Array{Image, 1}, t_gripper2base::Array{Image, 1}, R_target2cam::Array{Image, 1}, t_target2cam::Array{Image, 1}, R_cam2gripper::Image, t_cam2gripper::Image, method::HandEyeCalibrationMethod)
	return cpp_to_julia(jlopencv_cv_cv_calibrateHandEye(julia_to_cpp(R_gripper2base),julia_to_cpp(t_gripper2base),julia_to_cpp(R_target2cam),julia_to_cpp(t_target2cam),julia_to_cpp(R_cam2gripper),julia_to_cpp(t_cam2gripper),julia_to_cpp(method)))
end
calibrateHandEye(R_gripper2base::Array{Image, 1}, t_gripper2base::Array{Image, 1}, R_target2cam::Array{Image, 1}, t_target2cam::Array{Image, 1}; R_cam2gripper::Image = _Mat(), t_cam2gripper::Image = _Mat(), method::HandEyeCalibrationMethod = CALIB_HAND_EYE_TSAI) = calibrateHandEye(R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, R_cam2gripper, t_cam2gripper, method)

function calibrateHandEye(R_gripper2base::Array{UMat, 1}, t_gripper2base::Array{UMat, 1}, R_target2cam::Array{UMat, 1}, t_target2cam::Array{UMat, 1}, R_cam2gripper::UMat, t_cam2gripper::UMat, method::HandEyeCalibrationMethod)
	return cpp_to_julia(jlopencv_cv_cv_calibrateHandEye(julia_to_cpp(R_gripper2base),julia_to_cpp(t_gripper2base),julia_to_cpp(R_target2cam),julia_to_cpp(t_target2cam),julia_to_cpp(R_cam2gripper),julia_to_cpp(t_cam2gripper),julia_to_cpp(method)))
end
calibrateHandEye(R_gripper2base::Array{UMat, 1}, t_gripper2base::Array{UMat, 1}, R_target2cam::Array{UMat, 1}, t_target2cam::Array{UMat, 1}; R_cam2gripper::UMat = UMat(), t_cam2gripper::UMat = UMat(), method::HandEyeCalibrationMethod = CALIB_HAND_EYE_TSAI) = calibrateHandEye(R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, R_cam2gripper, t_cam2gripper, method)

function convertPointsToHomogeneous(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsToHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsToHomogeneous(src::Image; dst::Image = _Mat()) = convertPointsToHomogeneous(src, dst)

function convertPointsToHomogeneous(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsToHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsToHomogeneous(src::UMat; dst::UMat = UMat()) = convertPointsToHomogeneous(src, dst)

function convertPointsFromHomogeneous(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsFromHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsFromHomogeneous(src::Image; dst::Image = _Mat()) = convertPointsFromHomogeneous(src, dst)

function convertPointsFromHomogeneous(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsFromHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsFromHomogeneous(src::UMat; dst::UMat = UMat()) = convertPointsFromHomogeneous(src, dst)

function findFundamentalMat(points1::Image, points2::Image, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int32, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(maxIters),julia_to_cpp(mask)))
end
findFundamentalMat(points1::Image, points2::Image, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int32; mask::Image = Mat()) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, maxIters, mask)

function findFundamentalMat(points1::UMat, points2::UMat, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(maxIters),julia_to_cpp(mask)))
end
findFundamentalMat(points1::UMat, points2::UMat, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int32; mask::UMat = UMat()) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, maxIters, mask)

function findFundamentalMat(points1::Image, points2::Image, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(mask)))
end
findFundamentalMat(points1::Image, points2::Image; method::Int32 = FM_RANSAC, ransacReprojThreshold::Float64 = 3., confidence::Float64 = 0.99, mask::Image = Mat()) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, mask)

function findFundamentalMat(points1::UMat, points2::UMat, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(mask)))
end
findFundamentalMat(points1::UMat, points2::UMat; method::Int32 = FM_RANSAC, ransacReprojThreshold::Float64 = 3., confidence::Float64 = 0.99, mask::UMat = UMat()) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, mask)

function findEssentialMat(points1::Image, points2::Image, cameraMatrix::Image, method::Int32, prob::Float64, threshold::Float64, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::Image, points2::Image, cameraMatrix::Image; method::Int32 = RANSAC, prob::Float64 = 0.999, threshold::Float64 = 1.0, mask::Image = Mat()) = findEssentialMat(points1, points2, cameraMatrix, method, prob, threshold, mask)

function findEssentialMat(points1::UMat, points2::UMat, cameraMatrix::UMat, method::Int32, prob::Float64, threshold::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::UMat, points2::UMat, cameraMatrix::UMat; method::Int32 = RANSAC, prob::Float64 = 0.999, threshold::Float64 = 1.0, mask::UMat = UMat()) = findEssentialMat(points1, points2, cameraMatrix, method, prob, threshold, mask)

function findEssentialMat(points1::Image, points2::Image, focal::Float64, pp::Point{Float64}, method::Int32, prob::Float64, threshold::Float64, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::Image, points2::Image; focal::Float64 = 1.0, pp::Point{Float64} = Point{Float64}(0, 0), method::Int32 = RANSAC, prob::Float64 = 0.999, threshold::Float64 = 1.0, mask::Image = Mat()) = findEssentialMat(points1, points2, focal, pp, method, prob, threshold, mask)

function findEssentialMat(points1::UMat, points2::UMat, focal::Float64, pp::Point{Float64}, method::Int32, prob::Float64, threshold::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::UMat, points2::UMat; focal::Float64 = 1.0, pp::Point{Float64} = Point{Float64}(0, 0), method::Int32 = RANSAC, prob::Float64 = 0.999, threshold::Float64 = 1.0, mask::UMat = UMat()) = findEssentialMat(points1, points2, focal, pp, method, prob, threshold, mask)

function decomposeEssentialMat(E::Image, R1::Image, R2::Image, t::Image)
	return cpp_to_julia(jlopencv_cv_cv_decomposeEssentialMat(julia_to_cpp(E),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(t)))
end
decomposeEssentialMat(E::Image; R1::Image = _Mat(), R2::Image = _Mat(), t::Image = _Mat()) = decomposeEssentialMat(E, R1, R2, t)

function decomposeEssentialMat(E::UMat, R1::UMat, R2::UMat, t::UMat)
	return cpp_to_julia(jlopencv_cv_cv_decomposeEssentialMat(julia_to_cpp(E),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(t)))
end
decomposeEssentialMat(E::UMat; R1::UMat = UMat(), R2::UMat = UMat(), t::UMat = UMat()) = decomposeEssentialMat(E, R1, R2, t)

function recoverPose(E::Image, points1::Image, points2::Image, cameraMatrix::Image, R::Image, t::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask)))
end
recoverPose(E::Image, points1::Image, points2::Image, cameraMatrix::Image; R::Image = _Mat(), t::Image = _Mat(), mask::Image = Mat()) = recoverPose(E, points1, points2, cameraMatrix, R, t, mask)

function recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat, R::UMat, t::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask)))
end
recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat; R::UMat = UMat(), t::UMat = UMat(), mask::UMat = UMat()) = recoverPose(E, points1, points2, cameraMatrix, R, t, mask)

function recoverPose(E::Image, points1::Image, points2::Image, R::Image, t::Image, focal::Float64, pp::Point{Float64}, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(mask)))
end
recoverPose(E::Image, points1::Image, points2::Image; R::Image = _Mat(), t::Image = _Mat(), focal::Float64 = 1.0, pp::Point{Float64} = Point{Float64}(0, 0), mask::Image = Mat()) = recoverPose(E, points1, points2, R, t, focal, pp, mask)

function recoverPose(E::UMat, points1::UMat, points2::UMat, R::UMat, t::UMat, focal::Float64, pp::Point{Float64}, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(mask)))
end
recoverPose(E::UMat, points1::UMat, points2::UMat; R::UMat = UMat(), t::UMat = UMat(), focal::Float64 = 1.0, pp::Point{Float64} = Point{Float64}(0, 0), mask::UMat = UMat()) = recoverPose(E, points1, points2, R, t, focal, pp, mask)

function recoverPose(E::Image, points1::Image, points2::Image, cameraMatrix::Image, distanceThresh::Float64, R::Image, t::Image, mask::Image, triangulatedPoints::Image)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(distanceThresh),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask),julia_to_cpp(triangulatedPoints)))
end
recoverPose(E::Image, points1::Image, points2::Image, cameraMatrix::Image, distanceThresh::Float64; R::Image = _Mat(), t::Image = _Mat(), mask::Image = Mat(), triangulatedPoints::Image = Mat()) = recoverPose(E, points1, points2, cameraMatrix, distanceThresh, R, t, mask, triangulatedPoints)

function recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat, distanceThresh::Float64, R::UMat, t::UMat, mask::UMat, triangulatedPoints::UMat)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(distanceThresh),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask),julia_to_cpp(triangulatedPoints)))
end
recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat, distanceThresh::Float64; R::UMat = UMat(), t::UMat = UMat(), mask::UMat = UMat(), triangulatedPoints::UMat = UMat()) = recoverPose(E, points1, points2, cameraMatrix, distanceThresh, R, t, mask, triangulatedPoints)

function computeCorrespondEpilines(points::Image, whichImage::Int32, F::Image, lines::Image)
	return cpp_to_julia(jlopencv_cv_cv_computeCorrespondEpilines(julia_to_cpp(points),julia_to_cpp(whichImage),julia_to_cpp(F),julia_to_cpp(lines)))
end
computeCorrespondEpilines(points::Image, whichImage::Int32, F::Image; lines::Image = _Mat()) = computeCorrespondEpilines(points, whichImage, F, lines)

function computeCorrespondEpilines(points::UMat, whichImage::Int32, F::UMat, lines::UMat)
	return cpp_to_julia(jlopencv_cv_cv_computeCorrespondEpilines(julia_to_cpp(points),julia_to_cpp(whichImage),julia_to_cpp(F),julia_to_cpp(lines)))
end
computeCorrespondEpilines(points::UMat, whichImage::Int32, F::UMat; lines::UMat = UMat()) = computeCorrespondEpilines(points, whichImage, F, lines)

function triangulatePoints(projMatr1::Image, projMatr2::Image, projPoints1::Image, projPoints2::Image, points4D::Image)
	return cpp_to_julia(jlopencv_cv_cv_triangulatePoints(julia_to_cpp(projMatr1),julia_to_cpp(projMatr2),julia_to_cpp(projPoints1),julia_to_cpp(projPoints2),julia_to_cpp(points4D)))
end
triangulatePoints(projMatr1::Image, projMatr2::Image, projPoints1::Image, projPoints2::Image; points4D::Image = _Mat()) = triangulatePoints(projMatr1, projMatr2, projPoints1, projPoints2, points4D)

function triangulatePoints(projMatr1::UMat, projMatr2::UMat, projPoints1::UMat, projPoints2::UMat, points4D::UMat)
	return cpp_to_julia(jlopencv_cv_cv_triangulatePoints(julia_to_cpp(projMatr1),julia_to_cpp(projMatr2),julia_to_cpp(projPoints1),julia_to_cpp(projPoints2),julia_to_cpp(points4D)))
end
triangulatePoints(projMatr1::UMat, projMatr2::UMat, projPoints1::UMat, projPoints2::UMat; points4D::UMat = UMat()) = triangulatePoints(projMatr1, projMatr2, projPoints1, projPoints2, points4D)

function correctMatches(F::Image, points1::Image, points2::Image, newPoints1::Image, newPoints2::Image)
	return cpp_to_julia(jlopencv_cv_cv_correctMatches(julia_to_cpp(F),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(newPoints1),julia_to_cpp(newPoints2)))
end
correctMatches(F::Image, points1::Image, points2::Image; newPoints1::Image = _Mat(), newPoints2::Image = _Mat()) = correctMatches(F, points1, points2, newPoints1, newPoints2)

function correctMatches(F::UMat, points1::UMat, points2::UMat, newPoints1::UMat, newPoints2::UMat)
	return cpp_to_julia(jlopencv_cv_cv_correctMatches(julia_to_cpp(F),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(newPoints1),julia_to_cpp(newPoints2)))
end
correctMatches(F::UMat, points1::UMat, points2::UMat; newPoints1::UMat = UMat(), newPoints2::UMat = UMat()) = correctMatches(F, points1, points2, newPoints1, newPoints2)

function filterSpeckles(img::Image, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64, buf::Image)
	return cpp_to_julia(jlopencv_cv_cv_filterSpeckles(julia_to_cpp(img),julia_to_cpp(newVal),julia_to_cpp(maxSpeckleSize),julia_to_cpp(maxDiff),julia_to_cpp(buf)))
end
filterSpeckles(img::Image, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64; buf::Image = Mat()) = filterSpeckles(img, newVal, maxSpeckleSize, maxDiff, buf)

function filterSpeckles(img::UMat, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64, buf::UMat)
	return cpp_to_julia(jlopencv_cv_cv_filterSpeckles(julia_to_cpp(img),julia_to_cpp(newVal),julia_to_cpp(maxSpeckleSize),julia_to_cpp(maxDiff),julia_to_cpp(buf)))
end
filterSpeckles(img::UMat, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64; buf::UMat = UMat()) = filterSpeckles(img, newVal, maxSpeckleSize, maxDiff, buf)

function getValidDisparityROI(roi1::Rect, roi2::Rect, minDisparity::Int32, numberOfDisparities::Int32, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getValidDisparityROI(julia_to_cpp(roi1),julia_to_cpp(roi2),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(blockSize)))
end
getValidDisparityROI(roi1::Rect, roi2::Rect, minDisparity::Int32, numberOfDisparities::Int32, blockSize::Int32; ) = getValidDisparityROI(roi1, roi2, minDisparity, numberOfDisparities, blockSize)

function validateDisparity(disparity::Image, cost::Image, minDisparity::Int32, numberOfDisparities::Int32, disp12MaxDisp::Int32)
	return cpp_to_julia(jlopencv_cv_cv_validateDisparity(julia_to_cpp(disparity),julia_to_cpp(cost),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(disp12MaxDisp)))
end
validateDisparity(disparity::Image, cost::Image, minDisparity::Int32, numberOfDisparities::Int32; disp12MaxDisp::Int32 = 1) = validateDisparity(disparity, cost, minDisparity, numberOfDisparities, disp12MaxDisp)

function validateDisparity(disparity::UMat, cost::UMat, minDisparity::Int32, numberOfDisparities::Int32, disp12MaxDisp::Int32)
	return cpp_to_julia(jlopencv_cv_cv_validateDisparity(julia_to_cpp(disparity),julia_to_cpp(cost),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(disp12MaxDisp)))
end
validateDisparity(disparity::UMat, cost::UMat, minDisparity::Int32, numberOfDisparities::Int32; disp12MaxDisp::Int32 = 1) = validateDisparity(disparity, cost, minDisparity, numberOfDisparities, disp12MaxDisp)

function reprojectImageTo3D(disparity::Image, Q::Image, _3dImage::Image, handleMissingValues::Bool, ddepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_reprojectImageTo3D(julia_to_cpp(disparity),julia_to_cpp(Q),julia_to_cpp(_3dImage),julia_to_cpp(handleMissingValues),julia_to_cpp(ddepth)))
end
reprojectImageTo3D(disparity::Image, Q::Image; _3dImage::Image = _Mat(), handleMissingValues::Bool = false, ddepth::Int32 = -1) = reprojectImageTo3D(disparity, Q, _3dImage, handleMissingValues, ddepth)

function reprojectImageTo3D(disparity::UMat, Q::UMat, _3dImage::UMat, handleMissingValues::Bool, ddepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_reprojectImageTo3D(julia_to_cpp(disparity),julia_to_cpp(Q),julia_to_cpp(_3dImage),julia_to_cpp(handleMissingValues),julia_to_cpp(ddepth)))
end
reprojectImageTo3D(disparity::UMat, Q::UMat; _3dImage::UMat = UMat(), handleMissingValues::Bool = false, ddepth::Int32 = -1) = reprojectImageTo3D(disparity, Q, _3dImage, handleMissingValues, ddepth)

function sampsonDistance(pt1::Image, pt2::Image, F::Image)
	return cpp_to_julia(jlopencv_cv_cv_sampsonDistance(julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(F)))
end
sampsonDistance(pt1::Image, pt2::Image, F::Image; ) = sampsonDistance(pt1, pt2, F)

function sampsonDistance(pt1::UMat, pt2::UMat, F::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sampsonDistance(julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(F)))
end
sampsonDistance(pt1::UMat, pt2::UMat, F::UMat; ) = sampsonDistance(pt1, pt2, F)

function estimateAffine3D(src::Image, dst::Image, out::Image, inliers::Image, ransacThreshold::Float64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(out),julia_to_cpp(inliers),julia_to_cpp(ransacThreshold),julia_to_cpp(confidence)))
end
estimateAffine3D(src::Image, dst::Image; out::Image = _Mat(), inliers::Image = _Mat(), ransacThreshold::Float64 = 3, confidence::Float64 = 0.99) = estimateAffine3D(src, dst, out, inliers, ransacThreshold, confidence)

function estimateAffine3D(src::UMat, dst::UMat, out::UMat, inliers::UMat, ransacThreshold::Float64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(out),julia_to_cpp(inliers),julia_to_cpp(ransacThreshold),julia_to_cpp(confidence)))
end
estimateAffine3D(src::UMat, dst::UMat; out::UMat = UMat(), inliers::UMat = UMat(), ransacThreshold::Float64 = 3, confidence::Float64 = 0.99) = estimateAffine3D(src, dst, out, inliers, ransacThreshold, confidence)

function estimateAffine2D(from::Image, to::Image, inliers::Image, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffine2D(from::Image, to::Image; inliers::Image = Mat(), method::Int32 = RANSAC, ransacReprojThreshold::Float64 = 3, maxIters::size_t = 2000, confidence::Float64 = 0.99, refineIters::size_t = 10) = estimateAffine2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function estimateAffine2D(from::UMat, to::UMat, inliers::UMat, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffine2D(from::UMat, to::UMat; inliers::UMat = UMat(), method::Int32 = RANSAC, ransacReprojThreshold::Float64 = 3, maxIters::size_t = 2000, confidence::Float64 = 0.99, refineIters::size_t = 10) = estimateAffine2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function estimateAffinePartial2D(from::Image, to::Image, inliers::Image, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffinePartial2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffinePartial2D(from::Image, to::Image; inliers::Image = Mat(), method::Int32 = RANSAC, ransacReprojThreshold::Float64 = 3, maxIters::size_t = 2000, confidence::Float64 = 0.99, refineIters::size_t = 10) = estimateAffinePartial2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function estimateAffinePartial2D(from::UMat, to::UMat, inliers::UMat, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffinePartial2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffinePartial2D(from::UMat, to::UMat; inliers::UMat = UMat(), method::Int32 = RANSAC, ransacReprojThreshold::Float64 = 3, maxIters::size_t = 2000, confidence::Float64 = 0.99, refineIters::size_t = 10) = estimateAffinePartial2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function decomposeHomographyMat(H::Image, K::Image, rotations::Array{Image, 1}, translations::Array{Image, 1}, normals::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_decomposeHomographyMat(julia_to_cpp(H),julia_to_cpp(K),julia_to_cpp(rotations),julia_to_cpp(translations),julia_to_cpp(normals)))
end
decomposeHomographyMat(H::Image, K::Image; rotations::Array{Image, 1} = Array{Image, 1}(), translations::Array{Image, 1} = Array{Image, 1}(), normals::Array{Image, 1} = Array{Image, 1}()) = decomposeHomographyMat(H, K, rotations, translations, normals)

function decomposeHomographyMat(H::UMat, K::UMat, rotations::Array{UMat, 1}, translations::Array{UMat, 1}, normals::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_decomposeHomographyMat(julia_to_cpp(H),julia_to_cpp(K),julia_to_cpp(rotations),julia_to_cpp(translations),julia_to_cpp(normals)))
end
decomposeHomographyMat(H::UMat, K::UMat; rotations::Array{UMat, 1} = Array{UMat, 1}(), translations::Array{UMat, 1} = Array{UMat, 1}(), normals::Array{UMat, 1} = Array{UMat, 1}()) = decomposeHomographyMat(H, K, rotations, translations, normals)

function filterHomographyDecompByVisibleRefpoints(rotations::Array{Image, 1}, normals::Array{Image, 1}, beforePoints::Image, afterPoints::Image, possibleSolutions::Image, pointsMask::Image)
	return cpp_to_julia(jlopencv_cv_cv_filterHomographyDecompByVisibleRefpoints(julia_to_cpp(rotations),julia_to_cpp(normals),julia_to_cpp(beforePoints),julia_to_cpp(afterPoints),julia_to_cpp(possibleSolutions),julia_to_cpp(pointsMask)))
end
filterHomographyDecompByVisibleRefpoints(rotations::Array{Image, 1}, normals::Array{Image, 1}, beforePoints::Image, afterPoints::Image; possibleSolutions::Image = _Mat(), pointsMask::Image = Mat()) = filterHomographyDecompByVisibleRefpoints(rotations, normals, beforePoints, afterPoints, possibleSolutions, pointsMask)

function filterHomographyDecompByVisibleRefpoints(rotations::Array{UMat, 1}, normals::Array{UMat, 1}, beforePoints::UMat, afterPoints::UMat, possibleSolutions::UMat, pointsMask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_filterHomographyDecompByVisibleRefpoints(julia_to_cpp(rotations),julia_to_cpp(normals),julia_to_cpp(beforePoints),julia_to_cpp(afterPoints),julia_to_cpp(possibleSolutions),julia_to_cpp(pointsMask)))
end
filterHomographyDecompByVisibleRefpoints(rotations::Array{UMat, 1}, normals::Array{UMat, 1}, beforePoints::UMat, afterPoints::UMat; possibleSolutions::UMat = UMat(), pointsMask::UMat = UMat()) = filterHomographyDecompByVisibleRefpoints(rotations, normals, beforePoints, afterPoints, possibleSolutions, pointsMask)

function StereoBM_create(numDisparities::Int32, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_create(julia_to_cpp(numDisparities),julia_to_cpp(blockSize)))
end
StereoBM_create(; numDisparities::Int32 = 0, blockSize::Int32 = 21) = StereoBM_create(numDisparities, blockSize)

function StereoSGBM_create(minDisparity::Int32, numDisparities::Int32, blockSize::Int32, P1::Int32, P2::Int32, disp12MaxDiff::Int32, preFilterCap::Int32, uniquenessRatio::Int32, speckleWindowSize::Int32, speckleRange::Int32, mode::Int32)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_create(julia_to_cpp(minDisparity),julia_to_cpp(numDisparities),julia_to_cpp(blockSize),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(disp12MaxDiff),julia_to_cpp(preFilterCap),julia_to_cpp(uniquenessRatio),julia_to_cpp(speckleWindowSize),julia_to_cpp(speckleRange),julia_to_cpp(mode)))
end
StereoSGBM_create(; minDisparity::Int32 = 0, numDisparities::Int32 = 16, blockSize::Int32 = 3, P1::Int32 = 0, P2::Int32 = 0, disp12MaxDiff::Int32 = 0, preFilterCap::Int32 = 0, uniquenessRatio::Int32 = 0, speckleWindowSize::Int32 = 0, speckleRange::Int32 = 0, mode::Int32 = StereoSGBM::MODE_SGBM) = StereoSGBM_create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize, speckleRange, mode)

function undistort(src::Image, cameraMatrix::Image, distCoeffs::Image, dst::Image, newCameraMatrix::Image)
	return cpp_to_julia(jlopencv_cv_cv_undistort(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(newCameraMatrix)))
end
undistort(src::Image, cameraMatrix::Image, distCoeffs::Image; dst::Image = _Mat(), newCameraMatrix::Image = Mat()) = undistort(src, cameraMatrix, distCoeffs, dst, newCameraMatrix)

function undistort(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, dst::UMat, newCameraMatrix::UMat)
	return cpp_to_julia(jlopencv_cv_cv_undistort(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(newCameraMatrix)))
end
undistort(src::UMat, cameraMatrix::UMat, distCoeffs::UMat; dst::UMat = UMat(), newCameraMatrix::UMat = UMat()) = undistort(src, cameraMatrix, distCoeffs, dst, newCameraMatrix)

function initUndistortRectifyMap(cameraMatrix::Image, distCoeffs::Image, R::Image, newCameraMatrix::Image, size::Size, m1type::Int32, map1::Image, map2::Image)
	return cpp_to_julia(jlopencv_cv_cv_initUndistortRectifyMap(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(newCameraMatrix),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(cameraMatrix::Image, distCoeffs::Image, R::Image, newCameraMatrix::Image, size::Size, m1type::Int32; map1::Image = _Mat(), map2::Image = _Mat()) = initUndistortRectifyMap(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2)

function initUndistortRectifyMap(cameraMatrix::UMat, distCoeffs::UMat, R::UMat, newCameraMatrix::UMat, size::Size, m1type::Int32, map1::UMat, map2::UMat)
	return cpp_to_julia(jlopencv_cv_cv_initUndistortRectifyMap(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(newCameraMatrix),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(cameraMatrix::UMat, distCoeffs::UMat, R::UMat, newCameraMatrix::UMat, size::Size, m1type::Int32; map1::UMat = UMat(), map2::UMat = UMat()) = initUndistortRectifyMap(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2)

function getDefaultNewCameraMatrix(cameraMatrix::Image, imgsize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getDefaultNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(imgsize),julia_to_cpp(centerPrincipalPoint)))
end
getDefaultNewCameraMatrix(cameraMatrix::Image; imgsize::Size = Size(), centerPrincipalPoint::Bool = false) = getDefaultNewCameraMatrix(cameraMatrix, imgsize, centerPrincipalPoint)

function getDefaultNewCameraMatrix(cameraMatrix::UMat, imgsize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getDefaultNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(imgsize),julia_to_cpp(centerPrincipalPoint)))
end
getDefaultNewCameraMatrix(cameraMatrix::UMat; imgsize::Size = Size(), centerPrincipalPoint::Bool = false) = getDefaultNewCameraMatrix(cameraMatrix, imgsize, centerPrincipalPoint)

function undistortPoints(src::Image, cameraMatrix::Image, distCoeffs::Image, dst::Image, R::Image, P::Image)
	return cpp_to_julia(jlopencv_cv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(R),julia_to_cpp(P)))
end
undistortPoints(src::Image, cameraMatrix::Image, distCoeffs::Image; dst::Image = _Mat(), R::Image = Mat(), P::Image = Mat()) = undistortPoints(src, cameraMatrix, distCoeffs, dst, R, P)

function undistortPoints(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, dst::UMat, R::UMat, P::UMat)
	return cpp_to_julia(jlopencv_cv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(R),julia_to_cpp(P)))
end
undistortPoints(src::UMat, cameraMatrix::UMat, distCoeffs::UMat; dst::UMat = UMat(), R::UMat = UMat(), P::UMat = UMat()) = undistortPoints(src, cameraMatrix, distCoeffs, dst, R, P)

function undistortPointsIter(src::Image, cameraMatrix::Image, distCoeffs::Image, R::Image, P::Image, criteria::TermCriteria, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(criteria),julia_to_cpp(dst)))
end
undistortPointsIter(src::Image, cameraMatrix::Image, distCoeffs::Image, R::Image, P::Image, criteria::TermCriteria; dst::Image = _Mat()) = undistortPointsIter(src, cameraMatrix, distCoeffs, R, P, criteria, dst)

function undistortPointsIter(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, R::UMat, P::UMat, criteria::TermCriteria, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(criteria),julia_to_cpp(dst)))
end
undistortPointsIter(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, R::UMat, P::UMat, criteria::TermCriteria; dst::UMat = UMat()) = undistortPointsIter(src, cameraMatrix, distCoeffs, R, P, criteria, dst)

function BRISK_create(thresh::Int32, octaves::Int32, patternScale::Float32)
	return cpp_to_julia(jlopencv_cv_cv_BRISK_create(julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(patternScale)))
end
BRISK_create(; thresh::Int32 = 30, octaves::Int32 = 3, patternScale::Float32 = 1.0f) = BRISK_create(thresh, octaves, patternScale)

function BRISK_create(radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}, dMax::Float32, dMin::Float32, indexChange::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_BRISK_create(julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
BRISK_create(radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}; dMax::Float32 = 5.85f, dMin::Float32 = 8.{Float32}, indexChange::Array{Int32, 1} = Array{Int32, 1}()) = BRISK_create(radiusList, numberList, dMax, dMin, indexChange)

function BRISK_create(thresh::Int32, octaves::Int32, radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}, dMax::Float32, dMin::Float32, indexChange::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_BRISK_create(julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
BRISK_create(thresh::Int32, octaves::Int32, radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}; dMax::Float32 = 5.85f, dMin::Float32 = 8.{Float32}, indexChange::Array{Int32, 1} = Array{Int32, 1}()) = BRISK_create(thresh, octaves, radiusList, numberList, dMax, dMin, indexChange)

function ORB_create(nfeatures::Int32, scaleFactor::Float32, nlevels::Int32, edgeThreshold::Int32, firstLevel::Int32, WTA_K::Int32, scoreType::ORB_ScoreType, patchSize::Int32, fastThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ORB_create(julia_to_cpp(nfeatures),julia_to_cpp(scaleFactor),julia_to_cpp(nlevels),julia_to_cpp(edgeThreshold),julia_to_cpp(firstLevel),julia_to_cpp(WTA_K),julia_to_cpp(scoreType),julia_to_cpp(patchSize),julia_to_cpp(fastThreshold)))
end
ORB_create(; nfeatures::Int32 = 500, scaleFactor::Float32 = 1.{Float32}, nlevels::Int32 = 8, edgeThreshold::Int32 = 31, firstLevel::Int32 = 0, WTA_K::Int32 = 2, scoreType::ORB_ScoreType = ORB::HARRIS_SCORE, patchSize::Int32 = 31, fastThreshold::Int32 = 20) = ORB_create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, scoreType, patchSize, fastThreshold)

function MSER_create(_delta::Int32, _min_area::Int32, _max_area::Int32, _max_variation::Float64, _min_diversity::Float64, _max_evolution::Int32, _area_threshold::Float64, _min_margin::Float64, _edge_blur_size::Int32)
	return cpp_to_julia(jlopencv_cv_cv_MSER_create(julia_to_cpp(_delta),julia_to_cpp(_min_area),julia_to_cpp(_max_area),julia_to_cpp(_max_variation),julia_to_cpp(_min_diversity),julia_to_cpp(_max_evolution),julia_to_cpp(_area_threshold),julia_to_cpp(_min_margin),julia_to_cpp(_edge_blur_size)))
end
MSER_create(; _delta::Int32 = 5, _min_area::Int32 = 60, _max_area::Int32 = 14400, _max_variation::Float64 = 0.25, _min_diversity::Float64 = .2, _max_evolution::Int32 = 200, _area_threshold::Float64 = 1.01, _min_margin::Float64 = 0.003, _edge_blur_size::Int32 = 5) = MSER_create(_delta, _min_area, _max_area, _max_variation, _min_diversity, _max_evolution, _area_threshold, _min_margin, _edge_blur_size)

function FastFeatureDetector_create(threshold::Int32, nonmaxSuppression::Bool, type::FastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_create(julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end
FastFeatureDetector_create(; threshold::Int32 = 10, nonmaxSuppression::Bool = true, type::FastFeatureDetector_DetectorType = FastFeatureDetector::TYPE_9_16) = FastFeatureDetector_create(threshold, nonmaxSuppression, type)

function AgastFeatureDetector_create(threshold::Int32, nonmaxSuppression::Bool, type::AgastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_create(julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end
AgastFeatureDetector_create(; threshold::Int32 = 10, nonmaxSuppression::Bool = true, type::AgastFeatureDetector_DetectorType = AgastFeatureDetector::OAST_9_16) = AgastFeatureDetector_create(threshold, nonmaxSuppression, type)

function GFTTDetector_create(maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_create(julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
GFTTDetector_create(; maxCorners::Int32 = 1000, qualityLevel::Float64 = 0.01, minDistance::Float64 = 1, blockSize::Int32 = 3, useHarrisDetector::Bool = false, k::Float64 = 0.04) = GFTTDetector_create(maxCorners, qualityLevel, minDistance, blockSize, useHarrisDetector, k)

function GFTTDetector_create(maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, gradiantSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_create(julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(gradiantSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
GFTTDetector_create(maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, gradiantSize::Int32; useHarrisDetector::Bool = false, k::Float64 = 0.04) = GFTTDetector_create(maxCorners, qualityLevel, minDistance, blockSize, gradiantSize, useHarrisDetector, k)

function SimpleBlobDetector_create(parameters::SimpleBlobDetector_Params)
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_create(julia_to_cpp(parameters)))
end
SimpleBlobDetector_create(; parameters::SimpleBlobDetector_Params = SimpleBlobDetector::Params()) = SimpleBlobDetector_create(parameters)

function KAZE_create(extended::Bool, upright::Bool, threshold::Float32, nOctaves::Int32, nOctaveLayers::Int32, diffusivity::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_create(julia_to_cpp(extended),julia_to_cpp(upright),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity)))
end
KAZE_create(; extended::Bool = false, upright::Bool = false, threshold::Float32 = 0.001f, nOctaves::Int32 = 4, nOctaveLayers::Int32 = 4, diffusivity::KAZE_DiffusivityType = KAZE::DIFF_PM_G2) = KAZE_create(extended, upright, threshold, nOctaves, nOctaveLayers, diffusivity)

function AKAZE_create(descriptor_type::AKAZE_DescriptorType, descriptor_size::Int32, descriptor_channels::Int32, threshold::Float32, nOctaves::Int32, nOctaveLayers::Int32, diffusivity::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_create(julia_to_cpp(descriptor_type),julia_to_cpp(descriptor_size),julia_to_cpp(descriptor_channels),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity)))
end
AKAZE_create(; descriptor_type::AKAZE_DescriptorType = AKAZE::DESCRIPTOR_MLDB, descriptor_size::Int32 = 0, descriptor_channels::Int32 = 3, threshold::Float32 = 0.001f, nOctaves::Int32 = 4, nOctaveLayers::Int32 = 4, diffusivity::KAZE_DiffusivityType = KAZE::DIFF_PM_G2) = AKAZE_create(descriptor_type, descriptor_size, descriptor_channels, threshold, nOctaves, nOctaveLayers, diffusivity)

function DescriptorMatcher_create(descriptorMatcherType::String)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_create(julia_to_cpp(descriptorMatcherType)))
end
DescriptorMatcher_create(descriptorMatcherType::String; ) = DescriptorMatcher_create(descriptorMatcherType)

function DescriptorMatcher_create(matcherType::DescriptorMatcher_MatcherType)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_create(julia_to_cpp(matcherType)))
end
DescriptorMatcher_create(matcherType::DescriptorMatcher_MatcherType; ) = DescriptorMatcher_create(matcherType)

function BFMatcher_create(normType::Int32, crossCheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_BFMatcher_create(julia_to_cpp(normType),julia_to_cpp(crossCheck)))
end
BFMatcher_create(; normType::Int32 = NORM_L2, crossCheck::Bool = false) = BFMatcher_create(normType, crossCheck)

function FlannBasedMatcher_create()
	return cpp_to_julia(jlopencv_cv_cv_FlannBasedMatcher_create())
end
FlannBasedMatcher_create(; ) = FlannBasedMatcher_create()

function drawKeypoints(image::Image, keypoints::Array{KeyPoint, 1}, outImage::Image, color::Scalar, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawKeypoints(julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(outImage),julia_to_cpp(color),julia_to_cpp(flags)))
end
drawKeypoints(image::Image, keypoints::Array{KeyPoint, 1}, outImage::Image; color::Scalar = Scalar::all(-1), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawKeypoints(image, keypoints, outImage, color, flags)

function drawKeypoints(image::UMat, keypoints::Array{KeyPoint, 1}, outImage::UMat, color::Scalar, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawKeypoints(julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(outImage),julia_to_cpp(color),julia_to_cpp(flags)))
end
drawKeypoints(image::UMat, keypoints::Array{KeyPoint, 1}, outImage::UMat; color::Scalar = Scalar::all(-1), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawKeypoints(image, keypoints, outImage, color, flags)

function drawMatches(img1::Image, keypoints1::Array{KeyPoint, 1}, img2::Image, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::Image, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{char, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatches(img1::Image, keypoints1::Array{KeyPoint, 1}, img2::Image, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::Image; matchColor::Scalar = Scalar::all(-1), singlePointColor::Scalar = Scalar::all(-1), matchesMask::Array{char, 1} = Array{char, 1}(), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function drawMatches(img1::UMat, keypoints1::Array{KeyPoint, 1}, img2::UMat, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::UMat, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{char, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatches(img1::UMat, keypoints1::Array{KeyPoint, 1}, img2::UMat, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::UMat; matchColor::Scalar = Scalar::all(-1), singlePointColor::Scalar = Scalar::all(-1), matchesMask::Array{char, 1} = Array{char, 1}(), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function drawMatchesKnn(img1::Image, keypoints1::Array{KeyPoint, 1}, img2::Image, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{Array{DMatch, 1}, 1}, outImg::Image, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Array{char, 1}, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatchesKnn(img1::Image, keypoints1::Array{KeyPoint, 1}, img2::Image, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{Array{DMatch, 1}, 1}, outImg::Image; matchColor::Scalar = Scalar::all(-1), singlePointColor::Scalar = Scalar::all(-1), matchesMask::Array{Array{char, 1}, 1} = Array{Array{char, 1} , 1}(), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawMatchesKnn(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function drawMatchesKnn(img1::UMat, keypoints1::Array{KeyPoint, 1}, img2::UMat, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{Array{DMatch, 1}, 1}, outImg::UMat, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Array{char, 1}, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatchesKnn(img1::UMat, keypoints1::Array{KeyPoint, 1}, img2::UMat, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{Array{DMatch, 1}, 1}, outImg::UMat; matchColor::Scalar = Scalar::all(-1), singlePointColor::Scalar = Scalar::all(-1), matchesMask::Array{Array{char, 1}, 1} = Array{Array{char, 1} , 1}(), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawMatchesKnn(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function CamShift(probImage::Image, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_CamShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end
CamShift(probImage::Image, window::Rect, criteria::TermCriteria; ) = CamShift(probImage, window, criteria)

function CamShift(probImage::UMat, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_CamShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end
CamShift(probImage::UMat, window::Rect, criteria::TermCriteria; ) = CamShift(probImage, window, criteria)

function meanShift(probImage::Image, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_meanShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end
meanShift(probImage::Image, window::Rect, criteria::TermCriteria; ) = meanShift(probImage, window, criteria)

function meanShift(probImage::UMat, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_meanShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end
meanShift(probImage::UMat, window::Rect, criteria::TermCriteria; ) = meanShift(probImage, window, criteria)

function buildOpticalFlowPyramid(img::Image, winSize::Size, maxLevel::Int32, pyramid::Array{Image, 1}, withDerivatives::Bool, pyrBorder::Int32, derivBorder::Int32, tryReuseInputImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_buildOpticalFlowPyramid(julia_to_cpp(img),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(pyramid),julia_to_cpp(withDerivatives),julia_to_cpp(pyrBorder),julia_to_cpp(derivBorder),julia_to_cpp(tryReuseInputImage)))
end
buildOpticalFlowPyramid(img::Image, winSize::Size, maxLevel::Int32; pyramid::Array{Image, 1} = Array{Image, 1}(), withDerivatives::Bool = true, pyrBorder::Int32 = BORDER_REFLECT_101, derivBorder::Int32 = BORDER_CONSTANT, tryReuseInputImage::Bool = true) = buildOpticalFlowPyramid(img, winSize, maxLevel, pyramid, withDerivatives, pyrBorder, derivBorder, tryReuseInputImage)

function buildOpticalFlowPyramid(img::UMat, winSize::Size, maxLevel::Int32, pyramid::Array{UMat, 1}, withDerivatives::Bool, pyrBorder::Int32, derivBorder::Int32, tryReuseInputImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_buildOpticalFlowPyramid(julia_to_cpp(img),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(pyramid),julia_to_cpp(withDerivatives),julia_to_cpp(pyrBorder),julia_to_cpp(derivBorder),julia_to_cpp(tryReuseInputImage)))
end
buildOpticalFlowPyramid(img::UMat, winSize::Size, maxLevel::Int32; pyramid::Array{UMat, 1} = Array{UMat, 1}(), withDerivatives::Bool = true, pyrBorder::Int32 = BORDER_REFLECT_101, derivBorder::Int32 = BORDER_CONSTANT, tryReuseInputImage::Bool = true) = buildOpticalFlowPyramid(img, winSize, maxLevel, pyramid, withDerivatives, pyrBorder, derivBorder, tryReuseInputImage)

function calcOpticalFlowPyrLK(prevImg::Image, nextImg::Image, prevPts::Image, nextPts::Image, status::Image, err::Image, winSize::Size, maxLevel::Int32, criteria::TermCriteria, flags::Int32, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_calcOpticalFlowPyrLK(julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(criteria),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
calcOpticalFlowPyrLK(prevImg::Image, nextImg::Image, prevPts::Image, nextPts::Image; status::Image = _Mat(), err::Image = _Mat(), winSize::Size = Size(21,21), maxLevel::Int32 = 3, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 0.01), flags::Int32 = 0, minEigThreshold::Float64 = 1e-4) = calcOpticalFlowPyrLK(prevImg, nextImg, prevPts, nextPts, status, err, winSize, maxLevel, criteria, flags, minEigThreshold)

function calcOpticalFlowPyrLK(prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat, status::UMat, err::UMat, winSize::Size, maxLevel::Int32, criteria::TermCriteria, flags::Int32, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_calcOpticalFlowPyrLK(julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(criteria),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
calcOpticalFlowPyrLK(prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat; status::UMat = UMat(), err::UMat = UMat(), winSize::Size = Size(21,21), maxLevel::Int32 = 3, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 0.01), flags::Int32 = 0, minEigThreshold::Float64 = 1e-4) = calcOpticalFlowPyrLK(prevImg, nextImg, prevPts, nextPts, status, err, winSize, maxLevel, criteria, flags, minEigThreshold)

function calcOpticalFlowFarneback(prev::Image, next::Image, flow::Image, pyr_scale::Float64, levels::Int32, winsize::Int32, iterations::Int32, poly_n::Int32, poly_sigma::Float64, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_calcOpticalFlowFarneback(julia_to_cpp(prev),julia_to_cpp(next),julia_to_cpp(flow),julia_to_cpp(pyr_scale),julia_to_cpp(levels),julia_to_cpp(winsize),julia_to_cpp(iterations),julia_to_cpp(poly_n),julia_to_cpp(poly_sigma),julia_to_cpp(flags)))
end
calcOpticalFlowFarneback(prev::Image, next::Image, flow::Image, pyr_scale::Float64, levels::Int32, winsize::Int32, iterations::Int32, poly_n::Int32, poly_sigma::Float64, flags::Int32; ) = calcOpticalFlowFarneback(prev, next, flow, pyr_scale, levels, winsize, iterations, poly_n, poly_sigma, flags)

function calcOpticalFlowFarneback(prev::UMat, next::UMat, flow::UMat, pyr_scale::Float64, levels::Int32, winsize::Int32, iterations::Int32, poly_n::Int32, poly_sigma::Float64, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_calcOpticalFlowFarneback(julia_to_cpp(prev),julia_to_cpp(next),julia_to_cpp(flow),julia_to_cpp(pyr_scale),julia_to_cpp(levels),julia_to_cpp(winsize),julia_to_cpp(iterations),julia_to_cpp(poly_n),julia_to_cpp(poly_sigma),julia_to_cpp(flags)))
end
calcOpticalFlowFarneback(prev::UMat, next::UMat, flow::UMat, pyr_scale::Float64, levels::Int32, winsize::Int32, iterations::Int32, poly_n::Int32, poly_sigma::Float64, flags::Int32; ) = calcOpticalFlowFarneback(prev, next, flow, pyr_scale, levels, winsize, iterations, poly_n, poly_sigma, flags)

function computeECC(templateImage::Image, inputImage::Image, inputMask::Image)
	return cpp_to_julia(jlopencv_cv_cv_computeECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(inputMask)))
end
computeECC(templateImage::Image, inputImage::Image; inputMask::Image = Mat()) = computeECC(templateImage, inputImage, inputMask)

function computeECC(templateImage::UMat, inputImage::UMat, inputMask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_computeECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(inputMask)))
end
computeECC(templateImage::UMat, inputImage::UMat; inputMask::UMat = UMat()) = computeECC(templateImage, inputImage, inputMask)

function findTransformECC(templateImage::Image, inputImage::Image, warpMatrix::Image, motionType::Int32, criteria::TermCriteria, inputMask::Image, gaussFiltSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findTransformECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(warpMatrix),julia_to_cpp(motionType),julia_to_cpp(criteria),julia_to_cpp(inputMask),julia_to_cpp(gaussFiltSize)))
end
findTransformECC(templateImage::Image, inputImage::Image, warpMatrix::Image, motionType::Int32, criteria::TermCriteria, inputMask::Image, gaussFiltSize::Int32; ) = findTransformECC(templateImage, inputImage, warpMatrix, motionType, criteria, inputMask, gaussFiltSize)

function findTransformECC(templateImage::UMat, inputImage::UMat, warpMatrix::UMat, motionType::Int32, criteria::TermCriteria, inputMask::UMat, gaussFiltSize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_findTransformECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(warpMatrix),julia_to_cpp(motionType),julia_to_cpp(criteria),julia_to_cpp(inputMask),julia_to_cpp(gaussFiltSize)))
end
findTransformECC(templateImage::UMat, inputImage::UMat, warpMatrix::UMat, motionType::Int32, criteria::TermCriteria, inputMask::UMat, gaussFiltSize::Int32; ) = findTransformECC(templateImage, inputImage, warpMatrix, motionType, criteria, inputMask, gaussFiltSize)

function readOpticalFlow(path::String)
	return cpp_to_julia(jlopencv_cv_cv_readOpticalFlow(julia_to_cpp(path)))
end
readOpticalFlow(path::String; ) = readOpticalFlow(path)

function writeOpticalFlow(path::String, flow::Image)
	return cpp_to_julia(jlopencv_cv_cv_writeOpticalFlow(julia_to_cpp(path),julia_to_cpp(flow)))
end
writeOpticalFlow(path::String, flow::Image; ) = writeOpticalFlow(path, flow)

function writeOpticalFlow(path::String, flow::UMat)
	return cpp_to_julia(jlopencv_cv_cv_writeOpticalFlow(julia_to_cpp(path),julia_to_cpp(flow)))
end
writeOpticalFlow(path::String, flow::UMat; ) = writeOpticalFlow(path, flow)

function FarnebackOpticalFlow_create(numLevels::Int32, pyrScale::Float64, fastPyramids::Bool, winSize::Int32, numIters::Int32, polyN::Int32, polySigma::Float64, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_create(julia_to_cpp(numLevels),julia_to_cpp(pyrScale),julia_to_cpp(fastPyramids),julia_to_cpp(winSize),julia_to_cpp(numIters),julia_to_cpp(polyN),julia_to_cpp(polySigma),julia_to_cpp(flags)))
end
FarnebackOpticalFlow_create(; numLevels::Int32 = 5, pyrScale::Float64 = 0.5, fastPyramids::Bool = false, winSize::Int32 = 13, numIters::Int32 = 10, polyN::Int32 = 5, polySigma::Float64 = 1.1, flags::Int32 = 0) = FarnebackOpticalFlow_create(numLevels, pyrScale, fastPyramids, winSize, numIters, polyN, polySigma, flags)

function VariationalRefinement_create()
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_create())
end
VariationalRefinement_create(; ) = VariationalRefinement_create()

function DISOpticalFlow_create(preset::Int32)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_create(julia_to_cpp(preset)))
end
DISOpticalFlow_create(; preset::Int32 = DISOpticalFlow::PRESET_FAST) = DISOpticalFlow_create(preset)

function SparsePyrLKOpticalFlow_create(winSize::Size, maxLevel::Int32, crit::TermCriteria, flags::Int32, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_create(julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(crit),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
SparsePyrLKOpticalFlow_create(; winSize::Size = Size(21, 21), maxLevel::Int32 = 3, crit::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 0.01), flags::Int32 = 0, minEigThreshold::Float64 = 1e-4) = SparsePyrLKOpticalFlow_create(winSize, maxLevel, crit, flags, minEigThreshold)

function createBackgroundSubtractorMOG2(history::Int32, varThreshold::Float64, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_cv_createBackgroundSubtractorMOG2(julia_to_cpp(history),julia_to_cpp(varThreshold),julia_to_cpp(detectShadows)))
end
createBackgroundSubtractorMOG2(; history::Int32 = 500, varThreshold::Float64 = 16, detectShadows::Bool = true) = createBackgroundSubtractorMOG2(history, varThreshold, detectShadows)

function createBackgroundSubtractorKNN(history::Int32, dist2Threshold::Float64, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_cv_createBackgroundSubtractorKNN(julia_to_cpp(history),julia_to_cpp(dist2Threshold),julia_to_cpp(detectShadows)))
end
createBackgroundSubtractorKNN(; history::Int32 = 500, dist2Threshold::Float64 = 400.0, detectShadows::Bool = true) = createBackgroundSubtractorKNN(history, dist2Threshold, detectShadows)

function groupRectangles(rectList::Array{Rect, 1}, groupThreshold::Int32, eps::Float64)
	return cpp_to_julia(jlopencv_cv_cv_groupRectangles(julia_to_cpp(rectList),julia_to_cpp(groupThreshold),julia_to_cpp(eps)))
end
groupRectangles(rectList::Array{Rect, 1}, groupThreshold::Int32; eps::Float64 = 0.2) = groupRectangles(rectList, groupThreshold, eps)

function CascadeClassifier_convert(oldcascade::String, newcascade::String)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_convert(julia_to_cpp(oldcascade),julia_to_cpp(newcascade)))
end
CascadeClassifier_convert(oldcascade::String, newcascade::String; ) = CascadeClassifier_convert(oldcascade, newcascade)

function HOGDescriptor_getDefaultPeopleDetector()
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_getDefaultPeopleDetector())
end
HOGDescriptor_getDefaultPeopleDetector(; ) = HOGDescriptor_getDefaultPeopleDetector()

function HOGDescriptor_getDaimlerPeopleDetector()
	return cpp_to_julia(jlopencv_cv_cv_HOGDescriptor_getDaimlerPeopleDetector())
end
HOGDescriptor_getDaimlerPeopleDetector(; ) = HOGDescriptor_getDaimlerPeopleDetector()

function imread(filename::String, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imread(julia_to_cpp(filename),julia_to_cpp(flags)))
end
imread(filename::String; flags::Int32 = IMREAD_COLOR) = imread(filename, flags)

function imreadmulti(filename::String, mats::Array{Image, 1}, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imreadmulti(julia_to_cpp(filename),julia_to_cpp(mats),julia_to_cpp(flags)))
end
imreadmulti(filename::String; mats::Array{Image, 1} = Array{Image, 1}(), flags::Int32 = IMREAD_ANYCOLOR) = imreadmulti(filename, mats, flags)

function imreadmulti(filename::String, mats::Array{Image, 1}, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imreadmulti(julia_to_cpp(filename),julia_to_cpp(mats),julia_to_cpp(flags)))
end
imreadmulti(filename::String; mats::Array{Image, 1} = Array{Image, 1}(), flags::Int32 = IMREAD_ANYCOLOR) = imreadmulti(filename, mats, flags)

function imwrite(filename::String, img::Image, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imwrite(julia_to_cpp(filename),julia_to_cpp(img),julia_to_cpp(params)))
end
imwrite(filename::String, img::Image; params::Array{Int32, 1} = Array{Int32, 1}()) = imwrite(filename, img, params)

function imwrite(filename::String, img::UMat, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imwrite(julia_to_cpp(filename),julia_to_cpp(img),julia_to_cpp(params)))
end
imwrite(filename::String, img::UMat; params::Array{Int32, 1} = Array{Int32, 1}()) = imwrite(filename, img, params)

function imdecode(buf::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imdecode(julia_to_cpp(buf),julia_to_cpp(flags)))
end
imdecode(buf::Image, flags::Int32; ) = imdecode(buf, flags)

function imdecode(buf::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imdecode(julia_to_cpp(buf),julia_to_cpp(flags)))
end
imdecode(buf::UMat, flags::Int32; ) = imdecode(buf, flags)

function imencode(ext::String, img::Image, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imencode(julia_to_cpp(ext),julia_to_cpp(img),julia_to_cpp(params)))
end
imencode(ext::String, img::Image; params::Array{Int32, 1} = Array{Int32, 1}()) = imencode(ext, img, params)

function imencode(ext::String, img::UMat, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imencode(julia_to_cpp(ext),julia_to_cpp(img),julia_to_cpp(params)))
end
imencode(ext::String, img::UMat; params::Array{Int32, 1} = Array{Int32, 1}()) = imencode(ext, img, params)

function haveImageReader(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_haveImageReader(julia_to_cpp(filename)))
end
haveImageReader(filename::String; ) = haveImageReader(filename)

function haveImageWriter(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_haveImageWriter(julia_to_cpp(filename)))
end
haveImageWriter(filename::String; ) = haveImageWriter(filename)

function VideoWriter_fourcc(c1::char, c2::char, c3::char, c4::char)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_fourcc(julia_to_cpp(c1),julia_to_cpp(c2),julia_to_cpp(c3),julia_to_cpp(c4)))
end
VideoWriter_fourcc(c1::char, c2::char, c3::char, c4::char; ) = VideoWriter_fourcc(c1, c2, c3, c4)

function namedWindow(winname::String, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_namedWindow(julia_to_cpp(winname),julia_to_cpp(flags)))
end
namedWindow(winname::String; flags::Int32 = WINDOW_AUTOSIZE) = namedWindow(winname, flags)

function destroyWindow(winname::String)
	return cpp_to_julia(jlopencv_cv_cv_destroyWindow(julia_to_cpp(winname)))
end
destroyWindow(winname::String; ) = destroyWindow(winname)

function destroyAllWindows()
	return cpp_to_julia(jlopencv_cv_cv_destroyAllWindows())
end
destroyAllWindows(; ) = destroyAllWindows()

function startWindowThread()
	return cpp_to_julia(jlopencv_cv_cv_startWindowThread())
end
startWindowThread(; ) = startWindowThread()

function waitKeyEx(delay::Int32)
	return cpp_to_julia(jlopencv_cv_cv_waitKeyEx(julia_to_cpp(delay)))
end
waitKeyEx(; delay::Int32 = 0) = waitKeyEx(delay)

function waitKey(delay::Int32)
	return cpp_to_julia(jlopencv_cv_cv_waitKey(julia_to_cpp(delay)))
end
waitKey(; delay::Int32 = 0) = waitKey(delay)

function imshow(winname::String, mat::Image)
	return cpp_to_julia(jlopencv_cv_cv_imshow(julia_to_cpp(winname),julia_to_cpp(mat)))
end
imshow(winname::String, mat::Image; ) = imshow(winname, mat)

function imshow(winname::String, mat::UMat)
	return cpp_to_julia(jlopencv_cv_cv_imshow(julia_to_cpp(winname),julia_to_cpp(mat)))
end
imshow(winname::String, mat::UMat; ) = imshow(winname, mat)

function resizeWindow(winname::String, width::Int32, height::Int32)
	return cpp_to_julia(jlopencv_cv_cv_resizeWindow(julia_to_cpp(winname),julia_to_cpp(width),julia_to_cpp(height)))
end
resizeWindow(winname::String, width::Int32, height::Int32; ) = resizeWindow(winname, width, height)

function resizeWindow(winname::String, size::Size)
	return cpp_to_julia(jlopencv_cv_cv_resizeWindow(julia_to_cpp(winname),julia_to_cpp(size)))
end
resizeWindow(winname::String, size::Size; ) = resizeWindow(winname, size)

function moveWindow(winname::String, x::Int32, y::Int32)
	return cpp_to_julia(jlopencv_cv_cv_moveWindow(julia_to_cpp(winname),julia_to_cpp(x),julia_to_cpp(y)))
end
moveWindow(winname::String, x::Int32, y::Int32; ) = moveWindow(winname, x, y)

function setWindowProperty(winname::String, prop_id::Int32, prop_value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_setWindowProperty(julia_to_cpp(winname),julia_to_cpp(prop_id),julia_to_cpp(prop_value)))
end
setWindowProperty(winname::String, prop_id::Int32, prop_value::Float64; ) = setWindowProperty(winname, prop_id, prop_value)

function setWindowTitle(winname::String, title::String)
	return cpp_to_julia(jlopencv_cv_cv_setWindowTitle(julia_to_cpp(winname),julia_to_cpp(title)))
end
setWindowTitle(winname::String, title::String; ) = setWindowTitle(winname, title)

function getWindowProperty(winname::String, prop_id::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getWindowProperty(julia_to_cpp(winname),julia_to_cpp(prop_id)))
end
getWindowProperty(winname::String, prop_id::Int32; ) = getWindowProperty(winname, prop_id)

function getWindowImageRect(winname::String)
	return cpp_to_julia(jlopencv_cv_cv_getWindowImageRect(julia_to_cpp(winname)))
end
getWindowImageRect(winname::String; ) = getWindowImageRect(winname)

function selectROI(windowName::String, img::Image, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(windowName::String, img::Image; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROI(windowName, img, showCrosshair, fromCenter)

function selectROI(windowName::String, img::UMat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(windowName::String, img::UMat; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROI(windowName, img, showCrosshair, fromCenter)

function selectROI(img::Image, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(img::Image; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROI(img, showCrosshair, fromCenter)

function selectROI(img::UMat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(img::UMat; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROI(img, showCrosshair, fromCenter)

function selectROIs(windowName::String, img::Image, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROIs(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROIs(windowName::String, img::Image; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROIs(windowName, img, showCrosshair, fromCenter)

function selectROIs(windowName::String, img::UMat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROIs(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROIs(windowName::String, img::UMat; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROIs(windowName, img, showCrosshair, fromCenter)

function getTrackbarPos(trackbarname::String, winname::String)
	return cpp_to_julia(jlopencv_cv_cv_getTrackbarPos(julia_to_cpp(trackbarname),julia_to_cpp(winname)))
end
getTrackbarPos(trackbarname::String, winname::String; ) = getTrackbarPos(trackbarname, winname)

function setTrackbarPos(trackbarname::String, winname::String, pos::Int32)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarPos(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(pos)))
end
setTrackbarPos(trackbarname::String, winname::String, pos::Int32; ) = setTrackbarPos(trackbarname, winname, pos)

function setTrackbarMax(trackbarname::String, winname::String, maxval::Int32)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarMax(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(maxval)))
end
setTrackbarMax(trackbarname::String, winname::String, maxval::Int32; ) = setTrackbarMax(trackbarname, winname, maxval)

function setTrackbarMin(trackbarname::String, winname::String, minval::Int32)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarMin(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(minval)))
end
setTrackbarMin(trackbarname::String, winname::String, minval::Int32; ) = setTrackbarMin(trackbarname, winname, minval)

function addText(img::Image, text::String, org::Point{Int32}, nameFont::String, pointSize::Int32, color::Scalar, weight::Int32, style::Int32, spacing::Int32)
	return cpp_to_julia(jlopencv_cv_cv_addText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(nameFont),julia_to_cpp(pointSize),julia_to_cpp(color),julia_to_cpp(weight),julia_to_cpp(style),julia_to_cpp(spacing)))
end
addText(img::Image, text::String, org::Point{Int32}, nameFont::String; pointSize::Int32 = -1, color::Scalar = Scalar::all(0), weight::Int32 = QT_FONT_NORMAL, style::Int32 = QT_STYLE_NORMAL, spacing::Int32 = 0) = addText(img, text, org, nameFont, pointSize, color, weight, style, spacing)

function addText(img::Image, text::String, org::Point{Int32}, nameFont::String, pointSize::Int32, color::Scalar, weight::Int32, style::Int32, spacing::Int32)
	return cpp_to_julia(jlopencv_cv_cv_addText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(nameFont),julia_to_cpp(pointSize),julia_to_cpp(color),julia_to_cpp(weight),julia_to_cpp(style),julia_to_cpp(spacing)))
end
addText(img::Image, text::String, org::Point{Int32}, nameFont::String; pointSize::Int32 = -1, color::Scalar = Scalar::all(0), weight::Int32 = QT_FONT_NORMAL, style::Int32 = QT_STYLE_NORMAL, spacing::Int32 = 0) = addText(img, text, org, nameFont, pointSize, color, weight, style, spacing)

function displayOverlay(winname::String, text::String, delayms::Int32)
	return cpp_to_julia(jlopencv_cv_cv_displayOverlay(julia_to_cpp(winname),julia_to_cpp(text),julia_to_cpp(delayms)))
end
displayOverlay(winname::String, text::String; delayms::Int32 = 0) = displayOverlay(winname, text, delayms)

function displayStatusBar(winname::String, text::String, delayms::Int32)
	return cpp_to_julia(jlopencv_cv_cv_displayStatusBar(julia_to_cpp(winname),julia_to_cpp(text),julia_to_cpp(delayms)))
end
displayStatusBar(winname::String, text::String; delayms::Int32 = 0) = displayStatusBar(winname, text, delayms)


# 
include("cv_traits_wrap.jl")
include("cv_ocl_wrap.jl")
include("cv_flann_wrap.jl")
include("cv_ml_wrap.jl")
include("cv_fisheye_wrap.jl")
include("cv_internal_wrap.jl")
