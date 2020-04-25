module cv_ocl
import ..OpenCVCxx

function Base.getproperty(m::Device, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Device, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function name(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_name(julia_to_cpp(cobj, Any)))
end
name(cobj::Any; ) = name(cobj)

function extensions(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_extensions(julia_to_cpp(cobj, Any)))
end
extensions(cobj::Any; ) = extensions(cobj)

function isExtensionSupported(cobj::Any, extensionName::String)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isExtensionSupported(julia_to_cpp(cobj, Any),julia_to_cpp(extensionName, String)))
end
isExtensionSupported(cobj::Any, extensionName::String; ) = isExtensionSupported(cobj, extensionName)

function version(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_version(julia_to_cpp(cobj, Any)))
end
version(cobj::Any; ) = version(cobj)

function vendorName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_vendorName(julia_to_cpp(cobj, Any)))
end
vendorName(cobj::Any; ) = vendorName(cobj)

function OpenCL_C_Version(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_OpenCL_C_Version(julia_to_cpp(cobj, Any)))
end
OpenCL_C_Version(cobj::Any; ) = OpenCL_C_Version(cobj)

function OpenCLVersion(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_OpenCLVersion(julia_to_cpp(cobj, Any)))
end
OpenCLVersion(cobj::Any; ) = OpenCLVersion(cobj)

function deviceVersionMajor(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_deviceVersionMajor(julia_to_cpp(cobj, Any)))
end
deviceVersionMajor(cobj::Any; ) = deviceVersionMajor(cobj)

function deviceVersionMinor(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_deviceVersionMinor(julia_to_cpp(cobj, Any)))
end
deviceVersionMinor(cobj::Any; ) = deviceVersionMinor(cobj)

function driverVersion(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_driverVersion(julia_to_cpp(cobj, Any)))
end
driverVersion(cobj::Any; ) = driverVersion(cobj)

function type(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_type(julia_to_cpp(cobj, Any)))
end
type(cobj::Any; ) = type(cobj)

function addressBits(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_addressBits(julia_to_cpp(cobj, Any)))
end
addressBits(cobj::Any; ) = addressBits(cobj)

function available(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_available(julia_to_cpp(cobj, Any)))
end
available(cobj::Any; ) = available(cobj)

function compilerAvailable(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_compilerAvailable(julia_to_cpp(cobj, Any)))
end
compilerAvailable(cobj::Any; ) = compilerAvailable(cobj)

function linkerAvailable(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_linkerAvailable(julia_to_cpp(cobj, Any)))
end
linkerAvailable(cobj::Any; ) = linkerAvailable(cobj)

function doubleFPConfig(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_doubleFPConfig(julia_to_cpp(cobj, Any)))
end
doubleFPConfig(cobj::Any; ) = doubleFPConfig(cobj)

function singleFPConfig(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_singleFPConfig(julia_to_cpp(cobj, Any)))
end
singleFPConfig(cobj::Any; ) = singleFPConfig(cobj)

function halfFPConfig(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_halfFPConfig(julia_to_cpp(cobj, Any)))
end
halfFPConfig(cobj::Any; ) = halfFPConfig(cobj)

function endianLittle(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_endianLittle(julia_to_cpp(cobj, Any)))
end
endianLittle(cobj::Any; ) = endianLittle(cobj)

function errorCorrectionSupport(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_errorCorrectionSupport(julia_to_cpp(cobj, Any)))
end
errorCorrectionSupport(cobj::Any; ) = errorCorrectionSupport(cobj)

function executionCapabilities(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_executionCapabilities(julia_to_cpp(cobj, Any)))
end
executionCapabilities(cobj::Any; ) = executionCapabilities(cobj)

function globalMemCacheSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemCacheSize(julia_to_cpp(cobj, Any)))
end
globalMemCacheSize(cobj::Any; ) = globalMemCacheSize(cobj)

function globalMemCacheType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemCacheType(julia_to_cpp(cobj, Any)))
end
globalMemCacheType(cobj::Any; ) = globalMemCacheType(cobj)

function globalMemCacheLineSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemCacheLineSize(julia_to_cpp(cobj, Any)))
end
globalMemCacheLineSize(cobj::Any; ) = globalMemCacheLineSize(cobj)

function globalMemSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemSize(julia_to_cpp(cobj, Any)))
end
globalMemSize(cobj::Any; ) = globalMemSize(cobj)

function localMemSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_localMemSize(julia_to_cpp(cobj, Any)))
end
localMemSize(cobj::Any; ) = localMemSize(cobj)

function localMemType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_localMemType(julia_to_cpp(cobj, Any)))
end
localMemType(cobj::Any; ) = localMemType(cobj)

function hostUnifiedMemory(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_hostUnifiedMemory(julia_to_cpp(cobj, Any)))
end
hostUnifiedMemory(cobj::Any; ) = hostUnifiedMemory(cobj)

function imageSupport(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageSupport(julia_to_cpp(cobj, Any)))
end
imageSupport(cobj::Any; ) = imageSupport(cobj)

function imageFromBufferSupport(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageFromBufferSupport(julia_to_cpp(cobj, Any)))
end
imageFromBufferSupport(cobj::Any; ) = imageFromBufferSupport(cobj)

function intelSubgroupsSupport(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_intelSubgroupsSupport(julia_to_cpp(cobj, Any)))
end
intelSubgroupsSupport(cobj::Any; ) = intelSubgroupsSupport(cobj)

function image2DMaxWidth(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image2DMaxWidth(julia_to_cpp(cobj, Any)))
end
image2DMaxWidth(cobj::Any; ) = image2DMaxWidth(cobj)

function image2DMaxHeight(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image2DMaxHeight(julia_to_cpp(cobj, Any)))
end
image2DMaxHeight(cobj::Any; ) = image2DMaxHeight(cobj)

function image3DMaxWidth(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image3DMaxWidth(julia_to_cpp(cobj, Any)))
end
image3DMaxWidth(cobj::Any; ) = image3DMaxWidth(cobj)

function image3DMaxHeight(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image3DMaxHeight(julia_to_cpp(cobj, Any)))
end
image3DMaxHeight(cobj::Any; ) = image3DMaxHeight(cobj)

function image3DMaxDepth(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image3DMaxDepth(julia_to_cpp(cobj, Any)))
end
image3DMaxDepth(cobj::Any; ) = image3DMaxDepth(cobj)

function imageMaxBufferSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageMaxBufferSize(julia_to_cpp(cobj, Any)))
end
imageMaxBufferSize(cobj::Any; ) = imageMaxBufferSize(cobj)

function imageMaxArraySize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageMaxArraySize(julia_to_cpp(cobj, Any)))
end
imageMaxArraySize(cobj::Any; ) = imageMaxArraySize(cobj)

function vendorID(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_vendorID(julia_to_cpp(cobj, Any)))
end
vendorID(cobj::Any; ) = vendorID(cobj)

function isAMD(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isAMD(julia_to_cpp(cobj, Any)))
end
isAMD(cobj::Any; ) = isAMD(cobj)

function isIntel(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isIntel(julia_to_cpp(cobj, Any)))
end
isIntel(cobj::Any; ) = isIntel(cobj)

function isNVidia(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isNVidia(julia_to_cpp(cobj, Any)))
end
isNVidia(cobj::Any; ) = isNVidia(cobj)

function maxClockFrequency(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxClockFrequency(julia_to_cpp(cobj, Any)))
end
maxClockFrequency(cobj::Any; ) = maxClockFrequency(cobj)

function maxComputeUnits(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxComputeUnits(julia_to_cpp(cobj, Any)))
end
maxComputeUnits(cobj::Any; ) = maxComputeUnits(cobj)

function maxConstantArgs(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxConstantArgs(julia_to_cpp(cobj, Any)))
end
maxConstantArgs(cobj::Any; ) = maxConstantArgs(cobj)

function maxConstantBufferSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxConstantBufferSize(julia_to_cpp(cobj, Any)))
end
maxConstantBufferSize(cobj::Any; ) = maxConstantBufferSize(cobj)

function maxMemAllocSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxMemAllocSize(julia_to_cpp(cobj, Any)))
end
maxMemAllocSize(cobj::Any; ) = maxMemAllocSize(cobj)

function maxParameterSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxParameterSize(julia_to_cpp(cobj, Any)))
end
maxParameterSize(cobj::Any; ) = maxParameterSize(cobj)

function maxReadImageArgs(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxReadImageArgs(julia_to_cpp(cobj, Any)))
end
maxReadImageArgs(cobj::Any; ) = maxReadImageArgs(cobj)

function maxWriteImageArgs(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxWriteImageArgs(julia_to_cpp(cobj, Any)))
end
maxWriteImageArgs(cobj::Any; ) = maxWriteImageArgs(cobj)

function maxSamplers(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxSamplers(julia_to_cpp(cobj, Any)))
end
maxSamplers(cobj::Any; ) = maxSamplers(cobj)

function maxWorkGroupSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxWorkGroupSize(julia_to_cpp(cobj, Any)))
end
maxWorkGroupSize(cobj::Any; ) = maxWorkGroupSize(cobj)

function maxWorkItemDims(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxWorkItemDims(julia_to_cpp(cobj, Any)))
end
maxWorkItemDims(cobj::Any; ) = maxWorkItemDims(cobj)

function memBaseAddrAlign(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_memBaseAddrAlign(julia_to_cpp(cobj, Any)))
end
memBaseAddrAlign(cobj::Any; ) = memBaseAddrAlign(cobj)

function nativeVectorWidthChar(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthChar(julia_to_cpp(cobj, Any)))
end
nativeVectorWidthChar(cobj::Any; ) = nativeVectorWidthChar(cobj)

function nativeVectorWidthShort(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthShort(julia_to_cpp(cobj, Any)))
end
nativeVectorWidthShort(cobj::Any; ) = nativeVectorWidthShort(cobj)

function nativeVectorWidthInt(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthInt(julia_to_cpp(cobj, Any)))
end
nativeVectorWidthInt(cobj::Any; ) = nativeVectorWidthInt(cobj)

function nativeVectorWidthLong(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthLong(julia_to_cpp(cobj, Any)))
end
nativeVectorWidthLong(cobj::Any; ) = nativeVectorWidthLong(cobj)

function nativeVectorWidthFloat(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthFloat(julia_to_cpp(cobj, Any)))
end
nativeVectorWidthFloat(cobj::Any; ) = nativeVectorWidthFloat(cobj)

function nativeVectorWidthDouble(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthDouble(julia_to_cpp(cobj, Any)))
end
nativeVectorWidthDouble(cobj::Any; ) = nativeVectorWidthDouble(cobj)

function nativeVectorWidthHalf(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthHalf(julia_to_cpp(cobj, Any)))
end
nativeVectorWidthHalf(cobj::Any; ) = nativeVectorWidthHalf(cobj)

function preferredVectorWidthChar(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthChar(julia_to_cpp(cobj, Any)))
end
preferredVectorWidthChar(cobj::Any; ) = preferredVectorWidthChar(cobj)

function preferredVectorWidthShort(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthShort(julia_to_cpp(cobj, Any)))
end
preferredVectorWidthShort(cobj::Any; ) = preferredVectorWidthShort(cobj)

function preferredVectorWidthInt(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthInt(julia_to_cpp(cobj, Any)))
end
preferredVectorWidthInt(cobj::Any; ) = preferredVectorWidthInt(cobj)

function preferredVectorWidthLong(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthLong(julia_to_cpp(cobj, Any)))
end
preferredVectorWidthLong(cobj::Any; ) = preferredVectorWidthLong(cobj)

function preferredVectorWidthFloat(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthFloat(julia_to_cpp(cobj, Any)))
end
preferredVectorWidthFloat(cobj::Any; ) = preferredVectorWidthFloat(cobj)

function preferredVectorWidthDouble(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthDouble(julia_to_cpp(cobj, Any)))
end
preferredVectorWidthDouble(cobj::Any; ) = preferredVectorWidthDouble(cobj)

function preferredVectorWidthHalf(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthHalf(julia_to_cpp(cobj, Any)))
end
preferredVectorWidthHalf(cobj::Any; ) = preferredVectorWidthHalf(cobj)

function printfBufferSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_printfBufferSize(julia_to_cpp(cobj, Any)))
end
printfBufferSize(cobj::Any; ) = printfBufferSize(cobj)

function profilingTimerResolution(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_profilingTimerResolution(julia_to_cpp(cobj, Any)))
end
profilingTimerResolution(cobj::Any; ) = profilingTimerResolution(cobj)

function haveOpenCL()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_haveOpenCL())
end
haveOpenCL(; ) = haveOpenCL()

function useOpenCL()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_useOpenCL())
end
useOpenCL(; ) = useOpenCL()

function haveAmdBlas()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_haveAmdBlas())
end
haveAmdBlas(; ) = haveAmdBlas()

function haveAmdFft()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_haveAmdFft())
end
haveAmdFft(; ) = haveAmdFft()

function setUseOpenCL(flag::Bool)
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_setUseOpenCL(julia_to_cpp(flag, Bool)))
end
setUseOpenCL(flag::Bool; ) = setUseOpenCL(flag)

function finish()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_finish())
end
finish(; ) = finish()

function Device_getDefault()
	return cpp_to_julia(jlopencv_cv_ocl_cv_ocl_Device_getDefault())
end
Device_getDefault(; ) = Device_getDefault()



end