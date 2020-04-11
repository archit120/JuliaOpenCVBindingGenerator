#include "jlcv2.hpp"

namespace jlcxx
{


template <>
struct SuperType<cv::ml::StatModel>
{
    typedef cv::Algorithm type;
};
                                    
template <>
struct SuperType<cv::ml::NormalBayesClassifier>
{
    typedef cv::ml::StatModel type;
};
                                    
template <>
struct SuperType<cv::ml::KNearest>
{
    typedef cv::ml::StatModel type;
};
                                    
template <>
struct SuperType<cv::ml::SVM>
{
    typedef cv::ml::StatModel type;
};
                                    
template <>
struct SuperType<cv::ml::EM>
{
    typedef cv::ml::StatModel type;
};
                                    
template <>
struct SuperType<cv::ml::DTrees>
{
    typedef cv::ml::StatModel type;
};
                                    
template <>
struct SuperType<cv::ml::RTrees>
{
    typedef cv::ml::DTrees type;
};
                                    
template <>
struct SuperType<cv::ml::Boost>
{
    typedef cv::ml::DTrees type;
};
                                    
template <>
struct SuperType<cv::ml::ANN_MLP>
{
    typedef cv::ml::StatModel type;
};
                                    
template <>
struct SuperType<cv::ml::LogisticRegression>
{
    typedef cv::ml::StatModel type;
};
                                    
template <>
struct SuperType<cv::ml::SVMSGD>
{
    typedef cv::ml::StatModel type;
};
                                    

} // namespace jlcxx

JLCXX_MODULE ml_wrap(jlcxx::Module &mod) {
using namespace cv::ml;
mod.add_type<cv::ml::ParamGrid>("ml_ParamGrid");
mod.add_type<cv::ml::TrainData>("ml_TrainData");
mod.add_type<cv::ml::StatModel>("ml_StatModel", jlcxx::julia_base_type<cv::Algorithm>());
mod.add_type<cv::ml::NormalBayesClassifier>("ml_NormalBayesClassifier", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::KNearest>("ml_KNearest", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::SVM>("ml_SVM", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::EM>("ml_EM", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::DTrees>("ml_DTrees", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::RTrees>("ml_RTrees", jlcxx::julia_base_type<cv::ml::DTrees>());
mod.add_type<cv::ml::Boost>("ml_Boost", jlcxx::julia_base_type<cv::ml::DTrees>());
mod.add_type<cv::ml::ANN_MLP>("ml_ANN_MLP", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::LogisticRegression>("ml_LogisticRegression", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::SVMSGD>("ml_SVMSGD", jlcxx::julia_base_type<cv::ml::StatModel>());

    mod.add_bits<cv::ml::VariableTypes>("VariableTypes", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::ErrorTypes>("ErrorTypes", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::SampleTypes>("SampleTypes", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::StatModel::Flags>("StatModel_Flags", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::KNearest::Types>("KNearest_Types", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::SVM::Types>("SVM_Types", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::SVM::KernelTypes>("SVM_KernelTypes", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::SVM::ParamTypes>("SVM_ParamTypes", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::EM::Types>("EM_Types", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::DTrees::Flags>("DTrees_Flags", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::Boost::Types>("Boost_Types", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::ANN_MLP::TrainingMethods>("ANN_MLP_TrainingMethods", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::ANN_MLP::ActivationFunctions>("ANN_MLP_ActivationFunctions", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::ANN_MLP::TrainFlags>("ANN_MLP_TrainFlags", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::LogisticRegression::RegKinds>("LogisticRegression_RegKinds", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::LogisticRegression::Methods>("LogisticRegression_Methods", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::SVMSGD::SvmsgdType>("SVMSGD_SvmsgdType", jlcxx::julia_type("CppEnum"));
    mod.add_bits<cv::ml::SVMSGD::MarginType>("SVMSGD_MarginType", jlcxx::julia_type("CppEnum"));

mod.method("jlopencv_ml_ParamGrid_set_minVal", [](cv::ml::ParamGrid &cobj,const double &v) {cobj.minVal=v;});
mod.method("jlopencv_ml_ParamGrid_set_maxVal", [](cv::ml::ParamGrid &cobj,const double &v) {cobj.maxVal=v;});
mod.method("jlopencv_ml_ParamGrid_set_logStep", [](cv::ml::ParamGrid &cobj,const double &v) {cobj.logStep=v;});

mod.method("jlopencv_ml_ParamGrid_get_minVal", [](const cv::ml::ParamGrid &cobj) {return cobj.minVal;});
mod.method("jlopencv_ml_ParamGrid_get_maxVal", [](const cv::ml::ParamGrid &cobj) {return cobj.maxVal;});
mod.method("jlopencv_ml_ParamGrid_get_logStep", [](const cv::ml::ParamGrid &cobj) {return cobj.logStep;});;
    mod.method("jlopencv_cv_ml_ParamGrid_create",  [](double& minVal, double& maxVal, double& logstep) { auto retval = cv::ml::ParamGrid::create(minVal, maxVal, logstep); return retval;});

;
    mod.method("jlopencv_cv_ml_TrainData_getLayout",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getLayout();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNTrainSamples",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getNTrainSamples();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNTestSamples",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getNTestSamples();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNSamples",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getNSamples();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNVars",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getNVars();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNAllVars",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getNAllVars();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSample",  [](TrainData& cobj, Mat& varIdx, int& sidx, float& buf) { cobj.cv::ml::TrainData::getSample(varIdx, sidx, &buf);  ;});
    mod.method("jlopencv_cv_ml_TrainData_getSample",  [](TrainData& cobj, UMat& varIdx, int& sidx, float& buf) { cobj.cv::ml::TrainData::getSample(varIdx, sidx, &buf);  ;});
    mod.method("jlopencv_cv_ml_TrainData_getSamples",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getSamples();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getMissing",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getMissing();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTrainSamples",  [](TrainData& cobj, int& layout, bool& compressSamples, bool& compressVars) { auto retval = cobj.cv::ml::TrainData::getTrainSamples(layout, compressSamples, compressVars);  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTrainResponses",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getTrainResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTrainNormCatResponses",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getTrainNormCatResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTestResponses",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getTestResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTestNormCatResponses",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getTestNormCatResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getResponses",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNormCatResponses",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getNormCatResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSampleWeights",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getSampleWeights();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTrainSampleWeights",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getTrainSampleWeights();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTestSampleWeights",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getTestSampleWeights();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getVarIdx",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getVarIdx();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getVarType",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getVarType();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getVarSymbolFlags",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getVarSymbolFlags();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getResponseType",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getResponseType();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTrainSampleIdx",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getTrainSampleIdx();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTestSampleIdx",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getTestSampleIdx();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getValues",  [](TrainData& cobj, int& vi, Mat& sidx, float& values) { cobj.cv::ml::TrainData::getValues(vi, sidx, &values);  ;});
    mod.method("jlopencv_cv_ml_TrainData_getValues",  [](TrainData& cobj, int& vi, UMat& sidx, float& values) { cobj.cv::ml::TrainData::getValues(vi, sidx, &values);  ;});
    mod.method("jlopencv_cv_ml_TrainData_getDefaultSubstValues",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getDefaultSubstValues();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getCatCount",  [](TrainData& cobj, int& vi) { auto retval = cobj.cv::ml::TrainData::getCatCount(vi);  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getClassLabels",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getClassLabels();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getCatOfs",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getCatOfs();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getCatMap",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getCatMap();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_setTrainTestSplit",  [](TrainData& cobj, int& count, bool& shuffle) { cobj.cv::ml::TrainData::setTrainTestSplit(count, shuffle);  ;});
    mod.method("jlopencv_cv_ml_TrainData_setTrainTestSplitRatio",  [](TrainData& cobj, double& ratio, bool& shuffle) { cobj.cv::ml::TrainData::setTrainTestSplitRatio(ratio, shuffle);  ;});
    mod.method("jlopencv_cv_ml_TrainData_shuffleTrainTest",  [](TrainData& cobj) { cobj.cv::ml::TrainData::shuffleTrainTest();  ;});
    mod.method("jlopencv_cv_ml_TrainData_getTestSamples",  [](TrainData& cobj) { auto retval = cobj.cv::ml::TrainData::getTestSamples();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNames",  [](TrainData& cobj, vector<string>& names) { cobj.cv::ml::TrainData::getNames(names);  ;});
    mod.method("jlopencv_cv_ml_TrainData_getSubVector",  [](Mat& vec, Mat& idx) { auto retval = cv::ml::TrainData::getSubVector(vec, idx); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubVector",  [](Mat& vec, Mat& idx) { auto retval = cv::ml::TrainData::getSubVector(vec, idx); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubMatrix",  [](Mat& matrix, Mat& idx, int& layout) { auto retval = cv::ml::TrainData::getSubMatrix(matrix, idx, layout); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubMatrix",  [](Mat& matrix, Mat& idx, int& layout) { auto retval = cv::ml::TrainData::getSubMatrix(matrix, idx, layout); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_create",  [](Mat& samples, int& layout, Mat& responses, Mat& varIdx, Mat& sampleIdx, Mat& sampleWeights, Mat& varType) { auto retval = cv::ml::TrainData::create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_create",  [](UMat& samples, int& layout, UMat& responses, UMat& varIdx, UMat& sampleIdx, UMat& sampleWeights, UMat& varType) { auto retval = cv::ml::TrainData::create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType); return retval;});

;
    mod.method("jlopencv_cv_ml_StatModel_getVarCount",  [](cv::Ptr<StatModel>& cobj) { auto retval = cobj->cv::ml::StatModel::getVarCount();  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_empty",  [](cv::Ptr<StatModel>& cobj) { auto retval = cobj->cv::ml::StatModel::empty();  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_isTrained",  [](cv::Ptr<StatModel>& cobj) { auto retval = cobj->cv::ml::StatModel::isTrained();  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_isClassifier",  [](cv::Ptr<StatModel>& cobj) { auto retval = cobj->cv::ml::StatModel::isClassifier();  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_train",  [](cv::Ptr<StatModel>& cobj, Ptr<TrainData>& trainData, int& flags) { auto retval = cobj->cv::ml::StatModel::train(trainData, flags);  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_train",  [](cv::Ptr<StatModel>& cobj, Mat& samples, int& layout, Mat& responses) { auto retval = cobj->cv::ml::StatModel::train(samples, layout, responses);  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_train",  [](cv::Ptr<StatModel>& cobj, UMat& samples, int& layout, UMat& responses) { auto retval = cobj->cv::ml::StatModel::train(samples, layout, responses);  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_calcError",  [](cv::Ptr<StatModel>& cobj, Ptr<TrainData>& data, bool& test, Mat& resp) { auto retval = cobj->cv::ml::StatModel::calcError(data, test, resp);  return make_tuple<float,Mat>(move(retval),move(resp));});
    mod.method("jlopencv_cv_ml_StatModel_calcError",  [](cv::Ptr<StatModel>& cobj, Ptr<TrainData>& data, bool& test, UMat& resp) { auto retval = cobj->cv::ml::StatModel::calcError(data, test, resp);  return make_tuple<float,UMat>(move(retval),move(resp));});
    mod.method("jlopencv_cv_ml_StatModel_predict",  [](cv::Ptr<StatModel>& cobj, Mat& samples, Mat& results, int& flags) { auto retval = cobj->cv::ml::StatModel::predict(samples, results, flags);  return make_tuple<float,Mat>(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_StatModel_predict",  [](cv::Ptr<StatModel>& cobj, UMat& samples, UMat& results, int& flags) { auto retval = cobj->cv::ml::StatModel::predict(samples, results, flags);  return make_tuple<float,UMat>(move(retval),move(results));});

;
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_predictProb",  [](cv::Ptr<NormalBayesClassifier>& cobj, Mat& inputs, Mat& outputs, Mat& outputProbs, int& flags) { auto retval = cobj->cv::ml::NormalBayesClassifier::predictProb(inputs, outputs, outputProbs, flags);  return make_tuple<float,Mat,Mat>(move(retval),move(outputs),move(outputProbs));});
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_predictProb",  [](cv::Ptr<NormalBayesClassifier>& cobj, UMat& inputs, UMat& outputs, UMat& outputProbs, int& flags) { auto retval = cobj->cv::ml::NormalBayesClassifier::predictProb(inputs, outputs, outputProbs, flags);  return make_tuple<float,UMat,UMat>(move(retval),move(outputs),move(outputProbs));});
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_create",  []() { auto retval = cv::ml::NormalBayesClassifier::create(); return retval;});
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::NormalBayesClassifier::load(filepath, nodeName); return retval;});

;
    mod.method("jlopencv_cv_ml_KNearest_getDefaultK",  [](cv::Ptr<KNearest>& cobj) { auto retval = cobj->cv::ml::KNearest::getDefaultK();  return retval;});
    mod.method("jlopencv_cv_ml_KNearest_setDefaultK",  [](cv::Ptr<KNearest>& cobj, int& val) { cobj->cv::ml::KNearest::setDefaultK(val);  ;});
    mod.method("jlopencv_cv_ml_KNearest_getIsClassifier",  [](cv::Ptr<KNearest>& cobj) { auto retval = cobj->cv::ml::KNearest::getIsClassifier();  return retval;});
    mod.method("jlopencv_cv_ml_KNearest_setIsClassifier",  [](cv::Ptr<KNearest>& cobj, bool& val) { cobj->cv::ml::KNearest::setIsClassifier(val);  ;});
    mod.method("jlopencv_cv_ml_KNearest_getEmax",  [](cv::Ptr<KNearest>& cobj) { auto retval = cobj->cv::ml::KNearest::getEmax();  return retval;});
    mod.method("jlopencv_cv_ml_KNearest_setEmax",  [](cv::Ptr<KNearest>& cobj, int& val) { cobj->cv::ml::KNearest::setEmax(val);  ;});
    mod.method("jlopencv_cv_ml_KNearest_getAlgorithmType",  [](cv::Ptr<KNearest>& cobj) { auto retval = cobj->cv::ml::KNearest::getAlgorithmType();  return retval;});
    mod.method("jlopencv_cv_ml_KNearest_setAlgorithmType",  [](cv::Ptr<KNearest>& cobj, int& val) { cobj->cv::ml::KNearest::setAlgorithmType(val);  ;});
    mod.method("jlopencv_cv_ml_KNearest_findNearest",  [](cv::Ptr<KNearest>& cobj, Mat& samples, int& k, Mat& results, Mat& neighborResponses, Mat& dist) { auto retval = cobj->cv::ml::KNearest::findNearest(samples, k, results, neighborResponses, dist);  return make_tuple<float,Mat,Mat,Mat>(move(retval),move(results),move(neighborResponses),move(dist));});
    mod.method("jlopencv_cv_ml_KNearest_findNearest",  [](cv::Ptr<KNearest>& cobj, UMat& samples, int& k, UMat& results, UMat& neighborResponses, UMat& dist) { auto retval = cobj->cv::ml::KNearest::findNearest(samples, k, results, neighborResponses, dist);  return make_tuple<float,UMat,UMat,UMat>(move(retval),move(results),move(neighborResponses),move(dist));});
    mod.method("jlopencv_cv_ml_KNearest_create",  []() { auto retval = cv::ml::KNearest::create(); return retval;});
    mod.method("jlopencv_cv_ml_KNearest_load",  [](string& filepath) { auto retval = cv::ml::KNearest::load(filepath); return retval;});

;
    mod.method("jlopencv_cv_ml_SVM_getType",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getType();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setType",  [](cv::Ptr<SVM>& cobj, int& val) { cobj->cv::ml::SVM::setType(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getGamma",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getGamma();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setGamma",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->cv::ml::SVM::setGamma(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getCoef0",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getCoef0();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setCoef0",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->cv::ml::SVM::setCoef0(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getDegree",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getDegree();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setDegree",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->cv::ml::SVM::setDegree(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getC",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getC();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setC",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->cv::ml::SVM::setC(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getNu",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getNu();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setNu",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->cv::ml::SVM::setNu(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getP",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getP();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setP",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->cv::ml::SVM::setP(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getClassWeights",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getClassWeights();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setClassWeights",  [](cv::Ptr<SVM>& cobj, Mat& val) { cobj->cv::ml::SVM::setClassWeights(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_setClassWeights",  [](cv::Ptr<SVM>& cobj, Mat& val) { cobj->cv::ml::SVM::setClassWeights(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getTermCriteria",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setTermCriteria",  [](cv::Ptr<SVM>& cobj, TermCriteria& val) { cobj->cv::ml::SVM::setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getKernelType",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getKernelType();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setKernel",  [](cv::Ptr<SVM>& cobj, int& kernelType) { cobj->cv::ml::SVM::setKernel(kernelType);  ;});
    mod.method("jlopencv_cv_ml_SVM_trainAuto",  [](cv::Ptr<SVM>& cobj, Mat& samples, int& layout, Mat& responses, int& kFold, Ptr<ParamGrid>& Cgrid, Ptr<ParamGrid>& gammaGrid, Ptr<ParamGrid>& pGrid, Ptr<ParamGrid>& nuGrid, Ptr<ParamGrid>& coeffGrid, Ptr<ParamGrid>& degreeGrid, bool& balanced) { auto retval = cobj->cv::ml::SVM::trainAuto(samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced);  return retval;});
    mod.method("jlopencv_cv_ml_SVM_trainAuto",  [](cv::Ptr<SVM>& cobj, UMat& samples, int& layout, UMat& responses, int& kFold, Ptr<ParamGrid>& Cgrid, Ptr<ParamGrid>& gammaGrid, Ptr<ParamGrid>& pGrid, Ptr<ParamGrid>& nuGrid, Ptr<ParamGrid>& coeffGrid, Ptr<ParamGrid>& degreeGrid, bool& balanced) { auto retval = cobj->cv::ml::SVM::trainAuto(samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced);  return retval;});
    mod.method("jlopencv_cv_ml_SVM_getSupportVectors",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getSupportVectors();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_getUncompressedSupportVectors",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->cv::ml::SVM::getUncompressedSupportVectors();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_getDecisionFunction",  [](cv::Ptr<SVM>& cobj, int& i, Mat& alpha, Mat& svidx) { auto retval = cobj->cv::ml::SVM::getDecisionFunction(i, alpha, svidx);  return make_tuple<double,Mat,Mat>(move(retval),move(alpha),move(svidx));});
    mod.method("jlopencv_cv_ml_SVM_getDecisionFunction",  [](cv::Ptr<SVM>& cobj, int& i, UMat& alpha, UMat& svidx) { auto retval = cobj->cv::ml::SVM::getDecisionFunction(i, alpha, svidx);  return make_tuple<double,UMat,UMat>(move(retval),move(alpha),move(svidx));});
    mod.method("jlopencv_cv_ml_SVM_getDefaultGridPtr",  [](int& param_id) { auto retval = cv::ml::SVM::getDefaultGridPtr(param_id); return retval;});
    mod.method("jlopencv_cv_ml_SVM_create",  []() { auto retval = cv::ml::SVM::create(); return retval;});
    mod.method("jlopencv_cv_ml_SVM_load",  [](string& filepath) { auto retval = cv::ml::SVM::load(filepath); return retval;});

;
    mod.method("jlopencv_cv_ml_EM_getClustersNumber",  [](cv::Ptr<EM>& cobj) { auto retval = cobj->cv::ml::EM::getClustersNumber();  return retval;});
    mod.method("jlopencv_cv_ml_EM_setClustersNumber",  [](cv::Ptr<EM>& cobj, int& val) { cobj->cv::ml::EM::setClustersNumber(val);  ;});
    mod.method("jlopencv_cv_ml_EM_getCovarianceMatrixType",  [](cv::Ptr<EM>& cobj) { auto retval = cobj->cv::ml::EM::getCovarianceMatrixType();  return retval;});
    mod.method("jlopencv_cv_ml_EM_setCovarianceMatrixType",  [](cv::Ptr<EM>& cobj, int& val) { cobj->cv::ml::EM::setCovarianceMatrixType(val);  ;});
    mod.method("jlopencv_cv_ml_EM_getTermCriteria",  [](cv::Ptr<EM>& cobj) { auto retval = cobj->cv::ml::EM::getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_EM_setTermCriteria",  [](cv::Ptr<EM>& cobj, TermCriteria& val) { cobj->cv::ml::EM::setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_EM_getWeights",  [](cv::Ptr<EM>& cobj) { auto retval = cobj->cv::ml::EM::getWeights();  return retval;});
    mod.method("jlopencv_cv_ml_EM_getMeans",  [](cv::Ptr<EM>& cobj) { auto retval = cobj->cv::ml::EM::getMeans();  return retval;});
    mod.method("jlopencv_cv_ml_EM_getCovs",  [](cv::Ptr<EM>& cobj) {vector<Mat> covs; cobj->cv::ml::EM::getCovs(covs);  return covs;});
    mod.method("jlopencv_cv_ml_EM_getCovs",  [](cv::Ptr<EM>& cobj) {vector<Mat> covs; cobj->cv::ml::EM::getCovs(covs);  return covs;});
    mod.method("jlopencv_cv_ml_EM_predict",  [](cv::Ptr<EM>& cobj, Mat& samples, Mat& results, int& flags) { auto retval = cobj->cv::ml::EM::predict(samples, results, flags);  return make_tuple<float,Mat>(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_EM_predict",  [](cv::Ptr<EM>& cobj, UMat& samples, UMat& results, int& flags) { auto retval = cobj->cv::ml::EM::predict(samples, results, flags);  return make_tuple<float,UMat>(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_EM_predict2",  [](cv::Ptr<EM>& cobj, Mat& sample, Mat& probs) { auto retval = cobj->cv::ml::EM::predict2(sample, probs);  return make_tuple<Vec2d,Mat>(move(retval),move(probs));});
    mod.method("jlopencv_cv_ml_EM_predict2",  [](cv::Ptr<EM>& cobj, UMat& sample, UMat& probs) { auto retval = cobj->cv::ml::EM::predict2(sample, probs);  return make_tuple<Vec2d,UMat>(move(retval),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainEM",  [](cv::Ptr<EM>& cobj, Mat& samples, Mat& logLikelihoods, Mat& labels, Mat& probs) { auto retval = cobj->cv::ml::EM::trainEM(samples, logLikelihoods, labels, probs);  return make_tuple<bool,Mat,Mat,Mat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainEM",  [](cv::Ptr<EM>& cobj, UMat& samples, UMat& logLikelihoods, UMat& labels, UMat& probs) { auto retval = cobj->cv::ml::EM::trainEM(samples, logLikelihoods, labels, probs);  return make_tuple<bool,UMat,UMat,UMat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainE",  [](cv::Ptr<EM>& cobj, Mat& samples, Mat& means0, Mat& covs0, Mat& weights0, Mat& logLikelihoods, Mat& labels, Mat& probs) { auto retval = cobj->cv::ml::EM::trainE(samples, means0, covs0, weights0, logLikelihoods, labels, probs);  return make_tuple<bool,Mat,Mat,Mat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainE",  [](cv::Ptr<EM>& cobj, UMat& samples, UMat& means0, UMat& covs0, UMat& weights0, UMat& logLikelihoods, UMat& labels, UMat& probs) { auto retval = cobj->cv::ml::EM::trainE(samples, means0, covs0, weights0, logLikelihoods, labels, probs);  return make_tuple<bool,UMat,UMat,UMat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainM",  [](cv::Ptr<EM>& cobj, Mat& samples, Mat& probs0, Mat& logLikelihoods, Mat& labels, Mat& probs) { auto retval = cobj->cv::ml::EM::trainM(samples, probs0, logLikelihoods, labels, probs);  return make_tuple<bool,Mat,Mat,Mat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainM",  [](cv::Ptr<EM>& cobj, UMat& samples, UMat& probs0, UMat& logLikelihoods, UMat& labels, UMat& probs) { auto retval = cobj->cv::ml::EM::trainM(samples, probs0, logLikelihoods, labels, probs);  return make_tuple<bool,UMat,UMat,UMat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_create",  []() { auto retval = cv::ml::EM::create(); return retval;});
    mod.method("jlopencv_cv_ml_EM_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::EM::load(filepath, nodeName); return retval;});

;
    mod.method("jlopencv_cv_ml_DTrees_getMaxCategories",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->cv::ml::DTrees::getMaxCategories();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setMaxCategories",  [](cv::Ptr<DTrees>& cobj, int& val) { cobj->cv::ml::DTrees::setMaxCategories(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getMaxDepth",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->cv::ml::DTrees::getMaxDepth();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setMaxDepth",  [](cv::Ptr<DTrees>& cobj, int& val) { cobj->cv::ml::DTrees::setMaxDepth(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getMinSampleCount",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->cv::ml::DTrees::getMinSampleCount();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setMinSampleCount",  [](cv::Ptr<DTrees>& cobj, int& val) { cobj->cv::ml::DTrees::setMinSampleCount(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getCVFolds",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->cv::ml::DTrees::getCVFolds();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setCVFolds",  [](cv::Ptr<DTrees>& cobj, int& val) { cobj->cv::ml::DTrees::setCVFolds(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getUseSurrogates",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->cv::ml::DTrees::getUseSurrogates();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setUseSurrogates",  [](cv::Ptr<DTrees>& cobj, bool& val) { cobj->cv::ml::DTrees::setUseSurrogates(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getUse1SERule",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->cv::ml::DTrees::getUse1SERule();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setUse1SERule",  [](cv::Ptr<DTrees>& cobj, bool& val) { cobj->cv::ml::DTrees::setUse1SERule(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getTruncatePrunedTree",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->cv::ml::DTrees::getTruncatePrunedTree();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setTruncatePrunedTree",  [](cv::Ptr<DTrees>& cobj, bool& val) { cobj->cv::ml::DTrees::setTruncatePrunedTree(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getRegressionAccuracy",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->cv::ml::DTrees::getRegressionAccuracy();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setRegressionAccuracy",  [](cv::Ptr<DTrees>& cobj, float& val) { cobj->cv::ml::DTrees::setRegressionAccuracy(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getPriors",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->cv::ml::DTrees::getPriors();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setPriors",  [](cv::Ptr<DTrees>& cobj, Mat& val) { cobj->cv::ml::DTrees::setPriors(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_setPriors",  [](cv::Ptr<DTrees>& cobj, Mat& val) { cobj->cv::ml::DTrees::setPriors(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_create",  []() { auto retval = cv::ml::DTrees::create(); return retval;});
    mod.method("jlopencv_cv_ml_DTrees_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::DTrees::load(filepath, nodeName); return retval;});

;
    mod.method("jlopencv_cv_ml_RTrees_getCalculateVarImportance",  [](cv::Ptr<RTrees>& cobj) { auto retval = cobj->cv::ml::RTrees::getCalculateVarImportance();  return retval;});
    mod.method("jlopencv_cv_ml_RTrees_setCalculateVarImportance",  [](cv::Ptr<RTrees>& cobj, bool& val) { cobj->cv::ml::RTrees::setCalculateVarImportance(val);  ;});
    mod.method("jlopencv_cv_ml_RTrees_getActiveVarCount",  [](cv::Ptr<RTrees>& cobj) { auto retval = cobj->cv::ml::RTrees::getActiveVarCount();  return retval;});
    mod.method("jlopencv_cv_ml_RTrees_setActiveVarCount",  [](cv::Ptr<RTrees>& cobj, int& val) { cobj->cv::ml::RTrees::setActiveVarCount(val);  ;});
    mod.method("jlopencv_cv_ml_RTrees_getTermCriteria",  [](cv::Ptr<RTrees>& cobj) { auto retval = cobj->cv::ml::RTrees::getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_RTrees_setTermCriteria",  [](cv::Ptr<RTrees>& cobj, TermCriteria& val) { cobj->cv::ml::RTrees::setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_RTrees_getVarImportance",  [](cv::Ptr<RTrees>& cobj) { auto retval = cobj->cv::ml::RTrees::getVarImportance();  return retval;});
    mod.method("jlopencv_cv_ml_RTrees_getVotes",  [](cv::Ptr<RTrees>& cobj, Mat& samples, int& flags, Mat& results) { cobj->cv::ml::RTrees::getVotes(samples, results, flags);  return results;});
    mod.method("jlopencv_cv_ml_RTrees_getVotes",  [](cv::Ptr<RTrees>& cobj, UMat& samples, int& flags, UMat& results) { cobj->cv::ml::RTrees::getVotes(samples, results, flags);  return results;});
    mod.method("jlopencv_cv_ml_RTrees_create",  []() { auto retval = cv::ml::RTrees::create(); return retval;});
    mod.method("jlopencv_cv_ml_RTrees_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::RTrees::load(filepath, nodeName); return retval;});

;
    mod.method("jlopencv_cv_ml_Boost_getBoostType",  [](cv::Ptr<Boost>& cobj) { auto retval = cobj->cv::ml::Boost::getBoostType();  return retval;});
    mod.method("jlopencv_cv_ml_Boost_setBoostType",  [](cv::Ptr<Boost>& cobj, int& val) { cobj->cv::ml::Boost::setBoostType(val);  ;});
    mod.method("jlopencv_cv_ml_Boost_getWeakCount",  [](cv::Ptr<Boost>& cobj) { auto retval = cobj->cv::ml::Boost::getWeakCount();  return retval;});
    mod.method("jlopencv_cv_ml_Boost_setWeakCount",  [](cv::Ptr<Boost>& cobj, int& val) { cobj->cv::ml::Boost::setWeakCount(val);  ;});
    mod.method("jlopencv_cv_ml_Boost_getWeightTrimRate",  [](cv::Ptr<Boost>& cobj) { auto retval = cobj->cv::ml::Boost::getWeightTrimRate();  return retval;});
    mod.method("jlopencv_cv_ml_Boost_setWeightTrimRate",  [](cv::Ptr<Boost>& cobj, double& val) { cobj->cv::ml::Boost::setWeightTrimRate(val);  ;});
    mod.method("jlopencv_cv_ml_Boost_create",  []() { auto retval = cv::ml::Boost::create(); return retval;});
    mod.method("jlopencv_cv_ml_Boost_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::Boost::load(filepath, nodeName); return retval;});

;
    mod.method("jlopencv_cv_ml_ANN_MLP_setTrainMethod",  [](cv::Ptr<ANN_MLP>& cobj, int& method, double& param1, double& param2) { cobj->cv::ml::ANN_MLP::setTrainMethod(method, param1, param2);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getTrainMethod",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getTrainMethod();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setActivationFunction",  [](cv::Ptr<ANN_MLP>& cobj, int& type, double& param1, double& param2) { cobj->cv::ml::ANN_MLP::setActivationFunction(type, param1, param2);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setLayerSizes",  [](cv::Ptr<ANN_MLP>& cobj, Mat& _layer_sizes) { cobj->cv::ml::ANN_MLP::setLayerSizes(_layer_sizes);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setLayerSizes",  [](cv::Ptr<ANN_MLP>& cobj, UMat& _layer_sizes) { cobj->cv::ml::ANN_MLP::setLayerSizes(_layer_sizes);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getLayerSizes",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getLayerSizes();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getTermCriteria",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setTermCriteria",  [](cv::Ptr<ANN_MLP>& cobj, TermCriteria& val) { cobj->cv::ml::ANN_MLP::setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getBackpropWeightScale",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getBackpropWeightScale();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setBackpropWeightScale",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->cv::ml::ANN_MLP::setBackpropWeightScale(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getBackpropMomentumScale",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getBackpropMomentumScale();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setBackpropMomentumScale",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->cv::ml::ANN_MLP::setBackpropMomentumScale(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getRpropDW0",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getRpropDW0();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setRpropDW0",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->cv::ml::ANN_MLP::setRpropDW0(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getRpropDWPlus",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getRpropDWPlus();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setRpropDWPlus",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->cv::ml::ANN_MLP::setRpropDWPlus(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getRpropDWMinus",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getRpropDWMinus();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setRpropDWMinus",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->cv::ml::ANN_MLP::setRpropDWMinus(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getRpropDWMin",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getRpropDWMin();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setRpropDWMin",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->cv::ml::ANN_MLP::setRpropDWMin(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getRpropDWMax",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getRpropDWMax();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setRpropDWMax",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->cv::ml::ANN_MLP::setRpropDWMax(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getAnnealInitialT",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getAnnealInitialT();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setAnnealInitialT",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->cv::ml::ANN_MLP::setAnnealInitialT(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getAnnealFinalT",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getAnnealFinalT();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setAnnealFinalT",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->cv::ml::ANN_MLP::setAnnealFinalT(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getAnnealCoolingRatio",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getAnnealCoolingRatio();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setAnnealCoolingRatio",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->cv::ml::ANN_MLP::setAnnealCoolingRatio(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getAnnealItePerStep",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->cv::ml::ANN_MLP::getAnnealItePerStep();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setAnnealItePerStep",  [](cv::Ptr<ANN_MLP>& cobj, int& val) { cobj->cv::ml::ANN_MLP::setAnnealItePerStep(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getWeights",  [](cv::Ptr<ANN_MLP>& cobj, int& layerIdx) { auto retval = cobj->cv::ml::ANN_MLP::getWeights(layerIdx);  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_create",  []() { auto retval = cv::ml::ANN_MLP::create(); return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_load",  [](string& filepath) { auto retval = cv::ml::ANN_MLP::load(filepath); return retval;});

;
    mod.method("jlopencv_cv_ml_LogisticRegression_getLearningRate",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->cv::ml::LogisticRegression::getLearningRate();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setLearningRate",  [](cv::Ptr<LogisticRegression>& cobj, double& val) { cobj->cv::ml::LogisticRegression::setLearningRate(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_getIterations",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->cv::ml::LogisticRegression::getIterations();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setIterations",  [](cv::Ptr<LogisticRegression>& cobj, int& val) { cobj->cv::ml::LogisticRegression::setIterations(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_getRegularization",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->cv::ml::LogisticRegression::getRegularization();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setRegularization",  [](cv::Ptr<LogisticRegression>& cobj, int& val) { cobj->cv::ml::LogisticRegression::setRegularization(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_getTrainMethod",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->cv::ml::LogisticRegression::getTrainMethod();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setTrainMethod",  [](cv::Ptr<LogisticRegression>& cobj, int& val) { cobj->cv::ml::LogisticRegression::setTrainMethod(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_getMiniBatchSize",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->cv::ml::LogisticRegression::getMiniBatchSize();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setMiniBatchSize",  [](cv::Ptr<LogisticRegression>& cobj, int& val) { cobj->cv::ml::LogisticRegression::setMiniBatchSize(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_getTermCriteria",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->cv::ml::LogisticRegression::getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setTermCriteria",  [](cv::Ptr<LogisticRegression>& cobj, TermCriteria& val) { cobj->cv::ml::LogisticRegression::setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_predict",  [](cv::Ptr<LogisticRegression>& cobj, Mat& samples, Mat& results, int& flags) { auto retval = cobj->cv::ml::LogisticRegression::predict(samples, results, flags);  return make_tuple<float,Mat>(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_LogisticRegression_predict",  [](cv::Ptr<LogisticRegression>& cobj, UMat& samples, UMat& results, int& flags) { auto retval = cobj->cv::ml::LogisticRegression::predict(samples, results, flags);  return make_tuple<float,UMat>(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_LogisticRegression_get_learnt_thetas",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->cv::ml::LogisticRegression::get_learnt_thetas();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_create",  []() { auto retval = cv::ml::LogisticRegression::create(); return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::LogisticRegression::load(filepath, nodeName); return retval;});

;
    mod.method("jlopencv_cv_ml_SVMSGD_getWeights",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->cv::ml::SVMSGD::getWeights();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_getShift",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->cv::ml::SVMSGD::getShift();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_create",  []() { auto retval = cv::ml::SVMSGD::create(); return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::SVMSGD::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setOptimalParameters",  [](cv::Ptr<SVMSGD>& cobj, int& svmsgdType, int& marginType) { cobj->cv::ml::SVMSGD::setOptimalParameters(svmsgdType, marginType);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getSvmsgdType",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->cv::ml::SVMSGD::getSvmsgdType();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setSvmsgdType",  [](cv::Ptr<SVMSGD>& cobj, int& svmsgdType) { cobj->cv::ml::SVMSGD::setSvmsgdType(svmsgdType);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getMarginType",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->cv::ml::SVMSGD::getMarginType();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setMarginType",  [](cv::Ptr<SVMSGD>& cobj, int& marginType) { cobj->cv::ml::SVMSGD::setMarginType(marginType);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getMarginRegularization",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->cv::ml::SVMSGD::getMarginRegularization();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setMarginRegularization",  [](cv::Ptr<SVMSGD>& cobj, float& marginRegularization) { cobj->cv::ml::SVMSGD::setMarginRegularization(marginRegularization);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getInitialStepSize",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->cv::ml::SVMSGD::getInitialStepSize();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setInitialStepSize",  [](cv::Ptr<SVMSGD>& cobj, float& InitialStepSize) { cobj->cv::ml::SVMSGD::setInitialStepSize(InitialStepSize);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getStepDecreasingPower",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->cv::ml::SVMSGD::getStepDecreasingPower();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setStepDecreasingPower",  [](cv::Ptr<SVMSGD>& cobj, float& stepDecreasingPower) { cobj->cv::ml::SVMSGD::setStepDecreasingPower(stepDecreasingPower);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getTermCriteria",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->cv::ml::SVMSGD::getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setTermCriteria",  [](cv::Ptr<SVMSGD>& cobj, TermCriteria& val) { cobj->cv::ml::SVMSGD::setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_ParamGrid_create",  [](double& minVal, double& maxVal, double& logstep) { auto retval = cv::ml::ParamGrid::create(minVal, maxVal, logstep); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_create",  [](Mat& samples, int& layout, Mat& responses, Mat& varIdx, Mat& sampleIdx, Mat& sampleWeights, Mat& varType) { auto retval = cv::ml::TrainData::create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_create",  [](UMat& samples, int& layout, UMat& responses, UMat& varIdx, UMat& sampleIdx, UMat& sampleWeights, UMat& varType) { auto retval = cv::ml::TrainData::create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType); return retval;});
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_create",  []() { auto retval = cv::ml::NormalBayesClassifier::create(); return retval;});
    mod.method("jlopencv_cv_ml_KNearest_create",  []() { auto retval = cv::ml::KNearest::create(); return retval;});
    mod.method("jlopencv_cv_ml_SVM_create",  []() { auto retval = cv::ml::SVM::create(); return retval;});
    mod.method("jlopencv_cv_ml_EM_create",  []() { auto retval = cv::ml::EM::create(); return retval;});
    mod.method("jlopencv_cv_ml_DTrees_create",  []() { auto retval = cv::ml::DTrees::create(); return retval;});
    mod.method("jlopencv_cv_ml_RTrees_create",  []() { auto retval = cv::ml::RTrees::create(); return retval;});
    mod.method("jlopencv_cv_ml_Boost_create",  []() { auto retval = cv::ml::Boost::create(); return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_create",  []() { auto retval = cv::ml::ANN_MLP::create(); return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_create",  []() { auto retval = cv::ml::LogisticRegression::create(); return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_create",  []() { auto retval = cv::ml::SVMSGD::create(); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubVector",  [](Mat& vec, Mat& idx) { auto retval = cv::ml::TrainData::getSubVector(vec, idx); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubVector",  [](Mat& vec, Mat& idx) { auto retval = cv::ml::TrainData::getSubVector(vec, idx); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubMatrix",  [](Mat& matrix, Mat& idx, int& layout) { auto retval = cv::ml::TrainData::getSubMatrix(matrix, idx, layout); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubMatrix",  [](Mat& matrix, Mat& idx, int& layout) { auto retval = cv::ml::TrainData::getSubMatrix(matrix, idx, layout); return retval;});
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::NormalBayesClassifier::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_KNearest_load",  [](string& filepath) { auto retval = cv::ml::KNearest::load(filepath); return retval;});
    mod.method("jlopencv_cv_ml_SVM_load",  [](string& filepath) { auto retval = cv::ml::SVM::load(filepath); return retval;});
    mod.method("jlopencv_cv_ml_EM_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::EM::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_DTrees_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::DTrees::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_RTrees_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::RTrees::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_Boost_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::Boost::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_load",  [](string& filepath) { auto retval = cv::ml::ANN_MLP::load(filepath); return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::LogisticRegression::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::SVMSGD::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_SVM_getDefaultGridPtr",  [](int& param_id) { auto retval = cv::ml::SVM::getDefaultGridPtr(param_id); return retval;});    mod.set_const("ANN_MLP_ANNEAL", cv::ml::ANN_MLP::ANNEAL);
    mod.set_const("ANN_MLP_BACKPROP", cv::ml::ANN_MLP::BACKPROP);
    mod.set_const("ANN_MLP_GAUSSIAN", cv::ml::ANN_MLP::GAUSSIAN);
    mod.set_const("ANN_MLP_IDENTITY", cv::ml::ANN_MLP::IDENTITY);
    mod.set_const("ANN_MLP_LEAKYRELU", cv::ml::ANN_MLP::LEAKYRELU);
    mod.set_const("ANN_MLP_NO_INPUT_SCALE", cv::ml::ANN_MLP::NO_INPUT_SCALE);
    mod.set_const("ANN_MLP_NO_OUTPUT_SCALE", cv::ml::ANN_MLP::NO_OUTPUT_SCALE);
    mod.set_const("ANN_MLP_RELU", cv::ml::ANN_MLP::RELU);
    mod.set_const("ANN_MLP_RPROP", cv::ml::ANN_MLP::RPROP);
    mod.set_const("ANN_MLP_SIGMOID_SYM", cv::ml::ANN_MLP::SIGMOID_SYM);
    mod.set_const("ANN_MLP_UPDATE_WEIGHTS", cv::ml::ANN_MLP::UPDATE_WEIGHTS);
    mod.set_const("Boost_DISCRETE", cv::ml::Boost::DISCRETE);
    mod.set_const("BOOST_DISCRETE", cv::ml::Boost::DISCRETE);
    mod.set_const("Boost_GENTLE", cv::ml::Boost::GENTLE);
    mod.set_const("BOOST_GENTLE", cv::ml::Boost::GENTLE);
    mod.set_const("Boost_LOGIT", cv::ml::Boost::LOGIT);
    mod.set_const("BOOST_LOGIT", cv::ml::Boost::LOGIT);
    mod.set_const("Boost_REAL", cv::ml::Boost::REAL);
    mod.set_const("BOOST_REAL", cv::ml::Boost::REAL);
    mod.set_const("COL_SAMPLE", cv::ml::COL_SAMPLE);
    mod.set_const("DTrees_PREDICT_AUTO", cv::ml::DTrees::PREDICT_AUTO);
    mod.set_const("DTREES_PREDICT_AUTO", cv::ml::DTrees::PREDICT_AUTO);
    mod.set_const("DTrees_PREDICT_MASK", cv::ml::DTrees::PREDICT_MASK);
    mod.set_const("DTREES_PREDICT_MASK", cv::ml::DTrees::PREDICT_MASK);
    mod.set_const("DTrees_PREDICT_MAX_VOTE", cv::ml::DTrees::PREDICT_MAX_VOTE);
    mod.set_const("DTREES_PREDICT_MAX_VOTE", cv::ml::DTrees::PREDICT_MAX_VOTE);
    mod.set_const("DTrees_PREDICT_SUM", cv::ml::DTrees::PREDICT_SUM);
    mod.set_const("DTREES_PREDICT_SUM", cv::ml::DTrees::PREDICT_SUM);
    mod.set_const("EM_COV_MAT_DEFAULT", cv::ml::EM::COV_MAT_DEFAULT);
    mod.set_const("EM_COV_MAT_DIAGONAL", cv::ml::EM::COV_MAT_DIAGONAL);
    mod.set_const("EM_COV_MAT_GENERIC", cv::ml::EM::COV_MAT_GENERIC);
    mod.set_const("EM_COV_MAT_SPHERICAL", cv::ml::EM::COV_MAT_SPHERICAL);
    mod.set_const("EM_DEFAULT_MAX_ITERS", cv::ml::EM::DEFAULT_MAX_ITERS);
    mod.set_const("EM_DEFAULT_NCLUSTERS", cv::ml::EM::DEFAULT_NCLUSTERS);
    mod.set_const("EM_START_AUTO_STEP", cv::ml::EM::START_AUTO_STEP);
    mod.set_const("EM_START_E_STEP", cv::ml::EM::START_E_STEP);
    mod.set_const("EM_START_M_STEP", cv::ml::EM::START_M_STEP);
    mod.set_const("KNearest_BRUTE_FORCE", cv::ml::KNearest::BRUTE_FORCE);
    mod.set_const("KNEAREST_BRUTE_FORCE", cv::ml::KNearest::BRUTE_FORCE);
    mod.set_const("KNearest_KDTREE", cv::ml::KNearest::KDTREE);
    mod.set_const("KNEAREST_KDTREE", cv::ml::KNearest::KDTREE);
    mod.set_const("LogisticRegression_BATCH", cv::ml::LogisticRegression::BATCH);
    mod.set_const("LOGISTIC_REGRESSION_BATCH", cv::ml::LogisticRegression::BATCH);
    mod.set_const("LogisticRegression_MINI_BATCH", cv::ml::LogisticRegression::MINI_BATCH);
    mod.set_const("LOGISTIC_REGRESSION_MINI_BATCH", cv::ml::LogisticRegression::MINI_BATCH);
    mod.set_const("LogisticRegression_REG_DISABLE", cv::ml::LogisticRegression::REG_DISABLE);
    mod.set_const("LOGISTIC_REGRESSION_REG_DISABLE", cv::ml::LogisticRegression::REG_DISABLE);
    mod.set_const("LogisticRegression_REG_L1", cv::ml::LogisticRegression::REG_L1);
    mod.set_const("LOGISTIC_REGRESSION_REG_L1", cv::ml::LogisticRegression::REG_L1);
    mod.set_const("LogisticRegression_REG_L2", cv::ml::LogisticRegression::REG_L2);
    mod.set_const("LOGISTIC_REGRESSION_REG_L2", cv::ml::LogisticRegression::REG_L2);
    mod.set_const("ROW_SAMPLE", cv::ml::ROW_SAMPLE);
    mod.set_const("SVMSGD_ASGD", cv::ml::SVMSGD::ASGD);
    mod.set_const("SVMSGD_HARD_MARGIN", cv::ml::SVMSGD::HARD_MARGIN);
    mod.set_const("SVMSGD_SGD", cv::ml::SVMSGD::SGD);
    mod.set_const("SVMSGD_SOFT_MARGIN", cv::ml::SVMSGD::SOFT_MARGIN);
    mod.set_const("SVM_C", cv::ml::SVM::C);
    mod.set_const("SVM_CHI2", cv::ml::SVM::CHI2);
    mod.set_const("SVM_COEF", cv::ml::SVM::COEF);
    mod.set_const("SVM_CUSTOM", cv::ml::SVM::CUSTOM);
    mod.set_const("SVM_C_SVC", cv::ml::SVM::C_SVC);
    mod.set_const("SVM_DEGREE", cv::ml::SVM::DEGREE);
    mod.set_const("SVM_EPS_SVR", cv::ml::SVM::EPS_SVR);
    mod.set_const("SVM_GAMMA", cv::ml::SVM::GAMMA);
    mod.set_const("SVM_INTER", cv::ml::SVM::INTER);
    mod.set_const("SVM_LINEAR", cv::ml::SVM::LINEAR);
    mod.set_const("SVM_NU", cv::ml::SVM::NU);
    mod.set_const("SVM_NU_SVC", cv::ml::SVM::NU_SVC);
    mod.set_const("SVM_NU_SVR", cv::ml::SVM::NU_SVR);
    mod.set_const("SVM_ONE_CLASS", cv::ml::SVM::ONE_CLASS);
    mod.set_const("SVM_P", cv::ml::SVM::P);
    mod.set_const("SVM_POLY", cv::ml::SVM::POLY);
    mod.set_const("SVM_RBF", cv::ml::SVM::RBF);
    mod.set_const("SVM_SIGMOID", cv::ml::SVM::SIGMOID);
    mod.set_const("StatModel_COMPRESSED_INPUT", cv::ml::StatModel::COMPRESSED_INPUT);
    mod.set_const("STAT_MODEL_COMPRESSED_INPUT", cv::ml::StatModel::COMPRESSED_INPUT);
    mod.set_const("StatModel_PREPROCESSED_INPUT", cv::ml::StatModel::PREPROCESSED_INPUT);
    mod.set_const("STAT_MODEL_PREPROCESSED_INPUT", cv::ml::StatModel::PREPROCESSED_INPUT);
    mod.set_const("StatModel_RAW_OUTPUT", cv::ml::StatModel::RAW_OUTPUT);
    mod.set_const("STAT_MODEL_RAW_OUTPUT", cv::ml::StatModel::RAW_OUTPUT);
    mod.set_const("StatModel_UPDATE_MODEL", cv::ml::StatModel::UPDATE_MODEL);
    mod.set_const("STAT_MODEL_UPDATE_MODEL", cv::ml::StatModel::UPDATE_MODEL);
    mod.set_const("TEST_ERROR", cv::ml::TEST_ERROR);
    mod.set_const("TRAIN_ERROR", cv::ml::TRAIN_ERROR);
    mod.set_const("VAR_CATEGORICAL", cv::ml::VAR_CATEGORICAL);
    mod.set_const("VAR_NUMERICAL", cv::ml::VAR_NUMERICAL);
    mod.set_const("VAR_ORDERED", cv::ml::VAR_ORDERED);
}

