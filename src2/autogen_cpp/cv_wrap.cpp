
#include "jlcxx/jlcxx.hpp"
#include "jlcxx/functions.hpp"
#include "jlcxx/stl.hpp"
#include "jlcxx/array.hpp"
#include "jlcxx/tuple.hpp"

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d.hpp>
#include <opencv2/core/utility.hpp>
#include <opencv2/objdetect.hpp>
#include <opencv2/imgproc.hpp>
#include "opencv2/highgui.hpp"
#include "opencv2/videoio.hpp"

using namespace cv;
using namespace std;
using namespace jlcxx;

#include "jlcv2.hpp"


namespace jlcxx
{
template <typename T>
struct IsSmartPointerType<cv::Ptr<T>> : std::true_type
{
};
template <typename T>
struct ConstructorPointerType<cv::Ptr<T>>
{
    typedef T *type;
};

template<typename T, int Val>
struct BuildParameterList<cv::Vec<T, Val>>
{
typedef ParameterList<T, std::integral_constant<int, Val>> type;
};

template <>
struct SuperType<cv::dnn::Layer>
{
    typedef cv::Algorithm type;
};

template <>
struct SuperType<cv::dnn::Model>
{
    typedef cv::dnn::Net type;
};

template <>
struct SuperType<cv::dnn::ClassificationModel>
{
    typedef cv::dnn::Model type;
};

template <>
struct SuperType<cv::dnn::KeypointsModel>
{
    typedef cv::dnn::Model type;
};

template <>
struct SuperType<cv::dnn::SegmentationModel>
{
    typedef cv::dnn::Model type;
};

template <>
struct SuperType<cv::dnn::DetectionModel>
{
    typedef cv::dnn::Model type;
};


} // namespace jlcxx
JLCXX_MODULE cv_wrap(jlcxx::Module &mod)
{
    mod.map_type<RotatedRect>("RotatedRect");
    mod.map_type<TermCriteria>("TermCriteria");
    mod.map_type<Range>("Range");

    mod.add_type<Parametric<TypeVar<1>, TypeVar<2>>>("CxxVec")
        .apply<Vec4f, Vec6f, Vec3d, Vec2d>([](auto wrapped){
            typedef typename decltype(wrapped)::type WrappedT;
            typedef typename get_template_type_vec<WrappedT>::type T;
            wrapped.template constructor<const T*>();
        });

    mod.add_type<Mat>("CxxMat").constructor<int, const int *, int, void *, const size_t *>();

    mod.method("jlopencv_core_get_sizet", [](){return sizeof(size_t);});
    jlcxx::add_smart_pointer<cv::Ptr>(mod, "cv_Ptr");
    mod.method("jlopencv_core_Mat_mutable_data", [](Mat m) {
        return make_tuple(m.data, m.type(), m.channels(), m.size[1], m.size[0], m.step[1], m.step[0]);
    });


    mod.add_type<Parametric<TypeVar<1>>>("CxxScalar")
        .apply<Scalar_<int>, Scalar_<float>, Scalar_<double>>([](auto wrapped) {
                typedef typename decltype(wrapped)::type WrappedT;
                typedef typename get_template_type<WrappedT>::type T;
                wrapped.template constructor<T, T, T, T>();
            });

    using namespace cv;
mod.add_type<cv::Algorithm>("Algorithm");
   mod.add_type<FileNode>("FileNode");
   mod.add_type<FileStorage>("FileStorage");
using namespace cv::dnn;
mod.add_type<cv::dnn::Layer>("Layer", jlcxx::julia_base_type<cv::Algorithm>());
mod.add_type<cv::dnn::Net>("Net");
mod.add_type<cv::dnn::Model>("Model", jlcxx::julia_base_type<cv::dnn::Net>());
mod.add_type<cv::dnn::ClassificationModel>("ClassificationModel", jlcxx::julia_base_type<cv::dnn::Model>());
mod.add_type<cv::dnn::KeypointsModel>("KeypointsModel", jlcxx::julia_base_type<cv::dnn::Model>());
mod.add_type<cv::dnn::SegmentationModel>("SegmentationModel", jlcxx::julia_base_type<cv::dnn::Model>());
mod.add_type<cv::dnn::DetectionModel>("DetectionModel", jlcxx::julia_base_type<cv::dnn::Model>());
   mod.add_type<LayerId>("LayerId");
   mod.add_type<AsyncArray>("AsyncArray");


;
    mod.method("jlopencv_cv_cv_Algorithm_cv_Algorithm_clear",  [](cv::Algorithm& cobj) { cobj.clear();  ;});
    mod.method("jlopencv_cv_cv_Algorithm_cv_Algorithm_write",  [](cv::Algorithm& cobj, Ptr<FileStorage>& fs, string& name) { cobj.write(fs, name);  ;});
    mod.method("jlopencv_cv_cv_Algorithm_cv_Algorithm_read",  [](cv::Algorithm& cobj, FileNode& fn) { cobj.read(fn);  ;});
    mod.method("jlopencv_cv_cv_Algorithm_cv_Algorithm_empty",  [](cv::Algorithm& cobj) { auto retval = cobj.empty();  return retval;});
    mod.method("jlopencv_cv_cv_Algorithm_cv_Algorithm_save",  [](cv::Algorithm& cobj, string& filename) { cobj.save(filename);  ;});
    mod.method("jlopencv_cv_cv_Algorithm_cv_Algorithm_getDefaultName",  [](cv::Algorithm& cobj) { auto retval = cobj.getDefaultName();  return retval;});
    mod.method("jlopencv_cv_cv_borderInterpolate",  [](int& p, int& len, int& borderType) { auto retval = cv::borderInterpolate(p, len, borderType); return retval;});
    mod.method("jlopencv_cv_cv_copyMakeBorder",  [](Mat& src, int& top, int& bottom, int& left, int& right, int& borderType, Mat& dst, Scalar& value) { cv::copyMakeBorder(src, dst, top, bottom, left, right, borderType, value); return dst;});
    mod.method("jlopencv_cv_cv_copyMakeBorder",  [](UMat& src, int& top, int& bottom, int& left, int& right, int& borderType, UMat& dst, Scalar& value) { cv::copyMakeBorder(src, dst, top, bottom, left, right, borderType, value); return dst;});
    mod.method("jlopencv_cv_cv_add",  [](Mat& src1, Mat& src2, Mat& dst, Mat& mask, int& dtype) { cv::add(src1, src2, dst, mask, dtype); return dst;});
    mod.method("jlopencv_cv_cv_add",  [](UMat& src1, UMat& src2, UMat& dst, UMat& mask, int& dtype) { cv::add(src1, src2, dst, mask, dtype); return dst;});
    mod.method("jlopencv_cv_cv_subtract",  [](Mat& src1, Mat& src2, Mat& dst, Mat& mask, int& dtype) { cv::subtract(src1, src2, dst, mask, dtype); return dst;});
    mod.method("jlopencv_cv_cv_subtract",  [](UMat& src1, UMat& src2, UMat& dst, UMat& mask, int& dtype) { cv::subtract(src1, src2, dst, mask, dtype); return dst;});
    mod.method("jlopencv_cv_cv_multiply",  [](Mat& src1, Mat& src2, Mat& dst, double& scale, int& dtype) { cv::multiply(src1, src2, dst, scale, dtype); return dst;});
    mod.method("jlopencv_cv_cv_multiply",  [](UMat& src1, UMat& src2, UMat& dst, double& scale, int& dtype) { cv::multiply(src1, src2, dst, scale, dtype); return dst;});
    mod.method("jlopencv_cv_cv_divide",  [](Mat& src1, Mat& src2, Mat& dst, double& scale, int& dtype) { cv::divide(src1, src2, dst, scale, dtype); return dst;});
    mod.method("jlopencv_cv_cv_divide",  [](UMat& src1, UMat& src2, UMat& dst, double& scale, int& dtype) { cv::divide(src1, src2, dst, scale, dtype); return dst;});
    mod.method("jlopencv_cv_cv_divide",  [](double& scale, Mat& src2, Mat& dst, int& dtype) { cv::divide(scale, src2, dst, dtype); return dst;});
    mod.method("jlopencv_cv_cv_divide",  [](double& scale, UMat& src2, UMat& dst, int& dtype) { cv::divide(scale, src2, dst, dtype); return dst;});
    mod.method("jlopencv_cv_cv_scaleAdd",  [](Mat& src1, double& alpha, Mat& src2, Mat& dst) { cv::scaleAdd(src1, alpha, src2, dst); return dst;});
    mod.method("jlopencv_cv_cv_scaleAdd",  [](UMat& src1, double& alpha, UMat& src2, UMat& dst) { cv::scaleAdd(src1, alpha, src2, dst); return dst;});
    mod.method("jlopencv_cv_cv_addWeighted",  [](Mat& src1, double& alpha, Mat& src2, double& beta, double& gamma, Mat& dst, int& dtype) { cv::addWeighted(src1, alpha, src2, beta, gamma, dst, dtype); return dst;});
    mod.method("jlopencv_cv_cv_addWeighted",  [](UMat& src1, double& alpha, UMat& src2, double& beta, double& gamma, UMat& dst, int& dtype) { cv::addWeighted(src1, alpha, src2, beta, gamma, dst, dtype); return dst;});
    mod.method("jlopencv_cv_cv_convertScaleAbs",  [](Mat& src, Mat& dst, double& alpha, double& beta) { cv::convertScaleAbs(src, dst, alpha, beta); return dst;});
    mod.method("jlopencv_cv_cv_convertScaleAbs",  [](UMat& src, UMat& dst, double& alpha, double& beta) { cv::convertScaleAbs(src, dst, alpha, beta); return dst;});
    mod.method("jlopencv_cv_cv_convertFp16",  [](Mat& src, Mat& dst) { cv::convertFp16(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_convertFp16",  [](UMat& src, UMat& dst) { cv::convertFp16(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_LUT",  [](Mat& src, Mat& lut, Mat& dst) { cv::LUT(src, lut, dst); return dst;});
    mod.method("jlopencv_cv_cv_LUT",  [](UMat& src, UMat& lut, UMat& dst) { cv::LUT(src, lut, dst); return dst;});
    mod.method("jlopencv_cv_cv_sum",  [](Mat& src) { auto retval = cv::sum(src); return retval;});
    mod.method("jlopencv_cv_cv_sum",  [](UMat& src) { auto retval = cv::sum(src); return retval;});
    mod.method("jlopencv_cv_cv_countNonZero",  [](Mat& src) { auto retval = cv::countNonZero(src); return retval;});
    mod.method("jlopencv_cv_cv_countNonZero",  [](UMat& src) { auto retval = cv::countNonZero(src); return retval;});
    mod.method("jlopencv_cv_cv_findNonZero",  [](Mat& src, Mat& idx) { cv::findNonZero(src, idx); return idx;});
    mod.method("jlopencv_cv_cv_findNonZero",  [](UMat& src, UMat& idx) { cv::findNonZero(src, idx); return idx;});
    mod.method("jlopencv_cv_cv_mean",  [](Mat& src, Mat& mask) { auto retval = cv::mean(src, mask); return retval;});
    mod.method("jlopencv_cv_cv_mean",  [](UMat& src, UMat& mask) { auto retval = cv::mean(src, mask); return retval;});
    mod.method("jlopencv_cv_cv_meanStdDev",  [](Mat& src, Mat& mean, Mat& stddev, Mat& mask) { cv::meanStdDev(src, mean, stddev, mask); return make_tuple(move(mean),move(stddev));});
    mod.method("jlopencv_cv_cv_meanStdDev",  [](UMat& src, UMat& mean, UMat& stddev, UMat& mask) { cv::meanStdDev(src, mean, stddev, mask); return make_tuple(move(mean),move(stddev));});
    mod.method("jlopencv_cv_cv_norm",  [](Mat& src1, int& normType, Mat& mask) { auto retval = cv::norm(src1, normType, mask); return retval;});
    mod.method("jlopencv_cv_cv_norm",  [](UMat& src1, int& normType, UMat& mask) { auto retval = cv::norm(src1, normType, mask); return retval;});
    mod.method("jlopencv_cv_cv_norm",  [](Mat& src1, Mat& src2, int& normType, Mat& mask) { auto retval = cv::norm(src1, src2, normType, mask); return retval;});
    mod.method("jlopencv_cv_cv_norm",  [](UMat& src1, UMat& src2, int& normType, UMat& mask) { auto retval = cv::norm(src1, src2, normType, mask); return retval;});
    mod.method("jlopencv_cv_cv_PSNR",  [](Mat& src1, Mat& src2, double& R) { auto retval = cv::PSNR(src1, src2, R); return retval;});
    mod.method("jlopencv_cv_cv_PSNR",  [](UMat& src1, UMat& src2, double& R) { auto retval = cv::PSNR(src1, src2, R); return retval;});
    mod.method("jlopencv_cv_cv_batchDistance",  [](Mat& src1, Mat& src2, int& dtype, Mat& dist, Mat& nidx, int& normType, int& K, Mat& mask, int& update, bool& crosscheck) { cv::batchDistance(src1, src2, dist, dtype, nidx, normType, K, mask, update, crosscheck); return make_tuple(move(dist),move(nidx));});
    mod.method("jlopencv_cv_cv_batchDistance",  [](UMat& src1, UMat& src2, int& dtype, UMat& dist, UMat& nidx, int& normType, int& K, UMat& mask, int& update, bool& crosscheck) { cv::batchDistance(src1, src2, dist, dtype, nidx, normType, K, mask, update, crosscheck); return make_tuple(move(dist),move(nidx));});
    mod.method("jlopencv_cv_cv_normalize",  [](Mat& src, Mat& dst, double& alpha, double& beta, int& norm_type, int& dtype, Mat& mask) { cv::normalize(src, dst, alpha, beta, norm_type, dtype, mask); return dst;});
    mod.method("jlopencv_cv_cv_normalize",  [](UMat& src, UMat& dst, double& alpha, double& beta, int& norm_type, int& dtype, UMat& mask) { cv::normalize(src, dst, alpha, beta, norm_type, dtype, mask); return dst;});
    mod.method("jlopencv_cv_cv_minMaxLoc",  [](Mat& src, Mat& mask) {double minVal;double maxVal;Point minLoc;Point maxLoc; cv::minMaxLoc(src, &minVal, &maxVal, &minLoc, &maxLoc, mask); return make_tuple(move(minVal),move(maxVal),move(minLoc),move(maxLoc));});
    mod.method("jlopencv_cv_cv_minMaxLoc",  [](UMat& src, UMat& mask) {double minVal;double maxVal;Point minLoc;Point maxLoc; cv::minMaxLoc(src, &minVal, &maxVal, &minLoc, &maxLoc, mask); return make_tuple(move(minVal),move(maxVal),move(minLoc),move(maxLoc));});
    mod.method("jlopencv_cv_cv_reduce",  [](Mat& src, int& dim, int& rtype, Mat& dst, int& dtype) { cv::reduce(src, dst, dim, rtype, dtype); return dst;});
    mod.method("jlopencv_cv_cv_reduce",  [](UMat& src, int& dim, int& rtype, UMat& dst, int& dtype) { cv::reduce(src, dst, dim, rtype, dtype); return dst;});
    mod.method("jlopencv_cv_cv_merge",  [](vector<Mat>& mv, Mat& dst) { cv::merge(mv, dst); return dst;});
    mod.method("jlopencv_cv_cv_merge",  [](vector<UMat>& mv, UMat& dst) { cv::merge(mv, dst); return dst;});
    mod.method("jlopencv_cv_cv_split",  [](Mat& m, vector<Mat>& mv) { cv::split(m, mv); return mv;});
    mod.method("jlopencv_cv_cv_split",  [](UMat& m, vector<UMat>& mv) { cv::split(m, mv); return mv;});
    mod.method("jlopencv_cv_cv_mixChannels",  [](vector<Mat>& src, vector<Mat>& dst, vector<int>& fromTo) { cv::mixChannels(src, dst, fromTo); return dst;});
    mod.method("jlopencv_cv_cv_mixChannels",  [](vector<UMat>& src, vector<UMat>& dst, vector<int>& fromTo) { cv::mixChannels(src, dst, fromTo); return dst;});
    mod.method("jlopencv_cv_cv_extractChannel",  [](Mat& src, int& coi, Mat& dst) { cv::extractChannel(src, dst, coi); return dst;});
    mod.method("jlopencv_cv_cv_extractChannel",  [](UMat& src, int& coi, UMat& dst) { cv::extractChannel(src, dst, coi); return dst;});
    mod.method("jlopencv_cv_cv_insertChannel",  [](Mat& src, Mat& dst, int& coi) { cv::insertChannel(src, dst, coi); return dst;});
    mod.method("jlopencv_cv_cv_insertChannel",  [](UMat& src, UMat& dst, int& coi) { cv::insertChannel(src, dst, coi); return dst;});
    mod.method("jlopencv_cv_cv_flip",  [](Mat& src, int& flipCode, Mat& dst) { cv::flip(src, dst, flipCode); return dst;});
    mod.method("jlopencv_cv_cv_flip",  [](UMat& src, int& flipCode, UMat& dst) { cv::flip(src, dst, flipCode); return dst;});
    mod.method("jlopencv_cv_cv_rotate",  [](Mat& src, int& rotateCode, Mat& dst) { cv::rotate(src, dst, rotateCode); return dst;});
    mod.method("jlopencv_cv_cv_rotate",  [](UMat& src, int& rotateCode, UMat& dst) { cv::rotate(src, dst, rotateCode); return dst;});
    mod.method("jlopencv_cv_cv_repeat",  [](Mat& src, int& ny, int& nx, Mat& dst) { cv::repeat(src, ny, nx, dst); return dst;});
    mod.method("jlopencv_cv_cv_repeat",  [](UMat& src, int& ny, int& nx, UMat& dst) { cv::repeat(src, ny, nx, dst); return dst;});
    mod.method("jlopencv_cv_cv_hconcat",  [](vector<Mat>& src, Mat& dst) { cv::hconcat(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_hconcat",  [](vector<UMat>& src, UMat& dst) { cv::hconcat(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_vconcat",  [](vector<Mat>& src, Mat& dst) { cv::vconcat(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_vconcat",  [](vector<UMat>& src, UMat& dst) { cv::vconcat(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_bitwise_and",  [](Mat& src1, Mat& src2, Mat& dst, Mat& mask) { cv::bitwise_and(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_cv_bitwise_and",  [](UMat& src1, UMat& src2, UMat& dst, UMat& mask) { cv::bitwise_and(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_cv_bitwise_or",  [](Mat& src1, Mat& src2, Mat& dst, Mat& mask) { cv::bitwise_or(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_cv_bitwise_or",  [](UMat& src1, UMat& src2, UMat& dst, UMat& mask) { cv::bitwise_or(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_cv_bitwise_xor",  [](Mat& src1, Mat& src2, Mat& dst, Mat& mask) { cv::bitwise_xor(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_cv_bitwise_xor",  [](UMat& src1, UMat& src2, UMat& dst, UMat& mask) { cv::bitwise_xor(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_cv_bitwise_not",  [](Mat& src, Mat& dst, Mat& mask) { cv::bitwise_not(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_cv_bitwise_not",  [](UMat& src, UMat& dst, UMat& mask) { cv::bitwise_not(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_cv_absdiff",  [](Mat& src1, Mat& src2, Mat& dst) { cv::absdiff(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_cv_absdiff",  [](UMat& src1, UMat& src2, UMat& dst) { cv::absdiff(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_cv_copyTo",  [](Mat& src, Mat& mask, Mat& dst) { cv::copyTo(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_cv_copyTo",  [](UMat& src, UMat& mask, UMat& dst) { cv::copyTo(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_cv_inRange",  [](Mat& src, Mat& lowerb, Mat& upperb, Mat& dst) { cv::inRange(src, lowerb, upperb, dst); return dst;});
    mod.method("jlopencv_cv_cv_inRange",  [](UMat& src, UMat& lowerb, UMat& upperb, UMat& dst) { cv::inRange(src, lowerb, upperb, dst); return dst;});
    mod.method("jlopencv_cv_cv_compare",  [](Mat& src1, Mat& src2, int& cmpop, Mat& dst) { cv::compare(src1, src2, dst, cmpop); return dst;});
    mod.method("jlopencv_cv_cv_compare",  [](UMat& src1, UMat& src2, int& cmpop, UMat& dst) { cv::compare(src1, src2, dst, cmpop); return dst;});
    mod.method("jlopencv_cv_cv_min",  [](Mat& src1, Mat& src2, Mat& dst) { cv::min(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_cv_min",  [](UMat& src1, UMat& src2, UMat& dst) { cv::min(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_cv_max",  [](Mat& src1, Mat& src2, Mat& dst) { cv::max(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_cv_max",  [](UMat& src1, UMat& src2, UMat& dst) { cv::max(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_cv_sqrt",  [](Mat& src, Mat& dst) { cv::sqrt(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_sqrt",  [](UMat& src, UMat& dst) { cv::sqrt(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_pow",  [](Mat& src, double& power, Mat& dst) { cv::pow(src, power, dst); return dst;});
    mod.method("jlopencv_cv_cv_pow",  [](UMat& src, double& power, UMat& dst) { cv::pow(src, power, dst); return dst;});
    mod.method("jlopencv_cv_cv_exp",  [](Mat& src, Mat& dst) { cv::exp(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_exp",  [](UMat& src, UMat& dst) { cv::exp(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_log",  [](Mat& src, Mat& dst) { cv::log(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_log",  [](UMat& src, UMat& dst) { cv::log(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_polarToCart",  [](Mat& magnitude, Mat& angle, Mat& x, Mat& y, bool& angleInDegrees) { cv::polarToCart(magnitude, angle, x, y, angleInDegrees); return make_tuple(move(x),move(y));});
    mod.method("jlopencv_cv_cv_polarToCart",  [](UMat& magnitude, UMat& angle, UMat& x, UMat& y, bool& angleInDegrees) { cv::polarToCart(magnitude, angle, x, y, angleInDegrees); return make_tuple(move(x),move(y));});
    mod.method("jlopencv_cv_cv_cartToPolar",  [](Mat& x, Mat& y, Mat& magnitude, Mat& angle, bool& angleInDegrees) { cv::cartToPolar(x, y, magnitude, angle, angleInDegrees); return make_tuple(move(magnitude),move(angle));});
    mod.method("jlopencv_cv_cv_cartToPolar",  [](UMat& x, UMat& y, UMat& magnitude, UMat& angle, bool& angleInDegrees) { cv::cartToPolar(x, y, magnitude, angle, angleInDegrees); return make_tuple(move(magnitude),move(angle));});
    mod.method("jlopencv_cv_cv_phase",  [](Mat& x, Mat& y, Mat& angle, bool& angleInDegrees) { cv::phase(x, y, angle, angleInDegrees); return angle;});
    mod.method("jlopencv_cv_cv_phase",  [](UMat& x, UMat& y, UMat& angle, bool& angleInDegrees) { cv::phase(x, y, angle, angleInDegrees); return angle;});
    mod.method("jlopencv_cv_cv_magnitude",  [](Mat& x, Mat& y, Mat& magnitude) { cv::magnitude(x, y, magnitude); return magnitude;});
    mod.method("jlopencv_cv_cv_magnitude",  [](UMat& x, UMat& y, UMat& magnitude) { cv::magnitude(x, y, magnitude); return magnitude;});
    mod.method("jlopencv_cv_cv_checkRange",  [](Mat& a, bool& quiet, double& minVal, double& maxVal) {Point pos; auto retval = cv::checkRange(a, quiet, &pos, minVal, maxVal); return make_tuple(move(retval),move(pos));});
    mod.method("jlopencv_cv_cv_checkRange",  [](UMat& a, bool& quiet, double& minVal, double& maxVal) {Point pos; auto retval = cv::checkRange(a, quiet, &pos, minVal, maxVal); return make_tuple(move(retval),move(pos));});
    mod.method("jlopencv_cv_cv_patchNaNs",  [](Mat& a, double& val) { cv::patchNaNs(a, val); return a;});
    mod.method("jlopencv_cv_cv_patchNaNs",  [](UMat& a, double& val) { cv::patchNaNs(a, val); return a;});
    mod.method("jlopencv_cv_cv_gemm",  [](Mat& src1, Mat& src2, double& alpha, Mat& src3, double& beta, Mat& dst, int& flags) { cv::gemm(src1, src2, alpha, src3, beta, dst, flags); return dst;});
    mod.method("jlopencv_cv_cv_gemm",  [](UMat& src1, UMat& src2, double& alpha, UMat& src3, double& beta, UMat& dst, int& flags) { cv::gemm(src1, src2, alpha, src3, beta, dst, flags); return dst;});
    mod.method("jlopencv_cv_cv_mulTransposed",  [](Mat& src, bool& aTa, Mat& dst, Mat& delta, double& scale, int& dtype) { cv::mulTransposed(src, dst, aTa, delta, scale, dtype); return dst;});
    mod.method("jlopencv_cv_cv_mulTransposed",  [](UMat& src, bool& aTa, UMat& dst, UMat& delta, double& scale, int& dtype) { cv::mulTransposed(src, dst, aTa, delta, scale, dtype); return dst;});
    mod.method("jlopencv_cv_cv_transpose",  [](Mat& src, Mat& dst) { cv::transpose(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_transpose",  [](UMat& src, UMat& dst) { cv::transpose(src, dst); return dst;});
    mod.method("jlopencv_cv_cv_transform",  [](Mat& src, Mat& m, Mat& dst) { cv::transform(src, dst, m); return dst;});
    mod.method("jlopencv_cv_cv_transform",  [](UMat& src, UMat& m, UMat& dst) { cv::transform(src, dst, m); return dst;});
    mod.method("jlopencv_cv_cv_perspectiveTransform",  [](Mat& src, Mat& m, Mat& dst) { cv::perspectiveTransform(src, dst, m); return dst;});
    mod.method("jlopencv_cv_cv_perspectiveTransform",  [](UMat& src, UMat& m, UMat& dst) { cv::perspectiveTransform(src, dst, m); return dst;});
    mod.method("jlopencv_cv_cv_completeSymm",  [](Mat& m, bool& lowerToUpper) { cv::completeSymm(m, lowerToUpper); return m;});
    mod.method("jlopencv_cv_cv_completeSymm",  [](UMat& m, bool& lowerToUpper) { cv::completeSymm(m, lowerToUpper); return m;});
    mod.method("jlopencv_cv_cv_setIdentity",  [](Mat& mtx, Scalar& s) { cv::setIdentity(mtx, s); return mtx;});
    mod.method("jlopencv_cv_cv_setIdentity",  [](UMat& mtx, Scalar& s) { cv::setIdentity(mtx, s); return mtx;});
    mod.method("jlopencv_cv_cv_determinant",  [](Mat& mtx) { auto retval = cv::determinant(mtx); return retval;});
    mod.method("jlopencv_cv_cv_determinant",  [](UMat& mtx) { auto retval = cv::determinant(mtx); return retval;});
    mod.method("jlopencv_cv_cv_trace",  [](Mat& mtx) { auto retval = cv::trace(mtx); return retval;});
    mod.method("jlopencv_cv_cv_trace",  [](UMat& mtx) { auto retval = cv::trace(mtx); return retval;});
    mod.method("jlopencv_cv_cv_invert",  [](Mat& src, Mat& dst, int& flags) { auto retval = cv::invert(src, dst, flags); return make_tuple(move(retval),move(dst));});
    mod.method("jlopencv_cv_cv_invert",  [](UMat& src, UMat& dst, int& flags) { auto retval = cv::invert(src, dst, flags); return make_tuple(move(retval),move(dst));});
    mod.method("jlopencv_cv_cv_solve",  [](Mat& src1, Mat& src2, Mat& dst, int& flags) { auto retval = cv::solve(src1, src2, dst, flags); return make_tuple(move(retval),move(dst));});
    mod.method("jlopencv_cv_cv_solve",  [](UMat& src1, UMat& src2, UMat& dst, int& flags) { auto retval = cv::solve(src1, src2, dst, flags); return make_tuple(move(retval),move(dst));});
    mod.method("jlopencv_cv_cv_sort",  [](Mat& src, int& flags, Mat& dst) { cv::sort(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_cv_sort",  [](UMat& src, int& flags, UMat& dst) { cv::sort(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_cv_sortIdx",  [](Mat& src, int& flags, Mat& dst) { cv::sortIdx(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_cv_sortIdx",  [](UMat& src, int& flags, UMat& dst) { cv::sortIdx(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_cv_solveCubic",  [](Mat& coeffs, Mat& roots) { auto retval = cv::solveCubic(coeffs, roots); return make_tuple(move(retval),move(roots));});
    mod.method("jlopencv_cv_cv_solveCubic",  [](UMat& coeffs, UMat& roots) { auto retval = cv::solveCubic(coeffs, roots); return make_tuple(move(retval),move(roots));});
    mod.method("jlopencv_cv_cv_solvePoly",  [](Mat& coeffs, Mat& roots, int& maxIters) { auto retval = cv::solvePoly(coeffs, roots, maxIters); return make_tuple(move(retval),move(roots));});
    mod.method("jlopencv_cv_cv_solvePoly",  [](UMat& coeffs, UMat& roots, int& maxIters) { auto retval = cv::solvePoly(coeffs, roots, maxIters); return make_tuple(move(retval),move(roots));});
    mod.method("jlopencv_cv_cv_eigen",  [](Mat& src, Mat& eigenvalues, Mat& eigenvectors) { auto retval = cv::eigen(src, eigenvalues, eigenvectors); return make_tuple(move(retval),move(eigenvalues),move(eigenvectors));});
    mod.method("jlopencv_cv_cv_eigen",  [](UMat& src, UMat& eigenvalues, UMat& eigenvectors) { auto retval = cv::eigen(src, eigenvalues, eigenvectors); return make_tuple(move(retval),move(eigenvalues),move(eigenvectors));});
    mod.method("jlopencv_cv_cv_eigenNonSymmetric",  [](Mat& src, Mat& eigenvalues, Mat& eigenvectors) { cv::eigenNonSymmetric(src, eigenvalues, eigenvectors); return make_tuple(move(eigenvalues),move(eigenvectors));});
    mod.method("jlopencv_cv_cv_eigenNonSymmetric",  [](UMat& src, UMat& eigenvalues, UMat& eigenvectors) { cv::eigenNonSymmetric(src, eigenvalues, eigenvectors); return make_tuple(move(eigenvalues),move(eigenvectors));});
    mod.method("jlopencv_cv_cv_calcCovarMatrix",  [](Mat& samples, Mat& mean, int& flags, Mat& covar, int& ctype) { cv::calcCovarMatrix(samples, covar, mean, flags, ctype); return make_tuple(move(covar),move(mean));});
    mod.method("jlopencv_cv_cv_calcCovarMatrix",  [](UMat& samples, UMat& mean, int& flags, UMat& covar, int& ctype) { cv::calcCovarMatrix(samples, covar, mean, flags, ctype); return make_tuple(move(covar),move(mean));});
    mod.method("jlopencv_cv_cv_PCACompute",  [](Mat& data, Mat& mean, Mat& eigenvectors, int& maxComponents) { cv::PCACompute(data, mean, eigenvectors, maxComponents); return make_tuple(move(mean),move(eigenvectors));});
    mod.method("jlopencv_cv_cv_PCACompute",  [](UMat& data, UMat& mean, UMat& eigenvectors, int& maxComponents) { cv::PCACompute(data, mean, eigenvectors, maxComponents); return make_tuple(move(mean),move(eigenvectors));});
    mod.method("jlopencv_cv_cv_PCACompute",  [](Mat& data, Mat& mean, Mat& eigenvectors, Mat& eigenvalues, int& maxComponents) { cv::PCACompute(data, mean, eigenvectors, eigenvalues, maxComponents); return make_tuple(move(mean),move(eigenvectors),move(eigenvalues));});
    mod.method("jlopencv_cv_cv_PCACompute",  [](UMat& data, UMat& mean, UMat& eigenvectors, UMat& eigenvalues, int& maxComponents) { cv::PCACompute(data, mean, eigenvectors, eigenvalues, maxComponents); return make_tuple(move(mean),move(eigenvectors),move(eigenvalues));});
    mod.method("jlopencv_cv_cv_PCACompute",  [](Mat& data, Mat& mean, double& retainedVariance, Mat& eigenvectors) { cv::PCACompute(data, mean, eigenvectors, retainedVariance); return make_tuple(move(mean),move(eigenvectors));});
    mod.method("jlopencv_cv_cv_PCACompute",  [](UMat& data, UMat& mean, double& retainedVariance, UMat& eigenvectors) { cv::PCACompute(data, mean, eigenvectors, retainedVariance); return make_tuple(move(mean),move(eigenvectors));});
    mod.method("jlopencv_cv_cv_PCACompute",  [](Mat& data, Mat& mean, double& retainedVariance, Mat& eigenvectors, Mat& eigenvalues) { cv::PCACompute(data, mean, eigenvectors, eigenvalues, retainedVariance); return make_tuple(move(mean),move(eigenvectors),move(eigenvalues));});
    mod.method("jlopencv_cv_cv_PCACompute",  [](UMat& data, UMat& mean, double& retainedVariance, UMat& eigenvectors, UMat& eigenvalues) { cv::PCACompute(data, mean, eigenvectors, eigenvalues, retainedVariance); return make_tuple(move(mean),move(eigenvectors),move(eigenvalues));});
    mod.method("jlopencv_cv_cv_PCAProject",  [](Mat& data, Mat& mean, Mat& eigenvectors, Mat& result) { cv::PCAProject(data, mean, eigenvectors, result); return result;});
    mod.method("jlopencv_cv_cv_PCAProject",  [](UMat& data, UMat& mean, UMat& eigenvectors, UMat& result) { cv::PCAProject(data, mean, eigenvectors, result); return result;});
    mod.method("jlopencv_cv_cv_PCABackProject",  [](Mat& data, Mat& mean, Mat& eigenvectors, Mat& result) { cv::PCABackProject(data, mean, eigenvectors, result); return result;});
    mod.method("jlopencv_cv_cv_PCABackProject",  [](UMat& data, UMat& mean, UMat& eigenvectors, UMat& result) { cv::PCABackProject(data, mean, eigenvectors, result); return result;});
    mod.method("jlopencv_cv_cv_SVDecomp",  [](Mat& src, Mat& w, Mat& u, Mat& vt, int& flags) { cv::SVDecomp(src, w, u, vt, flags); return make_tuple(move(w),move(u),move(vt));});
    mod.method("jlopencv_cv_cv_SVDecomp",  [](UMat& src, UMat& w, UMat& u, UMat& vt, int& flags) { cv::SVDecomp(src, w, u, vt, flags); return make_tuple(move(w),move(u),move(vt));});
    mod.method("jlopencv_cv_cv_SVBackSubst",  [](Mat& w, Mat& u, Mat& vt, Mat& rhs, Mat& dst) { cv::SVBackSubst(w, u, vt, rhs, dst); return dst;});
    mod.method("jlopencv_cv_cv_SVBackSubst",  [](UMat& w, UMat& u, UMat& vt, UMat& rhs, UMat& dst) { cv::SVBackSubst(w, u, vt, rhs, dst); return dst;});
    mod.method("jlopencv_cv_cv_Mahalanobis",  [](Mat& v1, Mat& v2, Mat& icovar) { auto retval = cv::Mahalanobis(v1, v2, icovar); return retval;});
    mod.method("jlopencv_cv_cv_Mahalanobis",  [](UMat& v1, UMat& v2, UMat& icovar) { auto retval = cv::Mahalanobis(v1, v2, icovar); return retval;});
    mod.method("jlopencv_cv_cv_dft",  [](Mat& src, Mat& dst, int& flags, int& nonzeroRows) { cv::dft(src, dst, flags, nonzeroRows); return dst;});
    mod.method("jlopencv_cv_cv_dft",  [](UMat& src, UMat& dst, int& flags, int& nonzeroRows) { cv::dft(src, dst, flags, nonzeroRows); return dst;});
    mod.method("jlopencv_cv_cv_idft",  [](Mat& src, Mat& dst, int& flags, int& nonzeroRows) { cv::idft(src, dst, flags, nonzeroRows); return dst;});
    mod.method("jlopencv_cv_cv_idft",  [](UMat& src, UMat& dst, int& flags, int& nonzeroRows) { cv::idft(src, dst, flags, nonzeroRows); return dst;});
    mod.method("jlopencv_cv_cv_dct",  [](Mat& src, Mat& dst, int& flags) { cv::dct(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_cv_dct",  [](UMat& src, UMat& dst, int& flags) { cv::dct(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_cv_idct",  [](Mat& src, Mat& dst, int& flags) { cv::idct(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_cv_idct",  [](UMat& src, UMat& dst, int& flags) { cv::idct(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_cv_mulSpectrums",  [](Mat& a, Mat& b, int& flags, Mat& c, bool& conjB) { cv::mulSpectrums(a, b, c, flags, conjB); return c;});
    mod.method("jlopencv_cv_cv_mulSpectrums",  [](UMat& a, UMat& b, int& flags, UMat& c, bool& conjB) { cv::mulSpectrums(a, b, c, flags, conjB); return c;});
    mod.method("jlopencv_cv_cv_getOptimalDFTSize",  [](int& vecsize) { auto retval = cv::getOptimalDFTSize(vecsize); return retval;});
    mod.method("jlopencv_cv_cv_setRNGSeed",  [](int& seed) { cv::setRNGSeed(seed); ;});
    mod.method("jlopencv_cv_cv_randu",  [](Mat& dst, Mat& low, Mat& high) { cv::randu(dst, low, high); return dst;});
    mod.method("jlopencv_cv_cv_randu",  [](UMat& dst, UMat& low, UMat& high) { cv::randu(dst, low, high); return dst;});
    mod.method("jlopencv_cv_cv_randn",  [](Mat& dst, Mat& mean, Mat& stddev) { cv::randn(dst, mean, stddev); return dst;});
    mod.method("jlopencv_cv_cv_randn",  [](UMat& dst, UMat& mean, UMat& stddev) { cv::randn(dst, mean, stddev); return dst;});
    mod.method("jlopencv_cv_cv_randShuffle",  [](Mat& dst, double& iterFactor) { cv::randShuffle(dst, iterFactor); return dst;});
    mod.method("jlopencv_cv_cv_randShuffle",  [](UMat& dst, double& iterFactor) { cv::randShuffle(dst, iterFactor); return dst;});
    mod.method("jlopencv_cv_cv_kmeans",  [](Mat& data, int& K, Mat& bestLabels, TermCriteria& criteria, int& attempts, int& flags, Mat& centers) { auto retval = cv::kmeans(data, K, bestLabels, criteria, attempts, flags, centers); return make_tuple(move(retval),move(bestLabels),move(centers));});
    mod.method("jlopencv_cv_cv_kmeans",  [](UMat& data, int& K, UMat& bestLabels, TermCriteria& criteria, int& attempts, int& flags, UMat& centers) { auto retval = cv::kmeans(data, K, bestLabels, criteria, attempts, flags, centers); return make_tuple(move(retval),move(bestLabels),move(centers));});    mod.set_const("COVAR_COLS", (force_enum_int<decltype(cv::COVAR_COLS)>::Type)cv::COVAR_COLS);
    mod.set_const("COVAR_NORMAL", (force_enum_int<decltype(cv::COVAR_NORMAL)>::Type)cv::COVAR_NORMAL);
    mod.set_const("COVAR_ROWS", (force_enum_int<decltype(cv::COVAR_ROWS)>::Type)cv::COVAR_ROWS);
    mod.set_const("COVAR_SCALE", (force_enum_int<decltype(cv::COVAR_SCALE)>::Type)cv::COVAR_SCALE);
    mod.set_const("COVAR_SCRAMBLED", (force_enum_int<decltype(cv::COVAR_SCRAMBLED)>::Type)cv::COVAR_SCRAMBLED);
    mod.set_const("COVAR_USE_AVG", (force_enum_int<decltype(cv::COVAR_USE_AVG)>::Type)cv::COVAR_USE_AVG);
    mod.set_const("Formatter_FMT_C", (force_enum_int<decltype(cv::Formatter::FMT_C)>::Type)cv::Formatter::FMT_C);
    mod.set_const("FORMATTER_FMT_C", (force_enum_int<decltype(cv::Formatter::FMT_C)>::Type)cv::Formatter::FMT_C);
    mod.set_const("Formatter_FMT_CSV", (force_enum_int<decltype(cv::Formatter::FMT_CSV)>::Type)cv::Formatter::FMT_CSV);
    mod.set_const("FORMATTER_FMT_CSV", (force_enum_int<decltype(cv::Formatter::FMT_CSV)>::Type)cv::Formatter::FMT_CSV);
    mod.set_const("Formatter_FMT_DEFAULT", (force_enum_int<decltype(cv::Formatter::FMT_DEFAULT)>::Type)cv::Formatter::FMT_DEFAULT);
    mod.set_const("FORMATTER_FMT_DEFAULT", (force_enum_int<decltype(cv::Formatter::FMT_DEFAULT)>::Type)cv::Formatter::FMT_DEFAULT);
    mod.set_const("Formatter_FMT_MATLAB", (force_enum_int<decltype(cv::Formatter::FMT_MATLAB)>::Type)cv::Formatter::FMT_MATLAB);
    mod.set_const("FORMATTER_FMT_MATLAB", (force_enum_int<decltype(cv::Formatter::FMT_MATLAB)>::Type)cv::Formatter::FMT_MATLAB);
    mod.set_const("Formatter_FMT_NUMPY", (force_enum_int<decltype(cv::Formatter::FMT_NUMPY)>::Type)cv::Formatter::FMT_NUMPY);
    mod.set_const("FORMATTER_FMT_NUMPY", (force_enum_int<decltype(cv::Formatter::FMT_NUMPY)>::Type)cv::Formatter::FMT_NUMPY);
    mod.set_const("Formatter_FMT_PYTHON", (force_enum_int<decltype(cv::Formatter::FMT_PYTHON)>::Type)cv::Formatter::FMT_PYTHON);
    mod.set_const("FORMATTER_FMT_PYTHON", (force_enum_int<decltype(cv::Formatter::FMT_PYTHON)>::Type)cv::Formatter::FMT_PYTHON);
    mod.set_const("KMEANS_PP_CENTERS", (force_enum_int<decltype(cv::KMEANS_PP_CENTERS)>::Type)cv::KMEANS_PP_CENTERS);
    mod.set_const("KMEANS_RANDOM_CENTERS", (force_enum_int<decltype(cv::KMEANS_RANDOM_CENTERS)>::Type)cv::KMEANS_RANDOM_CENTERS);
    mod.set_const("KMEANS_USE_INITIAL_LABELS", (force_enum_int<decltype(cv::KMEANS_USE_INITIAL_LABELS)>::Type)cv::KMEANS_USE_INITIAL_LABELS);
    mod.set_const("PCA_DATA_AS_COL", (force_enum_int<decltype(cv::PCA::DATA_AS_COL)>::Type)cv::PCA::DATA_AS_COL);
    mod.set_const("PCA_DATA_AS_ROW", (force_enum_int<decltype(cv::PCA::DATA_AS_ROW)>::Type)cv::PCA::DATA_AS_ROW);
    mod.set_const("PCA_USE_AVG", (force_enum_int<decltype(cv::PCA::USE_AVG)>::Type)cv::PCA::USE_AVG);
    mod.set_const("Param_ALGORITHM", (force_enum_int<decltype(cv::Param::ALGORITHM)>::Type)cv::Param::ALGORITHM);
    mod.set_const("PARAM_ALGORITHM", (force_enum_int<decltype(cv::Param::ALGORITHM)>::Type)cv::Param::ALGORITHM);
    mod.set_const("Param_BOOLEAN", (force_enum_int<decltype(cv::Param::BOOLEAN)>::Type)cv::Param::BOOLEAN);
    mod.set_const("PARAM_BOOLEAN", (force_enum_int<decltype(cv::Param::BOOLEAN)>::Type)cv::Param::BOOLEAN);
    mod.set_const("Param_FLOAT", (force_enum_int<decltype(cv::Param::FLOAT)>::Type)cv::Param::FLOAT);
    mod.set_const("PARAM_FLOAT", (force_enum_int<decltype(cv::Param::FLOAT)>::Type)cv::Param::FLOAT);
    mod.set_const("Param_INT", (force_enum_int<decltype(cv::Param::INT)>::Type)cv::Param::INT);
    mod.set_const("PARAM_INT", (force_enum_int<decltype(cv::Param::INT)>::Type)cv::Param::INT);
    mod.set_const("Param_MAT", (force_enum_int<decltype(cv::Param::MAT)>::Type)cv::Param::MAT);
    mod.set_const("PARAM_MAT", (force_enum_int<decltype(cv::Param::MAT)>::Type)cv::Param::MAT);
    mod.set_const("Param_MAT_VECTOR", (force_enum_int<decltype(cv::Param::MAT_VECTOR)>::Type)cv::Param::MAT_VECTOR);
    mod.set_const("PARAM_MAT_VECTOR", (force_enum_int<decltype(cv::Param::MAT_VECTOR)>::Type)cv::Param::MAT_VECTOR);
    mod.set_const("Param_REAL", (force_enum_int<decltype(cv::Param::REAL)>::Type)cv::Param::REAL);
    mod.set_const("PARAM_REAL", (force_enum_int<decltype(cv::Param::REAL)>::Type)cv::Param::REAL);
    mod.set_const("Param_SCALAR", (force_enum_int<decltype(cv::Param::SCALAR)>::Type)cv::Param::SCALAR);
    mod.set_const("PARAM_SCALAR", (force_enum_int<decltype(cv::Param::SCALAR)>::Type)cv::Param::SCALAR);
    mod.set_const("Param_STRING", (force_enum_int<decltype(cv::Param::STRING)>::Type)cv::Param::STRING);
    mod.set_const("PARAM_STRING", (force_enum_int<decltype(cv::Param::STRING)>::Type)cv::Param::STRING);
    mod.set_const("Param_UCHAR", (force_enum_int<decltype(cv::Param::UCHAR)>::Type)cv::Param::UCHAR);
    mod.set_const("PARAM_UCHAR", (force_enum_int<decltype(cv::Param::UCHAR)>::Type)cv::Param::UCHAR);
    mod.set_const("Param_UINT64", (force_enum_int<decltype(cv::Param::UINT64)>::Type)cv::Param::UINT64);
    mod.set_const("PARAM_UINT64", (force_enum_int<decltype(cv::Param::UINT64)>::Type)cv::Param::UINT64);
    mod.set_const("Param_UNSIGNED_INT", (force_enum_int<decltype(cv::Param::UNSIGNED_INT)>::Type)cv::Param::UNSIGNED_INT);
    mod.set_const("PARAM_UNSIGNED_INT", (force_enum_int<decltype(cv::Param::UNSIGNED_INT)>::Type)cv::Param::UNSIGNED_INT);
    mod.set_const("REDUCE_AVG", (force_enum_int<decltype(cv::REDUCE_AVG)>::Type)cv::REDUCE_AVG);
    mod.set_const("REDUCE_MAX", (force_enum_int<decltype(cv::REDUCE_MAX)>::Type)cv::REDUCE_MAX);
    mod.set_const("REDUCE_MIN", (force_enum_int<decltype(cv::REDUCE_MIN)>::Type)cv::REDUCE_MIN);
    mod.set_const("REDUCE_SUM", (force_enum_int<decltype(cv::REDUCE_SUM)>::Type)cv::REDUCE_SUM);
    mod.set_const("RNG_NORMAL", (force_enum_int<decltype(cv::RNG::NORMAL)>::Type)cv::RNG::NORMAL);
    mod.set_const("RNG_UNIFORM", (force_enum_int<decltype(cv::RNG::UNIFORM)>::Type)cv::RNG::UNIFORM);
    mod.set_const("ROTATE_180", (force_enum_int<decltype(cv::ROTATE_180)>::Type)cv::ROTATE_180);
    mod.set_const("ROTATE_90_CLOCKWISE", (force_enum_int<decltype(cv::ROTATE_90_CLOCKWISE)>::Type)cv::ROTATE_90_CLOCKWISE);
    mod.set_const("ROTATE_90_COUNTERCLOCKWISE", (force_enum_int<decltype(cv::ROTATE_90_COUNTERCLOCKWISE)>::Type)cv::ROTATE_90_COUNTERCLOCKWISE);
    mod.set_const("SORT_ASCENDING", (force_enum_int<decltype(cv::SORT_ASCENDING)>::Type)cv::SORT_ASCENDING);
    mod.set_const("SORT_DESCENDING", (force_enum_int<decltype(cv::SORT_DESCENDING)>::Type)cv::SORT_DESCENDING);
    mod.set_const("SORT_EVERY_COLUMN", (force_enum_int<decltype(cv::SORT_EVERY_COLUMN)>::Type)cv::SORT_EVERY_COLUMN);
    mod.set_const("SORT_EVERY_ROW", (force_enum_int<decltype(cv::SORT_EVERY_ROW)>::Type)cv::SORT_EVERY_ROW);
    mod.set_const("SVD_FULL_UV", (force_enum_int<decltype(cv::SVD::FULL_UV)>::Type)cv::SVD::FULL_UV);
    mod.set_const("SVD_MODIFY_A", (force_enum_int<decltype(cv::SVD::MODIFY_A)>::Type)cv::SVD::MODIFY_A);
    mod.set_const("SVD_NO_UV", (force_enum_int<decltype(cv::SVD::NO_UV)>::Type)cv::SVD::NO_UV);


mod.method("jlopencv_Layer_set_blobs", [](cv::dnn::Layer cv::Ptr<cobj>, const force_enum_int<vector_Mat>::Type &v) {cobj->blobs=(vector_Mat)v;});

mod.method("jlopencv_Layer_get_blobs", [](const cv::Ptr<cv::dnn::Layer> &cobj) {return cobj->blobs;});
mod.method("jlopencv_Layer_get_name", [](const cv::Ptr<cv::dnn::Layer> &cobj) {return cobj->name;});
mod.method("jlopencv_Layer_get_type", [](const cv::Ptr<cv::dnn::Layer> &cobj) {return cobj->type;});
mod.method("jlopencv_Layer_get_preferableTarget", [](const cv::Ptr<cv::dnn::Layer> &cobj) {return cobj->preferableTarget;});;
    mod.method("jlopencv_cv_dnn_cv_dnn_Layer_cv_dnn_Layer_finalize",  [](cv::Ptr<cv::dnn::Layer>& cobj, vector<Mat>& inputs, vector<Mat>& outputs) { cobj->finalize(inputs, outputs);  return outputs;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Layer_cv_dnn_Layer_finalize",  [](cv::Ptr<cv::dnn::Layer>& cobj, vector<UMat>& inputs, vector<UMat>& outputs) { cobj->finalize(inputs, outputs);  return outputs;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Layer_cv_dnn_Layer_run",  [](cv::Ptr<cv::dnn::Layer>& cobj, vector<Mat>& inputs, vector<Mat>& internals, vector<Mat>& outputs) { cobj->run(inputs, outputs, internals);  return make_tuple(move(outputs),move(internals));});
    mod.method("jlopencv_cv_dnn_cv_dnn_Layer_cv_dnn_Layer_run",  [](cv::Ptr<cv::dnn::Layer>& cobj, vector<Mat>& inputs, vector<Mat>& internals, vector<Mat>& outputs) { cobj->run(inputs, outputs, internals);  return make_tuple(move(outputs),move(internals));});
    mod.method("jlopencv_cv_dnn_cv_dnn_Layer_cv_dnn_Layer_outputNameToIndex",  [](cv::Ptr<cv::dnn::Layer>& cobj, string& outputName) { auto retval = cobj->outputNameToIndex(outputName);  return retval;});mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_Net", []() {  return jlcxx::create<cv::dnn::Net>();});
;
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_empty",  [](cv::dnn::Net& cobj) { auto retval = cobj.empty();  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_dump",  [](cv::dnn::Net& cobj) { auto retval = cobj.dump();  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_dumpToFile",  [](cv::dnn::Net& cobj, string& path) { cobj.dumpToFile(path);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayerId",  [](cv::dnn::Net& cobj, string& layer) { auto retval = cobj.getLayerId(layer);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayerNames",  [](cv::dnn::Net& cobj) { auto retval = cobj.getLayerNames();  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayer",  [](cv::dnn::Net& cobj, LayerId& layerId) { auto retval = cobj.getLayer(layerId);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_connect",  [](cv::dnn::Net& cobj, string& outPin, string& inpPin) { cobj.connect(outPin, inpPin);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setInputsNames",  [](cv::dnn::Net& cobj, vector<string>& inputBlobNames) { cobj.setInputsNames(inputBlobNames);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setInputShape",  [](cv::dnn::Net& cobj, string& inputName, MatShape& shape) { cobj.setInputShape(inputName, shape);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward",  [](cv::dnn::Net& cobj, string& outputName) { auto retval = cobj.forward(outputName);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward",  [](cv::dnn::Net& cobj, vector<Mat>& outputBlobs, string& outputName) { cobj.forward(outputBlobs, outputName);  return outputBlobs;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward",  [](cv::dnn::Net& cobj, vector<UMat>& outputBlobs, string& outputName) { cobj.forward(outputBlobs, outputName);  return outputBlobs;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward",  [](cv::dnn::Net& cobj, vector<string>& outBlobNames, vector<Mat>& outputBlobs) { cobj.forward(outputBlobs, outBlobNames);  return outputBlobs;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward",  [](cv::dnn::Net& cobj, vector<string>& outBlobNames, vector<UMat>& outputBlobs) { cobj.forward(outputBlobs, outBlobNames);  return outputBlobs;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward",  [](cv::dnn::Net& cobj, vector<string>& outBlobNames) {vector<vector<Mat>> outputBlobs; cobj.forward(outputBlobs, outBlobNames);  return outputBlobs;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forwardAsync",  [](cv::dnn::Net& cobj, string& outputName) { auto retval = cobj.forwardAsync(outputName);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setHalideScheduler",  [](cv::dnn::Net& cobj, string& scheduler) { cobj.setHalideScheduler(scheduler);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setPreferableBackend",  [](cv::dnn::Net& cobj, int& backendId) { cobj.setPreferableBackend(backendId);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setPreferableTarget",  [](cv::dnn::Net& cobj, int& targetId) { cobj.setPreferableTarget(targetId);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setInput",  [](cv::dnn::Net& cobj, Mat& blob, string& name, double& scalefactor, Scalar& mean) { cobj.setInput(blob, name, scalefactor, mean);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setInput",  [](cv::dnn::Net& cobj, UMat& blob, string& name, double& scalefactor, Scalar& mean) { cobj.setInput(blob, name, scalefactor, mean);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setParam",  [](cv::dnn::Net& cobj, LayerId& layer, int& numParam, Mat& blob) { cobj.setParam(layer, numParam, blob);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setParam",  [](cv::dnn::Net& cobj, LayerId& layer, int& numParam, Mat& blob) { cobj.setParam(layer, numParam, blob);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getParam",  [](cv::dnn::Net& cobj, LayerId& layer, int& numParam) { auto retval = cobj.getParam(layer, numParam);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getUnconnectedOutLayers",  [](cv::dnn::Net& cobj) { auto retval = cobj.getUnconnectedOutLayers();  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getUnconnectedOutLayersNames",  [](cv::dnn::Net& cobj) { auto retval = cobj.getUnconnectedOutLayersNames();  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayersShapes",  [](cv::dnn::Net& cobj, vector<MatShape>& netInputShapes) {vector<int> layersIds;vector<vector<MatShape>> inLayersShapes;vector<vector<MatShape>> outLayersShapes; cobj.getLayersShapes(netInputShapes, layersIds, inLayersShapes, outLayersShapes);  return make_tuple(move(layersIds),move(inLayersShapes),move(outLayersShapes));});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayersShapes",  [](cv::dnn::Net& cobj, MatShape& netInputShape) {vector<int> layersIds;vector<vector<MatShape>> inLayersShapes;vector<vector<MatShape>> outLayersShapes; cobj.getLayersShapes(netInputShape, layersIds, inLayersShapes, outLayersShapes);  return make_tuple(move(layersIds),move(inLayersShapes),move(outLayersShapes));});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS",  [](cv::dnn::Net& cobj, vector<MatShape>& netInputShapes) { auto retval = cobj.getFLOPS(netInputShapes);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS",  [](cv::dnn::Net& cobj, MatShape& netInputShape) { auto retval = cobj.getFLOPS(netInputShape);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS",  [](cv::dnn::Net& cobj, int& layerId, vector<MatShape>& netInputShapes) { auto retval = cobj.getFLOPS(layerId, netInputShapes);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS",  [](cv::dnn::Net& cobj, int& layerId, MatShape& netInputShape) { auto retval = cobj.getFLOPS(layerId, netInputShape);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayerTypes",  [](cv::dnn::Net& cobj) {vector<string> layersTypes; cobj.getLayerTypes(layersTypes);  return layersTypes;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getLayersCount",  [](cv::dnn::Net& cobj, string& layerType) { auto retval = cobj.getLayersCount(layerType);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getMemoryConsumption",  [](cv::dnn::Net& cobj, MatShape& netInputShape) {size_t weights;size_t blobs; cobj.getMemoryConsumption(netInputShape, weights, blobs);  return make_tuple(move(weights),move(blobs));});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getMemoryConsumption",  [](cv::dnn::Net& cobj, int& layerId, vector<MatShape>& netInputShapes) {size_t weights;size_t blobs; cobj.getMemoryConsumption(layerId, netInputShapes, weights, blobs);  return make_tuple(move(weights),move(blobs));});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getMemoryConsumption",  [](cv::dnn::Net& cobj, int& layerId, MatShape& netInputShape) {size_t weights;size_t blobs; cobj.getMemoryConsumption(layerId, netInputShape, weights, blobs);  return make_tuple(move(weights),move(blobs));});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_enableFusion",  [](cv::dnn::Net& cobj, bool& fusion) { cobj.enableFusion(fusion);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getPerfProfile",  [](cv::dnn::Net& cobj) {vector<double> timings; auto retval = cobj.getPerfProfile(timings);  return make_tuple(move(retval),move(timings));});mod.method("jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_Model", [](string& model, string& config) {  return jlcxx::create<cv::dnn::Model>(model ,config);});mod.method("jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_Model", [](Net& network) {  return jlcxx::create<cv::dnn::Model>(network);});

;
    mod.method("jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputSize",  [](cv::dnn::Model& cobj, Size& size) { auto retval = cobj.setInputSize(size);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputSize",  [](cv::dnn::Model& cobj, int& width, int& height) { auto retval = cobj.setInputSize(width, height);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputMean",  [](cv::dnn::Model& cobj, Scalar& mean) { auto retval = cobj.setInputMean(mean);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputScale",  [](cv::dnn::Model& cobj, double& scale) { auto retval = cobj.setInputScale(scale);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputCrop",  [](cv::dnn::Model& cobj, bool& crop) { auto retval = cobj.setInputCrop(crop);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputSwapRB",  [](cv::dnn::Model& cobj, bool& swapRB) { auto retval = cobj.setInputSwapRB(swapRB);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputParams",  [](cv::dnn::Model& cobj, double& scale, Size& size, Scalar& mean, bool& swapRB, bool& crop) { cobj.setInputParams(scale, size, mean, swapRB, crop);  ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_predict",  [](cv::dnn::Model& cobj, Mat& frame, vector<Mat>& outs) { cobj.predict(frame, outs);  return outs;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_predict",  [](cv::dnn::Model& cobj, UMat& frame, vector<UMat>& outs) { cobj.predict(frame, outs);  return outs;});mod.method("jlopencv_cv_dnn_cv_dnn_ClassificationModel_cv_dnn_ClassificationModel_ClassificationModel", [](string& model, string& config) {  return jlcxx::create<cv::dnn::ClassificationModel>(model ,config);});mod.method("jlopencv_cv_dnn_cv_dnn_ClassificationModel_cv_dnn_ClassificationModel_ClassificationModel", [](Net& network) {  return jlcxx::create<cv::dnn::ClassificationModel>(network);});

;
    mod.method("jlopencv_cv_dnn_cv_dnn_ClassificationModel_cv_dnn_ClassificationModel_classify",  [](cv::dnn::ClassificationModel& cobj, Mat& frame) {int classId;float conf; cobj.classify(frame, classId, conf);  return make_tuple(move(classId),move(conf));});
    mod.method("jlopencv_cv_dnn_cv_dnn_ClassificationModel_cv_dnn_ClassificationModel_classify",  [](cv::dnn::ClassificationModel& cobj, UMat& frame) {int classId;float conf; cobj.classify(frame, classId, conf);  return make_tuple(move(classId),move(conf));});mod.method("jlopencv_cv_dnn_cv_dnn_KeypointsModel_cv_dnn_KeypointsModel_KeypointsModel", [](string& model, string& config) {  return jlcxx::create<cv::dnn::KeypointsModel>(model ,config);});mod.method("jlopencv_cv_dnn_cv_dnn_KeypointsModel_cv_dnn_KeypointsModel_KeypointsModel", [](Net& network) {  return jlcxx::create<cv::dnn::KeypointsModel>(network);});

;
    mod.method("jlopencv_cv_dnn_cv_dnn_KeypointsModel_cv_dnn_KeypointsModel_estimate",  [](cv::dnn::KeypointsModel& cobj, Mat& frame, float& thresh) { auto retval = cobj.estimate(frame, thresh);  return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_KeypointsModel_cv_dnn_KeypointsModel_estimate",  [](cv::dnn::KeypointsModel& cobj, UMat& frame, float& thresh) { auto retval = cobj.estimate(frame, thresh);  return retval;});mod.method("jlopencv_cv_dnn_cv_dnn_SegmentationModel_cv_dnn_SegmentationModel_SegmentationModel", [](string& model, string& config) {  return jlcxx::create<cv::dnn::SegmentationModel>(model ,config);});mod.method("jlopencv_cv_dnn_cv_dnn_SegmentationModel_cv_dnn_SegmentationModel_SegmentationModel", [](Net& network) {  return jlcxx::create<cv::dnn::SegmentationModel>(network);});

;
    mod.method("jlopencv_cv_dnn_cv_dnn_SegmentationModel_cv_dnn_SegmentationModel_segment",  [](cv::dnn::SegmentationModel& cobj, Mat& frame, Mat& mask) { cobj.segment(frame, mask);  return mask;});
    mod.method("jlopencv_cv_dnn_cv_dnn_SegmentationModel_cv_dnn_SegmentationModel_segment",  [](cv::dnn::SegmentationModel& cobj, UMat& frame, UMat& mask) { cobj.segment(frame, mask);  return mask;});mod.method("jlopencv_cv_dnn_cv_dnn_DetectionModel_cv_dnn_DetectionModel_DetectionModel", [](string& model, string& config) {  return jlcxx::create<cv::dnn::DetectionModel>(model ,config);});mod.method("jlopencv_cv_dnn_cv_dnn_DetectionModel_cv_dnn_DetectionModel_DetectionModel", [](Net& network) {  return jlcxx::create<cv::dnn::DetectionModel>(network);});

;
    mod.method("jlopencv_cv_dnn_cv_dnn_DetectionModel_cv_dnn_DetectionModel_detect",  [](cv::dnn::DetectionModel& cobj, Mat& frame, float& confThreshold, float& nmsThreshold) {vector<int> classIds;vector<float> confidences;vector<Rect> boxes; cobj.detect(frame, classIds, confidences, boxes, confThreshold, nmsThreshold);  return make_tuple(move(classIds),move(confidences),move(boxes));});
    mod.method("jlopencv_cv_dnn_cv_dnn_DetectionModel_cv_dnn_DetectionModel_detect",  [](cv::dnn::DetectionModel& cobj, UMat& frame, float& confThreshold, float& nmsThreshold) {vector<int> classIds;vector<float> confidences;vector<Rect> boxes; cobj.detect(frame, classIds, confidences, boxes, confThreshold, nmsThreshold);  return make_tuple(move(classIds),move(confidences),move(boxes));});
    mod.method("jlopencv_cv_dnn_cv_dnn_getAvailableTargets",  [](dnn_Backend& be) { auto retval = cv::dnn::getAvailableTargets(be); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_readFromModelOptimizer",  [](string& xml, string& bin) { auto retval = cv::dnn::Net::readFromModelOptimizer(xml, bin); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_Net_readFromModelOptimizer",  [](vector<uchar>& bufferModelConfig, vector<uchar>& bufferWeights) { auto retval = cv::dnn::Net::readFromModelOptimizer(bufferModelConfig, bufferWeights); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNetFromDarknet",  [](string& cfgFile, string& darknetModel) { auto retval = cv::dnn::readNetFromDarknet(cfgFile, darknetModel); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNetFromDarknet",  [](vector<uchar>& bufferCfg, vector<uchar>& bufferModel) { auto retval = cv::dnn::readNetFromDarknet(bufferCfg, bufferModel); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNetFromCaffe",  [](string& prototxt, string& caffeModel) { auto retval = cv::dnn::readNetFromCaffe(prototxt, caffeModel); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNetFromCaffe",  [](vector<uchar>& bufferProto, vector<uchar>& bufferModel) { auto retval = cv::dnn::readNetFromCaffe(bufferProto, bufferModel); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNetFromTensorflow",  [](string& model, string& config) { auto retval = cv::dnn::readNetFromTensorflow(model, config); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNetFromTensorflow",  [](vector<uchar>& bufferModel, vector<uchar>& bufferConfig) { auto retval = cv::dnn::readNetFromTensorflow(bufferModel, bufferConfig); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNetFromTorch",  [](string& model, bool& isBinary, bool& evaluate) { auto retval = cv::dnn::readNetFromTorch(model, isBinary, evaluate); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNet",  [](string& model, string& config, string& framework) { auto retval = cv::dnn::readNet(model, config, framework); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNet",  [](string& framework, vector<uchar>& bufferModel, vector<uchar>& bufferConfig) { auto retval = cv::dnn::readNet(framework, bufferModel, bufferConfig); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readTorchBlob",  [](string& filename, bool& isBinary) { auto retval = cv::dnn::readTorchBlob(filename, isBinary); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNetFromModelOptimizer",  [](string& xml, string& bin) { auto retval = cv::dnn::readNetFromModelOptimizer(xml, bin); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNetFromModelOptimizer",  [](vector<uchar>& bufferModelConfig, vector<uchar>& bufferWeights) { auto retval = cv::dnn::readNetFromModelOptimizer(bufferModelConfig, bufferWeights); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNetFromONNX",  [](string& onnxFile) { auto retval = cv::dnn::readNetFromONNX(onnxFile); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readNetFromONNX",  [](vector<uchar>& buffer) { auto retval = cv::dnn::readNetFromONNX(buffer); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_readTensorFromONNX",  [](string& path) { auto retval = cv::dnn::readTensorFromONNX(path); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_blobFromImage",  [](Mat& image, double& scalefactor, Size& size, Scalar& mean, bool& swapRB, bool& crop, int& ddepth) { auto retval = cv::dnn::blobFromImage(image, scalefactor, size, mean, swapRB, crop, ddepth); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_blobFromImage",  [](UMat& image, double& scalefactor, Size& size, Scalar& mean, bool& swapRB, bool& crop, int& ddepth) { auto retval = cv::dnn::blobFromImage(image, scalefactor, size, mean, swapRB, crop, ddepth); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_blobFromImages",  [](vector<Mat>& images, double& scalefactor, Size& size, Scalar& mean, bool& swapRB, bool& crop, int& ddepth) { auto retval = cv::dnn::blobFromImages(images, scalefactor, size, mean, swapRB, crop, ddepth); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_blobFromImages",  [](vector<UMat>& images, double& scalefactor, Size& size, Scalar& mean, bool& swapRB, bool& crop, int& ddepth) { auto retval = cv::dnn::blobFromImages(images, scalefactor, size, mean, swapRB, crop, ddepth); return retval;});
    mod.method("jlopencv_cv_dnn_cv_dnn_imagesFromBlob",  [](Mat& blob_, vector<Mat>& images_) { cv::dnn::imagesFromBlob(blob_, images_); return images_;});
    mod.method("jlopencv_cv_dnn_cv_dnn_imagesFromBlob",  [](Mat& blob_, vector<UMat>& images_) { cv::dnn::imagesFromBlob(blob_, images_); return images_;});
    mod.method("jlopencv_cv_dnn_cv_dnn_shrinkCaffeModel",  [](string& src, string& dst, vector<string>& layersTypes) { cv::dnn::shrinkCaffeModel(src, dst, layersTypes); ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_writeTextGraph",  [](string& model, string& output) { cv::dnn::writeTextGraph(model, output); ;});
    mod.method("jlopencv_cv_dnn_cv_dnn_NMSBoxes",  [](vector<Rect2d>& bboxes, vector<float>& scores, float& score_threshold, float& nms_threshold, float& eta, int& top_k) {vector<int> indices; cv::dnn::NMSBoxes(bboxes, scores, score_threshold, nms_threshold, indices, eta, top_k); return indices;});
    mod.method("jlopencv_cv_dnn_cv_dnn_NMSBoxes",  [](vector<RotatedRect>& bboxes, vector<float>& scores, float& score_threshold, float& nms_threshold, float& eta, int& top_k) {vector<int> indices; cv::dnn::NMSBoxes(bboxes, scores, score_threshold, nms_threshold, indices, eta, top_k); return indices;});    mod.set_const("DNN_BACKEND_CUDA", (force_enum_int<decltype(cv::dnn::DNN_BACKEND_CUDA)>::Type)cv::dnn::DNN_BACKEND_CUDA);
    mod.set_const("DNN_BACKEND_DEFAULT", (force_enum_int<decltype(cv::dnn::DNN_BACKEND_DEFAULT)>::Type)cv::dnn::DNN_BACKEND_DEFAULT);
    mod.set_const("DNN_BACKEND_HALIDE", (force_enum_int<decltype(cv::dnn::DNN_BACKEND_HALIDE)>::Type)cv::dnn::DNN_BACKEND_HALIDE);
    mod.set_const("DNN_BACKEND_INFERENCE_ENGINE", (force_enum_int<decltype(cv::dnn::DNN_BACKEND_INFERENCE_ENGINE)>::Type)cv::dnn::DNN_BACKEND_INFERENCE_ENGINE);
    mod.set_const("DNN_BACKEND_OPENCV", (force_enum_int<decltype(cv::dnn::DNN_BACKEND_OPENCV)>::Type)cv::dnn::DNN_BACKEND_OPENCV);
    mod.set_const("DNN_BACKEND_VKCOM", (force_enum_int<decltype(cv::dnn::DNN_BACKEND_VKCOM)>::Type)cv::dnn::DNN_BACKEND_VKCOM);
    mod.set_const("DNN_TARGET_CPU", (force_enum_int<decltype(cv::dnn::DNN_TARGET_CPU)>::Type)cv::dnn::DNN_TARGET_CPU);
    mod.set_const("DNN_TARGET_CUDA", (force_enum_int<decltype(cv::dnn::DNN_TARGET_CUDA)>::Type)cv::dnn::DNN_TARGET_CUDA);
    mod.set_const("DNN_TARGET_CUDA_FP16", (force_enum_int<decltype(cv::dnn::DNN_TARGET_CUDA_FP16)>::Type)cv::dnn::DNN_TARGET_CUDA_FP16);
    mod.set_const("DNN_TARGET_FPGA", (force_enum_int<decltype(cv::dnn::DNN_TARGET_FPGA)>::Type)cv::dnn::DNN_TARGET_FPGA);
    mod.set_const("DNN_TARGET_MYRIAD", (force_enum_int<decltype(cv::dnn::DNN_TARGET_MYRIAD)>::Type)cv::dnn::DNN_TARGET_MYRIAD);
    mod.set_const("DNN_TARGET_OPENCL", (force_enum_int<decltype(cv::dnn::DNN_TARGET_OPENCL)>::Type)cv::dnn::DNN_TARGET_OPENCL);
    mod.set_const("DNN_TARGET_OPENCL_FP16", (force_enum_int<decltype(cv::dnn::DNN_TARGET_OPENCL_FP16)>::Type)cv::dnn::DNN_TARGET_OPENCL_FP16);
    mod.set_const("DNN_TARGET_VULKAN", (force_enum_int<decltype(cv::dnn::DNN_TARGET_VULKAN)>::Type)cv::dnn::DNN_TARGET_VULKAN);
    mod.set_const("MatOP", (force_enum_int<decltype(Mat())>::Type)Mat());
    mod.set_const("ScalarOP", (force_enum_int<decltype(Scalar())>::Type)Scalar());
    mod.set_const("UMatOP", (force_enum_int<decltype(UMat())>::Type)UMat());
    mod.set_const("stdggvectoriStringkOP", (force_enum_int<decltype(std::vector<String>())>::Type)std::vector<String>());
    mod.set_const("stdggvectoriucharkOP", (force_enum_int<decltype(std::vector<uchar>())>::Type)std::vector<uchar>());
    mod.set_const("StringOP", (force_enum_int<decltype(String())>::Type)String());
    mod.set_const("SizeOP", (force_enum_int<decltype(Size())>::Type)Size());
    mod.set_const("ScalarOXP", (force_enum_int<decltype(Scalar(1))>::Type)Scalar(1));



}
