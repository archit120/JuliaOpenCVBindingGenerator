#include "jlcv2.hpp"

namespace jlcxx
{



} // namespace jlcxx

JLCXX_MODULE cv_flann_wrap(jlcxx::Module &mod) {
using namespace cv::flann;
mod.add_type<cv::flann::Index>("Index");

    mod.add_bits<cv::flann::FlannIndexType>("FlannIndexType", jlcxx::julia_type("CppEnum"));   mod.add_type<cvflann::flann_distance_t>("cvflann_flann_distance_t");
   mod.add_type<cvflann_flann_distance_t>("cvflann_flann_distance_t");
   mod.add_type<cvflann::flann_algorithm_t>("cvflann_flann_algorithm_t");
mod.method("Index", []() {  return jlcxx::create<cv::flann::Index>();});mod.method("Index", [](Mat& features, IndexParams& params, cvflann_flann_distance_t& distType) {  return jlcxx::create<cv::flann::Index>(features ,params ,distType);});mod.method("Index", [](UMat& features, IndexParams& params, cvflann_flann_distance_t& distType) {  return jlcxx::create<cv::flann::Index>(features ,params ,distType);});

;
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_build",  [](cv::flann::Index& cobj, Mat& features, IndexParams& params, cvflann_flann_distance_t& distType) { cobj.build(features, params, distType);  ;});
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_build",  [](cv::flann::Index& cobj, UMat& features, IndexParams& params, cvflann_flann_distance_t& distType) { cobj.build(features, params, distType);  ;});
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_knnSearch",  [](cv::flann::Index& cobj, Mat& query, int& knn, Mat& indices, Mat& dists, SearchParams& params) { cobj.knnSearch(query, indices, dists, knn, params);  return make_tuple(move(indices),move(dists));});
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_knnSearch",  [](cv::flann::Index& cobj, UMat& query, int& knn, UMat& indices, UMat& dists, SearchParams& params) { cobj.knnSearch(query, indices, dists, knn, params);  return make_tuple(move(indices),move(dists));});
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_radiusSearch",  [](cv::flann::Index& cobj, Mat& query, double& radius, int& maxResults, Mat& indices, Mat& dists, SearchParams& params) { auto retval = cobj.radiusSearch(query, indices, dists, radius, maxResults, params);  return make_tuple(move(retval),move(indices),move(dists));});
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_radiusSearch",  [](cv::flann::Index& cobj, UMat& query, double& radius, int& maxResults, UMat& indices, UMat& dists, SearchParams& params) { auto retval = cobj.radiusSearch(query, indices, dists, radius, maxResults, params);  return make_tuple(move(retval),move(indices),move(dists));});
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_save",  [](cv::flann::Index& cobj, string& filename) { cobj.save(filename);  ;});
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_load",  [](cv::flann::Index& cobj, Mat& features, string& filename) { auto retval = cobj.load(features, filename);  return retval;});
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_load",  [](cv::flann::Index& cobj, UMat& features, string& filename) { auto retval = cobj.load(features, filename);  return retval;});
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_release",  [](cv::flann::Index& cobj) { cobj.release();  ;});
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_getDistance",  [](cv::flann::Index& cobj) { auto retval = cobj.getDistance();  return retval;});
    mod.method("jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_getAlgorithm",  [](cv::flann::Index& cobj) { auto retval = cobj.getAlgorithm();  return retval;});    mod.set_const("FLANN_INDEX_TYPE_16S", cv::flann::FLANN_INDEX_TYPE_16S);
    mod.set_const("FLANN_INDEX_TYPE_16U", cv::flann::FLANN_INDEX_TYPE_16U);
    mod.set_const("FLANN_INDEX_TYPE_32F", cv::flann::FLANN_INDEX_TYPE_32F);
    mod.set_const("FLANN_INDEX_TYPE_32S", cv::flann::FLANN_INDEX_TYPE_32S);
    mod.set_const("FLANN_INDEX_TYPE_64F", cv::flann::FLANN_INDEX_TYPE_64F);
    mod.set_const("FLANN_INDEX_TYPE_8S", cv::flann::FLANN_INDEX_TYPE_8S);
    mod.set_const("FLANN_INDEX_TYPE_8U", cv::flann::FLANN_INDEX_TYPE_8U);
    mod.set_const("FLANN_INDEX_TYPE_ALGORITHM", cv::flann::FLANN_INDEX_TYPE_ALGORITHM);
    mod.set_const("FLANN_INDEX_TYPE_BOOL", cv::flann::FLANN_INDEX_TYPE_BOOL);
    mod.set_const("FLANN_INDEX_TYPE_STRING", cv::flann::FLANN_INDEX_TYPE_STRING);
    mod.set_const("LAST_VALUE_FLANN_INDEX_TYPE", cv::flann::LAST_VALUE_FLANN_INDEX_TYPE);
}

