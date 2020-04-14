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

JLCXX_MODULE cv_ml_wrap(jlcxx::Module &mod) {
using namespace cv::ml;
mod.add_type<cv::ml::ParamGrid>("ParamGrid");
mod.add_type<cv::ml::TrainData>("TrainData");
mod.add_type<cv::ml::StatModel>("StatModel", jlcxx::julia_base_type<cv::Algorithm>());
mod.add_type<cv::ml::NormalBayesClassifier>("NormalBayesClassifier", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::KNearest>("KNearest", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::SVM>("SVM", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::EM>("EM", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::DTrees>("DTrees", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::RTrees>("RTrees", jlcxx::julia_base_type<cv::ml::DTrees>());
mod.add_type<cv::ml::Boost>("Boost", jlcxx::julia_base_type<cv::ml::DTrees>());
mod.add_type<cv::ml::ANN_MLP>("ANN_MLP", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::LogisticRegression>("LogisticRegression", jlcxx::julia_base_type<cv::ml::StatModel>());
mod.add_type<cv::ml::SVMSGD>("SVMSGD", jlcxx::julia_base_type<cv::ml::StatModel>());

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

mod.method("jlopencv_ParamGrid_set_minVal", [](cv::ml::ParamGrid &cobj,const double &v) {cobj.minVal=v;});
mod.method("jlopencv_ParamGrid_set_maxVal", [](cv::ml::ParamGrid &cobj,const double &v) {cobj.maxVal=v;});
mod.method("jlopencv_ParamGrid_set_logStep", [](cv::ml::ParamGrid &cobj,const double &v) {cobj.logStep=v;});

mod.method("jlopencv_ParamGrid_get_minVal", [](const cv::ml::ParamGrid &cobj) {return cobj.minVal;});
mod.method("jlopencv_ParamGrid_get_maxVal", [](const cv::ml::ParamGrid &cobj) {return cobj.maxVal;});
mod.method("jlopencv_ParamGrid_get_logStep", [](const cv::ml::ParamGrid &cobj) {return cobj.logStep;});;

;
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getLayout",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getLayout();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNTrainSamples",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getNTrainSamples();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNTestSamples",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getNTestSamples();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNSamples",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getNSamples();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNVars",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getNVars();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNAllVars",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getNAllVars();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSample",  [](cv::ml::TrainData& cobj, Mat& varIdx, int& sidx, float& buf) { cobj.getSample(varIdx, sidx, &buf);  return buf;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSample",  [](cv::ml::TrainData& cobj, UMat& varIdx, int& sidx, float& buf) { cobj.getSample(varIdx, sidx, &buf);  return buf;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSamples",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getSamples();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getMissing",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getMissing();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSamples",  [](cv::ml::TrainData& cobj, int& layout, bool& compressSamples, bool& compressVars) { auto retval = cobj.getTrainSamples(layout, compressSamples, compressVars);  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainResponses",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getTrainResponses();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainNormCatResponses",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getTrainNormCatResponses();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestResponses",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getTestResponses();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestNormCatResponses",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getTestNormCatResponses();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getResponses",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getResponses();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNormCatResponses",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getNormCatResponses();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSampleWeights",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getSampleWeights();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSampleWeights",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getTrainSampleWeights();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSampleWeights",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getTestSampleWeights();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarIdx",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getVarIdx();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarType",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getVarType();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarSymbolFlags",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getVarSymbolFlags();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getResponseType",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getResponseType();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSampleIdx",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getTrainSampleIdx();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSampleIdx",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getTestSampleIdx();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getValues",  [](cv::ml::TrainData& cobj, int& vi, Mat& sidx, float& values) { cobj.getValues(vi, sidx, &values);  return values;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getValues",  [](cv::ml::TrainData& cobj, int& vi, UMat& sidx, float& values) { cobj.getValues(vi, sidx, &values);  return values;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getDefaultSubstValues",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getDefaultSubstValues();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatCount",  [](cv::ml::TrainData& cobj, int& vi) { auto retval = cobj.getCatCount(vi);  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getClassLabels",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getClassLabels();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatOfs",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getCatOfs();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatMap",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getCatMap();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_setTrainTestSplit",  [](cv::ml::TrainData& cobj, int& count, bool& shuffle) { cobj.setTrainTestSplit(count, shuffle);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_setTrainTestSplitRatio",  [](cv::ml::TrainData& cobj, double& ratio, bool& shuffle) { cobj.setTrainTestSplitRatio(ratio, shuffle);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_shuffleTrainTest",  [](cv::ml::TrainData& cobj) { cobj.shuffleTrainTest();  ;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSamples",  [](cv::ml::TrainData& cobj) { auto retval = cobj.getTestSamples();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNames",  [](cv::ml::TrainData& cobj, vector<string>& names) { cobj.getNames(names);  ;});

;
    mod.method("jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_getVarCount",  [](cv::Ptr<cv::ml::StatModel>& cobj) { auto retval = cobj->getVarCount();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_empty",  [](cv::Ptr<cv::ml::StatModel>& cobj) { auto retval = cobj->empty();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_isTrained",  [](cv::Ptr<cv::ml::StatModel>& cobj) { auto retval = cobj->isTrained();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_isClassifier",  [](cv::Ptr<cv::ml::StatModel>& cobj) { auto retval = cobj->isClassifier();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_train",  [](cv::Ptr<cv::ml::StatModel>& cobj, Ptr<TrainData>& trainData, int& flags) { auto retval = cobj->train(trainData, flags);  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_train",  [](cv::Ptr<cv::ml::StatModel>& cobj, Mat& samples, int& layout, Mat& responses) { auto retval = cobj->train(samples, layout, responses);  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_train",  [](cv::Ptr<cv::ml::StatModel>& cobj, UMat& samples, int& layout, UMat& responses) { auto retval = cobj->train(samples, layout, responses);  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_calcError",  [](cv::Ptr<cv::ml::StatModel>& cobj, Ptr<TrainData>& data, bool& test, Mat& resp) { auto retval = cobj->calcError(data, test, resp);  return make_tuple(move(retval),move(resp));});
    mod.method("jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_calcError",  [](cv::Ptr<cv::ml::StatModel>& cobj, Ptr<TrainData>& data, bool& test, UMat& resp) { auto retval = cobj->calcError(data, test, resp);  return make_tuple(move(retval),move(resp));});
    mod.method("jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_predict",  [](cv::Ptr<cv::ml::StatModel>& cobj, Mat& samples, Mat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_predict",  [](cv::Ptr<cv::ml::StatModel>& cobj, UMat& samples, UMat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple(move(retval),move(results));});

;
    mod.method("jlopencv_cv_ml_cv_ml_NormalBayesClassifier_cv_ml_NormalBayesClassifier_predictProb",  [](cv::Ptr<cv::ml::NormalBayesClassifier>& cobj, Mat& inputs, Mat& outputs, Mat& outputProbs, int& flags) { auto retval = cobj->predictProb(inputs, outputs, outputProbs, flags);  return make_tuple(move(retval),move(outputs),move(outputProbs));});
    mod.method("jlopencv_cv_ml_cv_ml_NormalBayesClassifier_cv_ml_NormalBayesClassifier_predictProb",  [](cv::Ptr<cv::ml::NormalBayesClassifier>& cobj, UMat& inputs, UMat& outputs, UMat& outputProbs, int& flags) { auto retval = cobj->predictProb(inputs, outputs, outputProbs, flags);  return make_tuple(move(retval),move(outputs),move(outputProbs));});

;
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getDefaultK",  [](cv::Ptr<cv::ml::KNearest>& cobj) { auto retval = cobj->getDefaultK();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setDefaultK",  [](cv::Ptr<cv::ml::KNearest>& cobj, int& val) { cobj->setDefaultK(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getIsClassifier",  [](cv::Ptr<cv::ml::KNearest>& cobj) { auto retval = cobj->getIsClassifier();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setIsClassifier",  [](cv::Ptr<cv::ml::KNearest>& cobj, bool& val) { cobj->setIsClassifier(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getEmax",  [](cv::Ptr<cv::ml::KNearest>& cobj) { auto retval = cobj->getEmax();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setEmax",  [](cv::Ptr<cv::ml::KNearest>& cobj, int& val) { cobj->setEmax(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getAlgorithmType",  [](cv::Ptr<cv::ml::KNearest>& cobj) { auto retval = cobj->getAlgorithmType();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setAlgorithmType",  [](cv::Ptr<cv::ml::KNearest>& cobj, int& val) { cobj->setAlgorithmType(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_findNearest",  [](cv::Ptr<cv::ml::KNearest>& cobj, Mat& samples, int& k, Mat& results, Mat& neighborResponses, Mat& dist) { auto retval = cobj->findNearest(samples, k, results, neighborResponses, dist);  return make_tuple(move(retval),move(results),move(neighborResponses),move(dist));});
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_findNearest",  [](cv::Ptr<cv::ml::KNearest>& cobj, UMat& samples, int& k, UMat& results, UMat& neighborResponses, UMat& dist) { auto retval = cobj->findNearest(samples, k, results, neighborResponses, dist);  return make_tuple(move(retval),move(results),move(neighborResponses),move(dist));});

;
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getType",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getType();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setType",  [](cv::Ptr<cv::ml::SVM>& cobj, int& val) { cobj->setType(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getGamma",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getGamma();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setGamma",  [](cv::Ptr<cv::ml::SVM>& cobj, double& val) { cobj->setGamma(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getCoef0",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getCoef0();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setCoef0",  [](cv::Ptr<cv::ml::SVM>& cobj, double& val) { cobj->setCoef0(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getDegree",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getDegree();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setDegree",  [](cv::Ptr<cv::ml::SVM>& cobj, double& val) { cobj->setDegree(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getC",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getC();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setC",  [](cv::Ptr<cv::ml::SVM>& cobj, double& val) { cobj->setC(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getNu",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getNu();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setNu",  [](cv::Ptr<cv::ml::SVM>& cobj, double& val) { cobj->setNu(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getP",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getP();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setP",  [](cv::Ptr<cv::ml::SVM>& cobj, double& val) { cobj->setP(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getClassWeights",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getClassWeights();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setClassWeights",  [](cv::Ptr<cv::ml::SVM>& cobj, Mat& val) { cobj->setClassWeights(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setClassWeights",  [](cv::Ptr<cv::ml::SVM>& cobj, Mat& val) { cobj->setClassWeights(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getTermCriteria",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setTermCriteria",  [](cv::Ptr<cv::ml::SVM>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getKernelType",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getKernelType();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setKernel",  [](cv::Ptr<cv::ml::SVM>& cobj, int& kernelType) { cobj->setKernel(kernelType);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_trainAuto",  [](cv::Ptr<cv::ml::SVM>& cobj, Mat& samples, int& layout, Mat& responses, int& kFold, Ptr<ParamGrid>& Cgrid, Ptr<ParamGrid>& gammaGrid, Ptr<ParamGrid>& pGrid, Ptr<ParamGrid>& nuGrid, Ptr<ParamGrid>& coeffGrid, Ptr<ParamGrid>& degreeGrid, bool& balanced) { auto retval = cobj->trainAuto(samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced);  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_trainAuto",  [](cv::Ptr<cv::ml::SVM>& cobj, UMat& samples, int& layout, UMat& responses, int& kFold, Ptr<ParamGrid>& Cgrid, Ptr<ParamGrid>& gammaGrid, Ptr<ParamGrid>& pGrid, Ptr<ParamGrid>& nuGrid, Ptr<ParamGrid>& coeffGrid, Ptr<ParamGrid>& degreeGrid, bool& balanced) { auto retval = cobj->trainAuto(samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced);  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getSupportVectors",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getSupportVectors();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getUncompressedSupportVectors",  [](cv::Ptr<cv::ml::SVM>& cobj) { auto retval = cobj->getUncompressedSupportVectors();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getDecisionFunction",  [](cv::Ptr<cv::ml::SVM>& cobj, int& i, Mat& alpha, Mat& svidx) { auto retval = cobj->getDecisionFunction(i, alpha, svidx);  return make_tuple(move(retval),move(alpha),move(svidx));});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getDecisionFunction",  [](cv::Ptr<cv::ml::SVM>& cobj, int& i, UMat& alpha, UMat& svidx) { auto retval = cobj->getDecisionFunction(i, alpha, svidx);  return make_tuple(move(retval),move(alpha),move(svidx));});

;
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getClustersNumber",  [](cv::Ptr<cv::ml::EM>& cobj) { auto retval = cobj->getClustersNumber();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setClustersNumber",  [](cv::Ptr<cv::ml::EM>& cobj, int& val) { cobj->setClustersNumber(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getCovarianceMatrixType",  [](cv::Ptr<cv::ml::EM>& cobj) { auto retval = cobj->getCovarianceMatrixType();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setCovarianceMatrixType",  [](cv::Ptr<cv::ml::EM>& cobj, int& val) { cobj->setCovarianceMatrixType(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getTermCriteria",  [](cv::Ptr<cv::ml::EM>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setTermCriteria",  [](cv::Ptr<cv::ml::EM>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getWeights",  [](cv::Ptr<cv::ml::EM>& cobj) { auto retval = cobj->getWeights();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getMeans",  [](cv::Ptr<cv::ml::EM>& cobj) { auto retval = cobj->getMeans();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getCovs",  [](cv::Ptr<cv::ml::EM>& cobj, vector<Mat>& covs) { cobj->getCovs(covs);  return covs;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getCovs",  [](cv::Ptr<cv::ml::EM>& cobj, vector<Mat>& covs) { cobj->getCovs(covs);  return covs;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict",  [](cv::Ptr<cv::ml::EM>& cobj, Mat& samples, Mat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict",  [](cv::Ptr<cv::ml::EM>& cobj, UMat& samples, UMat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict2",  [](cv::Ptr<cv::ml::EM>& cobj, Mat& sample, Mat& probs) { auto retval = cobj->predict2(sample, probs);  return make_tuple(move(retval),move(probs));});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict2",  [](cv::Ptr<cv::ml::EM>& cobj, UMat& sample, UMat& probs) { auto retval = cobj->predict2(sample, probs);  return make_tuple(move(retval),move(probs));});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainEM",  [](cv::Ptr<cv::ml::EM>& cobj, Mat& samples, Mat& logLikelihoods, Mat& labels, Mat& probs) { auto retval = cobj->trainEM(samples, logLikelihoods, labels, probs);  return make_tuple(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainEM",  [](cv::Ptr<cv::ml::EM>& cobj, UMat& samples, UMat& logLikelihoods, UMat& labels, UMat& probs) { auto retval = cobj->trainEM(samples, logLikelihoods, labels, probs);  return make_tuple(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainE",  [](cv::Ptr<cv::ml::EM>& cobj, Mat& samples, Mat& means0, Mat& covs0, Mat& weights0, Mat& logLikelihoods, Mat& labels, Mat& probs) { auto retval = cobj->trainE(samples, means0, covs0, weights0, logLikelihoods, labels, probs);  return make_tuple(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainE",  [](cv::Ptr<cv::ml::EM>& cobj, UMat& samples, UMat& means0, UMat& covs0, UMat& weights0, UMat& logLikelihoods, UMat& labels, UMat& probs) { auto retval = cobj->trainE(samples, means0, covs0, weights0, logLikelihoods, labels, probs);  return make_tuple(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainM",  [](cv::Ptr<cv::ml::EM>& cobj, Mat& samples, Mat& probs0, Mat& logLikelihoods, Mat& labels, Mat& probs) { auto retval = cobj->trainM(samples, probs0, logLikelihoods, labels, probs);  return make_tuple(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainM",  [](cv::Ptr<cv::ml::EM>& cobj, UMat& samples, UMat& probs0, UMat& logLikelihoods, UMat& labels, UMat& probs) { auto retval = cobj->trainM(samples, probs0, logLikelihoods, labels, probs);  return make_tuple(move(retval),move(logLikelihoods),move(labels),move(probs));});

;
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMaxCategories",  [](cv::Ptr<cv::ml::DTrees>& cobj) { auto retval = cobj->getMaxCategories();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMaxCategories",  [](cv::Ptr<cv::ml::DTrees>& cobj, int& val) { cobj->setMaxCategories(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMaxDepth",  [](cv::Ptr<cv::ml::DTrees>& cobj) { auto retval = cobj->getMaxDepth();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMaxDepth",  [](cv::Ptr<cv::ml::DTrees>& cobj, int& val) { cobj->setMaxDepth(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMinSampleCount",  [](cv::Ptr<cv::ml::DTrees>& cobj) { auto retval = cobj->getMinSampleCount();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMinSampleCount",  [](cv::Ptr<cv::ml::DTrees>& cobj, int& val) { cobj->setMinSampleCount(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getCVFolds",  [](cv::Ptr<cv::ml::DTrees>& cobj) { auto retval = cobj->getCVFolds();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setCVFolds",  [](cv::Ptr<cv::ml::DTrees>& cobj, int& val) { cobj->setCVFolds(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getUseSurrogates",  [](cv::Ptr<cv::ml::DTrees>& cobj) { auto retval = cobj->getUseSurrogates();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setUseSurrogates",  [](cv::Ptr<cv::ml::DTrees>& cobj, bool& val) { cobj->setUseSurrogates(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getUse1SERule",  [](cv::Ptr<cv::ml::DTrees>& cobj) { auto retval = cobj->getUse1SERule();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setUse1SERule",  [](cv::Ptr<cv::ml::DTrees>& cobj, bool& val) { cobj->setUse1SERule(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getTruncatePrunedTree",  [](cv::Ptr<cv::ml::DTrees>& cobj) { auto retval = cobj->getTruncatePrunedTree();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setTruncatePrunedTree",  [](cv::Ptr<cv::ml::DTrees>& cobj, bool& val) { cobj->setTruncatePrunedTree(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getRegressionAccuracy",  [](cv::Ptr<cv::ml::DTrees>& cobj) { auto retval = cobj->getRegressionAccuracy();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setRegressionAccuracy",  [](cv::Ptr<cv::ml::DTrees>& cobj, float& val) { cobj->setRegressionAccuracy(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getPriors",  [](cv::Ptr<cv::ml::DTrees>& cobj) { auto retval = cobj->getPriors();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setPriors",  [](cv::Ptr<cv::ml::DTrees>& cobj, Mat& val) { cobj->setPriors(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setPriors",  [](cv::Ptr<cv::ml::DTrees>& cobj, Mat& val) { cobj->setPriors(val);  ;});

;
    mod.method("jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getCalculateVarImportance",  [](cv::Ptr<cv::ml::RTrees>& cobj) { auto retval = cobj->getCalculateVarImportance();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setCalculateVarImportance",  [](cv::Ptr<cv::ml::RTrees>& cobj, bool& val) { cobj->setCalculateVarImportance(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getActiveVarCount",  [](cv::Ptr<cv::ml::RTrees>& cobj) { auto retval = cobj->getActiveVarCount();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setActiveVarCount",  [](cv::Ptr<cv::ml::RTrees>& cobj, int& val) { cobj->setActiveVarCount(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getTermCriteria",  [](cv::Ptr<cv::ml::RTrees>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setTermCriteria",  [](cv::Ptr<cv::ml::RTrees>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getVarImportance",  [](cv::Ptr<cv::ml::RTrees>& cobj) { auto retval = cobj->getVarImportance();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getVotes",  [](cv::Ptr<cv::ml::RTrees>& cobj, Mat& samples, int& flags, Mat& results) { cobj->getVotes(samples, results, flags);  return results;});
    mod.method("jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getVotes",  [](cv::Ptr<cv::ml::RTrees>& cobj, UMat& samples, int& flags, UMat& results) { cobj->getVotes(samples, results, flags);  return results;});

;
    mod.method("jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getBoostType",  [](cv::Ptr<cv::ml::Boost>& cobj) { auto retval = cobj->getBoostType();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setBoostType",  [](cv::Ptr<cv::ml::Boost>& cobj, int& val) { cobj->setBoostType(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getWeakCount",  [](cv::Ptr<cv::ml::Boost>& cobj) { auto retval = cobj->getWeakCount();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setWeakCount",  [](cv::Ptr<cv::ml::Boost>& cobj, int& val) { cobj->setWeakCount(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getWeightTrimRate",  [](cv::Ptr<cv::ml::Boost>& cobj) { auto retval = cobj->getWeightTrimRate();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setWeightTrimRate",  [](cv::Ptr<cv::ml::Boost>& cobj, double& val) { cobj->setWeightTrimRate(val);  ;});

;
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setTrainMethod",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, int& method, double& param1, double& param2) { cobj->setTrainMethod(method, param1, param2);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getTrainMethod",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getTrainMethod();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setActivationFunction",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, int& type, double& param1, double& param2) { cobj->setActivationFunction(type, param1, param2);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setLayerSizes",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, Mat& _layer_sizes) { cobj->setLayerSizes(_layer_sizes);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setLayerSizes",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, UMat& _layer_sizes) { cobj->setLayerSizes(_layer_sizes);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getLayerSizes",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getLayerSizes();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getTermCriteria",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setTermCriteria",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getBackpropWeightScale",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getBackpropWeightScale();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setBackpropWeightScale",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, double& val) { cobj->setBackpropWeightScale(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getBackpropMomentumScale",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getBackpropMomentumScale();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setBackpropMomentumScale",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, double& val) { cobj->setBackpropMomentumScale(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDW0",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getRpropDW0();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDW0",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, double& val) { cobj->setRpropDW0(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWPlus",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getRpropDWPlus();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWPlus",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, double& val) { cobj->setRpropDWPlus(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMinus",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getRpropDWMinus();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMinus",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, double& val) { cobj->setRpropDWMinus(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMin",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getRpropDWMin();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMin",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, double& val) { cobj->setRpropDWMin(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMax",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getRpropDWMax();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMax",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, double& val) { cobj->setRpropDWMax(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealInitialT",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getAnnealInitialT();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealInitialT",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, double& val) { cobj->setAnnealInitialT(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealFinalT",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getAnnealFinalT();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealFinalT",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, double& val) { cobj->setAnnealFinalT(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealCoolingRatio",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getAnnealCoolingRatio();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealCoolingRatio",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, double& val) { cobj->setAnnealCoolingRatio(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealItePerStep",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj) { auto retval = cobj->getAnnealItePerStep();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealItePerStep",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, int& val) { cobj->setAnnealItePerStep(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getWeights",  [](cv::Ptr<cv::ml::ANN_MLP>& cobj, int& layerIdx) { auto retval = cobj->getWeights(layerIdx);  return retval;});

;
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getLearningRate",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj) { auto retval = cobj->getLearningRate();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setLearningRate",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj, double& val) { cobj->setLearningRate(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getIterations",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj) { auto retval = cobj->getIterations();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setIterations",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj, int& val) { cobj->setIterations(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getRegularization",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj) { auto retval = cobj->getRegularization();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setRegularization",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj, int& val) { cobj->setRegularization(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getTrainMethod",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj) { auto retval = cobj->getTrainMethod();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setTrainMethod",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj, int& val) { cobj->setTrainMethod(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getMiniBatchSize",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj) { auto retval = cobj->getMiniBatchSize();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setMiniBatchSize",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj, int& val) { cobj->setMiniBatchSize(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getTermCriteria",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setTermCriteria",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_predict",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj, Mat& samples, Mat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_predict",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj, UMat& samples, UMat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_get_learnt_thetas",  [](cv::Ptr<cv::ml::LogisticRegression>& cobj) { auto retval = cobj->get_learnt_thetas();  return retval;});

;
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getWeights",  [](cv::Ptr<cv::ml::SVMSGD>& cobj) { auto retval = cobj->getWeights();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getShift",  [](cv::Ptr<cv::ml::SVMSGD>& cobj) { auto retval = cobj->getShift();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setOptimalParameters",  [](cv::Ptr<cv::ml::SVMSGD>& cobj, int& svmsgdType, int& marginType) { cobj->setOptimalParameters(svmsgdType, marginType);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getSvmsgdType",  [](cv::Ptr<cv::ml::SVMSGD>& cobj) { auto retval = cobj->getSvmsgdType();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setSvmsgdType",  [](cv::Ptr<cv::ml::SVMSGD>& cobj, int& svmsgdType) { cobj->setSvmsgdType(svmsgdType);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getMarginType",  [](cv::Ptr<cv::ml::SVMSGD>& cobj) { auto retval = cobj->getMarginType();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setMarginType",  [](cv::Ptr<cv::ml::SVMSGD>& cobj, int& marginType) { cobj->setMarginType(marginType);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getMarginRegularization",  [](cv::Ptr<cv::ml::SVMSGD>& cobj) { auto retval = cobj->getMarginRegularization();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setMarginRegularization",  [](cv::Ptr<cv::ml::SVMSGD>& cobj, float& marginRegularization) { cobj->setMarginRegularization(marginRegularization);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getInitialStepSize",  [](cv::Ptr<cv::ml::SVMSGD>& cobj) { auto retval = cobj->getInitialStepSize();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setInitialStepSize",  [](cv::Ptr<cv::ml::SVMSGD>& cobj, float& InitialStepSize) { cobj->setInitialStepSize(InitialStepSize);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getStepDecreasingPower",  [](cv::Ptr<cv::ml::SVMSGD>& cobj) { auto retval = cobj->getStepDecreasingPower();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setStepDecreasingPower",  [](cv::Ptr<cv::ml::SVMSGD>& cobj, float& stepDecreasingPower) { cobj->setStepDecreasingPower(stepDecreasingPower);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getTermCriteria",  [](cv::Ptr<cv::ml::SVMSGD>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setTermCriteria",  [](cv::Ptr<cv::ml::SVMSGD>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_cv_ml_ParamGrid_create",  [](double& minVal, double& maxVal, double& logstep) { auto retval = cv::ml::ParamGrid::create(minVal, maxVal, logstep); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_getSubVector",  [](Mat& vec, Mat& idx) { auto retval = cv::ml::TrainData::getSubVector(vec, idx); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_getSubVector",  [](Mat& vec, Mat& idx) { auto retval = cv::ml::TrainData::getSubVector(vec, idx); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_getSubMatrix",  [](Mat& matrix, Mat& idx, int& layout) { auto retval = cv::ml::TrainData::getSubMatrix(matrix, idx, layout); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_getSubMatrix",  [](Mat& matrix, Mat& idx, int& layout) { auto retval = cv::ml::TrainData::getSubMatrix(matrix, idx, layout); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_create",  [](Mat& samples, int& layout, Mat& responses, Mat& varIdx, Mat& sampleIdx, Mat& sampleWeights, Mat& varType) { auto retval = cv::ml::TrainData::create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_TrainData_create",  [](UMat& samples, int& layout, UMat& responses, UMat& varIdx, UMat& sampleIdx, UMat& sampleWeights, UMat& varType) { auto retval = cv::ml::TrainData::create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_NormalBayesClassifier_create",  []() { auto retval = cv::ml::NormalBayesClassifier::create(); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_NormalBayesClassifier_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::NormalBayesClassifier::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_create",  []() { auto retval = cv::ml::KNearest::create(); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_KNearest_load",  [](string& filepath) { auto retval = cv::ml::KNearest::load(filepath); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_getDefaultGridPtr",  [](int& param_id) { auto retval = cv::ml::SVM::getDefaultGridPtr(param_id); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_create",  []() { auto retval = cv::ml::SVM::create(); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVM_load",  [](string& filepath) { auto retval = cv::ml::SVM::load(filepath); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_create",  []() { auto retval = cv::ml::EM::create(); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_EM_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::EM::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_create",  []() { auto retval = cv::ml::DTrees::create(); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_DTrees_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::DTrees::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_RTrees_create",  []() { auto retval = cv::ml::RTrees::create(); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_RTrees_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::RTrees::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_Boost_create",  []() { auto retval = cv::ml::Boost::create(); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_Boost_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::Boost::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_create",  []() { auto retval = cv::ml::ANN_MLP::create(); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_ANN_MLP_load",  [](string& filepath) { auto retval = cv::ml::ANN_MLP::load(filepath); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_create",  []() { auto retval = cv::ml::LogisticRegression::create(); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_LogisticRegression_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::LogisticRegression::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_create",  []() { auto retval = cv::ml::SVMSGD::create(); return retval;});
    mod.method("jlopencv_cv_ml_cv_ml_SVMSGD_load",  [](string& filepath, string& nodeName) { auto retval = cv::ml::SVMSGD::load(filepath, nodeName); return retval;});    mod.set_const("ANN_MLP_ANNEAL", cv::ml::ANN_MLP::ANNEAL);
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
    mod.set_const("SVMSGD_ASGD", cv::ml::SVMSGD::ASGD);
    mod.set_const("SVMSGD_HARD_MARGIN", cv::ml::SVMSGD::HARD_MARGIN);
    mod.set_const("SVMSGD_SGD", cv::ml::SVMSGD::SGD);
    mod.set_const("SVMSGD_SOFT_MARGIN", cv::ml::SVMSGD::SOFT_MARGIN);
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

