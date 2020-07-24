

function dumpInputArray(argument::InputArray)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputArray(julia_to_cpp(argument)))
end

function dumpInputArrayOfArrays(argument::Array{InputArray, 1})
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputArrayOfArrays(julia_to_cpp(argument)))
end

function dumpInputOutputArray(argument::InputArray)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputOutputArray(julia_to_cpp(argument)))
end

function dumpInputOutputArrayOfArrays(argument::Array{InputArray, 1})
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputOutputArrayOfArrays(julia_to_cpp(argument)))
end

function dumpBool(argument::Bool)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpBool(julia_to_cpp(argument)))
end

function dumpInt(argument::Int32)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInt(julia_to_cpp(argument)))
end

function dumpSizeT(argument::size_t)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpSizeT(julia_to_cpp(argument)))
end

function dumpFloat(argument::Float32)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpFloat(julia_to_cpp(argument)))
end

function dumpDouble(argument::Float64)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpDouble(julia_to_cpp(argument)))
end

function dumpCString(argument::Cstring)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpCString(julia_to_cpp(argument)))
end

function testAsyncArray(argument::InputArray)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_testAsyncArray(julia_to_cpp(argument)))
end

function testAsyncException()
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_testAsyncException())
end



