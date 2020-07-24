
   const SortFlags = Int32 

   const CovarFlags = Int32 

   const KmeansFlags = Int32 

   const ReduceTypes = Int32 

   const RotateFlags = Int32 

   const PCA_Flags = Int32 

   const SVD_Flags = Int32 

   const Formatter_FormatType = Int32 

   const Param = Int32 

   const DecompTypes = Int32 

   const NormTypes = Int32 

   const CmpTypes = Int32 

   const GemmFlags = Int32 

   const DftFlags = Int32 

   const BorderTypes = Int32 

   const SolveLPResult = Int32 

   const FileStorage_Mode = Int32 

   const FileStorage_State = Int32 

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
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::FileStorage, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FileStorage, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function open(cobj::FileStorage, filename::String, flags::Int32, encoding::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(flags),julia_to_cpp(encoding)))
end
open(cobj::FileStorage, filename::String, flags::Int32; encoding::String = ("")) = open(cobj, filename, flags, encoding)

function isOpened(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_isOpened(julia_to_cpp(cobj)))
end

function release(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_release(julia_to_cpp(cobj)))
end

function releaseAndGetString(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_releaseAndGetString(julia_to_cpp(cobj)))
end

function getFirstTopLevelNode(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_getFirstTopLevelNode(julia_to_cpp(cobj)))
end

function root(cobj::FileStorage, streamidx::Int32)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_root(julia_to_cpp(cobj),julia_to_cpp(streamidx)))
end
root(cobj::FileStorage; streamidx::Int32 = Int32(0)) = root(cobj, streamidx)

function write(cobj::FileStorage, name::String, val::Int32)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::Array{String, 1})
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function writeComment(cobj::FileStorage, comment::String, append::Bool)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_writeComment(julia_to_cpp(cobj),julia_to_cpp(comment),julia_to_cpp(append)))
end
writeComment(cobj::FileStorage, comment::String; append::Bool = (false)) = writeComment(cobj, comment, append)

function startWriteStruct(cobj::FileStorage, name::String, flags::Int32, typeName::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_startWriteStruct(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(flags),julia_to_cpp(typeName)))
end
startWriteStruct(cobj::FileStorage, name::String, flags::Int32; typeName::String = ("")) = startWriteStruct(cobj, name, flags, typeName)

function endWriteStruct(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_endWriteStruct(julia_to_cpp(cobj)))
end

function getFormat(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_getFormat(julia_to_cpp(cobj)))
end

function FileStorage()
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_FileStorage())
end

function FileStorage(filename::String, flags::Int32, encoding::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_FileStorage(julia_to_cpp(filename),julia_to_cpp(flags),julia_to_cpp(encoding)))
end
FileStorage(filename::String, flags::Int32; encoding::String = ("")) = FileStorage(filename, flags, encoding)
function Base.getproperty(m::FileNode, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FileNode, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function keys(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_keys(julia_to_cpp(cobj)))
end

function type(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_type(julia_to_cpp(cobj)))
end

function empty(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_empty(julia_to_cpp(cobj)))
end

function isNone(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isNone(julia_to_cpp(cobj)))
end

function isSeq(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isSeq(julia_to_cpp(cobj)))
end

function isMap(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isMap(julia_to_cpp(cobj)))
end

function isInt(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isInt(julia_to_cpp(cobj)))
end

function isReal(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isReal(julia_to_cpp(cobj)))
end

function isString(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isString(julia_to_cpp(cobj)))
end

function isNamed(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isNamed(julia_to_cpp(cobj)))
end

function name(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_name(julia_to_cpp(cobj)))
end

function size(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_size(julia_to_cpp(cobj)))
end

function rawSize(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_rawSize(julia_to_cpp(cobj)))
end

function real(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_real(julia_to_cpp(cobj)))
end

function string(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_string(julia_to_cpp(cobj)))
end

function mat(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_mat(julia_to_cpp(cobj)))
end

function FileNode()
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_FileNode())
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
    return Base.setfield!(m, s, v)
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
    return Base.setfield!(m, s, v)
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
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::TickMeter, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TickMeter, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{GeneralizedHough}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GeneralizedHough}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{GeneralizedHoughBallard}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GeneralizedHoughBallard}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{GeneralizedHoughGuil}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GeneralizedHoughGuil}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{CLAHE}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{CLAHE}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::Subdiv2D, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Subdiv2D, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function initDelaunay(cobj::Subdiv2D, rect::Rect{Int32})
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

function Subdiv2D(rect::Rect{Int32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_Subdiv2D(julia_to_cpp(rect)))
end
function Base.getproperty(m::cv_Ptr{LineSegmentDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{LineSegmentDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::VideoCapture, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoCapture, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function open(cobj::VideoCapture, filename::String, apiPreference::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference)))
end
open(cobj::VideoCapture, filename::String; apiPreference::Int32 = Int32(cv_CAP_ANY)) = open(cobj, filename, apiPreference)

function open(cobj::VideoCapture, index::Int32, apiPreference::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(index),julia_to_cpp(apiPreference)))
end
open(cobj::VideoCapture, index::Int32; apiPreference::Int32 = Int32(cv_CAP_ANY)) = open(cobj, index, apiPreference)

function isOpened(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_isOpened(julia_to_cpp(cobj)))
end

function release(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_release(julia_to_cpp(cobj)))
end

function grab(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_grab(julia_to_cpp(cobj)))
end

function retrieve(cobj::VideoCapture, image::InputArray, flag::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_retrieve(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(flag)))
end
retrieve(cobj::VideoCapture; image::InputArray = (CxxMat()), flag::Int32 = Int32(0)) = retrieve(cobj, image, flag)

function read(cobj::VideoCapture, image::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_read(julia_to_cpp(cobj),julia_to_cpp(image)))
end
read(cobj::VideoCapture; image::InputArray = (CxxMat())) = read(cobj, image)

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
VideoCapture(filename::String; apiPreference::Int32 = Int32(cv_CAP_ANY)) = VideoCapture(filename, apiPreference)

function VideoCapture(index::Int32, apiPreference::Int32)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(index),julia_to_cpp(apiPreference)))
end
VideoCapture(index::Int32; apiPreference::Int32 = Int32(cv_CAP_ANY)) = VideoCapture(index, apiPreference)
function Base.getproperty(m::VideoWriter, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoWriter, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function open(cobj::VideoWriter, filename::String, fourcc::Int32, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::VideoWriter, filename::String, fourcc::Int32, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = open(cobj, filename, fourcc, fps, frameSize, isColor)

function open(cobj::VideoWriter, filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::VideoWriter, filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = open(cobj, filename, apiPreference, fourcc, fps, frameSize, isColor)

function open(cobj::VideoWriter, filename::String, fourcc::Int32, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end

function open(cobj::VideoWriter, filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end

function isOpened(cobj::VideoWriter)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_isOpened(julia_to_cpp(cobj)))
end

function release(cobj::VideoWriter)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_release(julia_to_cpp(cobj)))
end

function write(cobj::VideoWriter, image::InputArray)
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

function VideoWriter(filename::String, fourcc::Int32, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
VideoWriter(filename::String, fourcc::Int32, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = VideoWriter(filename, fourcc, fps, frameSize, isColor)

function VideoWriter(filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
VideoWriter(filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = VideoWriter(filename, apiPreference, fourcc, fps, frameSize, isColor)

function VideoWriter(filename::String, fourcc::Int32, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end

function VideoWriter(filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end

function borderInterpolate(p::Int32, len::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_borderInterpolate(julia_to_cpp(p),julia_to_cpp(len),julia_to_cpp(borderType)))
end

function copyMakeBorder(src::InputArray, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32, dst::InputArray, value::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_copyMakeBorder(julia_to_cpp(src),julia_to_cpp(top),julia_to_cpp(bottom),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(borderType),julia_to_cpp(dst),julia_to_cpp(value)))
end
copyMakeBorder(src::InputArray, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32; dst::InputArray = (CxxMat()), value::Scalar = (cpp_to_julia(ScalarOP()))) = copyMakeBorder(src, top, bottom, left, right, borderType, dst, value)

function add(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_add(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
add(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat()), dtype::Int32 = Int32(-1)) = add(src1, src2, dst, mask, dtype)

function subtract(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_subtract(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
subtract(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat()), dtype::Int32 = Int32(-1)) = subtract(src1, src2, dst, mask, dtype)

function multiply(src1::InputArray, src2::InputArray, dst::InputArray, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_multiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
multiply(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = multiply(src1, src2, dst, scale, dtype)

function divide(src1::InputArray, src2::InputArray, dst::InputArray, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
divide(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = divide(src1, src2, dst, scale, dtype)

function divide(scale::Float64, src2::InputArray, dst::InputArray, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(scale),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
divide(scale::Float64, src2::InputArray; dst::InputArray = (CxxMat()), dtype::Int32 = Int32(-1)) = divide(scale, src2, dst, dtype)

function scaleAdd(src1::InputArray, alpha::Float64, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_scaleAdd(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(dst)))
end
scaleAdd(src1::InputArray, alpha::Float64, src2::InputArray; dst::InputArray = (CxxMat())) = scaleAdd(src1, alpha, src2, dst)

function addWeighted(src1::InputArray, alpha::Float64, src2::InputArray, beta::Float64, gamma::Float64, dst::InputArray, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_addWeighted(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(beta),julia_to_cpp(gamma),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
addWeighted(src1::InputArray, alpha::Float64, src2::InputArray, beta::Float64, gamma::Float64; dst::InputArray = (CxxMat()), dtype::Int32 = Int32(-1)) = addWeighted(src1, alpha, src2, beta, gamma, dst, dtype)

function convertScaleAbs(src::InputArray, dst::InputArray, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_convertScaleAbs(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
convertScaleAbs(src::InputArray; dst::InputArray = (CxxMat()), alpha::Float64 = Float64(1), beta::Float64 = Float64(0)) = convertScaleAbs(src, dst, alpha, beta)

function convertFp16(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_convertFp16(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertFp16(src::InputArray; dst::InputArray = (CxxMat())) = convertFp16(src, dst)

function LUT(src::InputArray, lut::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_LUT(julia_to_cpp(src),julia_to_cpp(lut),julia_to_cpp(dst)))
end
LUT(src::InputArray, lut::InputArray; dst::InputArray = (CxxMat())) = LUT(src, lut, dst)

function sumElems(src::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sum(julia_to_cpp(src)))
end

function countNonZero(src::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_countNonZero(julia_to_cpp(src)))
end

function findNonZero(src::InputArray, idx::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findNonZero(julia_to_cpp(src),julia_to_cpp(idx)))
end
findNonZero(src::InputArray; idx::InputArray = (CxxMat())) = findNonZero(src, idx)

function mean(src::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_mean(julia_to_cpp(src),julia_to_cpp(mask)))
end
mean(src::InputArray; mask::InputArray = (CxxMat())) = mean(src, mask)

function meanStdDev(src::InputArray, mean::InputArray, stddev::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_meanStdDev(julia_to_cpp(src),julia_to_cpp(mean),julia_to_cpp(stddev),julia_to_cpp(mask)))
end
meanStdDev(src::InputArray; mean::InputArray = (CxxMat()), stddev::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = meanStdDev(src, mean, stddev, mask)

function norm(src1::InputArray, normType::Int32, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::InputArray; normType::Int32 = Int32(cv_NORM_L2), mask::InputArray = (CxxMat())) = norm(src1, normType, mask)

function norm(src1::InputArray, src2::InputArray, normType::Int32, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::InputArray, src2::InputArray; normType::Int32 = Int32(cv_NORM_L2), mask::InputArray = (CxxMat())) = norm(src1, src2, normType, mask)

function PSNR(src1::InputArray, src2::InputArray, R::Float64)
	return cpp_to_julia(jlopencv_cv_cv_PSNR(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(R)))
end
PSNR(src1::InputArray, src2::InputArray; R::Float64 = Float64(255)) = PSNR(src1, src2, R)

function batchDistance(src1::InputArray, src2::InputArray, dtype::Int32, dist::InputArray, nidx::InputArray, normType::Int32, K::Int32, mask::InputArray, update::Int32, crosscheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_batchDistance(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dtype),julia_to_cpp(dist),julia_to_cpp(nidx),julia_to_cpp(normType),julia_to_cpp(K),julia_to_cpp(mask),julia_to_cpp(update),julia_to_cpp(crosscheck)))
end
batchDistance(src1::InputArray, src2::InputArray, dtype::Int32; dist::InputArray = (CxxMat()), nidx::InputArray = (CxxMat()), normType::Int32 = Int32(cv_NORM_L2), K::Int32 = Int32(0), mask::InputArray = (CxxMat()), update::Int32 = Int32(0), crosscheck::Bool = (false)) = batchDistance(src1, src2, dtype, dist, nidx, normType, K, mask, update, crosscheck)

function normalize(src::InputArray, dst::InputArray, alpha::Float64, beta::Float64, norm_type::Int32, dtype::Int32, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_normalize(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(norm_type),julia_to_cpp(dtype),julia_to_cpp(mask)))
end
normalize(src::InputArray, dst::InputArray; alpha::Float64 = Float64(1), beta::Float64 = Float64(0), norm_type::Int32 = Int32(cv_NORM_L2), dtype::Int32 = Int32(-1), mask::InputArray = (CxxMat())) = normalize(src, dst, alpha, beta, norm_type, dtype, mask)

function minMaxLoc(src::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minMaxLoc(julia_to_cpp(src),julia_to_cpp(mask)))
end
minMaxLoc(src::InputArray; mask::InputArray = (CxxMat())) = minMaxLoc(src, mask)

function reduce(src::InputArray, dim::Int32, rtype::Int32, dst::InputArray, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_reduce(julia_to_cpp(src),julia_to_cpp(dim),julia_to_cpp(rtype),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
reduce(src::InputArray, dim::Int32, rtype::Int32; dst::InputArray = (CxxMat()), dtype::Int32 = Int32(-1)) = reduce(src, dim, rtype, dst, dtype)

function merge(mv::Array{InputArray, 1}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_merge(julia_to_cpp(mv),julia_to_cpp(dst)))
end
merge(mv::Array{InputArray, 1}; dst::InputArray = (CxxMat())) = merge(mv, dst)

function split(m::InputArray, mv::Array{InputArray, 1})
	return cpp_to_julia(jlopencv_cv_cv_split(julia_to_cpp(m),julia_to_cpp(mv)))
end
split(m::InputArray; mv::Array{InputArray, 1} = (Array{InputArray, 1}())) = split(m, mv)

function mixChannels(src::Array{InputArray, 1}, dst::Array{InputArray, 1}, fromTo::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_mixChannels(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fromTo)))
end

function extractChannel(src::InputArray, coi::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_extractChannel(julia_to_cpp(src),julia_to_cpp(coi),julia_to_cpp(dst)))
end
extractChannel(src::InputArray, coi::Int32; dst::InputArray = (CxxMat())) = extractChannel(src, coi, dst)

function insertChannel(src::InputArray, dst::InputArray, coi::Int32)
	return cpp_to_julia(jlopencv_cv_cv_insertChannel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(coi)))
end

function flip(src::InputArray, flipCode::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_flip(julia_to_cpp(src),julia_to_cpp(flipCode),julia_to_cpp(dst)))
end
flip(src::InputArray, flipCode::Int32; dst::InputArray = (CxxMat())) = flip(src, flipCode, dst)

function rotate(src::InputArray, rotateCode::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_rotate(julia_to_cpp(src),julia_to_cpp(rotateCode),julia_to_cpp(dst)))
end
rotate(src::InputArray, rotateCode::Int32; dst::InputArray = (CxxMat())) = rotate(src, rotateCode, dst)

function repeat(src::InputArray, ny::Int32, nx::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_repeat(julia_to_cpp(src),julia_to_cpp(ny),julia_to_cpp(nx),julia_to_cpp(dst)))
end
repeat(src::InputArray, ny::Int32, nx::Int32; dst::InputArray = (CxxMat())) = repeat(src, ny, nx, dst)

function hconcat(src::Array{InputArray, 1}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_hconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
hconcat(src::Array{InputArray, 1}; dst::InputArray = (CxxMat())) = hconcat(src, dst)

function vconcat(src::Array{InputArray, 1}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_vconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
vconcat(src::Array{InputArray, 1}; dst::InputArray = (CxxMat())) = vconcat(src, dst)

function bitwise_and(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_and(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_and(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_and(src1, src2, dst, mask)

function bitwise_or(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_or(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_or(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_or(src1, src2, dst, mask)

function bitwise_xor(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_xor(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_xor(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_xor(src1, src2, dst, mask)

function bitwise_not(src::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_not(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_not(src::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_not(src, dst, mask)

function absdiff(src1::InputArray, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_absdiff(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
absdiff(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat())) = absdiff(src1, src2, dst)

function copyTo(src::InputArray, mask::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_copyTo(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst)))
end
copyTo(src::InputArray, mask::InputArray; dst::InputArray = (CxxMat())) = copyTo(src, mask, dst)

function inRange(src::InputArray, lowerb::InputArray, upperb::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_inRange(julia_to_cpp(src),julia_to_cpp(lowerb),julia_to_cpp(upperb),julia_to_cpp(dst)))
end
inRange(src::InputArray, lowerb::InputArray, upperb::InputArray; dst::InputArray = (CxxMat())) = inRange(src, lowerb, upperb, dst)

function compare(src1::InputArray, src2::InputArray, cmpop::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_compare(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(cmpop),julia_to_cpp(dst)))
end
compare(src1::InputArray, src2::InputArray, cmpop::Int32; dst::InputArray = (CxxMat())) = compare(src1, src2, cmpop, dst)

function min(src1::InputArray, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_min(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
min(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat())) = min(src1, src2, dst)

function max(src1::InputArray, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_max(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
max(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat())) = max(src1, src2, dst)

function sqrt(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sqrt(julia_to_cpp(src),julia_to_cpp(dst)))
end
sqrt(src::InputArray; dst::InputArray = (CxxMat())) = sqrt(src, dst)

function pow(src::InputArray, power::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_pow(julia_to_cpp(src),julia_to_cpp(power),julia_to_cpp(dst)))
end
pow(src::InputArray, power::Float64; dst::InputArray = (CxxMat())) = pow(src, power, dst)

function exp(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_exp(julia_to_cpp(src),julia_to_cpp(dst)))
end
exp(src::InputArray; dst::InputArray = (CxxMat())) = exp(src, dst)

function log(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_log(julia_to_cpp(src),julia_to_cpp(dst)))
end
log(src::InputArray; dst::InputArray = (CxxMat())) = log(src, dst)

function polarToCart(magnitude::InputArray, angle::InputArray, x::InputArray, y::InputArray, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_polarToCart(julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angleInDegrees)))
end
polarToCart(magnitude::InputArray, angle::InputArray; x::InputArray = (CxxMat()), y::InputArray = (CxxMat()), angleInDegrees::Bool = (false)) = polarToCart(magnitude, angle, x, y, angleInDegrees)

function cartToPolar(x::InputArray, y::InputArray, magnitude::InputArray, angle::InputArray, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_cartToPolar(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
cartToPolar(x::InputArray, y::InputArray; magnitude::InputArray = (CxxMat()), angle::InputArray = (CxxMat()), angleInDegrees::Bool = (false)) = cartToPolar(x, y, magnitude, angle, angleInDegrees)

function phase(x::InputArray, y::InputArray, angle::InputArray, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_phase(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
phase(x::InputArray, y::InputArray; angle::InputArray = (CxxMat()), angleInDegrees::Bool = (false)) = phase(x, y, angle, angleInDegrees)

function magnitude(x::InputArray, y::InputArray, magnitude::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_magnitude(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude)))
end
magnitude(x::InputArray, y::InputArray; magnitude::InputArray = (CxxMat())) = magnitude(x, y, magnitude)

function checkRange(a::InputArray, quiet::Bool, minVal::Float64, maxVal::Float64)
	return cpp_to_julia(jlopencv_cv_cv_checkRange(julia_to_cpp(a),julia_to_cpp(quiet),julia_to_cpp(minVal),julia_to_cpp(maxVal)))
end
checkRange(a::InputArray; quiet::Bool = (true), minVal::Float64 = Float64(-typemax(Float64)), maxVal::Float64 = Float64(typemax(Float64))) = checkRange(a, quiet, minVal, maxVal)

function patchNaNs(a::InputArray, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_patchNaNs(julia_to_cpp(a),julia_to_cpp(val)))
end
patchNaNs(a::InputArray; val::Float64 = Float64(0)) = patchNaNs(a, val)

function gemm(src1::InputArray, src2::InputArray, alpha::Float64, src3::InputArray, beta::Float64, dst::InputArray, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_gemm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(alpha),julia_to_cpp(src3),julia_to_cpp(beta),julia_to_cpp(dst),julia_to_cpp(flags)))
end
gemm(src1::InputArray, src2::InputArray, alpha::Float64, src3::InputArray, beta::Float64; dst::InputArray = (CxxMat()), flags::Int32 = Int32(0)) = gemm(src1, src2, alpha, src3, beta, dst, flags)

function mulTransposed(src::InputArray, aTa::Bool, dst::InputArray, delta::InputArray, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_mulTransposed(julia_to_cpp(src),julia_to_cpp(aTa),julia_to_cpp(dst),julia_to_cpp(delta),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
mulTransposed(src::InputArray, aTa::Bool; dst::InputArray = (CxxMat()), delta::InputArray = (CxxMat()), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = mulTransposed(src, aTa, dst, delta, scale, dtype)

function transpose(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_transpose(julia_to_cpp(src),julia_to_cpp(dst)))
end
transpose(src::InputArray; dst::InputArray = (CxxMat())) = transpose(src, dst)

function transform(src::InputArray, m::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_transform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
transform(src::InputArray, m::InputArray; dst::InputArray = (CxxMat())) = transform(src, m, dst)

function perspectiveTransform(src::InputArray, m::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_perspectiveTransform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
perspectiveTransform(src::InputArray, m::InputArray; dst::InputArray = (CxxMat())) = perspectiveTransform(src, m, dst)

function completeSymm(m::InputArray, lowerToUpper::Bool)
	return cpp_to_julia(jlopencv_cv_cv_completeSymm(julia_to_cpp(m),julia_to_cpp(lowerToUpper)))
end
completeSymm(m::InputArray; lowerToUpper::Bool = (false)) = completeSymm(m, lowerToUpper)

function setIdentity(mtx::InputArray, s::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_setIdentity(julia_to_cpp(mtx),julia_to_cpp(s)))
end
setIdentity(mtx::InputArray; s::Scalar = (cpp_to_julia(ScalarOXP()))) = setIdentity(mtx, s)

function determinant(mtx::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_determinant(julia_to_cpp(mtx)))
end

function trace(mtx::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_trace(julia_to_cpp(mtx)))
end

function invert(src::InputArray, dst::InputArray, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_invert(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
invert(src::InputArray; dst::InputArray = (CxxMat()), flags::Int32 = Int32(cv_DECOMP_LU)) = invert(src, dst, flags)

function solve(src1::InputArray, src2::InputArray, dst::InputArray, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solve(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(flags)))
end
solve(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), flags::Int32 = Int32(cv_DECOMP_LU)) = solve(src1, src2, dst, flags)

function sort(src::InputArray, flags::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sort(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sort(src::InputArray, flags::Int32; dst::InputArray = (CxxMat())) = sort(src, flags, dst)

function sortIdx(src::InputArray, flags::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sortIdx(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sortIdx(src::InputArray, flags::Int32; dst::InputArray = (CxxMat())) = sortIdx(src, flags, dst)

function solveCubic(coeffs::InputArray, roots::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_solveCubic(julia_to_cpp(coeffs),julia_to_cpp(roots)))
end
solveCubic(coeffs::InputArray; roots::InputArray = (CxxMat())) = solveCubic(coeffs, roots)

function solvePoly(coeffs::InputArray, roots::InputArray, maxIters::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePoly(julia_to_cpp(coeffs),julia_to_cpp(roots),julia_to_cpp(maxIters)))
end
solvePoly(coeffs::InputArray; roots::InputArray = (CxxMat()), maxIters::Int32 = Int32(300)) = solvePoly(coeffs, roots, maxIters)

function eigen(src::InputArray, eigenvalues::InputArray, eigenvectors::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_eigen(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigen(src::InputArray; eigenvalues::InputArray = (CxxMat()), eigenvectors::InputArray = (CxxMat())) = eigen(src, eigenvalues, eigenvectors)

function eigenNonSymmetric(src::InputArray, eigenvalues::InputArray, eigenvectors::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_eigenNonSymmetric(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigenNonSymmetric(src::InputArray; eigenvalues::InputArray = (CxxMat()), eigenvectors::InputArray = (CxxMat())) = eigenNonSymmetric(src, eigenvalues, eigenvectors)

function calcCovarMatrix(samples::InputArray, mean::InputArray, flags::Int32, covar::InputArray, ctype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_calcCovarMatrix(julia_to_cpp(samples),julia_to_cpp(mean),julia_to_cpp(flags),julia_to_cpp(covar),julia_to_cpp(ctype)))
end
calcCovarMatrix(samples::InputArray, mean::InputArray, flags::Int32; covar::InputArray = (CxxMat()), ctype::Int32 = Int32(CV_64F)) = calcCovarMatrix(samples, mean, flags, covar, ctype)

function PCACompute(data::InputArray, mean::InputArray, eigenvectors::InputArray, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(maxComponents)))
end
PCACompute(data::InputArray, mean::InputArray; eigenvectors::InputArray = (CxxMat()), maxComponents::Int32 = Int32(0)) = PCACompute(data, mean, eigenvectors, maxComponents)

function PCACompute2(data::InputArray, mean::InputArray, eigenvectors::InputArray, eigenvalues::InputArray, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues),julia_to_cpp(maxComponents)))
end
PCACompute2(data::InputArray, mean::InputArray; eigenvectors::InputArray = (CxxMat()), eigenvalues::InputArray = (CxxMat()), maxComponents::Int32 = Int32(0)) = PCACompute2(data, mean, eigenvectors, eigenvalues, maxComponents)

function PCACompute(data::InputArray, mean::InputArray, retainedVariance::Float64, eigenvectors::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors)))
end
PCACompute(data::InputArray, mean::InputArray, retainedVariance::Float64; eigenvectors::InputArray = (CxxMat())) = PCACompute(data, mean, retainedVariance, eigenvectors)

function PCACompute2(data::InputArray, mean::InputArray, retainedVariance::Float64, eigenvectors::InputArray, eigenvalues::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues)))
end
PCACompute2(data::InputArray, mean::InputArray, retainedVariance::Float64; eigenvectors::InputArray = (CxxMat()), eigenvalues::InputArray = (CxxMat())) = PCACompute2(data, mean, retainedVariance, eigenvectors, eigenvalues)

function PCAProject(data::InputArray, mean::InputArray, eigenvectors::InputArray, result::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCAProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCAProject(data::InputArray, mean::InputArray, eigenvectors::InputArray; result::InputArray = (CxxMat())) = PCAProject(data, mean, eigenvectors, result)

function PCABackProject(data::InputArray, mean::InputArray, eigenvectors::InputArray, result::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCABackProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCABackProject(data::InputArray, mean::InputArray, eigenvectors::InputArray; result::InputArray = (CxxMat())) = PCABackProject(data, mean, eigenvectors, result)

function SVDecomp(src::InputArray, w::InputArray, u::InputArray, vt::InputArray, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_SVDecomp(julia_to_cpp(src),julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(flags)))
end
SVDecomp(src::InputArray; w::InputArray = (CxxMat()), u::InputArray = (CxxMat()), vt::InputArray = (CxxMat()), flags::Int32 = Int32(0)) = SVDecomp(src, w, u, vt, flags)

function SVBackSubst(w::InputArray, u::InputArray, vt::InputArray, rhs::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_SVBackSubst(julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(rhs),julia_to_cpp(dst)))
end
SVBackSubst(w::InputArray, u::InputArray, vt::InputArray, rhs::InputArray; dst::InputArray = (CxxMat())) = SVBackSubst(w, u, vt, rhs, dst)

function Mahalanobis(v1::InputArray, v2::InputArray, icovar::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_Mahalanobis(julia_to_cpp(v1),julia_to_cpp(v2),julia_to_cpp(icovar)))
end

function dft(src::InputArray, dst::InputArray, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
dft(src::InputArray; dst::InputArray = (CxxMat()), flags::Int32 = Int32(0), nonzeroRows::Int32 = Int32(0)) = dft(src, dst, flags, nonzeroRows)

function idft(src::InputArray, dst::InputArray, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
idft(src::InputArray; dst::InputArray = (CxxMat()), flags::Int32 = Int32(0), nonzeroRows::Int32 = Int32(0)) = idft(src, dst, flags, nonzeroRows)

function dct(src::InputArray, dst::InputArray, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
dct(src::InputArray; dst::InputArray = (CxxMat()), flags::Int32 = Int32(0)) = dct(src, dst, flags)

function idct(src::InputArray, dst::InputArray, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
idct(src::InputArray; dst::InputArray = (CxxMat()), flags::Int32 = Int32(0)) = idct(src, dst, flags)

function mulSpectrums(a::InputArray, b::InputArray, flags::Int32, c::InputArray, conjB::Bool)
	return cpp_to_julia(jlopencv_cv_cv_mulSpectrums(julia_to_cpp(a),julia_to_cpp(b),julia_to_cpp(flags),julia_to_cpp(c),julia_to_cpp(conjB)))
end
mulSpectrums(a::InputArray, b::InputArray, flags::Int32; c::InputArray = (CxxMat()), conjB::Bool = (false)) = mulSpectrums(a, b, flags, c, conjB)

function getOptimalDFTSize(vecsize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalDFTSize(julia_to_cpp(vecsize)))
end

function setRNGSeed(seed::Int32)
	return cpp_to_julia(jlopencv_cv_cv_setRNGSeed(julia_to_cpp(seed)))
end

function randu(dst::InputArray, low::InputArray, high::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_randu(julia_to_cpp(dst),julia_to_cpp(low),julia_to_cpp(high)))
end

function randn(dst::InputArray, mean::InputArray, stddev::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_randn(julia_to_cpp(dst),julia_to_cpp(mean),julia_to_cpp(stddev)))
end

function randShuffle(dst::InputArray, iterFactor::Float64)
	return cpp_to_julia(jlopencv_cv_cv_randShuffle(julia_to_cpp(dst),julia_to_cpp(iterFactor)))
end
randShuffle(dst::InputArray; iterFactor::Float64 = Float64(1)) = randShuffle(dst, iterFactor)

function kmeans(data::InputArray, K::Int32, bestLabels::InputArray, criteria::TermCriteria, attempts::Int32, flags::Int32, centers::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_kmeans(julia_to_cpp(data),julia_to_cpp(K),julia_to_cpp(bestLabels),julia_to_cpp(criteria),julia_to_cpp(attempts),julia_to_cpp(flags),julia_to_cpp(centers)))
end
kmeans(data::InputArray, K::Int32, bestLabels::InputArray, criteria::TermCriteria, attempts::Int32, flags::Int32; centers::InputArray = (CxxMat())) = kmeans(data, K, bestLabels, criteria, attempts, flags, centers)

function cubeRoot(val::Float32)
	return cpp_to_julia(jlopencv_cv_cv_cubeRoot(julia_to_cpp(val)))
end

function fastAtan2(y::Float32, x::Float32)
	return cpp_to_julia(jlopencv_cv_cv_fastAtan2(julia_to_cpp(y),julia_to_cpp(x)))
end

function solveLP(Func::InputArray, Constr::InputArray, z::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_solveLP(julia_to_cpp(Func),julia_to_cpp(Constr),julia_to_cpp(z)))
end
solveLP(Func::InputArray, Constr::InputArray; z::InputArray = (CxxMat())) = solveLP(Func, Constr, z)

function KeyPoint_convert(keypoints::Array{KeyPoint, 1}, keypointIndexes::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_convert(julia_to_cpp(keypoints),julia_to_cpp(keypointIndexes)))
end
KeyPoint_convert(keypoints::Array{KeyPoint, 1}; keypointIndexes::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = KeyPoint_convert(keypoints, keypointIndexes)

function KeyPoint_convert(points2f::Array{Point{Float32}, 1}, size::Float32, response::Float32, octave::Int32, class_id::Int32)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_convert(julia_to_cpp(points2f),julia_to_cpp(size),julia_to_cpp(response),julia_to_cpp(octave),julia_to_cpp(class_id)))
end
KeyPoint_convert(points2f::Array{Point{Float32}, 1}; size::Float32 = Float32(1), response::Float32 = Float32(1), octave::Int32 = Int32(0), class_id::Int32 = Int32(-1)) = KeyPoint_convert(points2f, size, response, octave, class_id)

function KeyPoint_overlap(kp1::KeyPoint, kp2::KeyPoint)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_overlap(julia_to_cpp(kp1),julia_to_cpp(kp2)))
end

function setNumThreads(nthreads::Int32)
	return cpp_to_julia(jlopencv_cv_cv_setNumThreads(julia_to_cpp(nthreads)))
end

function getNumThreads()
	return cpp_to_julia(jlopencv_cv_cv_getNumThreads())
end

function getThreadNum()
	return cpp_to_julia(jlopencv_cv_cv_getThreadNum())
end

function getBuildInformation()
	return cpp_to_julia(jlopencv_cv_cv_getBuildInformation())
end

function getVersionString()
	return cpp_to_julia(jlopencv_cv_cv_getVersionString())
end

function getVersionMajor()
	return cpp_to_julia(jlopencv_cv_cv_getVersionMajor())
end

function getVersionMinor()
	return cpp_to_julia(jlopencv_cv_cv_getVersionMinor())
end

function getVersionRevision()
	return cpp_to_julia(jlopencv_cv_cv_getVersionRevision())
end

function getTickCount()
	return cpp_to_julia(jlopencv_cv_cv_getTickCount())
end

function getTickFrequency()
	return cpp_to_julia(jlopencv_cv_cv_getTickFrequency())
end

function getGaussianKernel(ksize::Int32, sigma::Float64, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getGaussianKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(ktype)))
end
getGaussianKernel(ksize::Int32, sigma::Float64; ktype::Int32 = Int32(CV_64F)) = getGaussianKernel(ksize, sigma, ktype)

function getDerivKernels(dx::Int32, dy::Int32, ksize::Int32, kx::InputArray, ky::InputArray, normalize::Bool, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getDerivKernels(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(kx),julia_to_cpp(ky),julia_to_cpp(normalize),julia_to_cpp(ktype)))
end
getDerivKernels(dx::Int32, dy::Int32, ksize::Int32; kx::InputArray = (CxxMat()), ky::InputArray = (CxxMat()), normalize::Bool = (false), ktype::Int32 = Int32(CV_32F)) = getDerivKernels(dx, dy, ksize, kx, ky, normalize, ktype)

function getGaborKernel(ksize::Size{Int32}, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64, psi::Float64, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getGaborKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(theta),julia_to_cpp(lambd),julia_to_cpp(gamma),julia_to_cpp(psi),julia_to_cpp(ktype)))
end
getGaborKernel(ksize::Size{Int32}, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64; psi::Float64 = Float64(pi*0.5), ktype::Int32 = Int32(CV_64F)) = getGaborKernel(ksize, sigma, theta, lambd, gamma, psi, ktype)

function getStructuringElement(shape::Int32, ksize::Size{Int32}, anchor::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_getStructuringElement(julia_to_cpp(shape),julia_to_cpp(ksize),julia_to_cpp(anchor)))
end
getStructuringElement(shape::Int32, ksize::Size{Int32}; anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP()))) = getStructuringElement(shape, ksize, anchor)

function medianBlur(src::InputArray, ksize::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_medianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst)))
end
medianBlur(src::InputArray, ksize::Int32; dst::InputArray = (CxxMat())) = medianBlur(src, ksize, dst)

function GaussianBlur(src::InputArray, ksize::Size{Int32}, sigmaX::Float64, dst::InputArray, sigmaY::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_GaussianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(sigmaX),julia_to_cpp(dst),julia_to_cpp(sigmaY),julia_to_cpp(borderType)))
end
GaussianBlur(src::InputArray, ksize::Size{Int32}, sigmaX::Float64; dst::InputArray = (CxxMat()), sigmaY::Float64 = Float64(0), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = GaussianBlur(src, ksize, sigmaX, dst, sigmaY, borderType)

function bilateralFilter(src::InputArray, d::Int32, sigmaColor::Float64, sigmaSpace::Float64, dst::InputArray, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_bilateralFilter(julia_to_cpp(src),julia_to_cpp(d),julia_to_cpp(sigmaColor),julia_to_cpp(sigmaSpace),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
bilateralFilter(src::InputArray, d::Int32, sigmaColor::Float64, sigmaSpace::Float64; dst::InputArray = (CxxMat()), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = bilateralFilter(src, d, sigmaColor, sigmaSpace, dst, borderType)

function boxFilter(src::InputArray, ddepth::Int32, ksize::Size{Int32}, dst::InputArray, anchor::Point{Int32}, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_boxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
boxFilter(src::InputArray, ddepth::Int32, ksize::Size{Int32}; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), normalize::Bool = (true), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = boxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function sqrBoxFilter(src::InputArray, ddepth::Int32, ksize::Size{Int32}, dst::InputArray, anchor::Point{Int32}, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_sqrBoxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
sqrBoxFilter(src::InputArray, ddepth::Int32, ksize::Size{Int32}; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSGTXP())), normalize::Bool = (true), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = sqrBoxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function blur(src::InputArray, ksize::Size{Int32}, dst::InputArray, anchor::Point{Int32}, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_blur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(borderType)))
end
blur(src::InputArray, ksize::Size{Int32}; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = blur(src, ksize, dst, anchor, borderType)

function filter2D(src::InputArray, ddepth::Int32, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_filter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
filter2D(src::InputArray, ddepth::Int32, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), delta::Float64 = Float64(0), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = filter2D(src, ddepth, kernel, dst, anchor, delta, borderType)

function sepFilter2D(src::InputArray, ddepth::Int32, kernelX::InputArray, kernelY::InputArray, dst::InputArray, anchor::Point{Int32}, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_sepFilter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernelX),julia_to_cpp(kernelY),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
sepFilter2D(src::InputArray, ddepth::Int32, kernelX::InputArray, kernelY::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), delta::Float64 = Float64(0), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = sepFilter2D(src, ddepth, kernelX, kernelY, dst, anchor, delta, borderType)

function Sobel(src::InputArray, ddepth::Int32, dx::Int32, dy::Int32, dst::InputArray, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Sobel(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Sobel(src::InputArray, ddepth::Int32, dx::Int32, dy::Int32; dst::InputArray = (CxxMat()), ksize::Int32 = Int32(3), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = Sobel(src, ddepth, dx, dy, dst, ksize, scale, delta, borderType)

function spatialGradient(src::InputArray, dx::InputArray, dy::InputArray, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_spatialGradient(julia_to_cpp(src),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
spatialGradient(src::InputArray; dx::InputArray = (CxxMat()), dy::InputArray = (CxxMat()), ksize::Int32 = Int32(3), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = spatialGradient(src, dx, dy, ksize, borderType)

function Scharr(src::InputArray, ddepth::Int32, dx::Int32, dy::Int32, dst::InputArray, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Scharr(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Scharr(src::InputArray, ddepth::Int32, dx::Int32, dy::Int32; dst::InputArray = (CxxMat()), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = Scharr(src, ddepth, dx, dy, dst, scale, delta, borderType)

function Laplacian(src::InputArray, ddepth::Int32, dst::InputArray, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_Laplacian(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Laplacian(src::InputArray, ddepth::Int32; dst::InputArray = (CxxMat()), ksize::Int32 = Int32(1), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = Laplacian(src, ddepth, dst, ksize, scale, delta, borderType)

function Canny(image::InputArray, threshold1::Float64, threshold2::Float64, edges::InputArray, apertureSize::Int32, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(image),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(apertureSize),julia_to_cpp(L2gradient)))
end
Canny(image::InputArray, threshold1::Float64, threshold2::Float64; edges::InputArray = (CxxMat()), apertureSize::Int32 = Int32(3), L2gradient::Bool = (false)) = Canny(image, threshold1, threshold2, edges, apertureSize, L2gradient)

function Canny(dx::InputArray, dy::InputArray, threshold1::Float64, threshold2::Float64, edges::InputArray, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(L2gradient)))
end
Canny(dx::InputArray, dy::InputArray, threshold1::Float64, threshold2::Float64; edges::InputArray = (CxxMat()), L2gradient::Bool = (false)) = Canny(dx, dy, threshold1, threshold2, edges, L2gradient)

function cornerMinEigenVal(src::InputArray, blockSize::Int32, dst::InputArray, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerMinEigenVal(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
cornerMinEigenVal(src::InputArray, blockSize::Int32; dst::InputArray = (CxxMat()), ksize::Int32 = Int32(3), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = cornerMinEigenVal(src, blockSize, dst, ksize, borderType)

function cornerHarris(src::InputArray, blockSize::Int32, ksize::Int32, k::Float64, dst::InputArray, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerHarris(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(k),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerHarris(src::InputArray, blockSize::Int32, ksize::Int32, k::Float64; dst::InputArray = (CxxMat()), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = cornerHarris(src, blockSize, ksize, k, dst, borderType)

function cornerEigenValsAndVecs(src::InputArray, blockSize::Int32, ksize::Int32, dst::InputArray, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cornerEigenValsAndVecs(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerEigenValsAndVecs(src::InputArray, blockSize::Int32, ksize::Int32; dst::InputArray = (CxxMat()), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = cornerEigenValsAndVecs(src, blockSize, ksize, dst, borderType)

function preCornerDetect(src::InputArray, ksize::Int32, dst::InputArray, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_preCornerDetect(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
preCornerDetect(src::InputArray, ksize::Int32; dst::InputArray = (CxxMat()), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = preCornerDetect(src, ksize, dst, borderType)

function cornerSubPix(image::InputArray, corners::InputArray, winSize::Size{Int32}, zeroZone::Size{Int32}, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_cornerSubPix(julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(winSize),julia_to_cpp(zeroZone),julia_to_cpp(criteria)))
end

function goodFeaturesToTrack(image::InputArray, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, corners::InputArray, mask::InputArray, blockSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(corners),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::InputArray, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64; corners::InputArray = (CxxMat()), mask::InputArray = (CxxMat()), blockSize::Int32 = Int32(3), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, corners, mask, blockSize, useHarrisDetector, k)

function goodFeaturesToTrack(image::InputArray, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::InputArray, blockSize::Int32, gradientSize::Int32, corners::InputArray, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(corners),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::InputArray, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::InputArray, blockSize::Int32, gradientSize::Int32; corners::InputArray = (CxxMat()), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, corners, useHarrisDetector, k)

function HoughLines(image::InputArray, rho::Float64, theta::Float64, threshold::Int32, lines::InputArray, srn::Float64, stn::Float64, min_theta::Float64, max_theta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLines(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(srn),julia_to_cpp(stn),julia_to_cpp(min_theta),julia_to_cpp(max_theta)))
end
HoughLines(image::InputArray, rho::Float64, theta::Float64, threshold::Int32; lines::InputArray = (CxxMat()), srn::Float64 = Float64(0), stn::Float64 = Float64(0), min_theta::Float64 = Float64(0), max_theta::Float64 = Float64(pi)) = HoughLines(image, rho, theta, threshold, lines, srn, stn, min_theta, max_theta)

function HoughLinesP(image::InputArray, rho::Float64, theta::Float64, threshold::Int32, lines::InputArray, minLineLength::Float64, maxLineGap::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesP(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(minLineLength),julia_to_cpp(maxLineGap)))
end
HoughLinesP(image::InputArray, rho::Float64, theta::Float64, threshold::Int32; lines::InputArray = (CxxMat()), minLineLength::Float64 = Float64(0), maxLineGap::Float64 = Float64(0)) = HoughLinesP(image, rho, theta, threshold, lines, minLineLength, maxLineGap)

function HoughLinesPointSet(_point::InputArray, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64, _lines::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesPointSet(julia_to_cpp(_point),julia_to_cpp(lines_max),julia_to_cpp(threshold),julia_to_cpp(min_rho),julia_to_cpp(max_rho),julia_to_cpp(rho_step),julia_to_cpp(min_theta),julia_to_cpp(max_theta),julia_to_cpp(theta_step),julia_to_cpp(_lines)))
end
HoughLinesPointSet(_point::InputArray, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64; _lines::InputArray = (CxxMat())) = HoughLinesPointSet(_point, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step, _lines)

function HoughCircles(image::InputArray, method::Int32, dp::Float64, minDist::Float64, circles::InputArray, param1::Float64, param2::Float64, minRadius::Int32, maxRadius::Int32)
	return cpp_to_julia(jlopencv_cv_cv_HoughCircles(julia_to_cpp(image),julia_to_cpp(method),julia_to_cpp(dp),julia_to_cpp(minDist),julia_to_cpp(circles),julia_to_cpp(param1),julia_to_cpp(param2),julia_to_cpp(minRadius),julia_to_cpp(maxRadius)))
end
HoughCircles(image::InputArray, method::Int32, dp::Float64, minDist::Float64; circles::InputArray = (CxxMat()), param1::Float64 = Float64(100), param2::Float64 = Float64(100), minRadius::Int32 = Int32(0), maxRadius::Int32 = Int32(0)) = HoughCircles(image, method, dp, minDist, circles, param1, param2, minRadius, maxRadius)

function erode(src::InputArray, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_erode(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
erode(src::InputArray, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), iterations::Int32 = Int32(1), borderType::Int32 = Int32(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(morphologyDefaultBorderValueOP()))) = erode(src, kernel, dst, anchor, iterations, borderType, borderValue)

function dilate(src::InputArray, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_dilate(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
dilate(src::InputArray, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), iterations::Int32 = Int32(1), borderType::Int32 = Int32(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(morphologyDefaultBorderValueOP()))) = dilate(src, kernel, dst, anchor, iterations, borderType, borderValue)

function morphologyEx(src::InputArray, op::Int32, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_morphologyEx(julia_to_cpp(src),julia_to_cpp(op),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
morphologyEx(src::InputArray, op::Int32, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), iterations::Int32 = Int32(1), borderType::Int32 = Int32(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(morphologyDefaultBorderValueOP()))) = morphologyEx(src, op, kernel, dst, anchor, iterations, borderType, borderValue)

function resize(src::InputArray, dsize::Size{Int32}, dst::InputArray, fx::Float64, fy::Float64, interpolation::Int32)
	return cpp_to_julia(jlopencv_cv_cv_resize(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(fx),julia_to_cpp(fy),julia_to_cpp(interpolation)))
end
resize(src::InputArray, dsize::Size{Int32}; dst::InputArray = (CxxMat()), fx::Float64 = Float64(0), fy::Float64 = Float64(0), interpolation::Int32 = Int32(cv_INTER_LINEAR)) = resize(src, dsize, dst, fx, fy, interpolation)

function warpAffine(src::InputArray, M::InputArray, dsize::Size{Int32}, dst::InputArray, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpAffine(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpAffine(src::InputArray, M::InputArray, dsize::Size{Int32}; dst::InputArray = (CxxMat()), flags::Int32 = Int32(cv_INTER_LINEAR), borderMode::Int32 = Int32(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(ScalarOP()))) = warpAffine(src, M, dsize, dst, flags, borderMode, borderValue)

function warpPerspective(src::InputArray, M::InputArray, dsize::Size{Int32}, dst::InputArray, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpPerspective(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpPerspective(src::InputArray, M::InputArray, dsize::Size{Int32}; dst::InputArray = (CxxMat()), flags::Int32 = Int32(cv_INTER_LINEAR), borderMode::Int32 = Int32(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(ScalarOP()))) = warpPerspective(src, M, dsize, dst, flags, borderMode, borderValue)

function remap(src::InputArray, map1::InputArray, map2::InputArray, interpolation::Int32, dst::InputArray, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_remap(julia_to_cpp(src),julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(interpolation),julia_to_cpp(dst),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
remap(src::InputArray, map1::InputArray, map2::InputArray, interpolation::Int32; dst::InputArray = (CxxMat()), borderMode::Int32 = Int32(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(ScalarOP()))) = remap(src, map1, map2, interpolation, dst, borderMode, borderValue)

function convertMaps(map1::InputArray, map2::InputArray, dstmap1type::Int32, dstmap1::InputArray, dstmap2::InputArray, nninterpolation::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convertMaps(julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(dstmap1type),julia_to_cpp(dstmap1),julia_to_cpp(dstmap2),julia_to_cpp(nninterpolation)))
end
convertMaps(map1::InputArray, map2::InputArray, dstmap1type::Int32; dstmap1::InputArray = (CxxMat()), dstmap2::InputArray = (CxxMat()), nninterpolation::Bool = (false)) = convertMaps(map1, map2, dstmap1type, dstmap1, dstmap2, nninterpolation)

function getRotationMatrix2D(center::Point{Float32}, angle::Float64, scale::Float64)
	return cpp_to_julia(jlopencv_cv_cv_getRotationMatrix2D(julia_to_cpp(center),julia_to_cpp(angle),julia_to_cpp(scale)))
end

function invertAffineTransform(M::InputArray, iM::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_invertAffineTransform(julia_to_cpp(M),julia_to_cpp(iM)))
end
invertAffineTransform(M::InputArray; iM::InputArray = (CxxMat())) = invertAffineTransform(M, iM)

function getPerspectiveTransform(src::InputArray, dst::InputArray, solveMethod::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getPerspectiveTransform(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(solveMethod)))
end
getPerspectiveTransform(src::InputArray, dst::InputArray; solveMethod::Int32 = Int32(cv_DECOMP_LU)) = getPerspectiveTransform(src, dst, solveMethod)

function getAffineTransform(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_getAffineTransform(julia_to_cpp(src),julia_to_cpp(dst)))
end

function getRectSubPix(image::InputArray, patchSize::Size{Int32}, center::Point{Float32}, patch::InputArray, patchType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getRectSubPix(julia_to_cpp(image),julia_to_cpp(patchSize),julia_to_cpp(center),julia_to_cpp(patch),julia_to_cpp(patchType)))
end
getRectSubPix(image::InputArray, patchSize::Size{Int32}, center::Point{Float32}; patch::InputArray = (CxxMat()), patchType::Int32 = Int32(-1)) = getRectSubPix(image, patchSize, center, patch, patchType)

function logPolar(src::InputArray, center::Point{Float32}, M::Float64, flags::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_logPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(M),julia_to_cpp(flags),julia_to_cpp(dst)))
end
logPolar(src::InputArray, center::Point{Float32}, M::Float64, flags::Int32; dst::InputArray = (CxxMat())) = logPolar(src, center, M, flags, dst)

function linearPolar(src::InputArray, center::Point{Float32}, maxRadius::Float64, flags::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_linearPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
linearPolar(src::InputArray, center::Point{Float32}, maxRadius::Float64, flags::Int32; dst::InputArray = (CxxMat())) = linearPolar(src, center, maxRadius, flags, dst)

function warpPolar(src::InputArray, dsize::Size{Int32}, center::Point{Float32}, maxRadius::Float64, flags::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_warpPolar(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
warpPolar(src::InputArray, dsize::Size{Int32}, center::Point{Float32}, maxRadius::Float64, flags::Int32; dst::InputArray = (CxxMat())) = warpPolar(src, dsize, center, maxRadius, flags, dst)

function integral(src::InputArray, sum::InputArray, sdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sdepth)))
end
integral(src::InputArray; sum::InputArray = (CxxMat()), sdepth::Int32 = Int32(-1)) = integral(src, sum, sdepth)

function integral2(src::InputArray, sum::InputArray, sqsum::InputArray, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral2(src::InputArray; sum::InputArray = (CxxMat()), sqsum::InputArray = (CxxMat()), sdepth::Int32 = Int32(-1), sqdepth::Int32 = Int32(-1)) = integral2(src, sum, sqsum, sdepth, sqdepth)

function integral3(src::InputArray, sum::InputArray, sqsum::InputArray, tilted::InputArray, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(tilted),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral3(src::InputArray; sum::InputArray = (CxxMat()), sqsum::InputArray = (CxxMat()), tilted::InputArray = (CxxMat()), sdepth::Int32 = Int32(-1), sqdepth::Int32 = Int32(-1)) = integral3(src, sum, sqsum, tilted, sdepth, sqdepth)

function accumulate(src::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulate(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulate(src::InputArray, dst::InputArray; mask::InputArray = (CxxMat())) = accumulate(src, dst, mask)

function accumulateSquare(src::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulateSquare(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateSquare(src::InputArray, dst::InputArray; mask::InputArray = (CxxMat())) = accumulateSquare(src, dst, mask)

function accumulateProduct(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulateProduct(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateProduct(src1::InputArray, src2::InputArray, dst::InputArray; mask::InputArray = (CxxMat())) = accumulateProduct(src1, src2, dst, mask)

function accumulateWeighted(src::InputArray, dst::InputArray, alpha::Float64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulateWeighted(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(mask)))
end
accumulateWeighted(src::InputArray, dst::InputArray, alpha::Float64; mask::InputArray = (CxxMat())) = accumulateWeighted(src, dst, alpha, mask)

function phaseCorrelate(src1::InputArray, src2::InputArray, window::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_phaseCorrelate(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(window)))
end
phaseCorrelate(src1::InputArray, src2::InputArray; window::InputArray = (CxxMat())) = phaseCorrelate(src1, src2, window)

function createHanningWindow(winSize::Size{Int32}, type::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_createHanningWindow(julia_to_cpp(winSize),julia_to_cpp(type),julia_to_cpp(dst)))
end
createHanningWindow(winSize::Size{Int32}, type::Int32; dst::InputArray = (CxxMat())) = createHanningWindow(winSize, type, dst)

function threshold(src::InputArray, thresh::Float64, maxval::Float64, type::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_threshold(julia_to_cpp(src),julia_to_cpp(thresh),julia_to_cpp(maxval),julia_to_cpp(type),julia_to_cpp(dst)))
end
threshold(src::InputArray, thresh::Float64, maxval::Float64, type::Int32; dst::InputArray = (CxxMat())) = threshold(src, thresh, maxval, type, dst)

function adaptiveThreshold(src::InputArray, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_adaptiveThreshold(julia_to_cpp(src),julia_to_cpp(maxValue),julia_to_cpp(adaptiveMethod),julia_to_cpp(thresholdType),julia_to_cpp(blockSize),julia_to_cpp(C),julia_to_cpp(dst)))
end
adaptiveThreshold(src::InputArray, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64; dst::InputArray = (CxxMat())) = adaptiveThreshold(src, maxValue, adaptiveMethod, thresholdType, blockSize, C, dst)

function pyrDown(src::InputArray, dst::InputArray, dstsize::Size{Int32}, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_pyrDown(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrDown(src::InputArray; dst::InputArray = (CxxMat()), dstsize::Size{Int32} = (cpp_to_julia(SizeOP())), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = pyrDown(src, dst, dstsize, borderType)

function pyrUp(src::InputArray, dst::InputArray, dstsize::Size{Int32}, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_pyrUp(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrUp(src::InputArray; dst::InputArray = (CxxMat()), dstsize::Size{Int32} = (cpp_to_julia(SizeOP())), borderType::Int32 = Int32(cv_BORDER_DEFAULT)) = pyrUp(src, dst, dstsize, borderType)

function calcHist(images::Array{InputArray, 1}, channels::Array{Int32, 1}, mask::InputArray, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}, hist::InputArray, accumulate::Bool)
	return cpp_to_julia(jlopencv_cv_cv_calcHist(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(mask),julia_to_cpp(histSize),julia_to_cpp(ranges),julia_to_cpp(hist),julia_to_cpp(accumulate)))
end
calcHist(images::Array{InputArray, 1}, channels::Array{Int32, 1}, mask::InputArray, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}; hist::InputArray = (CxxMat()), accumulate::Bool = (false)) = calcHist(images, channels, mask, histSize, ranges, hist, accumulate)

function calcBackProject(images::Array{InputArray, 1}, channels::Array{Int32, 1}, hist::InputArray, ranges::Array{Float32, 1}, scale::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_calcBackProject(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(hist),julia_to_cpp(ranges),julia_to_cpp(scale),julia_to_cpp(dst)))
end
calcBackProject(images::Array{InputArray, 1}, channels::Array{Int32, 1}, hist::InputArray, ranges::Array{Float32, 1}, scale::Float64; dst::InputArray = (CxxMat())) = calcBackProject(images, channels, hist, ranges, scale, dst)

function compareHist(H1::InputArray, H2::InputArray, method::Int32)
	return cpp_to_julia(jlopencv_cv_cv_compareHist(julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(method)))
end

function equalizeHist(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_equalizeHist(julia_to_cpp(src),julia_to_cpp(dst)))
end
equalizeHist(src::InputArray; dst::InputArray = (CxxMat())) = equalizeHist(src, dst)

function createCLAHE(clipLimit::Float64, tileGridSize::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_createCLAHE(julia_to_cpp(clipLimit),julia_to_cpp(tileGridSize)))
end
createCLAHE(; clipLimit::Float64 = Float64(40.0), tileGridSize::Size{Int32} = (cpp_to_julia(SizeOeSGeP()))) = createCLAHE(clipLimit, tileGridSize)

function EMD(signature1::InputArray, signature2::InputArray, distType::Int32, cost::InputArray, lowerBound::Ptr{Float32}, flow::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_wrapperEMD(julia_to_cpp(signature1),julia_to_cpp(signature2),julia_to_cpp(distType),julia_to_cpp(cost),julia_to_cpp(lowerBound),julia_to_cpp(flow)))
end
EMD(signature1::InputArray, signature2::InputArray, distType::Int32; cost::InputArray = (CxxMat()), lowerBound::Ptr{Float32} = (cpp_to_julia(PtrifloatkOP())), flow::InputArray = (CxxMat())) = EMD(signature1, signature2, distType, cost, lowerBound, flow)

function watershed(image::InputArray, markers::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_watershed(julia_to_cpp(image),julia_to_cpp(markers)))
end

function pyrMeanShiftFiltering(src::InputArray, sp::Float64, sr::Float64, dst::InputArray, maxLevel::Int32, termcrit::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_pyrMeanShiftFiltering(julia_to_cpp(src),julia_to_cpp(sp),julia_to_cpp(sr),julia_to_cpp(dst),julia_to_cpp(maxLevel),julia_to_cpp(termcrit)))
end
pyrMeanShiftFiltering(src::InputArray, sp::Float64, sr::Float64; dst::InputArray = (CxxMat()), maxLevel::Int32 = Int32(1), termcrit::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggMAXRITERRTermCriteriaggEPSSbSXP()))) = pyrMeanShiftFiltering(src, sp, sr, dst, maxLevel, termcrit)

function grabCut(img::InputArray, mask::InputArray, rect::Rect{Int32}, bgdModel::InputArray, fgdModel::InputArray, iterCount::Int32, mode::Int32)
	return cpp_to_julia(jlopencv_cv_cv_grabCut(julia_to_cpp(img),julia_to_cpp(mask),julia_to_cpp(rect),julia_to_cpp(bgdModel),julia_to_cpp(fgdModel),julia_to_cpp(iterCount),julia_to_cpp(mode)))
end
grabCut(img::InputArray, mask::InputArray, rect::Rect{Int32}, bgdModel::InputArray, fgdModel::InputArray, iterCount::Int32; mode::Int32 = Int32(cv_GC_EVAL)) = grabCut(img, mask, rect, bgdModel, fgdModel, iterCount, mode)

function distanceTransformWithLabels(src::InputArray, distanceType::Int32, maskSize::Int32, dst::InputArray, labels::InputArray, labelType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(labels),julia_to_cpp(labelType)))
end
distanceTransformWithLabels(src::InputArray, distanceType::Int32, maskSize::Int32; dst::InputArray = (CxxMat()), labels::InputArray = (CxxMat()), labelType::Int32 = Int32(cv_DIST_LABEL_CCOMP)) = distanceTransformWithLabels(src, distanceType, maskSize, dst, labels, labelType)

function distanceTransform(src::InputArray, distanceType::Int32, maskSize::Int32, dst::InputArray, dstType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(dstType)))
end
distanceTransform(src::InputArray, distanceType::Int32, maskSize::Int32; dst::InputArray = (CxxMat()), dstType::Int32 = Int32(CV_32F)) = distanceTransform(src, distanceType, maskSize, dst, dstType)

function floodFill(image::InputArray, mask::InputArray, seedPoint::Point{Int32}, newVal::Scalar, loDiff::Scalar, upDiff::Scalar, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_floodFill(julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(seedPoint),julia_to_cpp(newVal),julia_to_cpp(loDiff),julia_to_cpp(upDiff),julia_to_cpp(flags)))
end
floodFill(image::InputArray, mask::InputArray, seedPoint::Point{Int32}, newVal::Scalar; loDiff::Scalar = (cpp_to_julia(ScalarOP())), upDiff::Scalar = (cpp_to_julia(ScalarOP())), flags::Int32 = Int32(4)) = floodFill(image, mask, seedPoint, newVal, loDiff, upDiff, flags)

function cvtColor(src::InputArray, code::Int32, dst::InputArray, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cv_cvtColor(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
cvtColor(src::InputArray, code::Int32; dst::InputArray = (CxxMat()), dstCn::Int32 = Int32(0)) = cvtColor(src, code, dst, dstCn)

function cvtColorTwoPlane(src1::InputArray, src2::InputArray, code::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_cvtColorTwoPlane(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(code),julia_to_cpp(dst)))
end
cvtColorTwoPlane(src1::InputArray, src2::InputArray, code::Int32; dst::InputArray = (CxxMat())) = cvtColorTwoPlane(src1, src2, code, dst)

function demosaicing(src::InputArray, code::Int32, dst::InputArray, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cv_demosaicing(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
demosaicing(src::InputArray, code::Int32; dst::InputArray = (CxxMat()), dstCn::Int32 = Int32(0)) = demosaicing(src, code, dst, dstCn)

function moments(array::InputArray, binaryImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_moments(julia_to_cpp(array),julia_to_cpp(binaryImage)))
end
moments(array::InputArray; binaryImage::Bool = (false)) = moments(array, binaryImage)

function HuMoments(m::Moments, hu::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_HuMoments(julia_to_cpp(m),julia_to_cpp(hu)))
end
HuMoments(m::Moments; hu::InputArray = (CxxMat())) = HuMoments(m, hu)

function matchTemplate(image::InputArray, templ::InputArray, method::Int32, result::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_matchTemplate(julia_to_cpp(image),julia_to_cpp(templ),julia_to_cpp(method),julia_to_cpp(result),julia_to_cpp(mask)))
end
matchTemplate(image::InputArray, templ::InputArray, method::Int32; result::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = matchTemplate(image, templ, method, result, mask)

function connectedComponentsWithAlgorithm(image::InputArray, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels)))
end
connectedComponentsWithAlgorithm(image::InputArray, connectivity::Int32, ltype::Int32, ccltype::Int32; labels::InputArray = (CxxMat())) = connectedComponentsWithAlgorithm(image, connectivity, ltype, ccltype, labels)

function connectedComponents(image::InputArray, labels::InputArray, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponents(image::InputArray; labels::InputArray = (CxxMat()), connectivity::Int32 = Int32(8), ltype::Int32 = Int32(CV_32S)) = connectedComponents(image, labels, connectivity, ltype)

function connectedComponentsWithStatsWithAlgorithm(image::InputArray, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::InputArray, stats::InputArray, centroids::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids)))
end
connectedComponentsWithStatsWithAlgorithm(image::InputArray, connectivity::Int32, ltype::Int32, ccltype::Int32; labels::InputArray = (CxxMat()), stats::InputArray = (CxxMat()), centroids::InputArray = (CxxMat())) = connectedComponentsWithStatsWithAlgorithm(image, connectivity, ltype, ccltype, labels, stats, centroids)

function connectedComponentsWithStats(image::InputArray, labels::InputArray, stats::InputArray, centroids::InputArray, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponentsWithStats(image::InputArray; labels::InputArray = (CxxMat()), stats::InputArray = (CxxMat()), centroids::InputArray = (CxxMat()), connectivity::Int32 = Int32(8), ltype::Int32 = Int32(CV_32S)) = connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype)

function findContours(image::InputArray, mode::Int32, method::Int32, contours::Array{InputArray, 1}, hierarchy::InputArray, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_findContours(julia_to_cpp(image),julia_to_cpp(mode),julia_to_cpp(method),julia_to_cpp(contours),julia_to_cpp(hierarchy),julia_to_cpp(offset)))
end
findContours(image::InputArray, mode::Int32, method::Int32; contours::Array{InputArray, 1} = (Array{InputArray, 1}()), hierarchy::InputArray = (CxxMat()), offset::Point{Int32} = (cpp_to_julia(PointOP()))) = findContours(image, mode, method, contours, hierarchy, offset)

function approxPolyDP(curve::InputArray, epsilon::Float64, closed::Bool, approxCurve::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_approxPolyDP(julia_to_cpp(curve),julia_to_cpp(epsilon),julia_to_cpp(closed),julia_to_cpp(approxCurve)))
end
approxPolyDP(curve::InputArray, epsilon::Float64, closed::Bool; approxCurve::InputArray = (CxxMat())) = approxPolyDP(curve, epsilon, closed, approxCurve)

function arcLength(curve::InputArray, closed::Bool)
	return cpp_to_julia(jlopencv_cv_cv_arcLength(julia_to_cpp(curve),julia_to_cpp(closed)))
end

function boundingRect(array::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_boundingRect(julia_to_cpp(array)))
end

function contourArea(contour::InputArray, oriented::Bool)
	return cpp_to_julia(jlopencv_cv_cv_contourArea(julia_to_cpp(contour),julia_to_cpp(oriented)))
end
contourArea(contour::InputArray; oriented::Bool = (false)) = contourArea(contour, oriented)

function minAreaRect(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minAreaRect(julia_to_cpp(points)))
end

function boxPoints(box::RotatedRect, points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_boxPoints(julia_to_cpp(box),julia_to_cpp(points)))
end
boxPoints(box::RotatedRect; points::InputArray = (CxxMat())) = boxPoints(box, points)

function minEnclosingCircle(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingCircle(julia_to_cpp(points)))
end

function minEnclosingTriangle(points::InputArray, triangle::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingTriangle(julia_to_cpp(points),julia_to_cpp(triangle)))
end
minEnclosingTriangle(points::InputArray; triangle::InputArray = (CxxMat())) = minEnclosingTriangle(points, triangle)

function matchShapes(contour1::InputArray, contour2::InputArray, method::Int32, parameter::Float64)
	return cpp_to_julia(jlopencv_cv_cv_matchShapes(julia_to_cpp(contour1),julia_to_cpp(contour2),julia_to_cpp(method),julia_to_cpp(parameter)))
end

function convexHull(points::InputArray, hull::InputArray, clockwise::Bool, returnPoints::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convexHull(julia_to_cpp(points),julia_to_cpp(hull),julia_to_cpp(clockwise),julia_to_cpp(returnPoints)))
end
convexHull(points::InputArray; hull::InputArray = (CxxMat()), clockwise::Bool = (false), returnPoints::Bool = (true)) = convexHull(points, hull, clockwise, returnPoints)

function convexityDefects(contour::InputArray, convexhull::InputArray, convexityDefects::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_convexityDefects(julia_to_cpp(contour),julia_to_cpp(convexhull),julia_to_cpp(convexityDefects)))
end
convexityDefects(contour::InputArray, convexhull::InputArray; convexityDefects::InputArray = (CxxMat())) = convexityDefects(contour, convexhull, convexityDefects)

function isContourConvex(contour::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_isContourConvex(julia_to_cpp(contour)))
end

function intersectConvexConvex(_p1::InputArray, _p2::InputArray, _p12::InputArray, handleNested::Bool)
	return cpp_to_julia(jlopencv_cv_cv_intersectConvexConvex(julia_to_cpp(_p1),julia_to_cpp(_p2),julia_to_cpp(_p12),julia_to_cpp(handleNested)))
end
intersectConvexConvex(_p1::InputArray, _p2::InputArray; _p12::InputArray = (CxxMat()), handleNested::Bool = (true)) = intersectConvexConvex(_p1, _p2, _p12, handleNested)

function fitEllipse(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipse(julia_to_cpp(points)))
end

function fitEllipseAMS(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseAMS(julia_to_cpp(points)))
end

function fitEllipseDirect(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseDirect(julia_to_cpp(points)))
end

function fitLine(points::InputArray, distType::Int32, param::Float64, reps::Float64, aeps::Float64, line::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitLine(julia_to_cpp(points),julia_to_cpp(distType),julia_to_cpp(param),julia_to_cpp(reps),julia_to_cpp(aeps),julia_to_cpp(line)))
end
fitLine(points::InputArray, distType::Int32, param::Float64, reps::Float64, aeps::Float64; line::InputArray = (CxxMat())) = fitLine(points, distType, param, reps, aeps, line)

function pointPolygonTest(contour::InputArray, pt::Point{Float32}, measureDist::Bool)
	return cpp_to_julia(jlopencv_cv_cv_pointPolygonTest(julia_to_cpp(contour),julia_to_cpp(pt),julia_to_cpp(measureDist)))
end

function rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect, intersectingRegion::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_rotatedRectangleIntersection(julia_to_cpp(rect1),julia_to_cpp(rect2),julia_to_cpp(intersectingRegion)))
end
rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect; intersectingRegion::InputArray = (CxxMat())) = rotatedRectangleIntersection(rect1, rect2, intersectingRegion)

function createGeneralizedHoughBallard()
	return cpp_to_julia(jlopencv_cv_cv_createGeneralizedHoughBallard())
end

function createGeneralizedHoughGuil()
	return cpp_to_julia(jlopencv_cv_cv_createGeneralizedHoughGuil())
end

function applyColorMap(src::InputArray, colormap::Int32, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(colormap),julia_to_cpp(dst)))
end
applyColorMap(src::InputArray, colormap::Int32; dst::InputArray = (CxxMat())) = applyColorMap(src, colormap, dst)

function applyColorMap(src::InputArray, userColor::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(userColor),julia_to_cpp(dst)))
end
applyColorMap(src::InputArray, userColor::InputArray; dst::InputArray = (CxxMat())) = applyColorMap(src, userColor, dst)

function line(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_line(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
line(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(cv_LINE_8), shift::Int32 = Int32(0)) = line(img, pt1, pt2, color, thickness, lineType, shift)

function arrowedLine(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, line_type::Int32, shift::Int32, tipLength::Float64)
	return cpp_to_julia(jlopencv_cv_cv_arrowedLine(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(line_type),julia_to_cpp(shift),julia_to_cpp(tipLength)))
end
arrowedLine(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = Int32(1), line_type::Int32 = Int32(8), shift::Int32 = Int32(0), tipLength::Float64 = Float64(0.1)) = arrowedLine(img, pt1, pt2, color, thickness, line_type, shift, tipLength)

function rectangle(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(cv_LINE_8), shift::Int32 = Int32(0)) = rectangle(img, pt1, pt2, color, thickness, lineType, shift)

function rectangle(img::InputArray, rec::Rect{Int32}, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(rec),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::InputArray, rec::Rect{Int32}, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(cv_LINE_8), shift::Int32 = Int32(0)) = rectangle(img, rec, color, thickness, lineType, shift)

function circle(img::InputArray, center::Point{Int32}, radius::Int32, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_circle(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(radius),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
circle(img::InputArray, center::Point{Int32}, radius::Int32, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(cv_LINE_8), shift::Int32 = Int32(0)) = circle(img, center, radius, color, thickness, lineType, shift)

function ellipse(img::InputArray, center::Point{Int32}, axes::Size{Int32}, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(startAngle),julia_to_cpp(endAngle),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
ellipse(img::InputArray, center::Point{Int32}, axes::Size{Int32}, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(cv_LINE_8), shift::Int32 = Int32(0)) = ellipse(img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift)

function ellipse(img::InputArray, box::RotatedRect, color::Scalar, thickness::Int32, lineType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(box),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType)))
end
ellipse(img::InputArray, box::RotatedRect, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(cv_LINE_8)) = ellipse(img, box, color, thickness, lineType)

function drawMarker(img::InputArray, position::Point{Int32}, color::Scalar, markerType::Int32, markerSize::Int32, thickness::Int32, line_type::Int32)
	return cpp_to_julia(jlopencv_cv_cv_drawMarker(julia_to_cpp(img),julia_to_cpp(position),julia_to_cpp(color),julia_to_cpp(markerType),julia_to_cpp(markerSize),julia_to_cpp(thickness),julia_to_cpp(line_type)))
end
drawMarker(img::InputArray, position::Point{Int32}, color::Scalar; markerType::Int32 = Int32(cv_MARKER_CROSS), markerSize::Int32 = Int32(20), thickness::Int32 = Int32(1), line_type::Int32 = Int32(8)) = drawMarker(img, position, color, markerType, markerSize, thickness, line_type)

function fillConvexPoly(img::InputArray, points::InputArray, color::Scalar, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_fillConvexPoly(julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
fillConvexPoly(img::InputArray, points::InputArray, color::Scalar; lineType::Int32 = Int32(cv_LINE_8), shift::Int32 = Int32(0)) = fillConvexPoly(img, points, color, lineType, shift)

function fillPoly(img::InputArray, pts::Array{InputArray, 1}, color::Scalar, lineType::Int32, shift::Int32, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_fillPoly(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift),julia_to_cpp(offset)))
end
fillPoly(img::InputArray, pts::Array{InputArray, 1}, color::Scalar; lineType::Int32 = Int32(cv_LINE_8), shift::Int32 = Int32(0), offset::Point{Int32} = (cpp_to_julia(PointOP()))) = fillPoly(img, pts, color, lineType, shift, offset)

function polylines(img::InputArray, pts::Array{InputArray, 1}, isClosed::Bool, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_cv_polylines(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(isClosed),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
polylines(img::InputArray, pts::Array{InputArray, 1}, isClosed::Bool, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(cv_LINE_8), shift::Int32 = Int32(0)) = polylines(img, pts, isClosed, color, thickness, lineType, shift)

function drawContours(image::InputArray, contours::Array{InputArray, 1}, contourIdx::Int32, color::Scalar, thickness::Int32, lineType::Int32, hierarchy::InputArray, maxLevel::Int32, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_drawContours(julia_to_cpp(image),julia_to_cpp(contours),julia_to_cpp(contourIdx),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(hierarchy),julia_to_cpp(maxLevel),julia_to_cpp(offset)))
end
drawContours(image::InputArray, contours::Array{InputArray, 1}, contourIdx::Int32, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(cv_LINE_8), hierarchy::InputArray = (CxxMat()), maxLevel::Int32 = Int32(typemax(Int32)), offset::Point{Int32} = (cpp_to_julia(PointOP()))) = drawContours(image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset)

function clipLine(imgRect::Rect{Int32}, pt1::Point{Int32}, pt2::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_clipLine(julia_to_cpp(imgRect),julia_to_cpp(pt1),julia_to_cpp(pt2)))
end

function ellipse2Poly(center::Point{Int32}, axes::Size{Int32}, angle::Int32, arcStart::Int32, arcEnd::Int32, delta::Int32)
	return cpp_to_julia(jlopencv_cv_cv_ellipse2Poly(julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(arcStart),julia_to_cpp(arcEnd),julia_to_cpp(delta)))
end

function putText(img::InputArray, text::String, org::Point{Int32}, fontFace::Int32, fontScale::Float64, color::Scalar, thickness::Int32, lineType::Int32, bottomLeftOrigin::Bool)
	return cpp_to_julia(jlopencv_cv_cv_putText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(bottomLeftOrigin)))
end
putText(img::InputArray, text::String, org::Point{Int32}, fontFace::Int32, fontScale::Float64, color::Scalar; thickness::Int32 = Int32(1), lineType::Int32 = Int32(cv_LINE_8), bottomLeftOrigin::Bool = (false)) = putText(img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin)

function getTextSize(text::String, fontFace::Int32, fontScale::Float64, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getTextSize(julia_to_cpp(text),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(thickness)))
end

function getFontScaleFromHeight(fontFace::Int32, pixelHeight::Int32, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getFontScaleFromHeight(julia_to_cpp(fontFace),julia_to_cpp(pixelHeight),julia_to_cpp(thickness)))
end
getFontScaleFromHeight(fontFace::Int32, pixelHeight::Int32; thickness::Int32 = Int32(1)) = getFontScaleFromHeight(fontFace, pixelHeight, thickness)

function imread(filename::String, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imread(julia_to_cpp(filename),julia_to_cpp(flags)))
end
imread(filename::String; flags::Int32 = Int32(cv_IMREAD_COLOR)) = imread(filename, flags)

function imreadmulti(filename::String, mats::Array{InputArray, 1}, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imreadmulti(julia_to_cpp(filename),julia_to_cpp(mats),julia_to_cpp(flags)))
end
imreadmulti(filename::String; mats::Array{InputArray, 1} = (Array{InputArray, 1}()), flags::Int32 = Int32(cv_IMREAD_ANYCOLOR)) = imreadmulti(filename, mats, flags)

function imwrite(filename::String, img::InputArray, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imwrite(julia_to_cpp(filename),julia_to_cpp(img),julia_to_cpp(params)))
end
imwrite(filename::String, img::InputArray; params::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = imwrite(filename, img, params)

function imdecode(buf::InputArray, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_imdecode(julia_to_cpp(buf),julia_to_cpp(flags)))
end

function imencode(ext::String, img::InputArray, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imencode(julia_to_cpp(ext),julia_to_cpp(img),julia_to_cpp(params)))
end
imencode(ext::String, img::InputArray; params::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = imencode(ext, img, params)

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
namedWindow(winname::String; flags::Int32 = Int32(cv_WINDOW_AUTOSIZE)) = namedWindow(winname, flags)

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

function imshow(winname::String, mat::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_imshow(julia_to_cpp(winname),julia_to_cpp(mat)))
end

function resizeWindow(winname::String, width::Int32, height::Int32)
	return cpp_to_julia(jlopencv_cv_cv_resizeWindow(julia_to_cpp(winname),julia_to_cpp(width),julia_to_cpp(height)))
end

function resizeWindow(winname::String, size::Size{Int32})
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

function selectROI(windowName::String, img::InputArray, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(windowName::String, img::InputArray; showCrosshair::Bool = (true), fromCenter::Bool = (false)) = selectROI(windowName, img, showCrosshair, fromCenter)

function selectROI(img::InputArray, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(img::InputArray; showCrosshair::Bool = (true), fromCenter::Bool = (false)) = selectROI(img, showCrosshair, fromCenter)

function selectROIs(windowName::String, img::InputArray, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROIs(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROIs(windowName::String, img::InputArray; showCrosshair::Bool = (true), fromCenter::Bool = (false)) = selectROIs(windowName, img, showCrosshair, fromCenter)

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

function addText(img::InputArray, text::String, org::Point{Int32}, nameFont::String, pointSize::Int32, color::Scalar, weight::Int32, style::Int32, spacing::Int32)
	return cpp_to_julia(jlopencv_cv_cv_addText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(nameFont),julia_to_cpp(pointSize),julia_to_cpp(color),julia_to_cpp(weight),julia_to_cpp(style),julia_to_cpp(spacing)))
end
addText(img::InputArray, text::String, org::Point{Int32}, nameFont::String; pointSize::Int32 = Int32(-1), color::Scalar = (cpp_to_julia(ScalarggallOWP())), weight::Int32 = Int32(cv_QT_FONT_NORMAL), style::Int32 = Int32(cv_QT_STYLE_NORMAL), spacing::Int32 = Int32(0)) = addText(img, text, org, nameFont, pointSize, color, weight, style, spacing)

function displayOverlay(winname::String, text::String, delayms::Int32)
	return cpp_to_julia(jlopencv_cv_cv_displayOverlay(julia_to_cpp(winname),julia_to_cpp(text),julia_to_cpp(delayms)))
end
displayOverlay(winname::String, text::String; delayms::Int32 = Int32(0)) = displayOverlay(winname, text, delayms)



include("cv_cudev_cxx_wrap.jl")
include("cv_ogl_cxx_wrap.jl")
include("cv_cuda_cxx_wrap.jl")
include("cv_ipp_cxx_wrap.jl")
include("cv_Error_cxx_wrap.jl")
include("cv_utils_cxx_wrap.jl")
include("cv_internal_cxx_wrap.jl")
include("cv_traits_cxx_wrap.jl")
include("cv_samples_cxx_wrap.jl")
include("cv_dnn_cxx_wrap.jl")