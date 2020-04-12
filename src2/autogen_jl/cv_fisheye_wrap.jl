module cv_fisheye
    using CxxWrap
    @wrapmodule(joinpath("TODO","libcv2_jlcxx"), :cv_fisheye_wrap)

    function __init__()
        @initcxx
    end
    
    import ..cpp_to_julia
    import ..julia_to_cpp

    
function projectPoints(objectPoints::Mat, rvec::Mat, tvec::Mat, K::Mat, D::Mat, imagePoints::Mat, alpha::Float64, jacobian::Mat)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(imagePoints),julia_to_cpp(alpha),julia_to_cpp(jacobian)))
end
projectPoints(objectPoints::Mat, rvec::Mat, tvec::Mat, K::Mat, D::Mat; imagePoints::Mat = , alpha::Float64 = 0, jacobian::Mat = Mat()) = projectPoints(objectPoints, rvec, tvec, K, D, imagePoints, alpha, jacobian)

function projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, K::UMat, D::UMat, imagePoints::UMat, alpha::Float64, jacobian::UMat)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(imagePoints),julia_to_cpp(alpha),julia_to_cpp(jacobian)))
end
projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, K::UMat, D::UMat; imagePoints::UMat = , alpha::Float64 = 0, jacobian::UMat = UMat()) = projectPoints(objectPoints, rvec, tvec, K, D, imagePoints, alpha, jacobian)

function distortPoints(undistorted::Mat, K::Mat, D::Mat, distorted::Mat, alpha::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_distortPoints(julia_to_cpp(undistorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(distorted),julia_to_cpp(alpha)))
end
distortPoints(undistorted::Mat, K::Mat, D::Mat; distorted::Mat = , alpha::Float64 = 0) = distortPoints(undistorted, K, D, distorted, alpha)

function distortPoints(undistorted::UMat, K::UMat, D::UMat, distorted::UMat, alpha::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_distortPoints(julia_to_cpp(undistorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(distorted),julia_to_cpp(alpha)))
end
distortPoints(undistorted::UMat, K::UMat, D::UMat; distorted::UMat = , alpha::Float64 = 0) = distortPoints(undistorted, K, D, distorted, alpha)

function undistortPoints(distorted::Mat, K::Mat, D::Mat, undistorted::Mat, R::Mat, P::Mat)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_undistortPoints(julia_to_cpp(distorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(undistorted),julia_to_cpp(R),julia_to_cpp(P)))
end
undistortPoints(distorted::Mat, K::Mat, D::Mat; undistorted::Mat = , R::Mat = Mat(), P::Mat = Mat()) = undistortPoints(distorted, K, D, undistorted, R, P)

function undistortPoints(distorted::UMat, K::UMat, D::UMat, undistorted::UMat, R::UMat, P::UMat)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_undistortPoints(julia_to_cpp(distorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(undistorted),julia_to_cpp(R),julia_to_cpp(P)))
end
undistortPoints(distorted::UMat, K::UMat, D::UMat; undistorted::UMat = , R::UMat = UMat(), P::UMat = UMat()) = undistortPoints(distorted, K, D, undistorted, R, P)

function initUndistortRectifyMap(K::Mat, D::Mat, R::Mat, P::Mat, size::Size, m1type::Int32, map1::Mat, map2::Mat)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_initUndistortRectifyMap(julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(K::Mat, D::Mat, R::Mat, P::Mat, size::Size, m1type::Int32; map1::Mat = , map2::Mat = ) = initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2)

function initUndistortRectifyMap(K::UMat, D::UMat, R::UMat, P::UMat, size::Size, m1type::Int32, map1::UMat, map2::UMat)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_initUndistortRectifyMap(julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(K::UMat, D::UMat, R::UMat, P::UMat, size::Size, m1type::Int32; map1::UMat = , map2::UMat = ) = initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2)

function undistortImage(distorted::Mat, K::Mat, D::Mat, undistorted::Mat, Knew::Mat, new_size::Size)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_undistortImage(julia_to_cpp(distorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(undistorted),julia_to_cpp(Knew),julia_to_cpp(new_size)))
end
undistortImage(distorted::Mat, K::Mat, D::Mat; undistorted::Mat = , Knew::Mat = cv::Mat(), new_size::Size = Size()) = undistortImage(distorted, K, D, undistorted, Knew, new_size)

function undistortImage(distorted::UMat, K::UMat, D::UMat, undistorted::UMat, Knew::UMat, new_size::Size)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_undistortImage(julia_to_cpp(distorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(undistorted),julia_to_cpp(Knew),julia_to_cpp(new_size)))
end
undistortImage(distorted::UMat, K::UMat, D::UMat; undistorted::UMat = , Knew::UMat = cv::UMat(), new_size::Size = Size()) = undistortImage(distorted, K, D, undistorted, Knew, new_size)

function estimateNewCameraMatrixForUndistortRectify(K::Mat, D::Mat, image_size::Size, R::Mat, P::Mat, balance::Float64, new_size::Size, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_estimateNewCameraMatrixForUndistortRectify(julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(image_size),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(balance),julia_to_cpp(new_size),julia_to_cpp(fov_scale)))
end
estimateNewCameraMatrixForUndistortRectify(K::Mat, D::Mat, image_size::Size, R::Mat; P::Mat = , balance::Float64 = 0.0, new_size::Size = Size(), fov_scale::Float64 = 1.0) = estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale)

function estimateNewCameraMatrixForUndistortRectify(K::UMat, D::UMat, image_size::Size, R::UMat, P::UMat, balance::Float64, new_size::Size, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_estimateNewCameraMatrixForUndistortRectify(julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(image_size),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(balance),julia_to_cpp(new_size),julia_to_cpp(fov_scale)))
end
estimateNewCameraMatrixForUndistortRectify(K::UMat, D::UMat, image_size::Size, R::UMat; P::UMat = , balance::Float64 = 0.0, new_size::Size = Size(), fov_scale::Float64 = 1.0) = estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale)

function calibrate(objectPoints::vector{Mat}, imagePoints::vector{Mat}, image_size::Size, K::Mat, D::Mat, rvecs::vector{Mat}, tvecs::vector{Mat}, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_calibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(image_size),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrate(objectPoints::vector{Mat}, imagePoints::vector{Mat}, image_size::Size, K::Mat, D::Mat; rvecs::vector{Mat} = , tvecs::vector{Mat} = , flags::Int32 = 0, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = calibrate(objectPoints, imagePoints, image_size, K, D, rvecs, tvecs, flags, criteria)

function calibrate(objectPoints::vector{UMat}, imagePoints::vector{UMat}, image_size::Size, K::UMat, D::UMat, rvecs::vector{UMat}, tvecs::vector{UMat}, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_calibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(image_size),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrate(objectPoints::vector{UMat}, imagePoints::vector{UMat}, image_size::Size, K::UMat, D::UMat; rvecs::vector{UMat} = , tvecs::vector{UMat} = , flags::Int32 = 0, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = calibrate(objectPoints, imagePoints, image_size, K, D, rvecs, tvecs, flags, criteria)

function stereoRectify(K1::Mat, D1::Mat, K2::Mat, D2::Mat, imageSize::Size, R::Mat, tvec::Mat, flags::Int32, R1::Mat, R2::Mat, P1::Mat, P2::Mat, Q::Mat, newImageSize::Size, balance::Float64, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_stereoRectify(julia_to_cpp(K1),julia_to_cpp(D1),julia_to_cpp(K2),julia_to_cpp(D2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(tvec),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(newImageSize),julia_to_cpp(balance),julia_to_cpp(fov_scale)))
end
stereoRectify(K1::Mat, D1::Mat, K2::Mat, D2::Mat, imageSize::Size, R::Mat, tvec::Mat, flags::Int32; R1::Mat = , R2::Mat = , P1::Mat = , P2::Mat = , Q::Mat = , newImageSize::Size = Size(), balance::Float64 = 0.0, fov_scale::Float64 = 1.0) = stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, flags, R1, R2, P1, P2, Q, newImageSize, balance, fov_scale)

function stereoRectify(K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, tvec::UMat, flags::Int32, R1::UMat, R2::UMat, P1::UMat, P2::UMat, Q::UMat, newImageSize::Size, balance::Float64, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_stereoRectify(julia_to_cpp(K1),julia_to_cpp(D1),julia_to_cpp(K2),julia_to_cpp(D2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(tvec),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(newImageSize),julia_to_cpp(balance),julia_to_cpp(fov_scale)))
end
stereoRectify(K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, tvec::UMat, flags::Int32; R1::UMat = , R2::UMat = , P1::UMat = , P2::UMat = , Q::UMat = , newImageSize::Size = Size(), balance::Float64 = 0.0, fov_scale::Float64 = 1.0) = stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, flags, R1, R2, P1, P2, Q, newImageSize, balance, fov_scale)

function stereoCalibrate(objectPoints::vector{Mat}, imagePoints1::vector{Mat}, imagePoints2::vector{Mat}, K1::Mat, D1::Mat, K2::Mat, D2::Mat, imageSize::Size, R::Mat, T::Mat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(K1),julia_to_cpp(D1),julia_to_cpp(K2),julia_to_cpp(D2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::vector{Mat}, imagePoints1::vector{Mat}, imagePoints2::vector{Mat}, K1::Mat, D1::Mat, K2::Mat, D2::Mat, imageSize::Size; R::Mat = , T::Mat = , flags::Int32 = fisheye::CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria)

function stereoCalibrate(objectPoints::vector{UMat}, imagePoints1::vector{UMat}, imagePoints2::vector{UMat}, K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, T::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(K1),julia_to_cpp(D1),julia_to_cpp(K2),julia_to_cpp(D2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::vector{UMat}, imagePoints1::vector{UMat}, imagePoints2::vector{UMat}, K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size; R::UMat = , T::UMat = , flags::Int32 = fisheye::CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria)


    
end