

function useIPP()
	return cpp_to_julia(jlopencv_cv_ipp_cv_ipp_useIPP())
end

function setUseIPP(flag::Bool)
	return cpp_to_julia(jlopencv_cv_ipp_cv_ipp_setUseIPP(julia_to_cpp(flag)))
end

function getIppVersion()
	return cpp_to_julia(jlopencv_cv_ipp_cv_ipp_getIppVersion())
end

function useIPP_NotExact()
	return cpp_to_julia(jlopencv_cv_ipp_cv_ipp_useIPP_NotExact())
end

function setUseIPP_NotExact(flag::Bool)
	return cpp_to_julia(jlopencv_cv_ipp_cv_ipp_setUseIPP_NotExact(julia_to_cpp(flag)))
end



