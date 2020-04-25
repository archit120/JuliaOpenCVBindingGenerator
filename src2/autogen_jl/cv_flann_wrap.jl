module cv_flann
import ..OpenCVCxx

function Base.getproperty(m::OpenCVCxx.Index, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.Index, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function build(cobj::Any, features::Image, params::IndexParams, distType::cvflann_flann_distance_t)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_build(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(features),OpenCVCxx.julia_to_cpp(params),OpenCVCxx.julia_to_cpp(distType)))
end
build(cobj::Any, features::Image, params::IndexParams; distType::cvflann_flann_distance_t = cvflann::FLANN_DIST_L2) = build(cobj, features, params, distType)

function build(cobj::Any, features::UMat, params::IndexParams, distType::cvflann_flann_distance_t)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_build(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(features),OpenCVCxx.julia_to_cpp(params),OpenCVCxx.julia_to_cpp(distType)))
end
build(cobj::Any, features::UMat, params::IndexParams; distType::cvflann_flann_distance_t = cvflann::FLANN_DIST_L2) = build(cobj, features, params, distType)

function knnSearch(cobj::Any, query::Image, knn::Int32, indices::Image, dists::Image, params::SearchParams)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_knnSearch(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(query),OpenCVCxx.julia_to_cpp(knn),OpenCVCxx.julia_to_cpp(indices),OpenCVCxx.julia_to_cpp(dists),OpenCVCxx.julia_to_cpp(params)))
end
knnSearch(cobj::Any, query::Image, knn::Int32; indices::Image = Mat(), dists::Image = Mat(), params::SearchParams = SearchParams()) = knnSearch(cobj, query, knn, indices, dists, params)

function knnSearch(cobj::Any, query::UMat, knn::Int32, indices::UMat, dists::UMat, params::SearchParams)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_knnSearch(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(query),OpenCVCxx.julia_to_cpp(knn),OpenCVCxx.julia_to_cpp(indices),OpenCVCxx.julia_to_cpp(dists),OpenCVCxx.julia_to_cpp(params)))
end
knnSearch(cobj::Any, query::UMat, knn::Int32; indices::UMat = UMat(), dists::UMat = UMat(), params::SearchParams = SearchParams()) = knnSearch(cobj, query, knn, indices, dists, params)

function radiusSearch(cobj::Any, query::Image, radius::Float64, maxResults::Int32, indices::Image, dists::Image, params::SearchParams)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_radiusSearch(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(query),OpenCVCxx.julia_to_cpp(radius),OpenCVCxx.julia_to_cpp(maxResults),OpenCVCxx.julia_to_cpp(indices),OpenCVCxx.julia_to_cpp(dists),OpenCVCxx.julia_to_cpp(params)))
end
radiusSearch(cobj::Any, query::Image, radius::Float64, maxResults::Int32; indices::Image = Mat(), dists::Image = Mat(), params::SearchParams = SearchParams()) = radiusSearch(cobj, query, radius, maxResults, indices, dists, params)

function radiusSearch(cobj::Any, query::UMat, radius::Float64, maxResults::Int32, indices::UMat, dists::UMat, params::SearchParams)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_radiusSearch(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(query),OpenCVCxx.julia_to_cpp(radius),OpenCVCxx.julia_to_cpp(maxResults),OpenCVCxx.julia_to_cpp(indices),OpenCVCxx.julia_to_cpp(dists),OpenCVCxx.julia_to_cpp(params)))
end
radiusSearch(cobj::Any, query::UMat, radius::Float64, maxResults::Int32; indices::UMat = UMat(), dists::UMat = UMat(), params::SearchParams = SearchParams()) = radiusSearch(cobj, query, radius, maxResults, indices, dists, params)

function save(cobj::Any, filename::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_save(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(filename)))
end
save(cobj::Any, filename::String; ) = save(cobj, filename)

function load(cobj::Any, features::Image, filename::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_load(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(features),OpenCVCxx.julia_to_cpp(filename)))
end
load(cobj::Any, features::Image, filename::String; ) = load(cobj, features, filename)

function load(cobj::Any, features::UMat, filename::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_load(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(features),OpenCVCxx.julia_to_cpp(filename)))
end
load(cobj::Any, features::UMat, filename::String; ) = load(cobj, features, filename)

function release(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_release(OpenCVCxx.julia_to_cpp(cobj)))
end
release(cobj::Any; ) = release(cobj)

function getDistance(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_getDistance(OpenCVCxx.julia_to_cpp(cobj)))
end
getDistance(cobj::Any; ) = getDistance(cobj)

function getAlgorithm(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_getAlgorithm(OpenCVCxx.julia_to_cpp(cobj)))
end
getAlgorithm(cobj::Any; ) = getAlgorithm(cobj)



end