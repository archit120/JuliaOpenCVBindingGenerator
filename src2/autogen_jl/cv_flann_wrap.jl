module cv_flann
import ..OpenCVCxx

function Base.getproperty(m::Index, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Index, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function build(cobj::Any, features::Image, params::IndexParams, distType::cvflann_flann_distance_t)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_build(julia_to_cpp(cobj, Any),julia_to_cpp(features, Image),julia_to_cpp(params, IndexParams),julia_to_cpp(distType, cvflann_flann_distance_t)))
end
build(cobj::Any, features::Image, params::IndexParams; distType::cvflann_flann_distance_t = cvflann::FLANN_DIST_L2) = build(cobj, features, params, distType)

function build(cobj::Any, features::UMat, params::IndexParams, distType::cvflann_flann_distance_t)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_build(julia_to_cpp(cobj, Any),julia_to_cpp(features, UMat),julia_to_cpp(params, IndexParams),julia_to_cpp(distType, cvflann_flann_distance_t)))
end
build(cobj::Any, features::UMat, params::IndexParams; distType::cvflann_flann_distance_t = cvflann::FLANN_DIST_L2) = build(cobj, features, params, distType)

function knnSearch(cobj::Any, query::Image, knn::Int32, indices::Image, dists::Image, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_knnSearch(julia_to_cpp(cobj, Any),julia_to_cpp(query, Image),julia_to_cpp(knn, Int32),julia_to_cpp(indices, Image),julia_to_cpp(dists, Image),julia_to_cpp(params, SearchParams)))
end
knnSearch(cobj::Any, query::Image, knn::Int32; indices::Image = Mat(), dists::Image = Mat(), params::SearchParams = SearchParams()) = knnSearch(cobj, query, knn, indices, dists, params)

function knnSearch(cobj::Any, query::UMat, knn::Int32, indices::UMat, dists::UMat, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_knnSearch(julia_to_cpp(cobj, Any),julia_to_cpp(query, UMat),julia_to_cpp(knn, Int32),julia_to_cpp(indices, UMat),julia_to_cpp(dists, UMat),julia_to_cpp(params, SearchParams)))
end
knnSearch(cobj::Any, query::UMat, knn::Int32; indices::UMat = UMat(), dists::UMat = UMat(), params::SearchParams = SearchParams()) = knnSearch(cobj, query, knn, indices, dists, params)

function radiusSearch(cobj::Any, query::Image, radius::Float64, maxResults::Int32, indices::Image, dists::Image, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_radiusSearch(julia_to_cpp(cobj, Any),julia_to_cpp(query, Image),julia_to_cpp(radius, Float64),julia_to_cpp(maxResults, Int32),julia_to_cpp(indices, Image),julia_to_cpp(dists, Image),julia_to_cpp(params, SearchParams)))
end
radiusSearch(cobj::Any, query::Image, radius::Float64, maxResults::Int32; indices::Image = Mat(), dists::Image = Mat(), params::SearchParams = SearchParams()) = radiusSearch(cobj, query, radius, maxResults, indices, dists, params)

function radiusSearch(cobj::Any, query::UMat, radius::Float64, maxResults::Int32, indices::UMat, dists::UMat, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_radiusSearch(julia_to_cpp(cobj, Any),julia_to_cpp(query, UMat),julia_to_cpp(radius, Float64),julia_to_cpp(maxResults, Int32),julia_to_cpp(indices, UMat),julia_to_cpp(dists, UMat),julia_to_cpp(params, SearchParams)))
end
radiusSearch(cobj::Any, query::UMat, radius::Float64, maxResults::Int32; indices::UMat = UMat(), dists::UMat = UMat(), params::SearchParams = SearchParams()) = radiusSearch(cobj, query, radius, maxResults, indices, dists, params)

function save(cobj::Any, filename::String)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_save(julia_to_cpp(cobj, Any),julia_to_cpp(filename, String)))
end
save(cobj::Any, filename::String; ) = save(cobj, filename)

function load(cobj::Any, features::Image, filename::String)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_load(julia_to_cpp(cobj, Any),julia_to_cpp(features, Image),julia_to_cpp(filename, String)))
end
load(cobj::Any, features::Image, filename::String; ) = load(cobj, features, filename)

function load(cobj::Any, features::UMat, filename::String)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_load(julia_to_cpp(cobj, Any),julia_to_cpp(features, UMat),julia_to_cpp(filename, String)))
end
load(cobj::Any, features::UMat, filename::String; ) = load(cobj, features, filename)

function release(cobj::Any)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_release(julia_to_cpp(cobj, Any)))
end
release(cobj::Any; ) = release(cobj)

function getDistance(cobj::Any)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_getDistance(julia_to_cpp(cobj, Any)))
end
getDistance(cobj::Any; ) = getDistance(cobj)

function getAlgorithm(cobj::Any)
	return cpp_to_julia(jlopencv_cv_flann_cv_flann_Index_cv_flann_Index_getAlgorithm(julia_to_cpp(cobj, Any)))
end
getAlgorithm(cobj::Any; ) = getAlgorithm(cobj)



end