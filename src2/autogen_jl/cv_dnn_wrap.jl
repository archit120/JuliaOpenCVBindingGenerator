
function Base.getproperty(m::Layer, s::Symbol)
    if s==:blobs
        return cpp_to_julia(jlopencv_Layer_get_blobs(m))
    end
    if s==:name
        return cpp_to_julia(jlopencv_Layer_get_name(m))
    end
    if s==:type
        return cpp_to_julia(jlopencv_Layer_get_type(m))
    end
    if s==:preferableTarget
        return cpp_to_julia(jlopencv_Layer_get_preferableTarget(m))
    end
    return Base.getfield(m, s)
end

function Base.setproperty!(m::Layer, s::Symbol, v)
    if s==:name
        jlopencv_Layer_set_name(m, julia_to_cpp(v))
    end
    if s==:type
        jlopencv_Layer_set_type(m, julia_to_cpp(v))
    end
    if s==:preferableTarget
        jlopencv_Layer_set_preferableTarget(m, julia_to_cpp(v))
    end
    return Base.setfield(m, s, v)
end

function finalize(cobj::cv_Ptr{T}, inputs::Array{Image, 1}, outputs::Array{Image, 1}) where {T <: Layer}
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Layer_cv_dnn_Layer_finalize(julia_to_cpp(cobj),julia_to_cpp(inputs),julia_to_cpp(outputs)))
end
finalize(cobj::cv_Ptr{T}, inputs::Array{Image, 1}; outputs::Array{Image, 1} = (Array{Image, 1}())) where {T <: Layer} = finalize(cobj, inputs, outputs)

function finalize(cobj::cv_Ptr{T}, inputs::Array{UMat, 1}, outputs::Array{UMat, 1}) where {T <: Layer}
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Layer_cv_dnn_Layer_finalize(julia_to_cpp(cobj),julia_to_cpp(inputs),julia_to_cpp(outputs)))
end
finalize(cobj::cv_Ptr{T}, inputs::Array{UMat, 1}; outputs::Array{UMat, 1} = (Array{UMat, 1}())) where {T <: Layer} = finalize(cobj, inputs, outputs)

function run(cobj::cv_Ptr{T}, inputs::Array{Image, 1}, internals::Array{Image, 1}, outputs::Array{Image, 1}) where {T <: Layer}
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Layer_cv_dnn_Layer_run(julia_to_cpp(cobj),julia_to_cpp(inputs),julia_to_cpp(internals),julia_to_cpp(outputs)))
end
run(cobj::cv_Ptr{T}, inputs::Array{Image, 1}, internals::Array{Image, 1}; outputs::Array{Image, 1} = (Array{Image, 1}())) where {T <: Layer} = run(cobj, inputs, internals, outputs)

function outputNameToIndex(cobj::cv_Ptr{T}, outputName::String) where {T <: Layer}
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Layer_cv_dnn_Layer_outputNameToIndex(julia_to_cpp(cobj),julia_to_cpp(outputName)))
end
function Base.getproperty(m::Net, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Net, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function empty(cobj::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_empty(julia_to_cpp(cobj)))
end

function dump(cobj::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_dump(julia_to_cpp(cobj)))
end

function dumpToFile(cobj::Net, path::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_dumpToFile(julia_to_cpp(cobj),julia_to_cpp(path)))
end

function getLayerId(cobj::Net, layer::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayerId(julia_to_cpp(cobj),julia_to_cpp(layer)))
end

function getLayerNames(cobj::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayerNames(julia_to_cpp(cobj)))
end

function getLayer(cobj::Net, layerId::LayerId)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayer(julia_to_cpp(cobj),julia_to_cpp(layerId)))
end

function connect(cobj::Net, outPin::String, inpPin::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_connect(julia_to_cpp(cobj),julia_to_cpp(outPin),julia_to_cpp(inpPin)))
end

function setInputsNames(cobj::Net, inputBlobNames::Array{String, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setInputsNames(julia_to_cpp(cobj),julia_to_cpp(inputBlobNames)))
end

function setInputShape(cobj::Net, inputName::String, shape::MatShape)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setInputShape(julia_to_cpp(cobj),julia_to_cpp(inputName),julia_to_cpp(shape)))
end

function forward(cobj::Net, outputName::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward(julia_to_cpp(cobj),julia_to_cpp(outputName)))
end
forward(cobj::Net; outputName::String = (String())) = forward(cobj, outputName)

function forward(cobj::Net, outputBlobs::Array{Image, 1}, outputName::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward(julia_to_cpp(cobj),julia_to_cpp(outputBlobs),julia_to_cpp(outputName)))
end

function forward(cobj::Net, outputBlobs::Array{UMat, 1}, outputName::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward(julia_to_cpp(cobj),julia_to_cpp(outputBlobs),julia_to_cpp(outputName)))
end

function forward(cobj::Net, outBlobNames::Array{String, 1}, outputBlobs::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward(julia_to_cpp(cobj),julia_to_cpp(outBlobNames),julia_to_cpp(outputBlobs)))
end
forward(cobj::Net, outBlobNames::Array{String, 1}; outputBlobs::Array{Image, 1} = (Array{Image, 1}())) = forward(cobj, outBlobNames, outputBlobs)

function forward(cobj::Net, outBlobNames::Array{String, 1}, outputBlobs::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward(julia_to_cpp(cobj),julia_to_cpp(outBlobNames),julia_to_cpp(outputBlobs)))
end

function forward(cobj::Net, outBlobNames::Array{String, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward(julia_to_cpp(cobj),julia_to_cpp(outBlobNames)))
end

function forwardAsync(cobj::Net, outputName::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forwardAsync(julia_to_cpp(cobj),julia_to_cpp(outputName)))
end
forwardAsync(cobj::Net; outputName::String = (String())) = forwardAsync(cobj, outputName)

function setHalideScheduler(cobj::Net, scheduler::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setHalideScheduler(julia_to_cpp(cobj),julia_to_cpp(scheduler)))
end

function setPreferableBackend(cobj::Net, backendId::Int32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setPreferableBackend(julia_to_cpp(cobj),julia_to_cpp(backendId)))
end

function setPreferableTarget(cobj::Net, targetId::Int32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setPreferableTarget(julia_to_cpp(cobj),julia_to_cpp(targetId)))
end

function setInput(cobj::Net, blob::Image, name::String, scalefactor::Float64, mean::Scalar)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setInput(julia_to_cpp(cobj),julia_to_cpp(blob),julia_to_cpp(name),julia_to_cpp(scalefactor),julia_to_cpp(mean)))
end
setInput(cobj::Net, blob::Image; name::String = (""), scalefactor::Float64 = Float64(1.0), mean::Scalar = (ScalarOP)) = setInput(cobj, blob, name, scalefactor, mean)

function setInput(cobj::Net, blob::UMat, name::String, scalefactor::Float64, mean::Scalar)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setInput(julia_to_cpp(cobj),julia_to_cpp(blob),julia_to_cpp(name),julia_to_cpp(scalefactor),julia_to_cpp(mean)))
end
setInput(cobj::Net, blob::UMat; name::String = (""), scalefactor::Float64 = Float64(1.0), mean::Scalar = (ScalarOP)) = setInput(cobj, blob, name, scalefactor, mean)

function setParam(cobj::Net, layer::LayerId, numParam::Int32, blob::Image)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setParam(julia_to_cpp(cobj),julia_to_cpp(layer),julia_to_cpp(numParam),julia_to_cpp(blob)))
end

function getParam(cobj::Net, layer::LayerId, numParam::Int32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getParam(julia_to_cpp(cobj),julia_to_cpp(layer),julia_to_cpp(numParam)))
end
getParam(cobj::Net, layer::LayerId; numParam::Int32 = Int32(0)) = getParam(cobj, layer, numParam)

function getUnconnectedOutLayers(cobj::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getUnconnectedOutLayers(julia_to_cpp(cobj)))
end

function getUnconnectedOutLayersNames(cobj::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getUnconnectedOutLayersNames(julia_to_cpp(cobj)))
end

function getLayersShapes(cobj::Net, netInputShapes::Array{MatShape, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayersShapes(julia_to_cpp(cobj),julia_to_cpp(netInputShapes)))
end

function getLayersShapes(cobj::Net, netInputShape::MatShape)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayersShapes(julia_to_cpp(cobj),julia_to_cpp(netInputShape)))
end

function getFLOPS(cobj::Net, netInputShapes::Array{MatShape, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS(julia_to_cpp(cobj),julia_to_cpp(netInputShapes)))
end

function getFLOPS(cobj::Net, netInputShape::MatShape)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS(julia_to_cpp(cobj),julia_to_cpp(netInputShape)))
end

function getFLOPS(cobj::Net, layerId::Int32, netInputShapes::Array{MatShape, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS(julia_to_cpp(cobj),julia_to_cpp(layerId),julia_to_cpp(netInputShapes)))
end

function getFLOPS(cobj::Net, layerId::Int32, netInputShape::MatShape)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS(julia_to_cpp(cobj),julia_to_cpp(layerId),julia_to_cpp(netInputShape)))
end

function getLayerTypes(cobj::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayerTypes(julia_to_cpp(cobj)))
end

function getLayersCount(cobj::Net, layerType::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayersCount(julia_to_cpp(cobj),julia_to_cpp(layerType)))
end

function getMemoryConsumption(cobj::Net, netInputShape::MatShape)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getMemoryConsumption(julia_to_cpp(cobj),julia_to_cpp(netInputShape)))
end

function getMemoryConsumption(cobj::Net, layerId::Int32, netInputShapes::Array{MatShape, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getMemoryConsumption(julia_to_cpp(cobj),julia_to_cpp(layerId),julia_to_cpp(netInputShapes)))
end

function getMemoryConsumption(cobj::Net, layerId::Int32, netInputShape::MatShape)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getMemoryConsumption(julia_to_cpp(cobj),julia_to_cpp(layerId),julia_to_cpp(netInputShape)))
end

function enableFusion(cobj::Net, fusion::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_enableFusion(julia_to_cpp(cobj),julia_to_cpp(fusion)))
end

function getPerfProfile(cobj::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getPerfProfile(julia_to_cpp(cobj)))
end

function Net()
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_Net())
end
function Base.getproperty(m::Model, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Model, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setInputSize(cobj::Model, size::Size)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputSize(julia_to_cpp(cobj),julia_to_cpp(size)))
end

function setInputSize(cobj::Model, width::Int32, height::Int32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputSize(julia_to_cpp(cobj),julia_to_cpp(width),julia_to_cpp(height)))
end

function setInputMean(cobj::Model, mean::Scalar)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputMean(julia_to_cpp(cobj),julia_to_cpp(mean)))
end

function setInputScale(cobj::Model, scale::Float64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputScale(julia_to_cpp(cobj),julia_to_cpp(scale)))
end

function setInputCrop(cobj::Model, crop::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputCrop(julia_to_cpp(cobj),julia_to_cpp(crop)))
end

function setInputSwapRB(cobj::Model, swapRB::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputSwapRB(julia_to_cpp(cobj),julia_to_cpp(swapRB)))
end

function setInputParams(cobj::Model, scale::Float64, size::Size, mean::Scalar, swapRB::Bool, crop::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputParams(julia_to_cpp(cobj),julia_to_cpp(scale),julia_to_cpp(size),julia_to_cpp(mean),julia_to_cpp(swapRB),julia_to_cpp(crop)))
end
setInputParams(cobj::Model; scale::Float64 = Float64(1.0), size::Size = (SizeOP), mean::Scalar = (ScalarOP), swapRB::Bool = (false), crop::Bool = (false)) = setInputParams(cobj, scale, size, mean, swapRB, crop)

function predict(cobj::Model, frame::Image, outs::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_predict(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(outs)))
end
predict(cobj::Model, frame::Image; outs::Array{Image, 1} = (Array{Image, 1}())) = predict(cobj, frame, outs)

function predict(cobj::Model, frame::UMat, outs::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_predict(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(outs)))
end
predict(cobj::Model, frame::UMat; outs::Array{UMat, 1} = (Array{UMat, 1}())) = predict(cobj, frame, outs)

function Model(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_Model(julia_to_cpp(model),julia_to_cpp(config)))
end
Model(model::String; config::String = ("")) = Model(model, config)

function Model(network::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_Model(julia_to_cpp(network)))
end
function Base.getproperty(m::ClassificationModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ClassificationModel, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function classify(cobj::ClassificationModel, frame::Image)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_ClassificationModel_cv_dnn_ClassificationModel_classify(julia_to_cpp(cobj),julia_to_cpp(frame)))
end

function classify(cobj::ClassificationModel, frame::UMat)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_ClassificationModel_cv_dnn_ClassificationModel_classify(julia_to_cpp(cobj),julia_to_cpp(frame)))
end

function ClassificationModel(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_ClassificationModel_cv_dnn_ClassificationModel_ClassificationModel(julia_to_cpp(model),julia_to_cpp(config)))
end
ClassificationModel(model::String; config::String = ("")) = ClassificationModel(model, config)

function ClassificationModel(network::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_ClassificationModel_cv_dnn_ClassificationModel_ClassificationModel(julia_to_cpp(network)))
end
function Base.getproperty(m::KeypointsModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KeypointsModel, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function estimate(cobj::KeypointsModel, frame::Image, thresh::Float32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_KeypointsModel_cv_dnn_KeypointsModel_estimate(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(thresh)))
end
estimate(cobj::KeypointsModel, frame::Image; thresh::Float32 = Float32(0.5)) = estimate(cobj, frame, thresh)

function estimate(cobj::KeypointsModel, frame::UMat, thresh::Float32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_KeypointsModel_cv_dnn_KeypointsModel_estimate(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(thresh)))
end
estimate(cobj::KeypointsModel, frame::UMat; thresh::Float32 = Float32(0.5)) = estimate(cobj, frame, thresh)

function KeypointsModel(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_KeypointsModel_cv_dnn_KeypointsModel_KeypointsModel(julia_to_cpp(model),julia_to_cpp(config)))
end
KeypointsModel(model::String; config::String = ("")) = KeypointsModel(model, config)

function KeypointsModel(network::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_KeypointsModel_cv_dnn_KeypointsModel_KeypointsModel(julia_to_cpp(network)))
end
function Base.getproperty(m::SegmentationModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SegmentationModel, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function segment(cobj::SegmentationModel, frame::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_SegmentationModel_cv_dnn_SegmentationModel_segment(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(mask)))
end
segment(cobj::SegmentationModel, frame::Image; mask::Image = (CxxMat())) = segment(cobj, frame, mask)

function segment(cobj::SegmentationModel, frame::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_SegmentationModel_cv_dnn_SegmentationModel_segment(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(mask)))
end
segment(cobj::SegmentationModel, frame::UMat; mask::UMat = (UMat())) = segment(cobj, frame, mask)

function SegmentationModel(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_SegmentationModel_cv_dnn_SegmentationModel_SegmentationModel(julia_to_cpp(model),julia_to_cpp(config)))
end
SegmentationModel(model::String; config::String = ("")) = SegmentationModel(model, config)

function SegmentationModel(network::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_SegmentationModel_cv_dnn_SegmentationModel_SegmentationModel(julia_to_cpp(network)))
end
function Base.getproperty(m::DetectionModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DetectionModel, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function detect(cobj::DetectionModel, frame::Image, confThreshold::Float32, nmsThreshold::Float32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_DetectionModel_cv_dnn_DetectionModel_detect(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(confThreshold),julia_to_cpp(nmsThreshold)))
end
detect(cobj::DetectionModel, frame::Image; confThreshold::Float32 = Float32(0.5f), nmsThreshold::Float32 = Float32(0.0f)) = detect(cobj, frame, confThreshold, nmsThreshold)

function detect(cobj::DetectionModel, frame::UMat, confThreshold::Float32, nmsThreshold::Float32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_DetectionModel_cv_dnn_DetectionModel_detect(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(confThreshold),julia_to_cpp(nmsThreshold)))
end
detect(cobj::DetectionModel, frame::UMat; confThreshold::Float32 = Float32(0.5f), nmsThreshold::Float32 = Float32(0.0f)) = detect(cobj, frame, confThreshold, nmsThreshold)

function DetectionModel(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_DetectionModel_cv_dnn_DetectionModel_DetectionModel(julia_to_cpp(model),julia_to_cpp(config)))
end
DetectionModel(model::String; config::String = ("")) = DetectionModel(model, config)

function DetectionModel(network::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_DetectionModel_cv_dnn_DetectionModel_DetectionModel(julia_to_cpp(network)))
end

function getAvailableTargets(be::dnn_Backend)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_getAvailableTargets(julia_to_cpp(be)))
end

function Net_readFromModelOptimizer(xml::String, bin::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_readFromModelOptimizer(julia_to_cpp(xml),julia_to_cpp(bin)))
end

function Net_readFromModelOptimizer(bufferModelConfig::Array{uchar, 1}, bufferWeights::Array{uchar, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_readFromModelOptimizer(julia_to_cpp(bufferModelConfig),julia_to_cpp(bufferWeights)))
end

function readNetFromDarknet(cfgFile::String, darknetModel::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromDarknet(julia_to_cpp(cfgFile),julia_to_cpp(darknetModel)))
end
readNetFromDarknet(cfgFile::String; darknetModel::String = (String())) = readNetFromDarknet(cfgFile, darknetModel)

function readNetFromDarknet(bufferCfg::Array{uchar, 1}, bufferModel::Array{uchar, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromDarknet(julia_to_cpp(bufferCfg),julia_to_cpp(bufferModel)))
end
readNetFromDarknet(bufferCfg::Array{uchar, 1}; bufferModel::Array{uchar, 1} = (stdggvectoriucharkOP)) = readNetFromDarknet(bufferCfg, bufferModel)

function readNetFromCaffe(prototxt::String, caffeModel::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromCaffe(julia_to_cpp(prototxt),julia_to_cpp(caffeModel)))
end
readNetFromCaffe(prototxt::String; caffeModel::String = (String())) = readNetFromCaffe(prototxt, caffeModel)

function readNetFromCaffe(bufferProto::Array{uchar, 1}, bufferModel::Array{uchar, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromCaffe(julia_to_cpp(bufferProto),julia_to_cpp(bufferModel)))
end
readNetFromCaffe(bufferProto::Array{uchar, 1}; bufferModel::Array{uchar, 1} = (stdggvectoriucharkOP)) = readNetFromCaffe(bufferProto, bufferModel)

function readNetFromTensorflow(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromTensorflow(julia_to_cpp(model),julia_to_cpp(config)))
end
readNetFromTensorflow(model::String; config::String = (String())) = readNetFromTensorflow(model, config)

function readNetFromTensorflow(bufferModel::Array{uchar, 1}, bufferConfig::Array{uchar, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromTensorflow(julia_to_cpp(bufferModel),julia_to_cpp(bufferConfig)))
end
readNetFromTensorflow(bufferModel::Array{uchar, 1}; bufferConfig::Array{uchar, 1} = (stdggvectoriucharkOP)) = readNetFromTensorflow(bufferModel, bufferConfig)

function readNetFromTorch(model::String, isBinary::Bool, evaluate::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromTorch(julia_to_cpp(model),julia_to_cpp(isBinary),julia_to_cpp(evaluate)))
end
readNetFromTorch(model::String; isBinary::Bool = (true), evaluate::Bool = (true)) = readNetFromTorch(model, isBinary, evaluate)

function readNet(model::String, config::String, framework::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNet(julia_to_cpp(model),julia_to_cpp(config),julia_to_cpp(framework)))
end
readNet(model::String; config::String = (""), framework::String = ("")) = readNet(model, config, framework)

function readNet(framework::String, bufferModel::Array{uchar, 1}, bufferConfig::Array{uchar, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNet(julia_to_cpp(framework),julia_to_cpp(bufferModel),julia_to_cpp(bufferConfig)))
end
readNet(framework::String, bufferModel::Array{uchar, 1}; bufferConfig::Array{uchar, 1} = (stdggvectoriucharkOP)) = readNet(framework, bufferModel, bufferConfig)

function readTorchBlob(filename::String, isBinary::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readTorchBlob(julia_to_cpp(filename),julia_to_cpp(isBinary)))
end
readTorchBlob(filename::String; isBinary::Bool = (true)) = readTorchBlob(filename, isBinary)

function readNetFromModelOptimizer(xml::String, bin::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromModelOptimizer(julia_to_cpp(xml),julia_to_cpp(bin)))
end

function readNetFromModelOptimizer(bufferModelConfig::Array{uchar, 1}, bufferWeights::Array{uchar, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromModelOptimizer(julia_to_cpp(bufferModelConfig),julia_to_cpp(bufferWeights)))
end

function readNetFromONNX(onnxFile::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromONNX(julia_to_cpp(onnxFile)))
end

function readNetFromONNX(buffer::Array{uchar, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromONNX(julia_to_cpp(buffer)))
end

function readTensorFromONNX(path::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readTensorFromONNX(julia_to_cpp(path)))
end

function blobFromImage(image::Image, scalefactor::Float64, size::Size, mean::Scalar, swapRB::Bool, crop::Bool, ddepth::Int32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_blobFromImage(julia_to_cpp(image),julia_to_cpp(scalefactor),julia_to_cpp(size),julia_to_cpp(mean),julia_to_cpp(swapRB),julia_to_cpp(crop),julia_to_cpp(ddepth)))
end
blobFromImage(image::Image; scalefactor::Float64 = Float64(1.0), size::Size = (SizeOP), mean::Scalar = (ScalarOP), swapRB::Bool = (false), crop::Bool = (false), ddepth::Int32 = Int32(CV_32F)) = blobFromImage(image, scalefactor, size, mean, swapRB, crop, ddepth)

function blobFromImage(image::UMat, scalefactor::Float64, size::Size, mean::Scalar, swapRB::Bool, crop::Bool, ddepth::Int32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_blobFromImage(julia_to_cpp(image),julia_to_cpp(scalefactor),julia_to_cpp(size),julia_to_cpp(mean),julia_to_cpp(swapRB),julia_to_cpp(crop),julia_to_cpp(ddepth)))
end
blobFromImage(image::UMat; scalefactor::Float64 = Float64(1.0), size::Size = (SizeOP), mean::Scalar = (ScalarOP), swapRB::Bool = (false), crop::Bool = (false), ddepth::Int32 = Int32(CV_32F)) = blobFromImage(image, scalefactor, size, mean, swapRB, crop, ddepth)

function blobFromImages(images::Array{Image, 1}, scalefactor::Float64, size::Size, mean::Scalar, swapRB::Bool, crop::Bool, ddepth::Int32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_blobFromImages(julia_to_cpp(images),julia_to_cpp(scalefactor),julia_to_cpp(size),julia_to_cpp(mean),julia_to_cpp(swapRB),julia_to_cpp(crop),julia_to_cpp(ddepth)))
end
blobFromImages(images::Array{Image, 1}; scalefactor::Float64 = Float64(1.0), size::Size = (SizeOP), mean::Scalar = (ScalarOP), swapRB::Bool = (false), crop::Bool = (false), ddepth::Int32 = Int32(CV_32F)) = blobFromImages(images, scalefactor, size, mean, swapRB, crop, ddepth)

function blobFromImages(images::Array{UMat, 1}, scalefactor::Float64, size::Size, mean::Scalar, swapRB::Bool, crop::Bool, ddepth::Int32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_blobFromImages(julia_to_cpp(images),julia_to_cpp(scalefactor),julia_to_cpp(size),julia_to_cpp(mean),julia_to_cpp(swapRB),julia_to_cpp(crop),julia_to_cpp(ddepth)))
end
blobFromImages(images::Array{UMat, 1}; scalefactor::Float64 = Float64(1.0), size::Size = (SizeOP), mean::Scalar = (ScalarOP), swapRB::Bool = (false), crop::Bool = (false), ddepth::Int32 = Int32(CV_32F)) = blobFromImages(images, scalefactor, size, mean, swapRB, crop, ddepth)

function imagesFromBlob(blob_::Image, images_::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_imagesFromBlob(julia_to_cpp(blob_),julia_to_cpp(images_)))
end
imagesFromBlob(blob_::Image; images_::Array{Image, 1} = (Array{Image, 1}())) = imagesFromBlob(blob_, images_)

function imagesFromBlob(blob_::Image, images_::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_imagesFromBlob(julia_to_cpp(blob_),julia_to_cpp(images_)))
end

function shrinkCaffeModel(src::String, dst::String, layersTypes::Array{String, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_shrinkCaffeModel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(layersTypes)))
end
shrinkCaffeModel(src::String, dst::String; layersTypes::Array{String, 1} = (stdggvectoriStringkOP)) = shrinkCaffeModel(src, dst, layersTypes)

function writeTextGraph(model::String, output::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_writeTextGraph(julia_to_cpp(model),julia_to_cpp(output)))
end

function NMSBoxes(bboxes::Array{Rect{Float64}, 1}, scores::Array{Float32, 1}, score_threshold::Float32, nms_threshold::Float32, eta::Float32, top_k::Int32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_NMSBoxes(julia_to_cpp(bboxes),julia_to_cpp(scores),julia_to_cpp(score_threshold),julia_to_cpp(nms_threshold),julia_to_cpp(eta),julia_to_cpp(top_k)))
end
NMSBoxes(bboxes::Array{Rect{Float64}, 1}, scores::Array{Float32, 1}, score_threshold::Float32, nms_threshold::Float32; eta::Float32 = Float32(1.f), top_k::Int32 = Int32(0)) = NMSBoxes(bboxes, scores, score_threshold, nms_threshold, eta, top_k)

function NMSBoxesRotated(bboxes::Array{RotatedRect, 1}, scores::Array{Float32, 1}, score_threshold::Float32, nms_threshold::Float32, eta::Float32, top_k::Int32)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_NMSBoxes(julia_to_cpp(bboxes),julia_to_cpp(scores),julia_to_cpp(score_threshold),julia_to_cpp(nms_threshold),julia_to_cpp(eta),julia_to_cpp(top_k)))
end
NMSBoxesRotated(bboxes::Array{RotatedRect, 1}, scores::Array{Float32, 1}, score_threshold::Float32, nms_threshold::Float32; eta::Float32 = Float32(1.f), top_k::Int32 = Int32(0)) = NMSBoxesRotated(bboxes, scores, score_threshold, nms_threshold, eta, top_k)



end