module cv_ocl
import ..OpenCVCxx

function Base.getproperty(m::OpenCVCxx.Device, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OpenCVCxx.Device, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function name(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_name(OpenCVCxx.julia_to_cpp(cobj)))
end
name(cobj::Any; ) = name(cobj)

function extensions(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_extensions(OpenCVCxx.julia_to_cpp(cobj)))
end
extensions(cobj::Any; ) = extensions(cobj)

function isExtensionSupported(cobj::Any, extensionName::String)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isExtensionSupported(OpenCVCxx.julia_to_cpp(cobj),OpenCVCxx.julia_to_cpp(extensionName)))
end
isExtensionSupported(cobj::Any, extensionName::String; ) = isExtensionSupported(cobj, extensionName)

function version(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_version(OpenCVCxx.julia_to_cpp(cobj)))
end
version(cobj::Any; ) = version(cobj)

function vendorName(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_vendorName(OpenCVCxx.julia_to_cpp(cobj)))
end
vendorName(cobj::Any; ) = vendorName(cobj)

function OpenCL_C_Version(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_OpenCL_C_Version(OpenCVCxx.julia_to_cpp(cobj)))
end
OpenCL_C_Version(cobj::Any; ) = OpenCL_C_Version(cobj)

function OpenCLVersion(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_OpenCLVersion(OpenCVCxx.julia_to_cpp(cobj)))
end
OpenCLVersion(cobj::Any; ) = OpenCLVersion(cobj)

function deviceVersionMajor(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_deviceVersionMajor(OpenCVCxx.julia_to_cpp(cobj)))
end
deviceVersionMajor(cobj::Any; ) = deviceVersionMajor(cobj)

function deviceVersionMinor(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_deviceVersionMinor(OpenCVCxx.julia_to_cpp(cobj)))
end
deviceVersionMinor(cobj::Any; ) = deviceVersionMinor(cobj)

function driverVersion(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_driverVersion(OpenCVCxx.julia_to_cpp(cobj)))
end
driverVersion(cobj::Any; ) = driverVersion(cobj)

function type(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_type(OpenCVCxx.julia_to_cpp(cobj)))
end
type(cobj::Any; ) = type(cobj)

function addressBits(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_addressBits(OpenCVCxx.julia_to_cpp(cobj)))
end
addressBits(cobj::Any; ) = addressBits(cobj)

function available(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_available(OpenCVCxx.julia_to_cpp(cobj)))
end
available(cobj::Any; ) = available(cobj)

function compilerAvailable(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_compilerAvailable(OpenCVCxx.julia_to_cpp(cobj)))
end
compilerAvailable(cobj::Any; ) = compilerAvailable(cobj)

function linkerAvailable(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_linkerAvailable(OpenCVCxx.julia_to_cpp(cobj)))
end
linkerAvailable(cobj::Any; ) = linkerAvailable(cobj)

function doubleFPConfig(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_doubleFPConfig(OpenCVCxx.julia_to_cpp(cobj)))
end
doubleFPConfig(cobj::Any; ) = doubleFPConfig(cobj)

function singleFPConfig(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_singleFPConfig(OpenCVCxx.julia_to_cpp(cobj)))
end
singleFPConfig(cobj::Any; ) = singleFPConfig(cobj)

function halfFPConfig(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_halfFPConfig(OpenCVCxx.julia_to_cpp(cobj)))
end
halfFPConfig(cobj::Any; ) = halfFPConfig(cobj)

function endianLittle(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_endianLittle(OpenCVCxx.julia_to_cpp(cobj)))
end
endianLittle(cobj::Any; ) = endianLittle(cobj)

function errorCorrectionSupport(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_errorCorrectionSupport(OpenCVCxx.julia_to_cpp(cobj)))
end
errorCorrectionSupport(cobj::Any; ) = errorCorrectionSupport(cobj)

function executionCapabilities(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_executionCapabilities(OpenCVCxx.julia_to_cpp(cobj)))
end
executionCapabilities(cobj::Any; ) = executionCapabilities(cobj)

function globalMemCacheSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemCacheSize(OpenCVCxx.julia_to_cpp(cobj)))
end
globalMemCacheSize(cobj::Any; ) = globalMemCacheSize(cobj)

function globalMemCacheType(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemCacheType(OpenCVCxx.julia_to_cpp(cobj)))
end
globalMemCacheType(cobj::Any; ) = globalMemCacheType(cobj)

function globalMemCacheLineSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemCacheLineSize(OpenCVCxx.julia_to_cpp(cobj)))
end
globalMemCacheLineSize(cobj::Any; ) = globalMemCacheLineSize(cobj)

function globalMemSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_globalMemSize(OpenCVCxx.julia_to_cpp(cobj)))
end
globalMemSize(cobj::Any; ) = globalMemSize(cobj)

function localMemSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_localMemSize(OpenCVCxx.julia_to_cpp(cobj)))
end
localMemSize(cobj::Any; ) = localMemSize(cobj)

function localMemType(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_localMemType(OpenCVCxx.julia_to_cpp(cobj)))
end
localMemType(cobj::Any; ) = localMemType(cobj)

function hostUnifiedMemory(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_hostUnifiedMemory(OpenCVCxx.julia_to_cpp(cobj)))
end
hostUnifiedMemory(cobj::Any; ) = hostUnifiedMemory(cobj)

function imageSupport(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageSupport(OpenCVCxx.julia_to_cpp(cobj)))
end
imageSupport(cobj::Any; ) = imageSupport(cobj)

function imageFromBufferSupport(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageFromBufferSupport(OpenCVCxx.julia_to_cpp(cobj)))
end
imageFromBufferSupport(cobj::Any; ) = imageFromBufferSupport(cobj)

function intelSubgroupsSupport(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_intelSubgroupsSupport(OpenCVCxx.julia_to_cpp(cobj)))
end
intelSubgroupsSupport(cobj::Any; ) = intelSubgroupsSupport(cobj)

function image2DMaxWidth(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image2DMaxWidth(OpenCVCxx.julia_to_cpp(cobj)))
end
image2DMaxWidth(cobj::Any; ) = image2DMaxWidth(cobj)

function image2DMaxHeight(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image2DMaxHeight(OpenCVCxx.julia_to_cpp(cobj)))
end
image2DMaxHeight(cobj::Any; ) = image2DMaxHeight(cobj)

function image3DMaxWidth(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image3DMaxWidth(OpenCVCxx.julia_to_cpp(cobj)))
end
image3DMaxWidth(cobj::Any; ) = image3DMaxWidth(cobj)

function image3DMaxHeight(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image3DMaxHeight(OpenCVCxx.julia_to_cpp(cobj)))
end
image3DMaxHeight(cobj::Any; ) = image3DMaxHeight(cobj)

function image3DMaxDepth(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_image3DMaxDepth(OpenCVCxx.julia_to_cpp(cobj)))
end
image3DMaxDepth(cobj::Any; ) = image3DMaxDepth(cobj)

function imageMaxBufferSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageMaxBufferSize(OpenCVCxx.julia_to_cpp(cobj)))
end
imageMaxBufferSize(cobj::Any; ) = imageMaxBufferSize(cobj)

function imageMaxArraySize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_imageMaxArraySize(OpenCVCxx.julia_to_cpp(cobj)))
end
imageMaxArraySize(cobj::Any; ) = imageMaxArraySize(cobj)

function vendorID(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_vendorID(OpenCVCxx.julia_to_cpp(cobj)))
end
vendorID(cobj::Any; ) = vendorID(cobj)

function isAMD(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isAMD(OpenCVCxx.julia_to_cpp(cobj)))
end
isAMD(cobj::Any; ) = isAMD(cobj)

function isIntel(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isIntel(OpenCVCxx.julia_to_cpp(cobj)))
end
isIntel(cobj::Any; ) = isIntel(cobj)

function isNVidia(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_isNVidia(OpenCVCxx.julia_to_cpp(cobj)))
end
isNVidia(cobj::Any; ) = isNVidia(cobj)

function maxClockFrequency(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxClockFrequency(OpenCVCxx.julia_to_cpp(cobj)))
end
maxClockFrequency(cobj::Any; ) = maxClockFrequency(cobj)

function maxComputeUnits(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxComputeUnits(OpenCVCxx.julia_to_cpp(cobj)))
end
maxComputeUnits(cobj::Any; ) = maxComputeUnits(cobj)

function maxConstantArgs(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxConstantArgs(OpenCVCxx.julia_to_cpp(cobj)))
end
maxConstantArgs(cobj::Any; ) = maxConstantArgs(cobj)

function maxConstantBufferSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxConstantBufferSize(OpenCVCxx.julia_to_cpp(cobj)))
end
maxConstantBufferSize(cobj::Any; ) = maxConstantBufferSize(cobj)

function maxMemAllocSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxMemAllocSize(OpenCVCxx.julia_to_cpp(cobj)))
end
maxMemAllocSize(cobj::Any; ) = maxMemAllocSize(cobj)

function maxParameterSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxParameterSize(OpenCVCxx.julia_to_cpp(cobj)))
end
maxParameterSize(cobj::Any; ) = maxParameterSize(cobj)

function maxReadImageArgs(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxReadImageArgs(OpenCVCxx.julia_to_cpp(cobj)))
end
maxReadImageArgs(cobj::Any; ) = maxReadImageArgs(cobj)

function maxWriteImageArgs(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxWriteImageArgs(OpenCVCxx.julia_to_cpp(cobj)))
end
maxWriteImageArgs(cobj::Any; ) = maxWriteImageArgs(cobj)

function maxSamplers(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxSamplers(OpenCVCxx.julia_to_cpp(cobj)))
end
maxSamplers(cobj::Any; ) = maxSamplers(cobj)

function maxWorkGroupSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxWorkGroupSize(OpenCVCxx.julia_to_cpp(cobj)))
end
maxWorkGroupSize(cobj::Any; ) = maxWorkGroupSize(cobj)

function maxWorkItemDims(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_maxWorkItemDims(OpenCVCxx.julia_to_cpp(cobj)))
end
maxWorkItemDims(cobj::Any; ) = maxWorkItemDims(cobj)

function memBaseAddrAlign(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_memBaseAddrAlign(OpenCVCxx.julia_to_cpp(cobj)))
end
memBaseAddrAlign(cobj::Any; ) = memBaseAddrAlign(cobj)

function nativeVectorWidthChar(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthChar(OpenCVCxx.julia_to_cpp(cobj)))
end
nativeVectorWidthChar(cobj::Any; ) = nativeVectorWidthChar(cobj)

function nativeVectorWidthShort(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthShort(OpenCVCxx.julia_to_cpp(cobj)))
end
nativeVectorWidthShort(cobj::Any; ) = nativeVectorWidthShort(cobj)

function nativeVectorWidthInt(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthInt(OpenCVCxx.julia_to_cpp(cobj)))
end
nativeVectorWidthInt(cobj::Any; ) = nativeVectorWidthInt(cobj)

function nativeVectorWidthLong(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthLong(OpenCVCxx.julia_to_cpp(cobj)))
end
nativeVectorWidthLong(cobj::Any; ) = nativeVectorWidthLong(cobj)

function nativeVectorWidthFloat(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthFloat(OpenCVCxx.julia_to_cpp(cobj)))
end
nativeVectorWidthFloat(cobj::Any; ) = nativeVectorWidthFloat(cobj)

function nativeVectorWidthDouble(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthDouble(OpenCVCxx.julia_to_cpp(cobj)))
end
nativeVectorWidthDouble(cobj::Any; ) = nativeVectorWidthDouble(cobj)

function nativeVectorWidthHalf(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_nativeVectorWidthHalf(OpenCVCxx.julia_to_cpp(cobj)))
end
nativeVectorWidthHalf(cobj::Any; ) = nativeVectorWidthHalf(cobj)

function preferredVectorWidthChar(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthChar(OpenCVCxx.julia_to_cpp(cobj)))
end
preferredVectorWidthChar(cobj::Any; ) = preferredVectorWidthChar(cobj)

function preferredVectorWidthShort(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthShort(OpenCVCxx.julia_to_cpp(cobj)))
end
preferredVectorWidthShort(cobj::Any; ) = preferredVectorWidthShort(cobj)

function preferredVectorWidthInt(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthInt(OpenCVCxx.julia_to_cpp(cobj)))
end
preferredVectorWidthInt(cobj::Any; ) = preferredVectorWidthInt(cobj)

function preferredVectorWidthLong(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthLong(OpenCVCxx.julia_to_cpp(cobj)))
end
preferredVectorWidthLong(cobj::Any; ) = preferredVectorWidthLong(cobj)

function preferredVectorWidthFloat(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthFloat(OpenCVCxx.julia_to_cpp(cobj)))
end
preferredVectorWidthFloat(cobj::Any; ) = preferredVectorWidthFloat(cobj)

function preferredVectorWidthDouble(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthDouble(OpenCVCxx.julia_to_cpp(cobj)))
end
preferredVectorWidthDouble(cobj::Any; ) = preferredVectorWidthDouble(cobj)

function preferredVectorWidthHalf(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_preferredVectorWidthHalf(OpenCVCxx.julia_to_cpp(cobj)))
end
preferredVectorWidthHalf(cobj::Any; ) = preferredVectorWidthHalf(cobj)

function printfBufferSize(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_printfBufferSize(OpenCVCxx.julia_to_cpp(cobj)))
end
printfBufferSize(cobj::Any; ) = printfBufferSize(cobj)

function profilingTimerResolution(cobj::Any)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_cv_ocl_Device_profilingTimerResolution(OpenCVCxx.julia_to_cpp(cobj)))
end
profilingTimerResolution(cobj::Any; ) = profilingTimerResolution(cobj)

function haveOpenCL()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_haveOpenCL())
end
haveOpenCL(; ) = haveOpenCL()

function useOpenCL()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_useOpenCL())
end
useOpenCL(; ) = useOpenCL()

function haveAmdBlas()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_haveAmdBlas())
end
haveAmdBlas(; ) = haveAmdBlas()

function haveAmdFft()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_haveAmdFft())
end
haveAmdFft(; ) = haveAmdFft()

function setUseOpenCL(flag::Bool)
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_setUseOpenCL(OpenCVCxx.julia_to_cpp(flag)))
end
setUseOpenCL(flag::Bool; ) = setUseOpenCL(flag)

function finish()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_finish())
end
finish(; ) = finish()

function Device_getDefault()
	return OpenCVCxx.cpp_to_julia(OpenCVCxx.jlopencv_cv_ocl_cv_ocl_Device_getDefault())
end
Device_getDefault(; ) = Device_getDefault()



end