module cv_ml
import ..OpenCVCxx

function Base.getproperty(m::ParamGrid, s::Symbol)
    if s==:minVal
        return cpp_to_julia(jlopencv_ParamGrid_get_minVal(m))
    end
    if s==:maxVal
        return cpp_to_julia(jlopencv_ParamGrid_get_maxVal(m))
    end
    if s==:logStep
        return cpp_to_julia(jlopencv_ParamGrid_get_logStep(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ParamGrid, s::Symbol, v)
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::TrainData, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TrainData, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getLayout(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getLayout(julia_to_cpp(cobj, Any)))
end
getLayout(cobj::Any; ) = getLayout(cobj)

function getNTrainSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNTrainSamples(julia_to_cpp(cobj, Any)))
end
getNTrainSamples(cobj::Any; ) = getNTrainSamples(cobj)

function getNTestSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNTestSamples(julia_to_cpp(cobj, Any)))
end
getNTestSamples(cobj::Any; ) = getNTestSamples(cobj)

function getNSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNSamples(julia_to_cpp(cobj, Any)))
end
getNSamples(cobj::Any; ) = getNSamples(cobj)

function getNVars(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNVars(julia_to_cpp(cobj, Any)))
end
getNVars(cobj::Any; ) = getNVars(cobj)

function getNAllVars(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNAllVars(julia_to_cpp(cobj, Any)))
end
getNAllVars(cobj::Any; ) = getNAllVars(cobj)

function getSample(cobj::Any, varIdx::Image, sidx::Int32, buf::float)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSample(julia_to_cpp(cobj, Any),julia_to_cpp(varIdx, Image),julia_to_cpp(sidx, Int32),julia_to_cpp(buf, float*)))
end
getSample(cobj::Any, varIdx::Image, sidx::Int32, buf::float*; ) = getSample(cobj, varIdx, sidx, buf)

function getSample(cobj::Any, varIdx::UMat, sidx::Int32, buf::float)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSample(julia_to_cpp(cobj, Any),julia_to_cpp(varIdx, UMat),julia_to_cpp(sidx, Int32),julia_to_cpp(buf, float*)))
end
getSample(cobj::Any, varIdx::UMat, sidx::Int32, buf::float*; ) = getSample(cobj, varIdx, sidx, buf)

function getSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSamples(julia_to_cpp(cobj, Any)))
end
getSamples(cobj::Any; ) = getSamples(cobj)

function getMissing(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getMissing(julia_to_cpp(cobj, Any)))
end
getMissing(cobj::Any; ) = getMissing(cobj)

function getTrainSamples(cobj::Any, layout::Int32, compressSamples::Bool, compressVars::Bool)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSamples(julia_to_cpp(cobj, Any),julia_to_cpp(layout, Int32),julia_to_cpp(compressSamples, Bool),julia_to_cpp(compressVars, Bool)))
end
getTrainSamples(cobj::Any; layout::Int32 = ROW_SAMPLE, compressSamples::Bool = true, compressVars::Bool = true) = getTrainSamples(cobj, layout, compressSamples, compressVars)

function getTrainResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainResponses(julia_to_cpp(cobj, Any)))
end
getTrainResponses(cobj::Any; ) = getTrainResponses(cobj)

function getTrainNormCatResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainNormCatResponses(julia_to_cpp(cobj, Any)))
end
getTrainNormCatResponses(cobj::Any; ) = getTrainNormCatResponses(cobj)

function getTestResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestResponses(julia_to_cpp(cobj, Any)))
end
getTestResponses(cobj::Any; ) = getTestResponses(cobj)

function getTestNormCatResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestNormCatResponses(julia_to_cpp(cobj, Any)))
end
getTestNormCatResponses(cobj::Any; ) = getTestNormCatResponses(cobj)

function getResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getResponses(julia_to_cpp(cobj, Any)))
end
getResponses(cobj::Any; ) = getResponses(cobj)

function getNormCatResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNormCatResponses(julia_to_cpp(cobj, Any)))
end
getNormCatResponses(cobj::Any; ) = getNormCatResponses(cobj)

function getSampleWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSampleWeights(julia_to_cpp(cobj, Any)))
end
getSampleWeights(cobj::Any; ) = getSampleWeights(cobj)

function getTrainSampleWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSampleWeights(julia_to_cpp(cobj, Any)))
end
getTrainSampleWeights(cobj::Any; ) = getTrainSampleWeights(cobj)

function getTestSampleWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSampleWeights(julia_to_cpp(cobj, Any)))
end
getTestSampleWeights(cobj::Any; ) = getTestSampleWeights(cobj)

function getVarIdx(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarIdx(julia_to_cpp(cobj, Any)))
end
getVarIdx(cobj::Any; ) = getVarIdx(cobj)

function getVarType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarType(julia_to_cpp(cobj, Any)))
end
getVarType(cobj::Any; ) = getVarType(cobj)

function getVarSymbolFlags(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarSymbolFlags(julia_to_cpp(cobj, Any)))
end
getVarSymbolFlags(cobj::Any; ) = getVarSymbolFlags(cobj)

function getResponseType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getResponseType(julia_to_cpp(cobj, Any)))
end
getResponseType(cobj::Any; ) = getResponseType(cobj)

function getTrainSampleIdx(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSampleIdx(julia_to_cpp(cobj, Any)))
end
getTrainSampleIdx(cobj::Any; ) = getTrainSampleIdx(cobj)

function getTestSampleIdx(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSampleIdx(julia_to_cpp(cobj, Any)))
end
getTestSampleIdx(cobj::Any; ) = getTestSampleIdx(cobj)

function getValues(cobj::Any, vi::Int32, sidx::Image, values::float)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getValues(julia_to_cpp(cobj, Any),julia_to_cpp(vi, Int32),julia_to_cpp(sidx, Image),julia_to_cpp(values, float*)))
end
getValues(cobj::Any, vi::Int32, sidx::Image, values::float*; ) = getValues(cobj, vi, sidx, values)

function getValues(cobj::Any, vi::Int32, sidx::UMat, values::float)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getValues(julia_to_cpp(cobj, Any),julia_to_cpp(vi, Int32),julia_to_cpp(sidx, UMat),julia_to_cpp(values, float*)))
end
getValues(cobj::Any, vi::Int32, sidx::UMat, values::float*; ) = getValues(cobj, vi, sidx, values)

function getDefaultSubstValues(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getDefaultSubstValues(julia_to_cpp(cobj, Any)))
end
getDefaultSubstValues(cobj::Any; ) = getDefaultSubstValues(cobj)

function getCatCount(cobj::Any, vi::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatCount(julia_to_cpp(cobj, Any),julia_to_cpp(vi, Int32)))
end
getCatCount(cobj::Any, vi::Int32; ) = getCatCount(cobj, vi)

function getClassLabels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getClassLabels(julia_to_cpp(cobj, Any)))
end
getClassLabels(cobj::Any; ) = getClassLabels(cobj)

function getCatOfs(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatOfs(julia_to_cpp(cobj, Any)))
end
getCatOfs(cobj::Any; ) = getCatOfs(cobj)

function getCatMap(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatMap(julia_to_cpp(cobj, Any)))
end
getCatMap(cobj::Any; ) = getCatMap(cobj)

function setTrainTestSplit(cobj::Any, count::Int32, shuffle::Bool)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_setTrainTestSplit(julia_to_cpp(cobj, Any),julia_to_cpp(count, Int32),julia_to_cpp(shuffle, Bool)))
end
setTrainTestSplit(cobj::Any, count::Int32; shuffle::Bool = true) = setTrainTestSplit(cobj, count, shuffle)

function setTrainTestSplitRatio(cobj::Any, ratio::Float64, shuffle::Bool)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_setTrainTestSplitRatio(julia_to_cpp(cobj, Any),julia_to_cpp(ratio, Float64),julia_to_cpp(shuffle, Bool)))
end
setTrainTestSplitRatio(cobj::Any, ratio::Float64; shuffle::Bool = true) = setTrainTestSplitRatio(cobj, ratio, shuffle)

function shuffleTrainTest(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_shuffleTrainTest(julia_to_cpp(cobj, Any)))
end
shuffleTrainTest(cobj::Any; ) = shuffleTrainTest(cobj)

function getTestSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSamples(julia_to_cpp(cobj, Any)))
end
getTestSamples(cobj::Any; ) = getTestSamples(cobj)

function getNames(cobj::Any, names::Array{String, 1})
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNames(julia_to_cpp(cobj, Any),julia_to_cpp(names, Array{String, 1})))
end
getNames(cobj::Any, names::Array{String, 1}; ) = getNames(cobj, names)
function Base.getproperty(m::StatModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::StatModel, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getVarCount(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_getVarCount(julia_to_cpp(cobj, Any)))
end
getVarCount(cobj::Any; ) = getVarCount(cobj)

function empty(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_empty(julia_to_cpp(cobj, Any)))
end
empty(cobj::Any; ) = empty(cobj)

function isTrained(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_isTrained(julia_to_cpp(cobj, Any)))
end
isTrained(cobj::Any; ) = isTrained(cobj)

function isClassifier(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_isClassifier(julia_to_cpp(cobj, Any)))
end
isClassifier(cobj::Any; ) = isClassifier(cobj)

function train(cobj::Any, trainData::Ptr{TrainData}, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_train(julia_to_cpp(cobj, Any),julia_to_cpp(trainData, Ptr{TrainData}),julia_to_cpp(flags, Int32)))
end
train(cobj::Any, trainData::Ptr{TrainData}; flags::Int32 = 0) = train(cobj, trainData, flags)

function train(cobj::Any, samples::Image, layout::Int32, responses::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_train(julia_to_cpp(cobj, Any),julia_to_cpp(samples, Image),julia_to_cpp(layout, Int32),julia_to_cpp(responses, Image)))
end
train(cobj::Any, samples::Image, layout::Int32, responses::Image; ) = train(cobj, samples, layout, responses)

function train(cobj::Any, samples::UMat, layout::Int32, responses::UMat)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_train(julia_to_cpp(cobj, Any),julia_to_cpp(samples, UMat),julia_to_cpp(layout, Int32),julia_to_cpp(responses, UMat)))
end
train(cobj::Any, samples::UMat, layout::Int32, responses::UMat; ) = train(cobj, samples, layout, responses)

function calcError(cobj::Any, data::Ptr{TrainData}, test::Bool, resp::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_calcError(julia_to_cpp(cobj, Any),julia_to_cpp(data, Ptr{TrainData}),julia_to_cpp(test, Bool),julia_to_cpp(resp, Image)))
end
calcError(cobj::Any, data::Ptr{TrainData}, test::Bool; resp::Image = Mat()) = calcError(cobj, data, test, resp)

function calcError(cobj::Any, data::Ptr{TrainData}, test::Bool, resp::UMat)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_calcError(julia_to_cpp(cobj, Any),julia_to_cpp(data, Ptr{TrainData}),julia_to_cpp(test, Bool),julia_to_cpp(resp, UMat)))
end
calcError(cobj::Any, data::Ptr{TrainData}, test::Bool; resp::UMat = UMat()) = calcError(cobj, data, test, resp)

function predict(cobj::Any, samples::Image, results::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_predict(julia_to_cpp(cobj, Any),julia_to_cpp(samples, Image),julia_to_cpp(results, Image),julia_to_cpp(flags, Int32)))
end
predict(cobj::Any, samples::Image; results::Image = Mat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)

function predict(cobj::Any, samples::UMat, results::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_predict(julia_to_cpp(cobj, Any),julia_to_cpp(samples, UMat),julia_to_cpp(results, UMat),julia_to_cpp(flags, Int32)))
end
predict(cobj::Any, samples::UMat; results::UMat = UMat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)
function Base.getproperty(m::NormalBayesClassifier, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::NormalBayesClassifier, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function predictProb(cobj::Any, inputs::Image, outputs::Image, outputProbs::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_NormalBayesClassifier_cv_ml_NormalBayesClassifier_predictProb(julia_to_cpp(cobj, Any),julia_to_cpp(inputs, Image),julia_to_cpp(outputs, Image),julia_to_cpp(outputProbs, Image),julia_to_cpp(flags, Int32)))
end
predictProb(cobj::Any, inputs::Image; outputs::Image = Mat(), outputProbs::Image = Mat(), flags::Int32 = 0) = predictProb(cobj, inputs, outputs, outputProbs, flags)

function predictProb(cobj::Any, inputs::UMat, outputs::UMat, outputProbs::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_NormalBayesClassifier_cv_ml_NormalBayesClassifier_predictProb(julia_to_cpp(cobj, Any),julia_to_cpp(inputs, UMat),julia_to_cpp(outputs, UMat),julia_to_cpp(outputProbs, UMat),julia_to_cpp(flags, Int32)))
end
predictProb(cobj::Any, inputs::UMat; outputs::UMat = UMat(), outputProbs::UMat = UMat(), flags::Int32 = 0) = predictProb(cobj, inputs, outputs, outputProbs, flags)
function Base.getproperty(m::KNearest, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KNearest, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultK(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getDefaultK(julia_to_cpp(cobj, Any)))
end
getDefaultK(cobj::Any; ) = getDefaultK(cobj)

function setDefaultK(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setDefaultK(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setDefaultK(cobj::Any, val::Int32; ) = setDefaultK(cobj, val)

function getIsClassifier(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getIsClassifier(julia_to_cpp(cobj, Any)))
end
getIsClassifier(cobj::Any; ) = getIsClassifier(cobj)

function setIsClassifier(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setIsClassifier(julia_to_cpp(cobj, Any),julia_to_cpp(val, Bool)))
end
setIsClassifier(cobj::Any, val::Bool; ) = setIsClassifier(cobj, val)

function getEmax(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getEmax(julia_to_cpp(cobj, Any)))
end
getEmax(cobj::Any; ) = getEmax(cobj)

function setEmax(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setEmax(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setEmax(cobj::Any, val::Int32; ) = setEmax(cobj, val)

function getAlgorithmType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getAlgorithmType(julia_to_cpp(cobj, Any)))
end
getAlgorithmType(cobj::Any; ) = getAlgorithmType(cobj)

function setAlgorithmType(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setAlgorithmType(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setAlgorithmType(cobj::Any, val::Int32; ) = setAlgorithmType(cobj, val)

function findNearest(cobj::Any, samples::Image, k::Int32, results::Image, neighborResponses::Image, dist::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_findNearest(julia_to_cpp(cobj, Any),julia_to_cpp(samples, Image),julia_to_cpp(k, Int32),julia_to_cpp(results, Image),julia_to_cpp(neighborResponses, Image),julia_to_cpp(dist, Image)))
end
findNearest(cobj::Any, samples::Image, k::Int32; results::Image = Mat(), neighborResponses::Image = Mat(), dist::Image = Mat()) = findNearest(cobj, samples, k, results, neighborResponses, dist)

function findNearest(cobj::Any, samples::UMat, k::Int32, results::UMat, neighborResponses::UMat, dist::UMat)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_findNearest(julia_to_cpp(cobj, Any),julia_to_cpp(samples, UMat),julia_to_cpp(k, Int32),julia_to_cpp(results, UMat),julia_to_cpp(neighborResponses, UMat),julia_to_cpp(dist, UMat)))
end
findNearest(cobj::Any, samples::UMat, k::Int32; results::UMat = UMat(), neighborResponses::UMat = UMat(), dist::UMat = UMat()) = findNearest(cobj, samples, k, results, neighborResponses, dist)
function Base.getproperty(m::SVM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SVM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getType(julia_to_cpp(cobj, Any)))
end
getType(cobj::Any; ) = getType(cobj)

function setType(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setType(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setType(cobj::Any, val::Int32; ) = setType(cobj, val)

function getGamma(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getGamma(julia_to_cpp(cobj, Any)))
end
getGamma(cobj::Any; ) = getGamma(cobj)

function setGamma(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setGamma(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setGamma(cobj::Any, val::Float64; ) = setGamma(cobj, val)

function getCoef0(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getCoef0(julia_to_cpp(cobj, Any)))
end
getCoef0(cobj::Any; ) = getCoef0(cobj)

function setCoef0(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setCoef0(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setCoef0(cobj::Any, val::Float64; ) = setCoef0(cobj, val)

function getDegree(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getDegree(julia_to_cpp(cobj, Any)))
end
getDegree(cobj::Any; ) = getDegree(cobj)

function setDegree(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setDegree(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setDegree(cobj::Any, val::Float64; ) = setDegree(cobj, val)

function getC(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getC(julia_to_cpp(cobj, Any)))
end
getC(cobj::Any; ) = getC(cobj)

function setC(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setC(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setC(cobj::Any, val::Float64; ) = setC(cobj, val)

function getNu(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getNu(julia_to_cpp(cobj, Any)))
end
getNu(cobj::Any; ) = getNu(cobj)

function setNu(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setNu(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setNu(cobj::Any, val::Float64; ) = setNu(cobj, val)

function getP(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getP(julia_to_cpp(cobj, Any)))
end
getP(cobj::Any; ) = getP(cobj)

function setP(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setP(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setP(cobj::Any, val::Float64; ) = setP(cobj, val)

function getClassWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getClassWeights(julia_to_cpp(cobj, Any)))
end
getClassWeights(cobj::Any; ) = getClassWeights(cobj)

function setClassWeights(cobj::Any, val::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setClassWeights(julia_to_cpp(cobj, Any),julia_to_cpp(val, Image)))
end
setClassWeights(cobj::Any, val::Image; ) = setClassWeights(cobj, val)

function setClassWeights(cobj::Any, val::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setClassWeights(julia_to_cpp(cobj, Any),julia_to_cpp(val, Image)))
end
setClassWeights(cobj::Any, val::Image; ) = setClassWeights(cobj, val)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getTermCriteria(julia_to_cpp(cobj, Any)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setTermCriteria(julia_to_cpp(cobj, Any),julia_to_cpp(val, TermCriteria)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function getKernelType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getKernelType(julia_to_cpp(cobj, Any)))
end
getKernelType(cobj::Any; ) = getKernelType(cobj)

function setKernel(cobj::Any, kernelType::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setKernel(julia_to_cpp(cobj, Any),julia_to_cpp(kernelType, Int32)))
end
setKernel(cobj::Any, kernelType::Int32; ) = setKernel(cobj, kernelType)

function trainAuto(cobj::Any, samples::Image, layout::Int32, responses::Image, kFold::Int32, Cgrid::Ptr{ParamGrid}, gammaGrid::Ptr{ParamGrid}, pGrid::Ptr{ParamGrid}, nuGrid::Ptr{ParamGrid}, coeffGrid::Ptr{ParamGrid}, degreeGrid::Ptr{ParamGrid}, balanced::Bool)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_trainAuto(julia_to_cpp(cobj, Any),julia_to_cpp(samples, Image),julia_to_cpp(layout, Int32),julia_to_cpp(responses, Image),julia_to_cpp(kFold, Int32),julia_to_cpp(Cgrid, Ptr{ParamGrid}),julia_to_cpp(gammaGrid, Ptr{ParamGrid}),julia_to_cpp(pGrid, Ptr{ParamGrid}),julia_to_cpp(nuGrid, Ptr{ParamGrid}),julia_to_cpp(coeffGrid, Ptr{ParamGrid}),julia_to_cpp(degreeGrid, Ptr{ParamGrid}),julia_to_cpp(balanced, Bool)))
end
trainAuto(cobj::Any, samples::Image, layout::Int32, responses::Image; kFold::Int32 = 10, Cgrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::C), gammaGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::GAMMA), pGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::P), nuGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::NU), coeffGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::COEF), degreeGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::DEGREE), balanced::Bool = false) = trainAuto(cobj, samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced)

function trainAuto(cobj::Any, samples::UMat, layout::Int32, responses::UMat, kFold::Int32, Cgrid::Ptr{ParamGrid}, gammaGrid::Ptr{ParamGrid}, pGrid::Ptr{ParamGrid}, nuGrid::Ptr{ParamGrid}, coeffGrid::Ptr{ParamGrid}, degreeGrid::Ptr{ParamGrid}, balanced::Bool)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_trainAuto(julia_to_cpp(cobj, Any),julia_to_cpp(samples, UMat),julia_to_cpp(layout, Int32),julia_to_cpp(responses, UMat),julia_to_cpp(kFold, Int32),julia_to_cpp(Cgrid, Ptr{ParamGrid}),julia_to_cpp(gammaGrid, Ptr{ParamGrid}),julia_to_cpp(pGrid, Ptr{ParamGrid}),julia_to_cpp(nuGrid, Ptr{ParamGrid}),julia_to_cpp(coeffGrid, Ptr{ParamGrid}),julia_to_cpp(degreeGrid, Ptr{ParamGrid}),julia_to_cpp(balanced, Bool)))
end
trainAuto(cobj::Any, samples::UMat, layout::Int32, responses::UMat; kFold::Int32 = 10, Cgrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::C), gammaGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::GAMMA), pGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::P), nuGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::NU), coeffGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::COEF), degreeGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::DEGREE), balanced::Bool = false) = trainAuto(cobj, samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced)

function getSupportVectors(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getSupportVectors(julia_to_cpp(cobj, Any)))
end
getSupportVectors(cobj::Any; ) = getSupportVectors(cobj)

function getUncompressedSupportVectors(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getUncompressedSupportVectors(julia_to_cpp(cobj, Any)))
end
getUncompressedSupportVectors(cobj::Any; ) = getUncompressedSupportVectors(cobj)

function getDecisionFunction(cobj::Any, i::Int32, alpha::Image, svidx::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getDecisionFunction(julia_to_cpp(cobj, Any),julia_to_cpp(i, Int32),julia_to_cpp(alpha, Image),julia_to_cpp(svidx, Image)))
end
getDecisionFunction(cobj::Any, i::Int32; alpha::Image = Mat(), svidx::Image = Mat()) = getDecisionFunction(cobj, i, alpha, svidx)

function getDecisionFunction(cobj::Any, i::Int32, alpha::UMat, svidx::UMat)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getDecisionFunction(julia_to_cpp(cobj, Any),julia_to_cpp(i, Int32),julia_to_cpp(alpha, UMat),julia_to_cpp(svidx, UMat)))
end
getDecisionFunction(cobj::Any, i::Int32; alpha::UMat = UMat(), svidx::UMat = UMat()) = getDecisionFunction(cobj, i, alpha, svidx)
function Base.getproperty(m::EM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::EM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getClustersNumber(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getClustersNumber(julia_to_cpp(cobj, Any)))
end
getClustersNumber(cobj::Any; ) = getClustersNumber(cobj)

function setClustersNumber(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setClustersNumber(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setClustersNumber(cobj::Any, val::Int32; ) = setClustersNumber(cobj, val)

function getCovarianceMatrixType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getCovarianceMatrixType(julia_to_cpp(cobj, Any)))
end
getCovarianceMatrixType(cobj::Any; ) = getCovarianceMatrixType(cobj)

function setCovarianceMatrixType(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setCovarianceMatrixType(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setCovarianceMatrixType(cobj::Any, val::Int32; ) = setCovarianceMatrixType(cobj, val)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getTermCriteria(julia_to_cpp(cobj, Any)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setTermCriteria(julia_to_cpp(cobj, Any),julia_to_cpp(val, TermCriteria)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function getWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getWeights(julia_to_cpp(cobj, Any)))
end
getWeights(cobj::Any; ) = getWeights(cobj)

function getMeans(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getMeans(julia_to_cpp(cobj, Any)))
end
getMeans(cobj::Any; ) = getMeans(cobj)

function getCovs(cobj::Any, covs::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getCovs(julia_to_cpp(cobj, Any),julia_to_cpp(covs, Array{Image, 1})))
end
getCovs(cobj::Any; covs::Array{Image, 1} = Array{Image, 1}()) = getCovs(cobj, covs)

function getCovs(cobj::Any, covs::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getCovs(julia_to_cpp(cobj, Any),julia_to_cpp(covs, Array{Image, 1})))
end
getCovs(cobj::Any; covs::Array{Image, 1} = Array{Image, 1}()) = getCovs(cobj, covs)

function predict(cobj::Any, samples::Image, results::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict(julia_to_cpp(cobj, Any),julia_to_cpp(samples, Image),julia_to_cpp(results, Image),julia_to_cpp(flags, Int32)))
end
predict(cobj::Any, samples::Image; results::Image = Mat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)

function predict(cobj::Any, samples::UMat, results::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict(julia_to_cpp(cobj, Any),julia_to_cpp(samples, UMat),julia_to_cpp(results, UMat),julia_to_cpp(flags, Int32)))
end
predict(cobj::Any, samples::UMat; results::UMat = UMat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)

function predict2(cobj::Any, sample::Image, probs::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict2(julia_to_cpp(cobj, Any),julia_to_cpp(sample, Image),julia_to_cpp(probs, Image)))
end
predict2(cobj::Any, sample::Image; probs::Image = Mat()) = predict2(cobj, sample, probs)

function predict2(cobj::Any, sample::UMat, probs::UMat)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict2(julia_to_cpp(cobj, Any),julia_to_cpp(sample, UMat),julia_to_cpp(probs, UMat)))
end
predict2(cobj::Any, sample::UMat; probs::UMat = UMat()) = predict2(cobj, sample, probs)

function trainEM(cobj::Any, samples::Image, logLikelihoods::Image, labels::Image, probs::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainEM(julia_to_cpp(cobj, Any),julia_to_cpp(samples, Image),julia_to_cpp(logLikelihoods, Image),julia_to_cpp(labels, Image),julia_to_cpp(probs, Image)))
end
trainEM(cobj::Any, samples::Image; logLikelihoods::Image = Mat(), labels::Image = Mat(), probs::Image = Mat()) = trainEM(cobj, samples, logLikelihoods, labels, probs)

function trainEM(cobj::Any, samples::UMat, logLikelihoods::UMat, labels::UMat, probs::UMat)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainEM(julia_to_cpp(cobj, Any),julia_to_cpp(samples, UMat),julia_to_cpp(logLikelihoods, UMat),julia_to_cpp(labels, UMat),julia_to_cpp(probs, UMat)))
end
trainEM(cobj::Any, samples::UMat; logLikelihoods::UMat = UMat(), labels::UMat = UMat(), probs::UMat = UMat()) = trainEM(cobj, samples, logLikelihoods, labels, probs)

function trainE(cobj::Any, samples::Image, means0::Image, covs0::Image, weights0::Image, logLikelihoods::Image, labels::Image, probs::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainE(julia_to_cpp(cobj, Any),julia_to_cpp(samples, Image),julia_to_cpp(means0, Image),julia_to_cpp(covs0, Image),julia_to_cpp(weights0, Image),julia_to_cpp(logLikelihoods, Image),julia_to_cpp(labels, Image),julia_to_cpp(probs, Image)))
end
trainE(cobj::Any, samples::Image, means0::Image; covs0::Image = Mat(), weights0::Image = Mat(), logLikelihoods::Image = Mat(), labels::Image = Mat(), probs::Image = Mat()) = trainE(cobj, samples, means0, covs0, weights0, logLikelihoods, labels, probs)

function trainE(cobj::Any, samples::UMat, means0::UMat, covs0::UMat, weights0::UMat, logLikelihoods::UMat, labels::UMat, probs::UMat)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainE(julia_to_cpp(cobj, Any),julia_to_cpp(samples, UMat),julia_to_cpp(means0, UMat),julia_to_cpp(covs0, UMat),julia_to_cpp(weights0, UMat),julia_to_cpp(logLikelihoods, UMat),julia_to_cpp(labels, UMat),julia_to_cpp(probs, UMat)))
end
trainE(cobj::Any, samples::UMat, means0::UMat; covs0::UMat = UMat(), weights0::UMat = UMat(), logLikelihoods::UMat = UMat(), labels::UMat = UMat(), probs::UMat = UMat()) = trainE(cobj, samples, means0, covs0, weights0, logLikelihoods, labels, probs)

function trainM(cobj::Any, samples::Image, probs0::Image, logLikelihoods::Image, labels::Image, probs::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainM(julia_to_cpp(cobj, Any),julia_to_cpp(samples, Image),julia_to_cpp(probs0, Image),julia_to_cpp(logLikelihoods, Image),julia_to_cpp(labels, Image),julia_to_cpp(probs, Image)))
end
trainM(cobj::Any, samples::Image, probs0::Image; logLikelihoods::Image = Mat(), labels::Image = Mat(), probs::Image = Mat()) = trainM(cobj, samples, probs0, logLikelihoods, labels, probs)

function trainM(cobj::Any, samples::UMat, probs0::UMat, logLikelihoods::UMat, labels::UMat, probs::UMat)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainM(julia_to_cpp(cobj, Any),julia_to_cpp(samples, UMat),julia_to_cpp(probs0, UMat),julia_to_cpp(logLikelihoods, UMat),julia_to_cpp(labels, UMat),julia_to_cpp(probs, UMat)))
end
trainM(cobj::Any, samples::UMat, probs0::UMat; logLikelihoods::UMat = UMat(), labels::UMat = UMat(), probs::UMat = UMat()) = trainM(cobj, samples, probs0, logLikelihoods, labels, probs)
function Base.getproperty(m::DTrees, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DTrees, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getMaxCategories(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMaxCategories(julia_to_cpp(cobj, Any)))
end
getMaxCategories(cobj::Any; ) = getMaxCategories(cobj)

function setMaxCategories(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMaxCategories(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setMaxCategories(cobj::Any, val::Int32; ) = setMaxCategories(cobj, val)

function getMaxDepth(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMaxDepth(julia_to_cpp(cobj, Any)))
end
getMaxDepth(cobj::Any; ) = getMaxDepth(cobj)

function setMaxDepth(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMaxDepth(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setMaxDepth(cobj::Any, val::Int32; ) = setMaxDepth(cobj, val)

function getMinSampleCount(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMinSampleCount(julia_to_cpp(cobj, Any)))
end
getMinSampleCount(cobj::Any; ) = getMinSampleCount(cobj)

function setMinSampleCount(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMinSampleCount(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setMinSampleCount(cobj::Any, val::Int32; ) = setMinSampleCount(cobj, val)

function getCVFolds(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getCVFolds(julia_to_cpp(cobj, Any)))
end
getCVFolds(cobj::Any; ) = getCVFolds(cobj)

function setCVFolds(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setCVFolds(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setCVFolds(cobj::Any, val::Int32; ) = setCVFolds(cobj, val)

function getUseSurrogates(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getUseSurrogates(julia_to_cpp(cobj, Any)))
end
getUseSurrogates(cobj::Any; ) = getUseSurrogates(cobj)

function setUseSurrogates(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setUseSurrogates(julia_to_cpp(cobj, Any),julia_to_cpp(val, Bool)))
end
setUseSurrogates(cobj::Any, val::Bool; ) = setUseSurrogates(cobj, val)

function getUse1SERule(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getUse1SERule(julia_to_cpp(cobj, Any)))
end
getUse1SERule(cobj::Any; ) = getUse1SERule(cobj)

function setUse1SERule(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setUse1SERule(julia_to_cpp(cobj, Any),julia_to_cpp(val, Bool)))
end
setUse1SERule(cobj::Any, val::Bool; ) = setUse1SERule(cobj, val)

function getTruncatePrunedTree(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getTruncatePrunedTree(julia_to_cpp(cobj, Any)))
end
getTruncatePrunedTree(cobj::Any; ) = getTruncatePrunedTree(cobj)

function setTruncatePrunedTree(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setTruncatePrunedTree(julia_to_cpp(cobj, Any),julia_to_cpp(val, Bool)))
end
setTruncatePrunedTree(cobj::Any, val::Bool; ) = setTruncatePrunedTree(cobj, val)

function getRegressionAccuracy(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getRegressionAccuracy(julia_to_cpp(cobj, Any)))
end
getRegressionAccuracy(cobj::Any; ) = getRegressionAccuracy(cobj)

function setRegressionAccuracy(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setRegressionAccuracy(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float32)))
end
setRegressionAccuracy(cobj::Any, val::Float32; ) = setRegressionAccuracy(cobj, val)

function getPriors(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getPriors(julia_to_cpp(cobj, Any)))
end
getPriors(cobj::Any; ) = getPriors(cobj)

function setPriors(cobj::Any, val::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setPriors(julia_to_cpp(cobj, Any),julia_to_cpp(val, Image)))
end
setPriors(cobj::Any, val::Image; ) = setPriors(cobj, val)

function setPriors(cobj::Any, val::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setPriors(julia_to_cpp(cobj, Any),julia_to_cpp(val, Image)))
end
setPriors(cobj::Any, val::Image; ) = setPriors(cobj, val)
function Base.getproperty(m::RTrees, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::RTrees, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getCalculateVarImportance(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getCalculateVarImportance(julia_to_cpp(cobj, Any)))
end
getCalculateVarImportance(cobj::Any; ) = getCalculateVarImportance(cobj)

function setCalculateVarImportance(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setCalculateVarImportance(julia_to_cpp(cobj, Any),julia_to_cpp(val, Bool)))
end
setCalculateVarImportance(cobj::Any, val::Bool; ) = setCalculateVarImportance(cobj, val)

function getActiveVarCount(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getActiveVarCount(julia_to_cpp(cobj, Any)))
end
getActiveVarCount(cobj::Any; ) = getActiveVarCount(cobj)

function setActiveVarCount(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setActiveVarCount(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setActiveVarCount(cobj::Any, val::Int32; ) = setActiveVarCount(cobj, val)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getTermCriteria(julia_to_cpp(cobj, Any)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setTermCriteria(julia_to_cpp(cobj, Any),julia_to_cpp(val, TermCriteria)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function getVarImportance(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getVarImportance(julia_to_cpp(cobj, Any)))
end
getVarImportance(cobj::Any; ) = getVarImportance(cobj)

function getVotes(cobj::Any, samples::Image, flags::Int32, results::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getVotes(julia_to_cpp(cobj, Any),julia_to_cpp(samples, Image),julia_to_cpp(flags, Int32),julia_to_cpp(results, Image)))
end
getVotes(cobj::Any, samples::Image, flags::Int32; results::Image = Mat()) = getVotes(cobj, samples, flags, results)

function getVotes(cobj::Any, samples::UMat, flags::Int32, results::UMat)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getVotes(julia_to_cpp(cobj, Any),julia_to_cpp(samples, UMat),julia_to_cpp(flags, Int32),julia_to_cpp(results, UMat)))
end
getVotes(cobj::Any, samples::UMat, flags::Int32; results::UMat = UMat()) = getVotes(cobj, samples, flags, results)
function Base.getproperty(m::Boost, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Boost, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getBoostType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getBoostType(julia_to_cpp(cobj, Any)))
end
getBoostType(cobj::Any; ) = getBoostType(cobj)

function setBoostType(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setBoostType(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setBoostType(cobj::Any, val::Int32; ) = setBoostType(cobj, val)

function getWeakCount(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getWeakCount(julia_to_cpp(cobj, Any)))
end
getWeakCount(cobj::Any; ) = getWeakCount(cobj)

function setWeakCount(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setWeakCount(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setWeakCount(cobj::Any, val::Int32; ) = setWeakCount(cobj, val)

function getWeightTrimRate(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getWeightTrimRate(julia_to_cpp(cobj, Any)))
end
getWeightTrimRate(cobj::Any; ) = getWeightTrimRate(cobj)

function setWeightTrimRate(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setWeightTrimRate(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setWeightTrimRate(cobj::Any, val::Float64; ) = setWeightTrimRate(cobj, val)
function Base.getproperty(m::ANN_MLP, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ANN_MLP, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setTrainMethod(cobj::Any, method::Int32, param1::Float64, param2::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setTrainMethod(julia_to_cpp(cobj, Any),julia_to_cpp(method, Int32),julia_to_cpp(param1, Float64),julia_to_cpp(param2, Float64)))
end
setTrainMethod(cobj::Any, method::Int32; param1::Float64 = 0, param2::Float64 = 0) = setTrainMethod(cobj, method, param1, param2)

function getTrainMethod(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getTrainMethod(julia_to_cpp(cobj, Any)))
end
getTrainMethod(cobj::Any; ) = getTrainMethod(cobj)

function setActivationFunction(cobj::Any, type::Int32, param1::Float64, param2::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setActivationFunction(julia_to_cpp(cobj, Any),julia_to_cpp(type, Int32),julia_to_cpp(param1, Float64),julia_to_cpp(param2, Float64)))
end
setActivationFunction(cobj::Any, type::Int32; param1::Float64 = 0, param2::Float64 = 0) = setActivationFunction(cobj, type, param1, param2)

function setLayerSizes(cobj::Any, _layer_sizes::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setLayerSizes(julia_to_cpp(cobj, Any),julia_to_cpp(_layer_sizes, Image)))
end
setLayerSizes(cobj::Any, _layer_sizes::Image; ) = setLayerSizes(cobj, _layer_sizes)

function setLayerSizes(cobj::Any, _layer_sizes::UMat)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setLayerSizes(julia_to_cpp(cobj, Any),julia_to_cpp(_layer_sizes, UMat)))
end
setLayerSizes(cobj::Any, _layer_sizes::UMat; ) = setLayerSizes(cobj, _layer_sizes)

function getLayerSizes(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getLayerSizes(julia_to_cpp(cobj, Any)))
end
getLayerSizes(cobj::Any; ) = getLayerSizes(cobj)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getTermCriteria(julia_to_cpp(cobj, Any)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setTermCriteria(julia_to_cpp(cobj, Any),julia_to_cpp(val, TermCriteria)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function getBackpropWeightScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getBackpropWeightScale(julia_to_cpp(cobj, Any)))
end
getBackpropWeightScale(cobj::Any; ) = getBackpropWeightScale(cobj)

function setBackpropWeightScale(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setBackpropWeightScale(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setBackpropWeightScale(cobj::Any, val::Float64; ) = setBackpropWeightScale(cobj, val)

function getBackpropMomentumScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getBackpropMomentumScale(julia_to_cpp(cobj, Any)))
end
getBackpropMomentumScale(cobj::Any; ) = getBackpropMomentumScale(cobj)

function setBackpropMomentumScale(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setBackpropMomentumScale(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setBackpropMomentumScale(cobj::Any, val::Float64; ) = setBackpropMomentumScale(cobj, val)

function getRpropDW0(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDW0(julia_to_cpp(cobj, Any)))
end
getRpropDW0(cobj::Any; ) = getRpropDW0(cobj)

function setRpropDW0(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDW0(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setRpropDW0(cobj::Any, val::Float64; ) = setRpropDW0(cobj, val)

function getRpropDWPlus(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWPlus(julia_to_cpp(cobj, Any)))
end
getRpropDWPlus(cobj::Any; ) = getRpropDWPlus(cobj)

function setRpropDWPlus(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWPlus(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setRpropDWPlus(cobj::Any, val::Float64; ) = setRpropDWPlus(cobj, val)

function getRpropDWMinus(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMinus(julia_to_cpp(cobj, Any)))
end
getRpropDWMinus(cobj::Any; ) = getRpropDWMinus(cobj)

function setRpropDWMinus(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMinus(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setRpropDWMinus(cobj::Any, val::Float64; ) = setRpropDWMinus(cobj, val)

function getRpropDWMin(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMin(julia_to_cpp(cobj, Any)))
end
getRpropDWMin(cobj::Any; ) = getRpropDWMin(cobj)

function setRpropDWMin(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMin(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setRpropDWMin(cobj::Any, val::Float64; ) = setRpropDWMin(cobj, val)

function getRpropDWMax(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMax(julia_to_cpp(cobj, Any)))
end
getRpropDWMax(cobj::Any; ) = getRpropDWMax(cobj)

function setRpropDWMax(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMax(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setRpropDWMax(cobj::Any, val::Float64; ) = setRpropDWMax(cobj, val)

function getAnnealInitialT(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealInitialT(julia_to_cpp(cobj, Any)))
end
getAnnealInitialT(cobj::Any; ) = getAnnealInitialT(cobj)

function setAnnealInitialT(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealInitialT(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setAnnealInitialT(cobj::Any, val::Float64; ) = setAnnealInitialT(cobj, val)

function getAnnealFinalT(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealFinalT(julia_to_cpp(cobj, Any)))
end
getAnnealFinalT(cobj::Any; ) = getAnnealFinalT(cobj)

function setAnnealFinalT(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealFinalT(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setAnnealFinalT(cobj::Any, val::Float64; ) = setAnnealFinalT(cobj, val)

function getAnnealCoolingRatio(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealCoolingRatio(julia_to_cpp(cobj, Any)))
end
getAnnealCoolingRatio(cobj::Any; ) = getAnnealCoolingRatio(cobj)

function setAnnealCoolingRatio(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealCoolingRatio(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setAnnealCoolingRatio(cobj::Any, val::Float64; ) = setAnnealCoolingRatio(cobj, val)

function getAnnealItePerStep(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealItePerStep(julia_to_cpp(cobj, Any)))
end
getAnnealItePerStep(cobj::Any; ) = getAnnealItePerStep(cobj)

function setAnnealItePerStep(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealItePerStep(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setAnnealItePerStep(cobj::Any, val::Int32; ) = setAnnealItePerStep(cobj, val)

function getWeights(cobj::Any, layerIdx::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getWeights(julia_to_cpp(cobj, Any),julia_to_cpp(layerIdx, Int32)))
end
getWeights(cobj::Any, layerIdx::Int32; ) = getWeights(cobj, layerIdx)
function Base.getproperty(m::LogisticRegression, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::LogisticRegression, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getLearningRate(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getLearningRate(julia_to_cpp(cobj, Any)))
end
getLearningRate(cobj::Any; ) = getLearningRate(cobj)

function setLearningRate(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setLearningRate(julia_to_cpp(cobj, Any),julia_to_cpp(val, Float64)))
end
setLearningRate(cobj::Any, val::Float64; ) = setLearningRate(cobj, val)

function getIterations(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getIterations(julia_to_cpp(cobj, Any)))
end
getIterations(cobj::Any; ) = getIterations(cobj)

function setIterations(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setIterations(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setIterations(cobj::Any, val::Int32; ) = setIterations(cobj, val)

function getRegularization(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getRegularization(julia_to_cpp(cobj, Any)))
end
getRegularization(cobj::Any; ) = getRegularization(cobj)

function setRegularization(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setRegularization(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setRegularization(cobj::Any, val::Int32; ) = setRegularization(cobj, val)

function getTrainMethod(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getTrainMethod(julia_to_cpp(cobj, Any)))
end
getTrainMethod(cobj::Any; ) = getTrainMethod(cobj)

function setTrainMethod(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setTrainMethod(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setTrainMethod(cobj::Any, val::Int32; ) = setTrainMethod(cobj, val)

function getMiniBatchSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getMiniBatchSize(julia_to_cpp(cobj, Any)))
end
getMiniBatchSize(cobj::Any; ) = getMiniBatchSize(cobj)

function setMiniBatchSize(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setMiniBatchSize(julia_to_cpp(cobj, Any),julia_to_cpp(val, Int32)))
end
setMiniBatchSize(cobj::Any, val::Int32; ) = setMiniBatchSize(cobj, val)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getTermCriteria(julia_to_cpp(cobj, Any)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setTermCriteria(julia_to_cpp(cobj, Any),julia_to_cpp(val, TermCriteria)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function predict(cobj::Any, samples::Image, results::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_predict(julia_to_cpp(cobj, Any),julia_to_cpp(samples, Image),julia_to_cpp(results, Image),julia_to_cpp(flags, Int32)))
end
predict(cobj::Any, samples::Image; results::Image = Mat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)

function predict(cobj::Any, samples::UMat, results::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_predict(julia_to_cpp(cobj, Any),julia_to_cpp(samples, UMat),julia_to_cpp(results, UMat),julia_to_cpp(flags, Int32)))
end
predict(cobj::Any, samples::UMat; results::UMat = UMat(), flags::Int32 = 0) = predict(cobj, samples, results, flags)

function get_learnt_thetas(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_get_learnt_thetas(julia_to_cpp(cobj, Any)))
end
get_learnt_thetas(cobj::Any; ) = get_learnt_thetas(cobj)
function Base.getproperty(m::SVMSGD, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SVMSGD, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getWeights(julia_to_cpp(cobj, Any)))
end
getWeights(cobj::Any; ) = getWeights(cobj)

function getShift(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getShift(julia_to_cpp(cobj, Any)))
end
getShift(cobj::Any; ) = getShift(cobj)

function setOptimalParameters(cobj::Any, svmsgdType::Int32, marginType::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setOptimalParameters(julia_to_cpp(cobj, Any),julia_to_cpp(svmsgdType, Int32),julia_to_cpp(marginType, Int32)))
end
setOptimalParameters(cobj::Any; svmsgdType::Int32 = SVMSGD::ASGD, marginType::Int32 = SVMSGD::SOFT_MARGIN) = setOptimalParameters(cobj, svmsgdType, marginType)

function getSvmsgdType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getSvmsgdType(julia_to_cpp(cobj, Any)))
end
getSvmsgdType(cobj::Any; ) = getSvmsgdType(cobj)

function setSvmsgdType(cobj::Any, svmsgdType::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setSvmsgdType(julia_to_cpp(cobj, Any),julia_to_cpp(svmsgdType, Int32)))
end
setSvmsgdType(cobj::Any, svmsgdType::Int32; ) = setSvmsgdType(cobj, svmsgdType)

function getMarginType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getMarginType(julia_to_cpp(cobj, Any)))
end
getMarginType(cobj::Any; ) = getMarginType(cobj)

function setMarginType(cobj::Any, marginType::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setMarginType(julia_to_cpp(cobj, Any),julia_to_cpp(marginType, Int32)))
end
setMarginType(cobj::Any, marginType::Int32; ) = setMarginType(cobj, marginType)

function getMarginRegularization(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getMarginRegularization(julia_to_cpp(cobj, Any)))
end
getMarginRegularization(cobj::Any; ) = getMarginRegularization(cobj)

function setMarginRegularization(cobj::Any, marginRegularization::Float32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setMarginRegularization(julia_to_cpp(cobj, Any),julia_to_cpp(marginRegularization, Float32)))
end
setMarginRegularization(cobj::Any, marginRegularization::Float32; ) = setMarginRegularization(cobj, marginRegularization)

function getInitialStepSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getInitialStepSize(julia_to_cpp(cobj, Any)))
end
getInitialStepSize(cobj::Any; ) = getInitialStepSize(cobj)

function setInitialStepSize(cobj::Any, InitialStepSize::Float32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setInitialStepSize(julia_to_cpp(cobj, Any),julia_to_cpp(InitialStepSize, Float32)))
end
setInitialStepSize(cobj::Any, InitialStepSize::Float32; ) = setInitialStepSize(cobj, InitialStepSize)

function getStepDecreasingPower(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getStepDecreasingPower(julia_to_cpp(cobj, Any)))
end
getStepDecreasingPower(cobj::Any; ) = getStepDecreasingPower(cobj)

function setStepDecreasingPower(cobj::Any, stepDecreasingPower::Float32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setStepDecreasingPower(julia_to_cpp(cobj, Any),julia_to_cpp(stepDecreasingPower, Float32)))
end
setStepDecreasingPower(cobj::Any, stepDecreasingPower::Float32; ) = setStepDecreasingPower(cobj, stepDecreasingPower)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getTermCriteria(julia_to_cpp(cobj, Any)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setTermCriteria(julia_to_cpp(cobj, Any),julia_to_cpp(val, TermCriteria)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function ParamGrid_create(minVal::Float64, maxVal::Float64, logstep::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ParamGrid_create(julia_to_cpp(minVal, Float64),julia_to_cpp(maxVal, Float64),julia_to_cpp(logstep, Float64)))
end
ParamGrid_create(; minVal::Float64 = 0., maxVal::Float64 = 0., logstep::Float64 = 1.) = ParamGrid_create(minVal, maxVal, logstep)

function TrainData_getSubVector(vec::Image, idx::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_getSubVector(julia_to_cpp(vec, Image),julia_to_cpp(idx, Image)))
end
TrainData_getSubVector(vec::Image, idx::Image; ) = TrainData_getSubVector(vec, idx)

function TrainData_getSubVector(vec::Image, idx::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_getSubVector(julia_to_cpp(vec, Image),julia_to_cpp(idx, Image)))
end
TrainData_getSubVector(vec::Image, idx::Image; ) = TrainData_getSubVector(vec, idx)

function TrainData_getSubMatrix(matrix::Image, idx::Image, layout::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_getSubMatrix(julia_to_cpp(matrix, Image),julia_to_cpp(idx, Image),julia_to_cpp(layout, Int32)))
end
TrainData_getSubMatrix(matrix::Image, idx::Image, layout::Int32; ) = TrainData_getSubMatrix(matrix, idx, layout)

function TrainData_getSubMatrix(matrix::Image, idx::Image, layout::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_getSubMatrix(julia_to_cpp(matrix, Image),julia_to_cpp(idx, Image),julia_to_cpp(layout, Int32)))
end
TrainData_getSubMatrix(matrix::Image, idx::Image, layout::Int32; ) = TrainData_getSubMatrix(matrix, idx, layout)

function TrainData_create(samples::Image, layout::Int32, responses::Image, varIdx::Image, sampleIdx::Image, sampleWeights::Image, varType::Image)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_create(julia_to_cpp(samples, Image),julia_to_cpp(layout, Int32),julia_to_cpp(responses, Image),julia_to_cpp(varIdx, Image),julia_to_cpp(sampleIdx, Image),julia_to_cpp(sampleWeights, Image),julia_to_cpp(varType, Image)))
end
TrainData_create(samples::Image, layout::Int32, responses::Image; varIdx::Image = Mat(), sampleIdx::Image = Mat(), sampleWeights::Image = Mat(), varType::Image = Mat()) = TrainData_create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType)

function TrainData_create(samples::UMat, layout::Int32, responses::UMat, varIdx::UMat, sampleIdx::UMat, sampleWeights::UMat, varType::UMat)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_create(julia_to_cpp(samples, UMat),julia_to_cpp(layout, Int32),julia_to_cpp(responses, UMat),julia_to_cpp(varIdx, UMat),julia_to_cpp(sampleIdx, UMat),julia_to_cpp(sampleWeights, UMat),julia_to_cpp(varType, UMat)))
end
TrainData_create(samples::UMat, layout::Int32, responses::UMat; varIdx::UMat = UMat(), sampleIdx::UMat = UMat(), sampleWeights::UMat = UMat(), varType::UMat = UMat()) = TrainData_create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType)

function NormalBayesClassifier_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_NormalBayesClassifier_create())
end
NormalBayesClassifier_create(; ) = NormalBayesClassifier_create()

function NormalBayesClassifier_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_NormalBayesClassifier_load(julia_to_cpp(filepath, String),julia_to_cpp(nodeName, String)))
end
NormalBayesClassifier_load(filepath::String; nodeName::String = String()) = NormalBayesClassifier_load(filepath, nodeName)

function KNearest_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_create())
end
KNearest_create(; ) = KNearest_create()

function KNearest_load(filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_load(julia_to_cpp(filepath, String)))
end
KNearest_load(filepath::String; ) = KNearest_load(filepath)

function SVM_getDefaultGridPtr(param_id::Int32)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_getDefaultGridPtr(julia_to_cpp(param_id, Int32)))
end
SVM_getDefaultGridPtr(param_id::Int32; ) = SVM_getDefaultGridPtr(param_id)

function SVM_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_create())
end
SVM_create(; ) = SVM_create()

function SVM_load(filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_load(julia_to_cpp(filepath, String)))
end
SVM_load(filepath::String; ) = SVM_load(filepath)

function EM_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_create())
end
EM_create(; ) = EM_create()

function EM_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_load(julia_to_cpp(filepath, String),julia_to_cpp(nodeName, String)))
end
EM_load(filepath::String; nodeName::String = String()) = EM_load(filepath, nodeName)

function DTrees_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_create())
end
DTrees_create(; ) = DTrees_create()

function DTrees_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_load(julia_to_cpp(filepath, String),julia_to_cpp(nodeName, String)))
end
DTrees_load(filepath::String; nodeName::String = String()) = DTrees_load(filepath, nodeName)

function RTrees_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_create())
end
RTrees_create(; ) = RTrees_create()

function RTrees_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_load(julia_to_cpp(filepath, String),julia_to_cpp(nodeName, String)))
end
RTrees_load(filepath::String; nodeName::String = String()) = RTrees_load(filepath, nodeName)

function Boost_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_create())
end
Boost_create(; ) = Boost_create()

function Boost_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_load(julia_to_cpp(filepath, String),julia_to_cpp(nodeName, String)))
end
Boost_load(filepath::String; nodeName::String = String()) = Boost_load(filepath, nodeName)

function ANN_MLP_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_create())
end
ANN_MLP_create(; ) = ANN_MLP_create()

function ANN_MLP_load(filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_load(julia_to_cpp(filepath, String)))
end
ANN_MLP_load(filepath::String; ) = ANN_MLP_load(filepath)

function LogisticRegression_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_create())
end
LogisticRegression_create(; ) = LogisticRegression_create()

function LogisticRegression_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_load(julia_to_cpp(filepath, String),julia_to_cpp(nodeName, String)))
end
LogisticRegression_load(filepath::String; nodeName::String = String()) = LogisticRegression_load(filepath, nodeName)

function SVMSGD_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_create())
end
SVMSGD_create(; ) = SVMSGD_create()

function SVMSGD_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_load(julia_to_cpp(filepath, String),julia_to_cpp(nodeName, String)))
end
SVMSGD_load(filepath::String; nodeName::String = String()) = SVMSGD_load(filepath, nodeName)



end