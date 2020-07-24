

function utils_dumpInputArray(argument::InputArray)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputArray(julia_to_cpp(argument)))
end

function utils_dumpInputArrayOfArrays(argument::Array{InputArray, 1})
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputArrayOfArrays(julia_to_cpp(argument)))
end

function utils_dumpInputOutputArray(argument::InputArray)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputOutputArray(julia_to_cpp(argument)))
end

function utils_dumpInputOutputArrayOfArrays(argument::Array{InputArray, 1})
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputOutputArrayOfArrays(julia_to_cpp(argument)))
end

function utils_dumpBool(argument::Bool)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpBool(julia_to_cpp(argument)))
end

function utils_dumpInt(argument::Int32)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInt(julia_to_cpp(argument)))
end

function utils_dumpSizeT(argument::size_t)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpSizeT(julia_to_cpp(argument)))
end

function utils_dumpFloat(argument::Float32)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpFloat(julia_to_cpp(argument)))
end

function utils_dumpDouble(argument::Float64)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpDouble(julia_to_cpp(argument)))
end

function utils_dumpCString(argument::Cstring)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpCString(julia_to_cpp(argument)))
end

function utils_testAsyncArray(argument::InputArray)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_testAsyncArray(julia_to_cpp(argument)))
end

function utils_testAsyncException()
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_testAsyncException())
end



