#include "jlcv2.hpp"

namespace jlcxx
{



} // namespace jlcxx

JLCXX_MODULE cv_fisheye_wrap(jlcxx::Module &mod) {
using namespace cv::fisheye;

    mod.method("jlopencv_cv_fisheye_cv_fisheye_projectPoints",  [](Mat& objectPoints, Mat& rvec, Mat& tvec, Mat& K, Mat& D, Mat& imagePoints, double& alpha, Mat& jacobian) { cv::fisheye::projectPoints(objectPoints, imagePoints, rvec, tvec, K, D, alpha, jacobian); return make_tuple(move(imagePoints),move(jacobian));});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_projectPoints",  [](UMat& objectPoints, UMat& rvec, UMat& tvec, UMat& K, UMat& D, UMat& imagePoints, double& alpha, UMat& jacobian) { cv::fisheye::projectPoints(objectPoints, imagePoints, rvec, tvec, K, D, alpha, jacobian); return make_tuple(move(imagePoints),move(jacobian));});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_distortPoints",  [](Mat& undistorted, Mat& K, Mat& D, Mat& distorted, double& alpha) { cv::fisheye::distortPoints(undistorted, distorted, K, D, alpha); return distorted;});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_distortPoints",  [](UMat& undistorted, UMat& K, UMat& D, UMat& distorted, double& alpha) { cv::fisheye::distortPoints(undistorted, distorted, K, D, alpha); return distorted;});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_undistortPoints",  [](Mat& distorted, Mat& K, Mat& D, Mat& undistorted, Mat& R, Mat& P) { cv::fisheye::undistortPoints(distorted, undistorted, K, D, R, P); return undistorted;});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_undistortPoints",  [](UMat& distorted, UMat& K, UMat& D, UMat& undistorted, UMat& R, UMat& P) { cv::fisheye::undistortPoints(distorted, undistorted, K, D, R, P); return undistorted;});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_initUndistortRectifyMap",  [](Mat& K, Mat& D, Mat& R, Mat& P, Size& size, int& m1type, Mat& map1, Mat& map2) { cv::fisheye::initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2); return make_tuple(move(map1),move(map2));});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_initUndistortRectifyMap",  [](UMat& K, UMat& D, UMat& R, UMat& P, Size& size, int& m1type, UMat& map1, UMat& map2) { cv::fisheye::initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2); return make_tuple(move(map1),move(map2));});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_undistortImage",  [](Mat& distorted, Mat& K, Mat& D, Mat& undistorted, Mat& Knew, Size& new_size) { cv::fisheye::undistortImage(distorted, undistorted, K, D, Knew, new_size); return undistorted;});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_undistortImage",  [](UMat& distorted, UMat& K, UMat& D, UMat& undistorted, UMat& Knew, Size& new_size) { cv::fisheye::undistortImage(distorted, undistorted, K, D, Knew, new_size); return undistorted;});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_estimateNewCameraMatrixForUndistortRectify",  [](Mat& K, Mat& D, Size& image_size, Mat& R, Mat& P, double& balance, Size& new_size, double& fov_scale) { cv::fisheye::estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale); return P;});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_estimateNewCameraMatrixForUndistortRectify",  [](UMat& K, UMat& D, Size& image_size, UMat& R, UMat& P, double& balance, Size& new_size, double& fov_scale) { cv::fisheye::estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale); return P;});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_calibrate",  [](vector<Mat>& objectPoints, vector<Mat>& imagePoints, Size& image_size, Mat& K, Mat& D, vector<Mat>& rvecs, vector<Mat>& tvecs, int& flags, TermCriteria& criteria) { auto retval = cv::fisheye::calibrate(objectPoints, imagePoints, image_size, K, D, rvecs, tvecs, flags, criteria); return make_tuple(move(retval),move(K),move(D),move(rvecs),move(tvecs));});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_calibrate",  [](vector<UMat>& objectPoints, vector<UMat>& imagePoints, Size& image_size, UMat& K, UMat& D, vector<UMat>& rvecs, vector<UMat>& tvecs, int& flags, TermCriteria& criteria) { auto retval = cv::fisheye::calibrate(objectPoints, imagePoints, image_size, K, D, rvecs, tvecs, flags, criteria); return make_tuple(move(retval),move(K),move(D),move(rvecs),move(tvecs));});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_stereoRectify",  [](Mat& K1, Mat& D1, Mat& K2, Mat& D2, Size& imageSize, Mat& R, Mat& tvec, int& flags, Mat& R1, Mat& R2, Mat& P1, Mat& P2, Mat& Q, Size& newImageSize, double& balance, double& fov_scale) { cv::fisheye::stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, R1, R2, P1, P2, Q, flags, newImageSize, balance, fov_scale); return make_tuple(move(R1),move(R2),move(P1),move(P2),move(Q));});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_stereoRectify",  [](UMat& K1, UMat& D1, UMat& K2, UMat& D2, Size& imageSize, UMat& R, UMat& tvec, int& flags, UMat& R1, UMat& R2, UMat& P1, UMat& P2, UMat& Q, Size& newImageSize, double& balance, double& fov_scale) { cv::fisheye::stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, R1, R2, P1, P2, Q, flags, newImageSize, balance, fov_scale); return make_tuple(move(R1),move(R2),move(P1),move(P2),move(Q));});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_stereoCalibrate",  [](vector<Mat>& objectPoints, vector<Mat>& imagePoints1, vector<Mat>& imagePoints2, Mat& K1, Mat& D1, Mat& K2, Mat& D2, Size& imageSize, Mat& R, Mat& T, int& flags, TermCriteria& criteria) { auto retval = cv::fisheye::stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria); return make_tuple(move(retval),move(K1),move(D1),move(K2),move(D2),move(R),move(T));});
    mod.method("jlopencv_cv_fisheye_cv_fisheye_stereoCalibrate",  [](vector<UMat>& objectPoints, vector<UMat>& imagePoints1, vector<UMat>& imagePoints2, UMat& K1, UMat& D1, UMat& K2, UMat& D2, Size& imageSize, UMat& R, UMat& T, int& flags, TermCriteria& criteria) { auto retval = cv::fisheye::stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria); return make_tuple(move(retval),move(K1),move(D1),move(K2),move(D2),move(R),move(T));});    mod.set_const("CALIB_CHECK_COND", cv::fisheye::CALIB_CHECK_COND);
    mod.set_const("CALIB_FIX_INTRINSIC", cv::fisheye::CALIB_FIX_INTRINSIC);
    mod.set_const("CALIB_FIX_K1", cv::fisheye::CALIB_FIX_K1);
    mod.set_const("CALIB_FIX_K2", cv::fisheye::CALIB_FIX_K2);
    mod.set_const("CALIB_FIX_K3", cv::fisheye::CALIB_FIX_K3);
    mod.set_const("CALIB_FIX_K4", cv::fisheye::CALIB_FIX_K4);
    mod.set_const("CALIB_FIX_PRINCIPAL_POINT", cv::fisheye::CALIB_FIX_PRINCIPAL_POINT);
    mod.set_const("CALIB_FIX_SKEW", cv::fisheye::CALIB_FIX_SKEW);
    mod.set_const("CALIB_RECOMPUTE_EXTRINSIC", cv::fisheye::CALIB_RECOMPUTE_EXTRINSIC);
    mod.set_const("CALIB_USE_INTRINSIC_GUESS", cv::fisheye::CALIB_USE_INTRINSIC_GUESS);
}

