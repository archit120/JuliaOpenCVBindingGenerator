module cv.flann
    using CxxWrap
    @wrapmodule(joinpath("TODO","libcv2_jlcxx"), :cv.flann_wrap)

    function __init__()
        @initcxx
    end
    
    import ..cpp_to_julia
    import ..julia_to_cpp

    function Base.getproperty(m::flann_Index, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::flann_Index, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function build(cobj::Any, features::Mat, params::IndexParams, distType::cvflann_flann_distance_t)
	return cpp_to_julia(jlopencv_cv_flann_Index_build(julia_to_cpp(cobj),julia_to_cpp(features),julia_to_cpp(params),julia_to_cpp(distType)))
end
build(cobj::Any, features::Mat, params::IndexParams; distType::cvflann_flann_distance_t = cvflann::FLANN_DIST_L2) = build(cobj, features, params, distType)

function build(cobj::Any, features::UMat, params::IndexParams, distType::cvflann_flann_distance_t)
	return cpp_to_julia(jlopencv_cv_flann_Index_build(julia_to_cpp(cobj),julia_to_cpp(features),julia_to_cpp(params),julia_to_cpp(distType)))
end
build(cobj::Any, features::UMat, params::IndexParams; distType::cvflann_flann_distance_t = cvflann::FLANN_DIST_L2) = build(cobj, features, params, distType)

function knnSearch(cobj::Any, query::Mat, knn::Int32, indices::Mat, dists::Mat, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_Index_knnSearch(julia_to_cpp(cobj),julia_to_cpp(query),julia_to_cpp(knn),julia_to_cpp(indices),julia_to_cpp(dists),julia_to_cpp(params)))
end
knnSearch(cobj::Any, query::Mat, knn::Int32, indices::Mat, dists::Mat; params::SearchParams = SearchParams()) = knnSearch(cobj, query, knn, indices, dists, params)

function knnSearch(cobj::Any, query::UMat, knn::Int32, indices::UMat, dists::UMat, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_Index_knnSearch(julia_to_cpp(cobj),julia_to_cpp(query),julia_to_cpp(knn),julia_to_cpp(indices),julia_to_cpp(dists),julia_to_cpp(params)))
end
knnSearch(cobj::Any, query::UMat, knn::Int32, indices::UMat, dists::UMat; params::SearchParams = SearchParams()) = knnSearch(cobj, query, knn, indices, dists, params)

function radiusSearch(cobj::Any, query::Mat, radius::Float64, maxResults::Int32, indices::Mat, dists::Mat, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_Index_radiusSearch(julia_to_cpp(cobj),julia_to_cpp(query),julia_to_cpp(radius),julia_to_cpp(maxResults),julia_to_cpp(indices),julia_to_cpp(dists),julia_to_cpp(params)))
end
radiusSearch(cobj::Any, query::Mat, radius::Float64, maxResults::Int32, indices::Mat, dists::Mat; params::SearchParams = SearchParams()) = radiusSearch(cobj, query, radius, maxResults, indices, dists, params)

function radiusSearch(cobj::Any, query::UMat, radius::Float64, maxResults::Int32, indices::UMat, dists::UMat, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_Index_radiusSearch(julia_to_cpp(cobj),julia_to_cpp(query),julia_to_cpp(radius),julia_to_cpp(maxResults),julia_to_cpp(indices),julia_to_cpp(dists),julia_to_cpp(params)))
end
radiusSearch(cobj::Any, query::UMat, radius::Float64, maxResults::Int32, indices::UMat, dists::UMat; params::SearchParams = SearchParams()) = radiusSearch(cobj, query, radius, maxResults, indices, dists, params)

function save(cobj::Any, filename::String)
	return cpp_to_julia(jlopencv_cv_flann_Index_save(julia_to_cpp(cobj),julia_to_cpp(filename)))
end
save(cobj::Any, filename::String; ) = save(cobj, filename)

function load(cobj::Any, features::Mat, filename::String)
	return cpp_to_julia(jlopencv_cv_flann_Index_load(julia_to_cpp(cobj),julia_to_cpp(features),julia_to_cpp(filename)))
end
load(cobj::Any, features::Mat, filename::String; ) = load(cobj, features, filename)

function load(cobj::Any, features::UMat, filename::String)
	return cpp_to_julia(jlopencv_cv_flann_Index_load(julia_to_cpp(cobj),julia_to_cpp(features),julia_to_cpp(filename)))
end
load(cobj::Any, features::UMat, filename::String; ) = load(cobj, features, filename)

function release(cobj::Any)
	return cpp_to_julia(jlopencv_cv_flann_Index_release(julia_to_cpp(cobj)))
end
release(cobj::Any; ) = release(cobj)

function getDistance(cobj::Any)
	return cpp_to_julia(jlopencv_cv_flann_Index_getDistance(julia_to_cpp(cobj)))
end
getDistance(cobj::Any; ) = getDistance(cobj)

function getAlgorithm(cobj::Any)
	return cpp_to_julia(jlopencv_cv_flann_Index_getAlgorithm(julia_to_cpp(cobj)))
end
getAlgorithm(cobj::Any; ) = getAlgorithm(cobj)


    
end