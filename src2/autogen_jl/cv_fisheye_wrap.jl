module cv_fisheye
import ..OpenCVCxx


function projectPoints(objectPoints::Image, rvec::Image, tvec::Image, K::Image, D::Image, imagePoints::Image, alpha::Float64, jacobian::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_projectPoints(OpenCVCxx.julia_to_cpp(objectPoints),OpenCVCxx.julia_to_cpp(rvec),OpenCVCxx.julia_to_cpp(tvec),OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(imagePoints),OpenCVCxx.julia_to_cpp(alpha),OpenCVCxx.julia_to_cpp(jacobian)))
end
projectPoints(objectPoints::Image, rvec::Image, tvec::Image, K::Image, D::Image; imagePoints::Image = Mat(), alpha::Float64 = 0, jacobian::Image = Mat()) = projectPoints(objectPoints, rvec, tvec, K, D, imagePoints, alpha, jacobian)

function projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, K::UMat, D::UMat, imagePoints::UMat, alpha::Float64, jacobian::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_projectPoints(OpenCVCxx.julia_to_cpp(objectPoints),OpenCVCxx.julia_to_cpp(rvec),OpenCVCxx.julia_to_cpp(tvec),OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(imagePoints),OpenCVCxx.julia_to_cpp(alpha),OpenCVCxx.julia_to_cpp(jacobian)))
end
projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, K::UMat, D::UMat; imagePoints::UMat = UMat(), alpha::Float64 = 0, jacobian::UMat = UMat()) = projectPoints(objectPoints, rvec, tvec, K, D, imagePoints, alpha, jacobian)

function distortPoints(undistorted::Image, K::Image, D::Image, distorted::Image, alpha::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_distortPoints(OpenCVCxx.julia_to_cpp(undistorted),OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(distorted),OpenCVCxx.julia_to_cpp(alpha)))
end
distortPoints(undistorted::Image, K::Image, D::Image; distorted::Image = Mat(), alpha::Float64 = 0) = distortPoints(undistorted, K, D, distorted, alpha)

function distortPoints(undistorted::UMat, K::UMat, D::UMat, distorted::UMat, alpha::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_distortPoints(OpenCVCxx.julia_to_cpp(undistorted),OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(distorted),OpenCVCxx.julia_to_cpp(alpha)))
end
distortPoints(undistorted::UMat, K::UMat, D::UMat; distorted::UMat = UMat(), alpha::Float64 = 0) = distortPoints(undistorted, K, D, distorted, alpha)

function undistortPoints(distorted::Image, K::Image, D::Image, undistorted::Image, R::Image, P::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_undistortPoints(OpenCVCxx.julia_to_cpp(distorted),OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(undistorted),OpenCVCxx.julia_to_cpp(R),OpenCVCxx.julia_to_cpp(P)))
end
undistortPoints(distorted::Image, K::Image, D::Image; undistorted::Image = Mat(), R::Image = Mat(), P::Image = Mat()) = undistortPoints(distorted, K, D, undistorted, R, P)

function undistortPoints(distorted::UMat, K::UMat, D::UMat, undistorted::UMat, R::UMat, P::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_undistortPoints(OpenCVCxx.julia_to_cpp(distorted),OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(undistorted),OpenCVCxx.julia_to_cpp(R),OpenCVCxx.julia_to_cpp(P)))
end
undistortPoints(distorted::UMat, K::UMat, D::UMat; undistorted::UMat = UMat(), R::UMat = UMat(), P::UMat = UMat()) = undistortPoints(distorted, K, D, undistorted, R, P)

function initUndistortRectifyMap(K::Image, D::Image, R::Image, P::Image, size::Size, m1type::Int32, map1::Image, map2::Image)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_initUndistortRectifyMap(OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(R),OpenCVCxx.julia_to_cpp(P),OpenCVCxx.julia_to_cpp(size),OpenCVCxx.julia_to_cpp(m1type),OpenCVCxx.julia_to_cpp(map1),OpenCVCxx.julia_to_cpp(map2)))
end
initUndistortRectifyMap(K::Image, D::Image, R::Image, P::Image, size::Size, m1type::Int32; map1::Image = Mat(), map2::Image = Mat()) = initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2)

function initUndistortRectifyMap(K::UMat, D::UMat, R::UMat, P::UMat, size::Size, m1type::Int32, map1::UMat, map2::UMat)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_initUndistortRectifyMap(OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(R),OpenCVCxx.julia_to_cpp(P),OpenCVCxx.julia_to_cpp(size),OpenCVCxx.julia_to_cpp(m1type),OpenCVCxx.julia_to_cpp(map1),OpenCVCxx.julia_to_cpp(map2)))
end
initUndistortRectifyMap(K::UMat, D::UMat, R::UMat, P::UMat, size::Size, m1type::Int32; map1::UMat = UMat(), map2::UMat = UMat()) = initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2)

function undistortImage(distorted::Image, K::Image, D::Image, undistorted::Image, Knew::Image, new_size::Size)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_undistortImage(OpenCVCxx.julia_to_cpp(distorted),OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(undistorted),OpenCVCxx.julia_to_cpp(Knew),OpenCVCxx.julia_to_cpp(new_size)))
end
undistortImage(distorted::Image, K::Image, D::Image; undistorted::Image = Mat(), Knew::Image = Mat(), new_size::Size = Size()) = undistortImage(distorted, K, D, undistorted, Knew, new_size)

function undistortImage(distorted::UMat, K::UMat, D::UMat, undistorted::UMat, Knew::UMat, new_size::Size)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_undistortImage(OpenCVCxx.julia_to_cpp(distorted),OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(undistorted),OpenCVCxx.julia_to_cpp(Knew),OpenCVCxx.julia_to_cpp(new_size)))
end
undistortImage(distorted::UMat, K::UMat, D::UMat; undistorted::UMat = UMat(), Knew::UMat = UMat(), new_size::Size = Size()) = undistortImage(distorted, K, D, undistorted, Knew, new_size)

function estimateNewCameraMatrixForUndistortRectify(K::Image, D::Image, image_size::Size, R::Image, P::Image, balance::Float64, new_size::Size, fov_scale::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_estimateNewCameraMatrixForUndistortRectify(OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(image_size),OpenCVCxx.julia_to_cpp(R),OpenCVCxx.julia_to_cpp(P),OpenCVCxx.julia_to_cpp(balance),OpenCVCxx.julia_to_cpp(new_size),OpenCVCxx.julia_to_cpp(fov_scale)))
end
estimateNewCameraMatrixForUndistortRectify(K::Image, D::Image, image_size::Size, R::Image; P::Image = Mat(), balance::Float64 = 0.0, new_size::Size = Size(), fov_scale::Float64 = 1.0) = estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale)

function estimateNewCameraMatrixForUndistortRectify(K::UMat, D::UMat, image_size::Size, R::UMat, P::UMat, balance::Float64, new_size::Size, fov_scale::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_estimateNewCameraMatrixForUndistortRectify(OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(image_size),OpenCVCxx.julia_to_cpp(R),OpenCVCxx.julia_to_cpp(P),OpenCVCxx.julia_to_cpp(balance),OpenCVCxx.julia_to_cpp(new_size),OpenCVCxx.julia_to_cpp(fov_scale)))
end
estimateNewCameraMatrixForUndistortRectify(K::UMat, D::UMat, image_size::Size, R::UMat; P::UMat = UMat(), balance::Float64 = 0.0, new_size::Size = Size(), fov_scale::Float64 = 1.0) = estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale)

function calibrate(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, image_size::Size, K::Image, D::Image, rvecs::Array{Image, 1}, tvecs::Array{Image, 1}, flags::Int32, criteria::TermCriteria)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_calibrate(OpenCVCxx.julia_to_cpp(objectPoints),OpenCVCxx.julia_to_cpp(imagePoints),OpenCVCxx.julia_to_cpp(image_size),OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(rvecs),OpenCVCxx.julia_to_cpp(tvecs),OpenCVCxx.julia_to_cpp(flags),OpenCVCxx.julia_to_cpp(criteria)))
end
calibrate(objectPoints::Array{Image, 1}, imagePoints::Array{Image, 1}, image_size::Size, K::Image, D::Image; rvecs::Array{Image, 1} = Array{Image, 1}(), tvecs::Array{Image, 1} = Array{Image, 1}(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = calibrate(objectPoints, imagePoints, image_size, K, D, rvecs, tvecs, flags, criteria)

function calibrate(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, image_size::Size, K::UMat, D::UMat, rvecs::Array{UMat, 1}, tvecs::Array{UMat, 1}, flags::Int32, criteria::TermCriteria)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_calibrate(OpenCVCxx.julia_to_cpp(objectPoints),OpenCVCxx.julia_to_cpp(imagePoints),OpenCVCxx.julia_to_cpp(image_size),OpenCVCxx.julia_to_cpp(K),OpenCVCxx.julia_to_cpp(D),OpenCVCxx.julia_to_cpp(rvecs),OpenCVCxx.julia_to_cpp(tvecs),OpenCVCxx.julia_to_cpp(flags),OpenCVCxx.julia_to_cpp(criteria)))
end
calibrate(objectPoints::Array{UMat, 1}, imagePoints::Array{UMat, 1}, image_size::Size, K::UMat, D::UMat; rvecs::Array{UMat, 1} = Array{UMat, 1}(), tvecs::Array{UMat, 1} = Array{UMat, 1}(), flags::Int32 = 0, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = calibrate(objectPoints, imagePoints, image_size, K, D, rvecs, tvecs, flags, criteria)

function stereoRectify(K1::Image, D1::Image, K2::Image, D2::Image, imageSize::Size, R::Image, tvec::Image, flags::Int32, R1::Image, R2::Image, P1::Image, P2::Image, Q::Image, newImageSize::Size, balance::Float64, fov_scale::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_stereoRectify(OpenCVCxx.julia_to_cpp(K1),OpenCVCxx.julia_to_cpp(D1),OpenCVCxx.julia_to_cpp(K2),OpenCVCxx.julia_to_cpp(D2),OpenCVCxx.julia_to_cpp(imageSize),OpenCVCxx.julia_to_cpp(R),OpenCVCxx.julia_to_cpp(tvec),OpenCVCxx.julia_to_cpp(flags),OpenCVCxx.julia_to_cpp(R1),OpenCVCxx.julia_to_cpp(R2),OpenCVCxx.julia_to_cpp(P1),OpenCVCxx.julia_to_cpp(P2),OpenCVCxx.julia_to_cpp(Q),OpenCVCxx.julia_to_cpp(newImageSize),OpenCVCxx.julia_to_cpp(balance),OpenCVCxx.julia_to_cpp(fov_scale)))
end
stereoRectify(K1::Image, D1::Image, K2::Image, D2::Image, imageSize::Size, R::Image, tvec::Image, flags::Int32; R1::Image = Mat(), R2::Image = Mat(), P1::Image = Mat(), P2::Image = Mat(), Q::Image = Mat(), newImageSize::Size = Size(), balance::Float64 = 0.0, fov_scale::Float64 = 1.0) = stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, flags, R1, R2, P1, P2, Q, newImageSize, balance, fov_scale)

function stereoRectify(K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, tvec::UMat, flags::Int32, R1::UMat, R2::UMat, P1::UMat, P2::UMat, Q::UMat, newImageSize::Size, balance::Float64, fov_scale::Float64)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_stereoRectify(OpenCVCxx.julia_to_cpp(K1),OpenCVCxx.julia_to_cpp(D1),OpenCVCxx.julia_to_cpp(K2),OpenCVCxx.julia_to_cpp(D2),OpenCVCxx.julia_to_cpp(imageSize),OpenCVCxx.julia_to_cpp(R),OpenCVCxx.julia_to_cpp(tvec),OpenCVCxx.julia_to_cpp(flags),OpenCVCxx.julia_to_cpp(R1),OpenCVCxx.julia_to_cpp(R2),OpenCVCxx.julia_to_cpp(P1),OpenCVCxx.julia_to_cpp(P2),OpenCVCxx.julia_to_cpp(Q),OpenCVCxx.julia_to_cpp(newImageSize),OpenCVCxx.julia_to_cpp(balance),OpenCVCxx.julia_to_cpp(fov_scale)))
end
stereoRectify(K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, tvec::UMat, flags::Int32; R1::UMat = UMat(), R2::UMat = UMat(), P1::UMat = UMat(), P2::UMat = UMat(), Q::UMat = UMat(), newImageSize::Size = Size(), balance::Float64 = 0.0, fov_scale::Float64 = 1.0) = stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, flags, R1, R2, P1, P2, Q, newImageSize, balance, fov_scale)

function stereoCalibrate(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, K1::Image, D1::Image, K2::Image, D2::Image, imageSize::Size, R::Image, T::Image, flags::Int32, criteria::TermCriteria)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_stereoCalibrate(OpenCVCxx.julia_to_cpp(objectPoints),OpenCVCxx.julia_to_cpp(imagePoints1),OpenCVCxx.julia_to_cpp(imagePoints2),OpenCVCxx.julia_to_cpp(K1),OpenCVCxx.julia_to_cpp(D1),OpenCVCxx.julia_to_cpp(K2),OpenCVCxx.julia_to_cpp(D2),OpenCVCxx.julia_to_cpp(imageSize),OpenCVCxx.julia_to_cpp(R),OpenCVCxx.julia_to_cpp(T),OpenCVCxx.julia_to_cpp(flags),OpenCVCxx.julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::Array{Image, 1}, imagePoints1::Array{Image, 1}, imagePoints2::Array{Image, 1}, K1::Image, D1::Image, K2::Image, D2::Image, imageSize::Size; R::Image = Mat(), T::Image = Mat(), flags::Int32 = fisheye::CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria)

function stereoCalibrate(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, T::UMat, flags::Int32, criteria::TermCriteria)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_fisheye_cv_fisheye_stereoCalibrate(OpenCVCxx.julia_to_cpp(objectPoints),OpenCVCxx.julia_to_cpp(imagePoints1),OpenCVCxx.julia_to_cpp(imagePoints2),OpenCVCxx.julia_to_cpp(K1),OpenCVCxx.julia_to_cpp(D1),OpenCVCxx.julia_to_cpp(K2),OpenCVCxx.julia_to_cpp(D2),OpenCVCxx.julia_to_cpp(imageSize),OpenCVCxx.julia_to_cpp(R),OpenCVCxx.julia_to_cpp(T),OpenCVCxx.julia_to_cpp(flags),OpenCVCxx.julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::Array{UMat, 1}, imagePoints1::Array{UMat, 1}, imagePoints2::Array{UMat, 1}, K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size; R::UMat = UMat(), T::UMat = UMat(), flags::Int32 = fisheye::CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria)



end