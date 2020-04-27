module cv_ocl
import ..OpenCVCxx


   const OclVectorStrategy = Int32 
function Base.getproperty(m::Device, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Device, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function name(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_name(julia_to_cpp(cobj)))
end

function extensions(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_extensions(julia_to_cpp(cobj)))
end

function isExtensionSupported(cobj::Device, extensionName::String)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isExtensionSupported(julia_to_cpp(cobj),julia_to_cpp(extensionName)))
end

function version(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_version(julia_to_cpp(cobj)))
end

function vendorName(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_vendorName(julia_to_cpp(cobj)))
end

function OpenCL_C_Version(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_OpenCL_C_Version(julia_to_cpp(cobj)))
end

function OpenCLVersion(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_OpenCLVersion(julia_to_cpp(cobj)))
end

function deviceVersionMajor(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_deviceVersionMajor(julia_to_cpp(cobj)))
end

function deviceVersionMinor(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_deviceVersionMinor(julia_to_cpp(cobj)))
end

function driverVersion(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_driverVersion(julia_to_cpp(cobj)))
end

function type(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_type(julia_to_cpp(cobj)))
end

function addressBits(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_addressBits(julia_to_cpp(cobj)))
end

function available(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_available(julia_to_cpp(cobj)))
end

function compilerAvailable(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_compilerAvailable(julia_to_cpp(cobj)))
end

function linkerAvailable(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_linkerAvailable(julia_to_cpp(cobj)))
end

function doubleFPConfig(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_doubleFPConfig(julia_to_cpp(cobj)))
end

function singleFPConfig(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_singleFPConfig(julia_to_cpp(cobj)))
end

function halfFPConfig(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_halfFPConfig(julia_to_cpp(cobj)))
end

function endianLittle(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_endianLittle(julia_to_cpp(cobj)))
end

function errorCorrectionSupport(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_errorCorrectionSupport(julia_to_cpp(cobj)))
end

function executionCapabilities(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_executionCapabilities(julia_to_cpp(cobj)))
end

function globalMemCacheSize(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemCacheSize(julia_to_cpp(cobj)))
end

function globalMemCacheType(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemCacheType(julia_to_cpp(cobj)))
end

function globalMemCacheLineSize(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemCacheLineSize(julia_to_cpp(cobj)))
end

function globalMemSize(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemSize(julia_to_cpp(cobj)))
end

function localMemSize(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_localMemSize(julia_to_cpp(cobj)))
end

function localMemType(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_localMemType(julia_to_cpp(cobj)))
end

function hostUnifiedMemory(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_hostUnifiedMemory(julia_to_cpp(cobj)))
end

function imageSupport(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageSupport(julia_to_cpp(cobj)))
end

function imageFromBufferSupport(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageFromBufferSupport(julia_to_cpp(cobj)))
end

function intelSubgroupsSupport(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_intelSubgroupsSupport(julia_to_cpp(cobj)))
end

function image2DMaxWidth(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image2DMaxWidth(julia_to_cpp(cobj)))
end

function image2DMaxHeight(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image2DMaxHeight(julia_to_cpp(cobj)))
end

function image3DMaxWidth(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image3DMaxWidth(julia_to_cpp(cobj)))
end

function image3DMaxHeight(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image3DMaxHeight(julia_to_cpp(cobj)))
end

function image3DMaxDepth(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image3DMaxDepth(julia_to_cpp(cobj)))
end

function imageMaxBufferSize(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageMaxBufferSize(julia_to_cpp(cobj)))
end

function imageMaxArraySize(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageMaxArraySize(julia_to_cpp(cobj)))
end

function vendorID(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_vendorID(julia_to_cpp(cobj)))
end

function isAMD(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isAMD(julia_to_cpp(cobj)))
end

function isIntel(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isIntel(julia_to_cpp(cobj)))
end

function isNVidia(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isNVidia(julia_to_cpp(cobj)))
end

function maxClockFrequency(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxClockFrequency(julia_to_cpp(cobj)))
end

function maxComputeUnits(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxComputeUnits(julia_to_cpp(cobj)))
end

function maxConstantArgs(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxConstantArgs(julia_to_cpp(cobj)))
end

function maxConstantBufferSize(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxConstantBufferSize(julia_to_cpp(cobj)))
end

function maxMemAllocSize(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxMemAllocSize(julia_to_cpp(cobj)))
end

function maxParameterSize(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxParameterSize(julia_to_cpp(cobj)))
end

function maxReadImageArgs(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxReadImageArgs(julia_to_cpp(cobj)))
end

function maxWriteImageArgs(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxWriteImageArgs(julia_to_cpp(cobj)))
end

function maxSamplers(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxSamplers(julia_to_cpp(cobj)))
end

function maxWorkGroupSize(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxWorkGroupSize(julia_to_cpp(cobj)))
end

function maxWorkItemDims(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxWorkItemDims(julia_to_cpp(cobj)))
end

function memBaseAddrAlign(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_memBaseAddrAlign(julia_to_cpp(cobj)))
end

function nativeVectorWidthChar(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthChar(julia_to_cpp(cobj)))
end

function nativeVectorWidthShort(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthShort(julia_to_cpp(cobj)))
end

function nativeVectorWidthInt(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthInt(julia_to_cpp(cobj)))
end

function nativeVectorWidthLong(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthLong(julia_to_cpp(cobj)))
end

function nativeVectorWidthFloat(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthFloat(julia_to_cpp(cobj)))
end

function nativeVectorWidthDouble(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthDouble(julia_to_cpp(cobj)))
end

function nativeVectorWidthHalf(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthHalf(julia_to_cpp(cobj)))
end

function preferredVectorWidthChar(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthChar(julia_to_cpp(cobj)))
end

function preferredVectorWidthShort(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthShort(julia_to_cpp(cobj)))
end

function preferredVectorWidthInt(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthInt(julia_to_cpp(cobj)))
end

function preferredVectorWidthLong(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthLong(julia_to_cpp(cobj)))
end

function preferredVectorWidthFloat(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthFloat(julia_to_cpp(cobj)))
end

function preferredVectorWidthDouble(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthDouble(julia_to_cpp(cobj)))
end

function preferredVectorWidthHalf(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthHalf(julia_to_cpp(cobj)))
end

function printfBufferSize(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_printfBufferSize(julia_to_cpp(cobj)))
end

function profilingTimerResolution(cobj::Device)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_profilingTimerResolution(julia_to_cpp(cobj)))
end

function haveOpenCL()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_haveOpenCL())
end

function useOpenCL()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_useOpenCL())
end

function haveAmdBlas()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_haveAmdBlas())
end

function haveAmdFft()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_haveAmdFft())
end

function setUseOpenCL(flag::Bool)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_setUseOpenCL(julia_to_cpp(flag)))
end

function finish()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_finish())
end

function Device_getDefault()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_getDefault())
end



end