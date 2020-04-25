module cv_ml
import ..OpenCVCxx

function Base.getproperty(m::OpenCVCxx.ParamGrid, s::Symbol)
    if s==:minVal
        return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_ParamGrid_get_minVal(m))
    end
    if s==:maxVal
        return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_ParamGrid_get_maxVal(m))
    end
    if s==:logStep
        return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_ParamGrid_get_logStep(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.ParamGrid, s::Symbol, v)
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::OpenCVCxx.TrainData, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.TrainData, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getLayout(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getLayout(OpenCVCxx.julia_to_cpp(cobj)))
end
getLayout(cobj::Any; ) = getLayout(cobj)

function getNTrainSamples(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNTrainSamples(OpenCVCxx.julia_to_cpp(cobj)))
end
getNTrainSamples(cobj::Any; ) = getNTrainSamples(cobj)

function getNTestSamples(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNTestSamples(OpenCVCxx.julia_to_cpp(cobj)))
end
getNTestSamples(cobj::Any; ) = getNTestSamples(cobj)

function getNSamples(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNSamples(OpenCVCxx.julia_to_cpp(cobj)))
end
getNSamples(cobj::Any; ) = getNSamples(cobj)

function getNVars(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNVars(OpenCVCxx.julia_to_cpp(cobj)))
end
getNVars(cobj::Any; ) = getNVars(cobj)

function getNAllVars(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNAllVars(OpenCVCxx.julia_to_cpp(cobj)))
end
getNAllVars(cobj::Any; ) = getNAllVars(cobj)

function getSample(cobj::Any, varIdx::Image, sidx::Int32, buf::float)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSample(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(varIdx),OpenCVCxx.julia_to_cpp(sidx),OpenCVCxx.julia_to_cpp(buf)))
end
getSample(cobj::Any, varIdx::Image, sidx::Int32, buf::float*; ) = getSample(cobj, varIdx, sidx, buf)

function getSample(cobj::Any, varIdx::UMat, sidx::Int32, buf::float)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSample(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(varIdx),OpenCVCxx.julia_to_cpp(sidx),OpenCVCxx.julia_to_cpp(buf)))
end
getSample(cobj::Any, varIdx::UMat, sidx::Int32, buf::float*; ) = getSample(cobj, varIdx, sidx, buf)

function getSamples(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSamples(OpenCVCxx.julia_to_cpp(cobj)))
end
getSamples(cobj::Any; ) = getSamples(cobj)

function getMissing(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getMissing(OpenCVCxx.julia_to_cpp(cobj)))
end
getMissing(cobj::Any; ) = getMissing(cobj)

function getTrainSamples(cobj::Any, layout::Int32, compressSamples::Bool, compressVars::Bool)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSamples(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(layout),OpenCVCxx.julia_to_cpp(compressSamples),OpenCVCxx.julia_to_cpp(compressVars)))
end
getTrainSamples(cobj::Any; layout::Int32 = ROW_SAMPLE, compressSamples::Bool = true, compressVars::Bool = true) = getTrainSamples(cobj, layout, compressSamples, compressVars)

function getTrainResponses(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainResponses(OpenCVCxx.julia_to_cpp(cobj)))
end
getTrainResponses(cobj::Any; ) = getTrainResponses(cobj)

function getTrainNormCatResponses(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainNormCatResponses(OpenCVCxx.julia_to_cpp(cobj)))
end
getTrainNormCatResponses(cobj::Any; ) = getTrainNormCatResponses(cobj)

function getTestResponses(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestResponses(OpenCVCxx.julia_to_cpp(cobj)))
end
getTestResponses(cobj::Any; ) = getTestResponses(cobj)

function getTestNormCatResponses(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestNormCatResponses(OpenCVCxx.julia_to_cpp(cobj)))
end
getTestNormCatResponses(cobj::Any; ) = getTestNormCatResponses(cobj)

function getResponses(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getResponses(OpenCVCxx.julia_to_cpp(cobj)))
end
getResponses(cobj::Any; ) = getResponses(cobj)

function getNormCatResponses(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNormCatResponses(OpenCVCxx.julia_to_cpp(cobj)))
end
getNormCatResponses(cobj::Any; ) = getNormCatResponses(cobj)

function getSampleWeights(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSampleWeights(OpenCVCxx.julia_to_cpp(cobj)))
end
getSampleWeights(cobj::Any; ) = getSampleWeights(cobj)

function getTrainSampleWeights(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSampleWeights(OpenCVCxx.julia_to_cpp(cobj)))
end
getTrainSampleWeights(cobj::Any; ) = getTrainSampleWeights(cobj)

function getTestSampleWeights(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSampleWeights(OpenCVCxx.julia_to_cpp(cobj)))
end
getTestSampleWeights(cobj::Any; ) = getTestSampleWeights(cobj)

function getVarIdx(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarIdx(OpenCVCxx.julia_to_cpp(cobj)))
end
getVarIdx(cobj::Any; ) = getVarIdx(cobj)

function getVarType(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarType(OpenCVCxx.julia_to_cpp(cobj)))
end
getVarType(cobj::Any; ) = getVarType(cobj)

function getVarSymbolFlags(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarSymbolFlags(OpenCVCxx.julia_to_cpp(cobj)))
end
getVarSymbolFlags(cobj::Any; ) = getVarSymbolFlags(cobj)

function getResponseType(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getResponseType(OpenCVCxx.julia_to_cpp(cobj)))
end
getResponseType(cobj::Any; ) = getResponseType(cobj)

function getTrainSampleIdx(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSampleIdx(OpenCVCxx.julia_to_cpp(cobj)))
end
getTrainSampleIdx(cobj::Any; ) = getTrainSampleIdx(cobj)

function getTestSampleIdx(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSampleIdx(OpenCVCxx.julia_to_cpp(cobj)))
end
getTestSampleIdx(cobj::Any; ) = getTestSampleIdx(cobj)

function getValues(cobj::Any, vi::Int32, sidx::Image, values::float)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getValues(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(vi),OpenCVCxx.julia_to_cpp(sidx),OpenCVCxx.julia_to_cpp(values)))
end
getValues(cobj::Any, vi::Int32, sidx::Image, values::float*; ) = getValues(cobj, vi, sidx, values)

function getValues(cobj::Any, vi::Int32, sidx::UMat, values::float)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getValues(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(vi),OpenCVCxx.julia_to_cpp(sidx),OpenCVCxx.julia_to_cpp(values)))
end
getValues(cobj::Any, vi::Int32, sidx::UMat, values::float*; ) = getValues(cobj, vi, sidx, values)

function getDefaultSubstValues(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getDefaultSubstValues(OpenCVCxx.julia_to_cpp(cobj)))
end
getDefaultSubstValues(cobj::Any; ) = getDefaultSubstValues(cobj)

function getCatCount(cobj::Any, vi::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatCount(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(vi)))
end
getCatCount(cobj::Any, vi::Int32; ) = getCatCount(cobj, vi)

function getClassLabels(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getClassLabels(OpenCVCxx.julia_to_cpp(cobj)))
end
getClassLabels(cobj::Any; ) = getClassLabels(cobj)

function getCatOfs(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatOfs(OpenCVCxx.julia_to_cpp(cobj)))
end
getCatOfs(cobj::Any; ) = getCatOfs(cobj)

function getCatMap(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatMap(OpenCVCxx.julia_to_cpp(cobj)))
end
getCatMap(cobj::Any; ) = getCatMap(cobj)

function setTrainTestSplit(cobj::Any, count::Int32, shuffle::Bool)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_setTrainTestSplit(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(count),OpenCVCxx.julia_to_cpp(shuffle)))
end
setTrainTestSplit(cobj::Any, count::Int32; shuffle::Bool = true) = setTrainTestSplit(cobj, count, shuffle)

function setTrainTestSplitRatio(cobj::Any, ratio::Float64, shuffle::Bool)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_setTrainTestSplitRatio(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(ratio),OpenCVCxx.julia_to_cpp(shuffle)))
end
setTrainTestSplitRatio(cobj::Any, ratio::Float64; shuffle::Bool = true) = setTrainTestSplitRatio(cobj, ratio, shuffle)

function shuffleTrainTest(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_shuffleTrainTest(OpenCVCxx.julia_to_cpp(cobj)))
end
shuffleTrainTest(cobj::Any; ) = shuffleTrainTest(cobj)

function getTestSamples(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSamples(OpenCVCxx.julia_to_cpp(cobj)))
end
getTestSamples(cobj::Any; ) = getTestSamples(cobj)

function getNames(cobj::Any, names::Array{String, 1})
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNames(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(names)))
end
getNames(cobj::Any, names::Array{String, 1}; ) = getNames(cobj, names)
function Base.getproperty(m::OpenCVCxx.StatModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.StatModel, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getVarCount(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_getVarCount(OpenCVCxx.julia_to_cpp(cobj)))
end
getVarCount(cobj::Any; ) = getVarCount(cobj)

function empty(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_empty(OpenCVCxx.julia_to_cpp(cobj)))
end
empty(cobj::Any; ) = empty(cobj)

function isTrained(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_isTrained(OpenCVCxx.julia_to_cpp(cobj)))
end
isTrained(cobj::Any; ) = isTrained(cobj)

function isClassifier(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_isClassifier(OpenCVCxx.julia_to_cpp(cobj)))
end
isClassifier(cobj::Any; ) = isClassifier(cobj)

function train(cobj::Any, trainData::OpenCVCxx.Ptr{OpenCVCxx.TrainData}, flags::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_train(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(trainData),OpenCVCxx.julia_to_cpp(flags)))
end
train(cobj::Any, trainData::OpenCVCxx.Ptr{OpenCVCxx.TrainData}; flags::Int32 = 0) = train(cobj, trainData, flags)

function train(cobj::Any, samples::Image, layout::Int32, responses::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_train(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(layout),OpenCVCxx.julia_to_cpp(responses)))
end
train(cobj::Any, samples::Image, layout::Int32, responses::Image; ) = train(cobj, samples, layout, responses)

function train(cobj::Any, samples::UMat, layout::Int32, responses::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_train(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(layout),OpenCVCxx.julia_to_cpp(responses)))
end
train(cobj::Any, samples::UMat, layout::Int32, responses::UMat; ) = train(cobj, samples, layout, responses)

function calcError(cobj::Any, data::OpenCVCxx.Ptr{OpenCVCxx.TrainData}, test::Bool, resp::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_calcError(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(data),OpenCVCxx.julia_to_cpp(test),OpenCVCxx.julia_to_cpp(resp)))
end
calcError(cobj::Any, data::OpenCVCxx.Ptr{OpenCVCxx.TrainData}, test::Bool; resp::Image = Mat()) = calcError(cobj, data, test, resp)

function calcError(cobj::Any, data::OpenCVCxx.Ptr{OpenCVCxx.TrainData}, test::Bool, resp::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_calcError(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(data),OpenCVCxx.julia_to_cpp(test),OpenCVCxx.julia_to_cpp(resp)))
end
calcError(cobj::Any, data::OpenCVCxx.Ptr{OpenCVCxx.TrainData}, test::Bool; resp::UMat = UMat()) = calcError(cobj, data, test, resp)

function predict(cobj::Any, samples::Image, results::Image, flags::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_predict(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(results),OpenCVCxx.julia_to_cpp(flags)))
end
predict(cobj::Any, samples::Image; results::Image = Mat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)

function predict(cobj::Any, samples::UMat, results::UMat, flags::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_predict(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(results),OpenCVCxx.julia_to_cpp(flags)))
end
predict(cobj::Any, samples::UMat; results::UMat = UMat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)
function Base.getproperty(m::OpenCVCxx.NormalBayesClassifier, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.NormalBayesClassifier, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function predictProb(cobj::Any, inputs::Image, outputs::Image, outputProbs::Image, flags::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_NormalBayesClassifier_cv_ml_NormalBayesClassifier_predictProb(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(inputs),OpenCVCxx.julia_to_cpp(outputs),OpenCVCxx.julia_to_cpp(outputProbs),OpenCVCxx.julia_to_cpp(flags)))
end
predictProb(cobj::Any, inputs::Image; outputs::Image = Mat(), outputProbs::Image = Mat(), flags::Int32 = 0) = predictProb(cobj, inputs, outputs, outputProbs, flags)

function predictProb(cobj::Any, inputs::UMat, outputs::UMat, outputProbs::UMat, flags::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_NormalBayesClassifier_cv_ml_NormalBayesClassifier_predictProb(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(inputs),OpenCVCxx.julia_to_cpp(outputs),OpenCVCxx.julia_to_cpp(outputProbs),OpenCVCxx.julia_to_cpp(flags)))
end
predictProb(cobj::Any, inputs::UMat; outputs::UMat = UMat(), outputProbs::UMat = UMat(), flags::Int32 = 0) = predictProb(cobj, inputs, outputs, outputProbs, flags)
function Base.getproperty(m::OpenCVCxx.KNearest, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.KNearest, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultK(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getDefaultK(OpenCVCxx.julia_to_cpp(cobj)))
end
getDefaultK(cobj::Any; ) = getDefaultK(cobj)

function setDefaultK(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setDefaultK(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setDefaultK(cobj::Any, val::Int32; ) = setDefaultK(cobj, val)

function getIsClassifier(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getIsClassifier(OpenCVCxx.julia_to_cpp(cobj)))
end
getIsClassifier(cobj::Any; ) = getIsClassifier(cobj)

function setIsClassifier(cobj::Any, val::Bool)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setIsClassifier(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setIsClassifier(cobj::Any, val::Bool; ) = setIsClassifier(cobj, val)

function getEmax(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getEmax(OpenCVCxx.julia_to_cpp(cobj)))
end
getEmax(cobj::Any; ) = getEmax(cobj)

function setEmax(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setEmax(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setEmax(cobj::Any, val::Int32; ) = setEmax(cobj, val)

function getAlgorithmType(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getAlgorithmType(OpenCVCxx.julia_to_cpp(cobj)))
end
getAlgorithmType(cobj::Any; ) = getAlgorithmType(cobj)

function setAlgorithmType(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setAlgorithmType(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setAlgorithmType(cobj::Any, val::Int32; ) = setAlgorithmType(cobj, val)

function findNearest(cobj::Any, samples::Image, k::Int32, results::Image, neighborResponses::Image, dist::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_findNearest(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(k),OpenCVCxx.julia_to_cpp(results),OpenCVCxx.julia_to_cpp(neighborResponses),OpenCVCxx.julia_to_cpp(dist)))
end
findNearest(cobj::Any, samples::Image, k::Int32; results::Image = Mat(), neighborResponses::Image = Mat(), dist::Image = Mat()) = findNearest(cobj, samples, k, results, neighborResponses, dist)

function findNearest(cobj::Any, samples::UMat, k::Int32, results::UMat, neighborResponses::UMat, dist::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_findNearest(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(k),OpenCVCxx.julia_to_cpp(results),OpenCVCxx.julia_to_cpp(neighborResponses),OpenCVCxx.julia_to_cpp(dist)))
end
findNearest(cobj::Any, samples::UMat, k::Int32; results::UMat = UMat(), neighborResponses::UMat = UMat(), dist::UMat = UMat()) = findNearest(cobj, samples, k, results, neighborResponses, dist)
function Base.getproperty(m::OpenCVCxx.SVM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.SVM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getType(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getType(OpenCVCxx.julia_to_cpp(cobj)))
end
getType(cobj::Any; ) = getType(cobj)

function setType(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setType(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setType(cobj::Any, val::Int32; ) = setType(cobj, val)

function getGamma(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getGamma(OpenCVCxx.julia_to_cpp(cobj)))
end
getGamma(cobj::Any; ) = getGamma(cobj)

function setGamma(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setGamma(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setGamma(cobj::Any, val::Float64; ) = setGamma(cobj, val)

function getCoef0(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getCoef0(OpenCVCxx.julia_to_cpp(cobj)))
end
getCoef0(cobj::Any; ) = getCoef0(cobj)

function setCoef0(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setCoef0(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setCoef0(cobj::Any, val::Float64; ) = setCoef0(cobj, val)

function getDegree(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getDegree(OpenCVCxx.julia_to_cpp(cobj)))
end
getDegree(cobj::Any; ) = getDegree(cobj)

function setDegree(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setDegree(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setDegree(cobj::Any, val::Float64; ) = setDegree(cobj, val)

function getC(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getC(OpenCVCxx.julia_to_cpp(cobj)))
end
getC(cobj::Any; ) = getC(cobj)

function setC(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setC(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setC(cobj::Any, val::Float64; ) = setC(cobj, val)

function getNu(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getNu(OpenCVCxx.julia_to_cpp(cobj)))
end
getNu(cobj::Any; ) = getNu(cobj)

function setNu(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setNu(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setNu(cobj::Any, val::Float64; ) = setNu(cobj, val)

function getP(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getP(OpenCVCxx.julia_to_cpp(cobj)))
end
getP(cobj::Any; ) = getP(cobj)

function setP(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setP(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setP(cobj::Any, val::Float64; ) = setP(cobj, val)

function getClassWeights(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getClassWeights(OpenCVCxx.julia_to_cpp(cobj)))
end
getClassWeights(cobj::Any; ) = getClassWeights(cobj)

function setClassWeights(cobj::Any, val::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setClassWeights(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setClassWeights(cobj::Any, val::Image; ) = setClassWeights(cobj, val)

function setClassWeights(cobj::Any, val::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setClassWeights(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setClassWeights(cobj::Any, val::Image; ) = setClassWeights(cobj, val)

function getTermCriteria(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getTermCriteria(OpenCVCxx.julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setTermCriteria(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function getKernelType(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getKernelType(OpenCVCxx.julia_to_cpp(cobj)))
end
getKernelType(cobj::Any; ) = getKernelType(cobj)

function setKernel(cobj::Any, kernelType::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setKernel(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(kernelType)))
end
setKernel(cobj::Any, kernelType::Int32; ) = setKernel(cobj, kernelType)

function trainAuto(cobj::Any, samples::Image, layout::Int32, responses::Image, kFold::Int32, Cgrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, gammaGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, pGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, nuGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, coeffGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, degreeGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, balanced::Bool)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_trainAuto(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(layout),OpenCVCxx.julia_to_cpp(responses),OpenCVCxx.julia_to_cpp(kFold),OpenCVCxx.julia_to_cpp(Cgrid),OpenCVCxx.julia_to_cpp(gammaGrid),OpenCVCxx.julia_to_cpp(pGrid),OpenCVCxx.julia_to_cpp(nuGrid),OpenCVCxx.julia_to_cpp(coeffGrid),OpenCVCxx.julia_to_cpp(degreeGrid),OpenCVCxx.julia_to_cpp(balanced)))
end
trainAuto(cobj::Any, samples::Image, layout::Int32, responses::Image; kFold::Int32 = 10, Cgrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::C), gammaGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::GAMMA), pGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::P), nuGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::NU), coeffGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::COEF), degreeGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::DEGREE), balanced::Bool = false) = trainAuto(cobj, samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced)

function trainAuto(cobj::Any, samples::UMat, layout::Int32, responses::UMat, kFold::Int32, Cgrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, gammaGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, pGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, nuGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, coeffGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, degreeGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid}, balanced::Bool)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_trainAuto(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(layout),OpenCVCxx.julia_to_cpp(responses),OpenCVCxx.julia_to_cpp(kFold),OpenCVCxx.julia_to_cpp(Cgrid),OpenCVCxx.julia_to_cpp(gammaGrid),OpenCVCxx.julia_to_cpp(pGrid),OpenCVCxx.julia_to_cpp(nuGrid),OpenCVCxx.julia_to_cpp(coeffGrid),OpenCVCxx.julia_to_cpp(degreeGrid),OpenCVCxx.julia_to_cpp(balanced)))
end
trainAuto(cobj::Any, samples::UMat, layout::Int32, responses::UMat; kFold::Int32 = 10, Cgrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::C), gammaGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::GAMMA), pGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::P), nuGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::NU), coeffGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::COEF), degreeGrid::OpenCVCxx.Ptr{OpenCVCxx.ParamGrid} = SVM::getDefaultGridPtr(SVM::DEGREE), balanced::Bool = false) = trainAuto(cobj, samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced)

function getSupportVectors(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getSupportVectors(OpenCVCxx.julia_to_cpp(cobj)))
end
getSupportVectors(cobj::Any; ) = getSupportVectors(cobj)

function getUncompressedSupportVectors(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getUncompressedSupportVectors(OpenCVCxx.julia_to_cpp(cobj)))
end
getUncompressedSupportVectors(cobj::Any; ) = getUncompressedSupportVectors(cobj)

function getDecisionFunction(cobj::Any, i::Int32, alpha::Image, svidx::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getDecisionFunction(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(i),OpenCVCxx.julia_to_cpp(alpha),OpenCVCxx.julia_to_cpp(svidx)))
end
getDecisionFunction(cobj::Any, i::Int32; alpha::Image = Mat(), svidx::Image = Mat()) = getDecisionFunction(cobj, i, alpha, svidx)

function getDecisionFunction(cobj::Any, i::Int32, alpha::UMat, svidx::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getDecisionFunction(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(i),OpenCVCxx.julia_to_cpp(alpha),OpenCVCxx.julia_to_cpp(svidx)))
end
getDecisionFunction(cobj::Any, i::Int32; alpha::UMat = UMat(), svidx::UMat = UMat()) = getDecisionFunction(cobj, i, alpha, svidx)
function Base.getproperty(m::OpenCVCxx.EM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.EM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getClustersNumber(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getClustersNumber(OpenCVCxx.julia_to_cpp(cobj)))
end
getClustersNumber(cobj::Any; ) = getClustersNumber(cobj)

function setClustersNumber(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setClustersNumber(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setClustersNumber(cobj::Any, val::Int32; ) = setClustersNumber(cobj, val)

function getCovarianceMatrixType(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getCovarianceMatrixType(OpenCVCxx.julia_to_cpp(cobj)))
end
getCovarianceMatrixType(cobj::Any; ) = getCovarianceMatrixType(cobj)

function setCovarianceMatrixType(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setCovarianceMatrixType(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setCovarianceMatrixType(cobj::Any, val::Int32; ) = setCovarianceMatrixType(cobj, val)

function getTermCriteria(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getTermCriteria(OpenCVCxx.julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setTermCriteria(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function getWeights(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getWeights(OpenCVCxx.julia_to_cpp(cobj)))
end
getWeights(cobj::Any; ) = getWeights(cobj)

function getMeans(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getMeans(OpenCVCxx.julia_to_cpp(cobj)))
end
getMeans(cobj::Any; ) = getMeans(cobj)

function getCovs(cobj::Any, covs::Array{Image, 1})
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getCovs(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(covs)))
end
getCovs(cobj::Any; covs::Array{Image, 1} = Array{Image, 1}()) = getCovs(cobj, covs)

function getCovs(cobj::Any, covs::Array{Image, 1})
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getCovs(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(covs)))
end
getCovs(cobj::Any; covs::Array{Image, 1} = Array{Image, 1}()) = getCovs(cobj, covs)

function predict(cobj::Any, samples::Image, results::Image, flags::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(results),OpenCVCxx.julia_to_cpp(flags)))
end
predict(cobj::Any, samples::Image; results::Image = Mat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)

function predict(cobj::Any, samples::UMat, results::UMat, flags::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(results),OpenCVCxx.julia_to_cpp(flags)))
end
predict(cobj::Any, samples::UMat; results::UMat = UMat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)

function predict2(cobj::Any, sample::Image, probs::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict2(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(sample),OpenCVCxx.julia_to_cpp(probs)))
end
predict2(cobj::Any, sample::Image; probs::Image = Mat()) = predict2(cobj, sample, probs)

function predict2(cobj::Any, sample::UMat, probs::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict2(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(sample),OpenCVCxx.julia_to_cpp(probs)))
end
predict2(cobj::Any, sample::UMat; probs::UMat = UMat()) = predict2(cobj, sample, probs)

function trainEM(cobj::Any, samples::Image, logLikelihoods::Image, labels::Image, probs::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainEM(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(logLikelihoods),OpenCVCxx.julia_to_cpp(labels),OpenCVCxx.julia_to_cpp(probs)))
end
trainEM(cobj::Any, samples::Image; logLikelihoods::Image = Mat(), labels::Image = Mat(), probs::Image = Mat()) = trainEM(cobj, samples, logLikelihoods, labels, probs)

function trainEM(cobj::Any, samples::UMat, logLikelihoods::UMat, labels::UMat, probs::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainEM(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(logLikelihoods),OpenCVCxx.julia_to_cpp(labels),OpenCVCxx.julia_to_cpp(probs)))
end
trainEM(cobj::Any, samples::UMat; logLikelihoods::UMat = UMat(), labels::UMat = UMat(), probs::UMat = UMat()) = trainEM(cobj, samples, logLikelihoods, labels, probs)

function trainE(cobj::Any, samples::Image, means0::Image, covs0::Image, weights0::Image, logLikelihoods::Image, labels::Image, probs::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainE(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(means0),OpenCVCxx.julia_to_cpp(covs0),OpenCVCxx.julia_to_cpp(weights0),OpenCVCxx.julia_to_cpp(logLikelihoods),OpenCVCxx.julia_to_cpp(labels),OpenCVCxx.julia_to_cpp(probs)))
end
trainE(cobj::Any, samples::Image, means0::Image; covs0::Image = Mat(), weights0::Image = Mat(), logLikelihoods::Image = Mat(), labels::Image = Mat(), probs::Image = Mat()) = trainE(cobj, samples, means0, covs0, weights0, logLikelihoods, labels, probs)

function trainE(cobj::Any, samples::UMat, means0::UMat, covs0::UMat, weights0::UMat, logLikelihoods::UMat, labels::UMat, probs::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainE(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(means0),OpenCVCxx.julia_to_cpp(covs0),OpenCVCxx.julia_to_cpp(weights0),OpenCVCxx.julia_to_cpp(logLikelihoods),OpenCVCxx.julia_to_cpp(labels),OpenCVCxx.julia_to_cpp(probs)))
end
trainE(cobj::Any, samples::UMat, means0::UMat; covs0::UMat = UMat(), weights0::UMat = UMat(), logLikelihoods::UMat = UMat(), labels::UMat = UMat(), probs::UMat = UMat()) = trainE(cobj, samples, means0, covs0, weights0, logLikelihoods, labels, probs)

function trainM(cobj::Any, samples::Image, probs0::Image, logLikelihoods::Image, labels::Image, probs::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainM(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(probs0),OpenCVCxx.julia_to_cpp(logLikelihoods),OpenCVCxx.julia_to_cpp(labels),OpenCVCxx.julia_to_cpp(probs)))
end
trainM(cobj::Any, samples::Image, probs0::Image; logLikelihoods::Image = Mat(), labels::Image = Mat(), probs::Image = Mat()) = trainM(cobj, samples, probs0, logLikelihoods, labels, probs)

function trainM(cobj::Any, samples::UMat, probs0::UMat, logLikelihoods::UMat, labels::UMat, probs::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainM(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(probs0),OpenCVCxx.julia_to_cpp(logLikelihoods),OpenCVCxx.julia_to_cpp(labels),OpenCVCxx.julia_to_cpp(probs)))
end
trainM(cobj::Any, samples::UMat, probs0::UMat; logLikelihoods::UMat = UMat(), labels::UMat = UMat(), probs::UMat = UMat()) = trainM(cobj, samples, probs0, logLikelihoods, labels, probs)
function Base.getproperty(m::OpenCVCxx.DTrees, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.DTrees, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getMaxCategories(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMaxCategories(OpenCVCxx.julia_to_cpp(cobj)))
end
getMaxCategories(cobj::Any; ) = getMaxCategories(cobj)

function setMaxCategories(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMaxCategories(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setMaxCategories(cobj::Any, val::Int32; ) = setMaxCategories(cobj, val)

function getMaxDepth(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMaxDepth(OpenCVCxx.julia_to_cpp(cobj)))
end
getMaxDepth(cobj::Any; ) = getMaxDepth(cobj)

function setMaxDepth(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMaxDepth(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setMaxDepth(cobj::Any, val::Int32; ) = setMaxDepth(cobj, val)

function getMinSampleCount(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMinSampleCount(OpenCVCxx.julia_to_cpp(cobj)))
end
getMinSampleCount(cobj::Any; ) = getMinSampleCount(cobj)

function setMinSampleCount(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMinSampleCount(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setMinSampleCount(cobj::Any, val::Int32; ) = setMinSampleCount(cobj, val)

function getCVFolds(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getCVFolds(OpenCVCxx.julia_to_cpp(cobj)))
end
getCVFolds(cobj::Any; ) = getCVFolds(cobj)

function setCVFolds(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setCVFolds(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setCVFolds(cobj::Any, val::Int32; ) = setCVFolds(cobj, val)

function getUseSurrogates(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getUseSurrogates(OpenCVCxx.julia_to_cpp(cobj)))
end
getUseSurrogates(cobj::Any; ) = getUseSurrogates(cobj)

function setUseSurrogates(cobj::Any, val::Bool)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setUseSurrogates(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setUseSurrogates(cobj::Any, val::Bool; ) = setUseSurrogates(cobj, val)

function getUse1SERule(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getUse1SERule(OpenCVCxx.julia_to_cpp(cobj)))
end
getUse1SERule(cobj::Any; ) = getUse1SERule(cobj)

function setUse1SERule(cobj::Any, val::Bool)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setUse1SERule(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setUse1SERule(cobj::Any, val::Bool; ) = setUse1SERule(cobj, val)

function getTruncatePrunedTree(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getTruncatePrunedTree(OpenCVCxx.julia_to_cpp(cobj)))
end
getTruncatePrunedTree(cobj::Any; ) = getTruncatePrunedTree(cobj)

function setTruncatePrunedTree(cobj::Any, val::Bool)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setTruncatePrunedTree(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setTruncatePrunedTree(cobj::Any, val::Bool; ) = setTruncatePrunedTree(cobj, val)

function getRegressionAccuracy(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getRegressionAccuracy(OpenCVCxx.julia_to_cpp(cobj)))
end
getRegressionAccuracy(cobj::Any; ) = getRegressionAccuracy(cobj)

function setRegressionAccuracy(cobj::Any, val::Float32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setRegressionAccuracy(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setRegressionAccuracy(cobj::Any, val::Float32; ) = setRegressionAccuracy(cobj, val)

function getPriors(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getPriors(OpenCVCxx.julia_to_cpp(cobj)))
end
getPriors(cobj::Any; ) = getPriors(cobj)

function setPriors(cobj::Any, val::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setPriors(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setPriors(cobj::Any, val::Image; ) = setPriors(cobj, val)

function setPriors(cobj::Any, val::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setPriors(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setPriors(cobj::Any, val::Image; ) = setPriors(cobj, val)
function Base.getproperty(m::OpenCVCxx.RTrees, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.RTrees, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getCalculateVarImportance(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getCalculateVarImportance(OpenCVCxx.julia_to_cpp(cobj)))
end
getCalculateVarImportance(cobj::Any; ) = getCalculateVarImportance(cobj)

function setCalculateVarImportance(cobj::Any, val::Bool)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setCalculateVarImportance(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setCalculateVarImportance(cobj::Any, val::Bool; ) = setCalculateVarImportance(cobj, val)

function getActiveVarCount(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getActiveVarCount(OpenCVCxx.julia_to_cpp(cobj)))
end
getActiveVarCount(cobj::Any; ) = getActiveVarCount(cobj)

function setActiveVarCount(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setActiveVarCount(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setActiveVarCount(cobj::Any, val::Int32; ) = setActiveVarCount(cobj, val)

function getTermCriteria(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getTermCriteria(OpenCVCxx.julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setTermCriteria(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function getVarImportance(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getVarImportance(OpenCVCxx.julia_to_cpp(cobj)))
end
getVarImportance(cobj::Any; ) = getVarImportance(cobj)

function getVotes(cobj::Any, samples::Image, flags::Int32, results::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getVotes(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(flags),OpenCVCxx.julia_to_cpp(results)))
end
getVotes(cobj::Any, samples::Image, flags::Int32; results::Image = Mat()) = getVotes(cobj, samples, flags, results)

function getVotes(cobj::Any, samples::UMat, flags::Int32, results::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getVotes(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(flags),OpenCVCxx.julia_to_cpp(results)))
end
getVotes(cobj::Any, samples::UMat, flags::Int32; results::UMat = UMat()) = getVotes(cobj, samples, flags, results)
function Base.getproperty(m::OpenCVCxx.Boost, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.Boost, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getBoostType(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getBoostType(OpenCVCxx.julia_to_cpp(cobj)))
end
getBoostType(cobj::Any; ) = getBoostType(cobj)

function setBoostType(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setBoostType(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setBoostType(cobj::Any, val::Int32; ) = setBoostType(cobj, val)

function getWeakCount(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getWeakCount(OpenCVCxx.julia_to_cpp(cobj)))
end
getWeakCount(cobj::Any; ) = getWeakCount(cobj)

function setWeakCount(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setWeakCount(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setWeakCount(cobj::Any, val::Int32; ) = setWeakCount(cobj, val)

function getWeightTrimRate(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getWeightTrimRate(OpenCVCxx.julia_to_cpp(cobj)))
end
getWeightTrimRate(cobj::Any; ) = getWeightTrimRate(cobj)

function setWeightTrimRate(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setWeightTrimRate(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setWeightTrimRate(cobj::Any, val::Float64; ) = setWeightTrimRate(cobj, val)
function Base.getproperty(m::OpenCVCxx.ANN_MLP, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.ANN_MLP, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setTrainMethod(cobj::Any, method::Int32, param1::Float64, param2::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setTrainMethod(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(method),OpenCVCxx.julia_to_cpp(param1),OpenCVCxx.julia_to_cpp(param2)))
end
setTrainMethod(cobj::Any, method::Int32; param1::Float64 = 0, param2::Float64 = 0) = setTrainMethod(cobj, method, param1, param2)

function getTrainMethod(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getTrainMethod(OpenCVCxx.julia_to_cpp(cobj)))
end
getTrainMethod(cobj::Any; ) = getTrainMethod(cobj)

function setActivationFunction(cobj::Any, type::Int32, param1::Float64, param2::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setActivationFunction(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(type),OpenCVCxx.julia_to_cpp(param1),OpenCVCxx.julia_to_cpp(param2)))
end
setActivationFunction(cobj::Any, type::Int32; param1::Float64 = 0, param2::Float64 = 0) = setActivationFunction(cobj, type, param1, param2)

function setLayerSizes(cobj::Any, _layer_sizes::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setLayerSizes(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(_layer_sizes)))
end
setLayerSizes(cobj::Any, _layer_sizes::Image; ) = setLayerSizes(cobj, _layer_sizes)

function setLayerSizes(cobj::Any, _layer_sizes::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setLayerSizes(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(_layer_sizes)))
end
setLayerSizes(cobj::Any, _layer_sizes::UMat; ) = setLayerSizes(cobj, _layer_sizes)

function getLayerSizes(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getLayerSizes(OpenCVCxx.julia_to_cpp(cobj)))
end
getLayerSizes(cobj::Any; ) = getLayerSizes(cobj)

function getTermCriteria(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getTermCriteria(OpenCVCxx.julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setTermCriteria(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function getBackpropWeightScale(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getBackpropWeightScale(OpenCVCxx.julia_to_cpp(cobj)))
end
getBackpropWeightScale(cobj::Any; ) = getBackpropWeightScale(cobj)

function setBackpropWeightScale(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setBackpropWeightScale(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setBackpropWeightScale(cobj::Any, val::Float64; ) = setBackpropWeightScale(cobj, val)

function getBackpropMomentumScale(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getBackpropMomentumScale(OpenCVCxx.julia_to_cpp(cobj)))
end
getBackpropMomentumScale(cobj::Any; ) = getBackpropMomentumScale(cobj)

function setBackpropMomentumScale(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setBackpropMomentumScale(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setBackpropMomentumScale(cobj::Any, val::Float64; ) = setBackpropMomentumScale(cobj, val)

function getRpropDW0(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDW0(OpenCVCxx.julia_to_cpp(cobj)))
end
getRpropDW0(cobj::Any; ) = getRpropDW0(cobj)

function setRpropDW0(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDW0(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setRpropDW0(cobj::Any, val::Float64; ) = setRpropDW0(cobj, val)

function getRpropDWPlus(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWPlus(OpenCVCxx.julia_to_cpp(cobj)))
end
getRpropDWPlus(cobj::Any; ) = getRpropDWPlus(cobj)

function setRpropDWPlus(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWPlus(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setRpropDWPlus(cobj::Any, val::Float64; ) = setRpropDWPlus(cobj, val)

function getRpropDWMinus(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMinus(OpenCVCxx.julia_to_cpp(cobj)))
end
getRpropDWMinus(cobj::Any; ) = getRpropDWMinus(cobj)

function setRpropDWMinus(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMinus(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setRpropDWMinus(cobj::Any, val::Float64; ) = setRpropDWMinus(cobj, val)

function getRpropDWMin(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMin(OpenCVCxx.julia_to_cpp(cobj)))
end
getRpropDWMin(cobj::Any; ) = getRpropDWMin(cobj)

function setRpropDWMin(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMin(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setRpropDWMin(cobj::Any, val::Float64; ) = setRpropDWMin(cobj, val)

function getRpropDWMax(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMax(OpenCVCxx.julia_to_cpp(cobj)))
end
getRpropDWMax(cobj::Any; ) = getRpropDWMax(cobj)

function setRpropDWMax(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMax(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setRpropDWMax(cobj::Any, val::Float64; ) = setRpropDWMax(cobj, val)

function getAnnealInitialT(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealInitialT(OpenCVCxx.julia_to_cpp(cobj)))
end
getAnnealInitialT(cobj::Any; ) = getAnnealInitialT(cobj)

function setAnnealInitialT(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealInitialT(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setAnnealInitialT(cobj::Any, val::Float64; ) = setAnnealInitialT(cobj, val)

function getAnnealFinalT(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealFinalT(OpenCVCxx.julia_to_cpp(cobj)))
end
getAnnealFinalT(cobj::Any; ) = getAnnealFinalT(cobj)

function setAnnealFinalT(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealFinalT(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setAnnealFinalT(cobj::Any, val::Float64; ) = setAnnealFinalT(cobj, val)

function getAnnealCoolingRatio(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealCoolingRatio(OpenCVCxx.julia_to_cpp(cobj)))
end
getAnnealCoolingRatio(cobj::Any; ) = getAnnealCoolingRatio(cobj)

function setAnnealCoolingRatio(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealCoolingRatio(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setAnnealCoolingRatio(cobj::Any, val::Float64; ) = setAnnealCoolingRatio(cobj, val)

function getAnnealItePerStep(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealItePerStep(OpenCVCxx.julia_to_cpp(cobj)))
end
getAnnealItePerStep(cobj::Any; ) = getAnnealItePerStep(cobj)

function setAnnealItePerStep(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealItePerStep(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setAnnealItePerStep(cobj::Any, val::Int32; ) = setAnnealItePerStep(cobj, val)

function getWeights(cobj::Any, layerIdx::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getWeights(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(layerIdx)))
end
getWeights(cobj::Any, layerIdx::Int32; ) = getWeights(cobj, layerIdx)
function Base.getproperty(m::OpenCVCxx.LogisticRegression, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.LogisticRegression, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getLearningRate(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getLearningRate(OpenCVCxx.julia_to_cpp(cobj)))
end
getLearningRate(cobj::Any; ) = getLearningRate(cobj)

function setLearningRate(cobj::Any, val::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setLearningRate(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setLearningRate(cobj::Any, val::Float64; ) = setLearningRate(cobj, val)

function getIterations(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getIterations(OpenCVCxx.julia_to_cpp(cobj)))
end
getIterations(cobj::Any; ) = getIterations(cobj)

function setIterations(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setIterations(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setIterations(cobj::Any, val::Int32; ) = setIterations(cobj, val)

function getRegularization(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getRegularization(OpenCVCxx.julia_to_cpp(cobj)))
end
getRegularization(cobj::Any; ) = getRegularization(cobj)

function setRegularization(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setRegularization(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setRegularization(cobj::Any, val::Int32; ) = setRegularization(cobj, val)

function getTrainMethod(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getTrainMethod(OpenCVCxx.julia_to_cpp(cobj)))
end
getTrainMethod(cobj::Any; ) = getTrainMethod(cobj)

function setTrainMethod(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setTrainMethod(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setTrainMethod(cobj::Any, val::Int32; ) = setTrainMethod(cobj, val)

function getMiniBatchSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getMiniBatchSize(OpenCVCxx.julia_to_cpp(cobj)))
end
getMiniBatchSize(cobj::Any; ) = getMiniBatchSize(cobj)

function setMiniBatchSize(cobj::Any, val::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setMiniBatchSize(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setMiniBatchSize(cobj::Any, val::Int32; ) = setMiniBatchSize(cobj, val)

function getTermCriteria(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getTermCriteria(OpenCVCxx.julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setTermCriteria(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function predict(cobj::Any, samples::Image, results::Image, flags::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_predict(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(results),OpenCVCxx.julia_to_cpp(flags)))
end
predict(cobj::Any, samples::Image; results::Image = Mat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)

function predict(cobj::Any, samples::UMat, results::UMat, flags::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_predict(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(results),OpenCVCxx.julia_to_cpp(flags)))
end
predict(cobj::Any, samples::UMat; results::UMat = UMat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)

function get_learnt_thetas(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_get_learnt_thetas(OpenCVCxx.julia_to_cpp(cobj)))
end
get_learnt_thetas(cobj::Any; ) = get_learnt_thetas(cobj)
function Base.getproperty(m::OpenCVCxx.SVMSGD, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.SVMSGD, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getWeights(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getWeights(OpenCVCxx.julia_to_cpp(cobj)))
end
getWeights(cobj::Any; ) = getWeights(cobj)

function getShift(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getShift(OpenCVCxx.julia_to_cpp(cobj)))
end
getShift(cobj::Any; ) = getShift(cobj)

function setOptimalParameters(cobj::Any, svmsgdType::Int32, marginType::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setOptimalParameters(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(svmsgdType),OpenCVCxx.julia_to_cpp(marginType)))
end
setOptimalParameters(cobj::Any; svmsgdType::Int32 = SVMSGD::ASGD, marginType::Int32 = SVMSGD::SOFT_MARGIN) = setOptimalParameters(cobj, svmsgdType, marginType)

function getSvmsgdType(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getSvmsgdType(OpenCVCxx.julia_to_cpp(cobj)))
end
getSvmsgdType(cobj::Any; ) = getSvmsgdType(cobj)

function setSvmsgdType(cobj::Any, svmsgdType::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setSvmsgdType(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(svmsgdType)))
end
setSvmsgdType(cobj::Any, svmsgdType::Int32; ) = setSvmsgdType(cobj, svmsgdType)

function getMarginType(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getMarginType(OpenCVCxx.julia_to_cpp(cobj)))
end
getMarginType(cobj::Any; ) = getMarginType(cobj)

function setMarginType(cobj::Any, marginType::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setMarginType(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(marginType)))
end
setMarginType(cobj::Any, marginType::Int32; ) = setMarginType(cobj, marginType)

function getMarginRegularization(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getMarginRegularization(OpenCVCxx.julia_to_cpp(cobj)))
end
getMarginRegularization(cobj::Any; ) = getMarginRegularization(cobj)

function setMarginRegularization(cobj::Any, marginRegularization::Float32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setMarginRegularization(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(marginRegularization)))
end
setMarginRegularization(cobj::Any, marginRegularization::Float32; ) = setMarginRegularization(cobj, marginRegularization)

function getInitialStepSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getInitialStepSize(OpenCVCxx.julia_to_cpp(cobj)))
end
getInitialStepSize(cobj::Any; ) = getInitialStepSize(cobj)

function setInitialStepSize(cobj::Any, InitialStepSize::Float32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setInitialStepSize(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(InitialStepSize)))
end
setInitialStepSize(cobj::Any, InitialStepSize::Float32; ) = setInitialStepSize(cobj, InitialStepSize)

function getStepDecreasingPower(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getStepDecreasingPower(OpenCVCxx.julia_to_cpp(cobj)))
end
getStepDecreasingPower(cobj::Any; ) = getStepDecreasingPower(cobj)

function setStepDecreasingPower(cobj::Any, stepDecreasingPower::Float32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setStepDecreasingPower(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(stepDecreasingPower)))
end
setStepDecreasingPower(cobj::Any, stepDecreasingPower::Float32; ) = setStepDecreasingPower(cobj, stepDecreasingPower)

function getTermCriteria(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getTermCriteria(OpenCVCxx.julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setTermCriteria(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function ParamGrid_create(minVal::Float64, maxVal::Float64, logstep::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ParamGrid_create(OpenCVCxx.julia_to_cpp(minVal),OpenCVCxx.julia_to_cpp(maxVal),OpenCVCxx.julia_to_cpp(logstep)))
end
ParamGrid_create(; minVal::Float64 = 0., maxVal::Float64 = 0., logstep::Float64 = 1.) = ParamGrid_create(minVal, maxVal, logstep)

function TrainData_getSubVector(vec::Image, idx::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_getSubVector(OpenCVCxx.julia_to_cpp(vec),OpenCVCxx.julia_to_cpp(idx)))
end
TrainData_getSubVector(vec::Image, idx::Image; ) = TrainData_getSubVector(vec, idx)

function TrainData_getSubVector(vec::Image, idx::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_getSubVector(OpenCVCxx.julia_to_cpp(vec),OpenCVCxx.julia_to_cpp(idx)))
end
TrainData_getSubVector(vec::Image, idx::Image; ) = TrainData_getSubVector(vec, idx)

function TrainData_getSubMatrix(matrix::Image, idx::Image, layout::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_getSubMatrix(OpenCVCxx.julia_to_cpp(matrix),OpenCVCxx.julia_to_cpp(idx),OpenCVCxx.julia_to_cpp(layout)))
end
TrainData_getSubMatrix(matrix::Image, idx::Image, layout::Int32; ) = TrainData_getSubMatrix(matrix, idx, layout)

function TrainData_getSubMatrix(matrix::Image, idx::Image, layout::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_getSubMatrix(OpenCVCxx.julia_to_cpp(matrix),OpenCVCxx.julia_to_cpp(idx),OpenCVCxx.julia_to_cpp(layout)))
end
TrainData_getSubMatrix(matrix::Image, idx::Image, layout::Int32; ) = TrainData_getSubMatrix(matrix, idx, layout)

function TrainData_create(samples::Image, layout::Int32, responses::Image, varIdx::Image, sampleIdx::Image, sampleWeights::Image, varType::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_create(OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(layout),OpenCVCxx.julia_to_cpp(responses),OpenCVCxx.julia_to_cpp(varIdx),OpenCVCxx.julia_to_cpp(sampleIdx),OpenCVCxx.julia_to_cpp(sampleWeights),OpenCVCxx.julia_to_cpp(varType)))
end
TrainData_create(samples::Image, layout::Int32, responses::Image; varIdx::Image = Mat(), sampleIdx::Image = Mat(), sampleWeights::Image = Mat(), varType::Image = Mat()) = TrainData_create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType)

function TrainData_create(samples::UMat, layout::Int32, responses::UMat, varIdx::UMat, sampleIdx::UMat, sampleWeights::UMat, varType::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_TrainData_create(OpenCVCxx.julia_to_cpp(samples),OpenCVCxx.julia_to_cpp(layout),OpenCVCxx.julia_to_cpp(responses),OpenCVCxx.julia_to_cpp(varIdx),OpenCVCxx.julia_to_cpp(sampleIdx),OpenCVCxx.julia_to_cpp(sampleWeights),OpenCVCxx.julia_to_cpp(varType)))
end
TrainData_create(samples::UMat, layout::Int32, responses::UMat; varIdx::UMat = UMat(), sampleIdx::UMat = UMat(), sampleWeights::UMat = UMat(), varType::UMat = UMat()) = TrainData_create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType)

function NormalBayesClassifier_create()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_NormalBayesClassifier_create())
end
NormalBayesClassifier_create(; ) = NormalBayesClassifier_create()

function NormalBayesClassifier_load(filepath::String, nodeName::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_NormalBayesClassifier_load(OpenCVCxx.julia_to_cpp(filepath),OpenCVCxx.julia_to_cpp(nodeName)))
end
NormalBayesClassifier_load(filepath::String; nodeName::String = String()) = NormalBayesClassifier_load(filepath, nodeName)

function KNearest_create()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_create())
end
KNearest_create(; ) = KNearest_create()

function KNearest_load(filepath::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_KNearest_load(OpenCVCxx.julia_to_cpp(filepath)))
end
KNearest_load(filepath::String; ) = KNearest_load(filepath)

function SVM_getDefaultGridPtr(param_id::Int32)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_getDefaultGridPtr(OpenCVCxx.julia_to_cpp(param_id)))
end
SVM_getDefaultGridPtr(param_id::Int32; ) = SVM_getDefaultGridPtr(param_id)

function SVM_create()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_create())
end
SVM_create(; ) = SVM_create()

function SVM_load(filepath::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVM_load(OpenCVCxx.julia_to_cpp(filepath)))
end
SVM_load(filepath::String; ) = SVM_load(filepath)

function EM_create()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_create())
end
EM_create(; ) = EM_create()

function EM_load(filepath::String, nodeName::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_EM_load(OpenCVCxx.julia_to_cpp(filepath),OpenCVCxx.julia_to_cpp(nodeName)))
end
EM_load(filepath::String; nodeName::String = String()) = EM_load(filepath, nodeName)

function DTrees_create()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_create())
end
DTrees_create(; ) = DTrees_create()

function DTrees_load(filepath::String, nodeName::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_DTrees_load(OpenCVCxx.julia_to_cpp(filepath),OpenCVCxx.julia_to_cpp(nodeName)))
end
DTrees_load(filepath::String; nodeName::String = String()) = DTrees_load(filepath, nodeName)

function RTrees_create()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_RTrees_create())
end
RTrees_create(; ) = RTrees_create()

function RTrees_load(filepath::String, nodeName::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_RTrees_load(OpenCVCxx.julia_to_cpp(filepath),OpenCVCxx.julia_to_cpp(nodeName)))
end
RTrees_load(filepath::String; nodeName::String = String()) = RTrees_load(filepath, nodeName)

function Boost_create()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_Boost_create())
end
Boost_create(; ) = Boost_create()

function Boost_load(filepath::String, nodeName::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_Boost_load(OpenCVCxx.julia_to_cpp(filepath),OpenCVCxx.julia_to_cpp(nodeName)))
end
Boost_load(filepath::String; nodeName::String = String()) = Boost_load(filepath, nodeName)

function ANN_MLP_create()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_create())
end
ANN_MLP_create(; ) = ANN_MLP_create()

function ANN_MLP_load(filepath::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_ANN_MLP_load(OpenCVCxx.julia_to_cpp(filepath)))
end
ANN_MLP_load(filepath::String; ) = ANN_MLP_load(filepath)

function LogisticRegression_create()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_create())
end
LogisticRegression_create(; ) = LogisticRegression_create()

function LogisticRegression_load(filepath::String, nodeName::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_LogisticRegression_load(OpenCVCxx.julia_to_cpp(filepath),OpenCVCxx.julia_to_cpp(nodeName)))
end
LogisticRegression_load(filepath::String; nodeName::String = String()) = LogisticRegression_load(filepath, nodeName)

function SVMSGD_create()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_create())
end
SVMSGD_create(; ) = SVMSGD_create()

function SVMSGD_load(filepath::String, nodeName::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ml_cv_ml_SVMSGD_load(OpenCVCxx.julia_to_cpp(filepath),OpenCVCxx.julia_to_cpp(nodeName)))
end
SVMSGD_load(filepath::String; nodeName::String = String()) = SVMSGD_load(filepath, nodeName)



end