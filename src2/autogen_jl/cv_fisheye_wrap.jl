module cv_fisheye
import ..OpenCVCxx


function projectPoints(objectPoints::Image, rvec::Image, tvec::Image, K::Image, D::Image, imagePoints::Image, alpha::Float64, jacobian::Image)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_projectPoints(julia_to_cpp(objectPoints, Image),julia_to_cpp(rvec, Image),julia_to_cpp(tvec, Image),julia_to_cpp(K, Image),julia_to_cpp(D, Image),julia_to_cpp(imagePoints, Image),julia_to_cpp(alpha, Float64),julia_to_cpp(jacobian, Image)))
end
projectPoints(objectPoints::Image, rvec::Image, tvec::Image, K::Image, D::Image; imagePoints::Image = Mat(), alpha::Float64 = 0, jacobian::Image = Mat()) = projectPoints(objectPoints, rvec, tvec, K, D, imagePoints, alpha, jacobian)

function projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, K::UMat, D::UMat, imagePoints::UMat, alpha::Float64, jacobian::UMat)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_projectPoints(julia_to_cpp(objectPoints, UMat),julia_to_cpp(rvec, UMat),julia_to_cpp(tvec, UMat),julia_to_cpp(K, UMat),julia_to_cpp(D, UMat),julia_to_cpp(imagePoints, UMat),julia_to_cpp(alpha, Float64),julia_to_cpp(jacobian, UMat)))
end
projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, K::UMat, D::UMat; imagePoints::UMat = UMat(), alpha::Float64 = 0, jacobian::UMat = UMat()) = projectPoints(objectPoints, rvec, tvec, K, D, imagePoints, alpha, jacobian)

function distortPoints(undistorted::Image, K::Image, D::Image, distorted::Image, alpha::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_distortPoints(julia_to_cpp(undistorted, Image),julia_to_cpp(K, Image),julia_to_cpp(D, Image),julia_to_cpp(distorted, Image),julia_to_cpp(alpha, Float64)))
end
distortPoints(undistorted::Image, K::Image, D::Image; distorted::Image = Mat(), alpha::Float64 = 0) = distortPoints(undistorted, K, D, distorted, alpha)

function distortPoints(undistorted::UMat, K::UMat, D::UMat, distorted::UMat, alpha::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_distortPoints(julia_to_cpp(undistorted, UMat),julia_to_cpp(K, UMat),julia_to_cpp(D, UMat),julia_to_cpp(distorted, UMat),julia_to_cpp(alpha, Float64)))
end
distortPoints(undistorted::UMat, K::UMat, D::UMat; distorted::UMat = UMat(), alpha::Float64 = 0) = distortPoints(undistorted, K, D, distorted, alpha)

function undistortPoints(distorted::Image, K::Image, D::Image, undistorted::Image, R::Image, P::Image)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_undistortPoints(julia_to_cpp(distorted, Image),julia_to_cpp(K, Image),julia_to_cpp(D, Image),julia_to_cpp(undistorted, Image),julia_to_cpp(R, Image),julia_to_cpp(P, Image)))
end
undistortPoints(distorted::Image, K::Image, D::Image; undistorted::Image = Mat(), R::Image = Mat(), P::Image = Mat()) = undistortPoints(distorted, K, D, undistorted, R, P)

function undistortPoints(distorted::UMat, K::UMat, D::UMat, undistorted::UMat, R::UMat, P::UMat)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_undistortPoints(julia_to_cpp(distorted, UMat),julia_to_cpp(K, UMat),julia_to_cpp(D, UMat),julia_to_cpp(undistorted, UMat),julia_to_cpp(R, UMat),julia_to_cpp(P, UMat)))
end
undistortPoints(distorted::UMat, K::UMat, D::UMat; undistorted::UMat = UMat(), R::UMat = UMat(), P::UMat = UMat()) = undistortPoints(distorted, K, D, undistorted, R, P)

function initUndistortRectifyMap(K::Image, D::Image, R::Image, P::Image, size::Size, m1type::Int32, map1::Image, map2::Image)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_initUndistortRectifyMap(julia_to_cpp(K, Image),julia_to_cpp(D, Image),julia_to_cpp(R, Image),julia_to_cpp(P, Image),julia_to_cpp(size, Size),julia_to_cpp(m1type, Int32),julia_to_cpp(map1, Image),julia_to_cpp(map2, Image)))
end
initUndistortRectifyMap(K::Image, D::Image, R::Image, P::Image, size::Size, m1type::Int32; map1::Image = Mat(), map2::Image = Mat()) = initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2)

function initUndistortRectifyMap(K::UMat, D::UMat, R::UMat, P::UMat, size::Size, m1type::Int32, map1::UMat, map2::UMat)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_initUndistortRectifyMap(julia_to_cpp(K, UMat),julia_to_cpp(D, UMat),julia_to_cpp(R, UMat),julia_to_cpp(P, UMat),julia_to_cpp(size, Size),julia_to_cpp(m1type, Int32),julia_to_cpp(map1, UMat),julia_to_cpp(map2, UMat)))
end
initUndistortRectifyMap(K::UMat, D::UMat, R::UMat, P::UMat, size::Size, m1type::Int32; map1::UMat = UMat(), map2::UMat = UMat()) = initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2)

function undistortImage(distorted::Image, K::Image, D::Image, undistorted::Image, Knew::Image, new_size::Size)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_undistortImage(julia_to_cpp(distorted, Image),julia_to_cpp(K, Image),julia_to_cpp(D, Image),julia_to_cpp(undistorted, Image),julia_to_cpp(Knew, Image),julia_to_cpp(new_size, Size)))
end
undistortImage(distorted::Image, K::Image, D::Image; undistorted::Image = Mat(), Knew::Image = Mat(), new_size::Size = Size()) = undistortImage(distorted, K, D, undistorted, Knew, new_size)

function undistortImage(distorted::UMat, K::UMat, D::UMat, undistorted::UMat, Knew::UMat, new_size::Size)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_undistortImage(julia_to_cpp(distorted, UMat),julia_to_cpp(K, UMat),julia_to_cpp(D, UMat),julia_to_cpp(undistorted, UMat),julia_to_cpp(Knew, UMat),julia_to_cpp(new_size, Size)))
end
undistortImage(distorted::UMat, K::UMat, D::UMat; undistorted::UMat = UMat(), Knew::UMat = UMat(), new_size::Size = Size()) = undistortImage(distorted, K, D, undistorted, Knew, new_size)

function estimateNewCameraMatrixForUndistortRectify(K::Image, D::Image, image_size::Size, R::Image, P::Image, balance::Float64, new_size::Size, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_estimateNewCameraMatrixForUndistortRectify(julia_to_cpp(K, Image),julia_to_cpp(D, Image),julia_to_cpp(image_size, Size),julia_to_cpp(R, Image),julia_to_cpp(P, Image),julia_to_cpp(balance, Float64),julia_to_cpp(new_size, Size),julia_to_cpp(fov_scale, Float64)))
end
estimateNewCameraMatrixForUndistortRectify(K::Image, D::Image, image_size::Size, R::Image; P::Image = Mat(), balance::Float64 = 0.0, new_size::Size = Size(), fov_scale::Float64 = 1.0) = estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale)

function estimateNewCameraMatrixForUndistortRectify(K::UMat, D::UMat, image_size::Size, R::UMat, P::UMat, balance::Float64, new_size::Size, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_estimateNewCameraMatrixForUndistortRectify(julia_to_cpp(K, UMat),julia_to_cpp(D, UMat),julia_to_cpp(image_size, Size),julia_to_cpp(R, UMat),julia_to_cpp(P, UMat),julia_to_cpp(balance, Float64),julia_to_cpp(new_size, Size),julia_to_cpp(fov_scale, Float64)))
end
estimateNewCameraMatrixForUndistortRectify(K::UMat, D::UMat, image_size::Size, R::UMat; P::UMat = UMat(), balance::Float64 = 0.0, new_size::Size = Size(), fov_scale::Float64 = 1.0) = estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale)

function calibrate(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, image_size::Size, K::Image, D::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_calibrate(julia_to_cpp(objectPoints, Array{Image, 1}),julia_to_cpp(imagePoints, Array{Image, 1}),julia_to_cpp(image_size, Size),julia_to_cpp(K, Image),julia_to_cpp(D, Image),julia_to_cpp(rvecs, Array{Image, 1}),julia_to_cpp(tvecs, Array{Image, 1}),julia_to_cpp(flags, Int32),julia_to_cpp(criteria, TermCriteria)))
end
calibrate(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, image_size::Size, K::Image, D::Image; rvecs::Array{Image, 1} = Array{Image, 1}(), tvecs::Array{Image, 1} = Array{Image, 1}(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = calibrate(objectPoints, imagePoints, image_size, K, D, rvecs, tvecs, flags, criteria)

function calibrate(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, image_size::Size, K::UMat, D::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_calibrate(julia_to_cpp(objectPoints, Array{UMat, 1}),julia_to_cpp(imagePoints, Array{UMat, 1}),julia_to_cpp(image_size, Size),julia_to_cpp(K, UMat),julia_to_cpp(D, UMat),julia_to_cpp(rvecs, Array{UMat, 1}),julia_to_cpp(tvecs, Array{UMat, 1}),julia_to_cpp(flags, Int32),julia_to_cpp(criteria, TermCriteria)))
end
calibrate(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, image_size::Size, K::UMat, D::UMat; rvecs::Array{UMat, 1} = Array{UMat, 1}(), tvecs::Array{UMat, 1} = Array{UMat, 1}(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = calibrate(objectPoints, imagePoints, image_size, K, D, rvecs, tvecs, flags, criteria)

function stereoRectify(K1::Image, D1::Image, K2::Image, D2::Image, imageSize::Size, R::Image, tvec::Image, flags::Int32, R1::Image, R2::Image, P1::Image, P2::Image, Q::Image, newImageSize::Size, balance::Float64, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_stereoRectify(julia_to_cpp(K1, Image),julia_to_cpp(D1, Image),julia_to_cpp(K2, Image),julia_to_cpp(D2, Image),julia_to_cpp(imageSize, Size),julia_to_cpp(R, Image),julia_to_cpp(tvec, Image),julia_to_cpp(flags, Int32),julia_to_cpp(R1, Image),julia_to_cpp(R2, Image),julia_to_cpp(P1, Image),julia_to_cpp(P2, Image),julia_to_cpp(Q, Image),julia_to_cpp(newImageSize, Size),julia_to_cpp(balance, Float64),julia_to_cpp(fov_scale, Float64)))
end
stereoRectify(K1::Image, D1::Image, K2::Image, D2::Image, imageSize::Size, R::Image, tvec::Image, flags::Int32; R1::Image = Mat(), R2::Image = Mat(), P1::Image = Mat(), P2::Image = Mat(), Q::Image = Mat(), newImageSize::Size = Size(), balance::Float64 = 0.0, fov_scale::Float64 = 1.0) = stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, flags, R1, R2, P1, P2, Q, newImageSize, balance, fov_scale)

function stereoRectify(K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, tvec::UMat, flags::Int32, R1::UMat, R2::UMat, P1::UMat, P2::UMat, Q::UMat, newImageSize::Size, balance::Float64, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_stereoRectify(julia_to_cpp(K1, UMat),julia_to_cpp(D1, UMat),julia_to_cpp(K2, UMat),julia_to_cpp(D2, UMat),julia_to_cpp(imageSize, Size),julia_to_cpp(R, UMat),julia_to_cpp(tvec, UMat),julia_to_cpp(flags, Int32),julia_to_cpp(R1, UMat),julia_to_cpp(R2, UMat),julia_to_cpp(P1, UMat),julia_to_cpp(P2, UMat),julia_to_cpp(Q, UMat),julia_to_cpp(newImageSize, Size),julia_to_cpp(balance, Float64),julia_to_cpp(fov_scale, Float64)))
end
stereoRectify(K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, tvec::UMat, flags::Int32; R1::UMat = UMat(), R2::UMat = UMat(), P1::UMat = UMat(), P2::UMat = UMat(), Q::UMat = UMat(), newImageSize::Size = Size(), balance::Float64 = 0.0, fov_scale::Float64 = 1.0) = stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, flags, R1, R2, P1, P2, Q, newImageSize, balance, fov_scale)

function stereoCalibrate(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, K1::Image, D1::Image, K2::Image, D2::Image, imageSize::Size, R::Image, T::Image, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_stereoCalibrate(julia_to_cpp(objectPoints, Array{Image, 1}),julia_to_cpp(imagePoints1, Array{Image, 1}),julia_to_cpp(imagePoints2, Array{Image, 1}),julia_to_cpp(K1, Image),julia_to_cpp(D1, Image),julia_to_cpp(K2, Image),julia_to_cpp(D2, Image),julia_to_cpp(imageSize, Size),julia_to_cpp(R, Image),julia_to_cpp(T, Image),julia_to_cpp(flags, Int32),julia_to_cpp(criteria, TermCriteria)))
end
stereoCalibrate(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, K1::Image, D1::Image, K2::Image, D2::Image, imageSize::Size; R::Image = Mat(), T::Image = Mat(), flags::Int32 = fisheye::CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria)

function stereoCalibrate(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, T::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_stereoCalibrate(julia_to_cpp(objectPoints, Array{UMat, 1}),julia_to_cpp(imagePoints1, Array{UMat, 1}),julia_to_cpp(imagePoints2, Array{UMat, 1}),julia_to_cpp(K1, UMat),julia_to_cpp(D1, UMat),julia_to_cpp(K2, UMat),julia_to_cpp(D2, UMat),julia_to_cpp(imageSize, Size),julia_to_cpp(R, UMat),julia_to_cpp(T, UMat),julia_to_cpp(flags, Int32),julia_to_cpp(criteria, TermCriteria)))
end
stereoCalibrate(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size; R::UMat = UMat(), T::UMat = UMat(), flags::Int32 = fisheye::CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria)



end