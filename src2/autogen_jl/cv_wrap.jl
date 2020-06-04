
   const SortFlags = Int32 

   const CovarFlags = Int32 

   const KmeansFlags = Int32 

   const ReduceTypes = Int32 

   const RotateFlags = Int32 

   const PCA_Flags = Int32 

   const SVD_Flags = Int32 

   const Formatter_FormatType = Int32 

   const Param = Int32 
function Base.getproperty(m::Algorithm, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Algorithm, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function clear(cobj::Algorithm)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_clear(julia_to_cpp(cobj)))
end

function write(cobj::Algorithm, fs::cv_Ptr{FileStorage}, name::String)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
write(cobj::Algorithm, fs::cv_Ptr{FileStorage}; name::String = (String())) = write(cobj, fs, name)

function read(cobj::Algorithm, fn::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_read(julia_to_cpp(cobj),julia_to_cpp(fn)))
end

function empty(cobj::Algorithm)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_empty(julia_to_cpp(cobj)))
end

function save(cobj::Algorithm, filename::String)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_save(julia_to_cpp(cobj),julia_to_cpp(filename)))
end

function getDefaultName(cobj::Algorithm)
	return cpp_to_julia(jlopencv_cv_cv_Algorithm_cv_Algorithm_getDefaultName(julia_to_cpp(cobj)))
end

function borderInterpolate(p::Int32, len::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cv_borderInterpolate(julia_to_cpp(p),julia_to_cpp(len),julia_to_cpp(borderType)))
end

function copyMakeBorder(src::Image, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32, dst::Image, value::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_copyMakeBorder(julia_to_cpp(src),julia_to_cpp(top),julia_to_cpp(bottom),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(borderType),julia_to_cpp(dst),julia_to_cpp(value)))
end
copyMakeBorder(src::Image, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32; dst::Image = (CxxMat()), value::Scalar = (ScalarOP)) = copyMakeBorder(src, top, bottom, left, right, borderType, dst, value)

function copyMakeBorder(src::UMat, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32, dst::UMat, value::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_copyMakeBorder(julia_to_cpp(src),julia_to_cpp(top),julia_to_cpp(bottom),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(borderType),julia_to_cpp(dst),julia_to_cpp(value)))
end
copyMakeBorder(src::UMat, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32; dst::UMat = (UMat()), value::Scalar = (ScalarOP)) = copyMakeBorder(src, top, bottom, left, right, borderType, dst, value)

function add(src1::Image, src2::Image, dst::Image, mask::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_add(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
add(src1::Image, src2::Image; dst::Image = (CxxMat()), mask::Image = (MatOP), dtype::Int32 = Int32(-1)) = add(src1, src2, dst, mask, dtype)

function add(src1::UMat, src2::UMat, dst::UMat, mask::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_add(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
add(src1::UMat, src2::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP), dtype::Int32 = Int32(-1)) = add(src1, src2, dst, mask, dtype)

function subtract(src1::Image, src2::Image, dst::Image, mask::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_subtract(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
subtract(src1::Image, src2::Image; dst::Image = (CxxMat()), mask::Image = (MatOP), dtype::Int32 = Int32(-1)) = subtract(src1, src2, dst, mask, dtype)

function subtract(src1::UMat, src2::UMat, dst::UMat, mask::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_subtract(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
subtract(src1::UMat, src2::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP), dtype::Int32 = Int32(-1)) = subtract(src1, src2, dst, mask, dtype)

function multiply(src1::Image, src2::Image, dst::Image, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_multiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
multiply(src1::Image, src2::Image; dst::Image = (CxxMat()), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = multiply(src1, src2, dst, scale, dtype)

function multiply(src1::UMat, src2::UMat, dst::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_multiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
multiply(src1::UMat, src2::UMat; dst::UMat = (UMat()), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = multiply(src1, src2, dst, scale, dtype)

function divide(src1::Image, src2::Image, dst::Image, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
divide(src1::Image, src2::Image; dst::Image = (CxxMat()), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = divide(src1, src2, dst, scale, dtype)

function divide(src1::UMat, src2::UMat, dst::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
divide(src1::UMat, src2::UMat; dst::UMat = (UMat()), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = divide(src1, src2, dst, scale, dtype)

function divide(scale::Float64, src2::Image, dst::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(scale),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
divide(scale::Float64, src2::Image; dst::Image = (CxxMat()), dtype::Int32 = Int32(-1)) = divide(scale, src2, dst, dtype)

function divide(scale::Float64, src2::UMat, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(scale),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
divide(scale::Float64, src2::UMat; dst::UMat = (UMat()), dtype::Int32 = Int32(-1)) = divide(scale, src2, dst, dtype)

function scaleAdd(src1::Image, alpha::Float64, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_scaleAdd(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(dst)))
end
scaleAdd(src1::Image, alpha::Float64, src2::Image; dst::Image = (CxxMat())) = scaleAdd(src1, alpha, src2, dst)

function scaleAdd(src1::UMat, alpha::Float64, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_scaleAdd(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(dst)))
end
scaleAdd(src1::UMat, alpha::Float64, src2::UMat; dst::UMat = (UMat())) = scaleAdd(src1, alpha, src2, dst)

function addWeighted(src1::Image, alpha::Float64, src2::Image, beta::Float64, gamma::Float64, dst::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_addWeighted(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(beta),julia_to_cpp(gamma),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
addWeighted(src1::Image, alpha::Float64, src2::Image, beta::Float64, gamma::Float64; dst::Image = (CxxMat()), dtype::Int32 = Int32(-1)) = addWeighted(src1, alpha, src2, beta, gamma, dst, dtype)

function addWeighted(src1::UMat, alpha::Float64, src2::UMat, beta::Float64, gamma::Float64, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_addWeighted(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(beta),julia_to_cpp(gamma),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
addWeighted(src1::UMat, alpha::Float64, src2::UMat, beta::Float64, gamma::Float64; dst::UMat = (UMat()), dtype::Int32 = Int32(-1)) = addWeighted(src1, alpha, src2, beta, gamma, dst, dtype)

function convertScaleAbs(src::Image, dst::Image, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_convertScaleAbs(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
convertScaleAbs(src::Image; dst::Image = (CxxMat()), alpha::Float64 = Float64(1), beta::Float64 = Float64(0)) = convertScaleAbs(src, dst, alpha, beta)

function convertScaleAbs(src::UMat, dst::UMat, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_convertScaleAbs(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
convertScaleAbs(src::UMat; dst::UMat = (UMat()), alpha::Float64 = Float64(1), beta::Float64 = Float64(0)) = convertScaleAbs(src, dst, alpha, beta)

function convertFp16(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_convertFp16(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertFp16(src::Image; dst::Image = (CxxMat())) = convertFp16(src, dst)

function convertFp16(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_convertFp16(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertFp16(src::UMat; dst::UMat = (UMat())) = convertFp16(src, dst)

function LUT(src::Image, lut::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_LUT(julia_to_cpp(src),julia_to_cpp(lut),julia_to_cpp(dst)))
end
LUT(src::Image, lut::Image; dst::Image = (CxxMat())) = LUT(src, lut, dst)

function LUT(src::UMat, lut::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_LUT(julia_to_cpp(src),julia_to_cpp(lut),julia_to_cpp(dst)))
end
LUT(src::UMat, lut::UMat; dst::UMat = (UMat())) = LUT(src, lut, dst)

function sumElems(src::Image)
	return cpp_to_julia(jlopencv_cv_cv_sum(julia_to_cpp(src)))
end

function sumElems(src::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sum(julia_to_cpp(src)))
end

function countNonZero(src::Image)
	return cpp_to_julia(jlopencv_cv_cv_countNonZero(julia_to_cpp(src)))
end

function countNonZero(src::UMat)
	return cpp_to_julia(jlopencv_cv_cv_countNonZero(julia_to_cpp(src)))
end

function findNonZero(src::Image, idx::Image)
	return cpp_to_julia(jlopencv_cv_cv_findNonZero(julia_to_cpp(src),julia_to_cpp(idx)))
end
findNonZero(src::Image; idx::Image = (CxxMat())) = findNonZero(src, idx)

function findNonZero(src::UMat, idx::UMat)
	return cpp_to_julia(jlopencv_cv_cv_findNonZero(julia_to_cpp(src),julia_to_cpp(idx)))
end
findNonZero(src::UMat; idx::UMat = (UMat())) = findNonZero(src, idx)

function mean(src::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_mean(julia_to_cpp(src),julia_to_cpp(mask)))
end
mean(src::Image; mask::Image = (MatOP)) = mean(src, mask)

function mean(src::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_mean(julia_to_cpp(src),julia_to_cpp(mask)))
end
mean(src::UMat; mask::UMat = (UMatOP)) = mean(src, mask)

function meanStdDev(src::Image, mean::Image, stddev::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_meanStdDev(julia_to_cpp(src),julia_to_cpp(mean),julia_to_cpp(stddev),julia_to_cpp(mask)))
end
meanStdDev(src::Image; mean::Image = (CxxMat()), stddev::Image = (CxxMat()), mask::Image = (MatOP)) = meanStdDev(src, mean, stddev, mask)

function meanStdDev(src::UMat, mean::UMat, stddev::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_meanStdDev(julia_to_cpp(src),julia_to_cpp(mean),julia_to_cpp(stddev),julia_to_cpp(mask)))
end
meanStdDev(src::UMat; mean::UMat = (UMat()), stddev::UMat = (UMat()), mask::UMat = (UMatOP)) = meanStdDev(src, mean, stddev, mask)

function norm(src1::Image, normType::Int32, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::Image; normType::Int32 = Int32(NORM_L2), mask::Image = (MatOP)) = norm(src1, normType, mask)

function norm(src1::UMat, normType::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::UMat; normType::Int32 = Int32(NORM_L2), mask::UMat = (UMatOP)) = norm(src1, normType, mask)

function norm(src1::Image, src2::Image, normType::Int32, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::Image, src2::Image; normType::Int32 = Int32(NORM_L2), mask::Image = (MatOP)) = norm(src1, src2, normType, mask)

function norm(src1::UMat, src2::UMat, normType::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::UMat, src2::UMat; normType::Int32 = Int32(NORM_L2), mask::UMat = (UMatOP)) = norm(src1, src2, normType, mask)

function PSNR(src1::Image, src2::Image, R::Float64)
	return cpp_to_julia(jlopencv_cv_cv_PSNR(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(R)))
end
PSNR(src1::Image, src2::Image; R::Float64 = Float64(255.)) = PSNR(src1, src2, R)

function PSNR(src1::UMat, src2::UMat, R::Float64)
	return cpp_to_julia(jlopencv_cv_cv_PSNR(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(R)))
end
PSNR(src1::UMat, src2::UMat; R::Float64 = Float64(255.)) = PSNR(src1, src2, R)

function batchDistance(src1::Image, src2::Image, dtype::Int32, dist::Image, nidx::Image, normType::Int32, K::Int32, mask::Image, update::Int32, crosscheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_batchDistance(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dtype),julia_to_cpp(dist),julia_to_cpp(nidx),julia_to_cpp(normType),julia_to_cpp(K),julia_to_cpp(mask),julia_to_cpp(update),julia_to_cpp(crosscheck)))
end
batchDistance(src1::Image, src2::Image, dtype::Int32; dist::Image = (CxxMat()), nidx::Image = (CxxMat()), normType::Int32 = Int32(NORM_L2), K::Int32 = Int32(0), mask::Image = (MatOP), update::Int32 = Int32(0), crosscheck::Bool = (false)) = batchDistance(src1, src2, dtype, dist, nidx, normType, K, mask, update, crosscheck)

function batchDistance(src1::UMat, src2::UMat, dtype::Int32, dist::UMat, nidx::UMat, normType::Int32, K::Int32, mask::UMat, update::Int32, crosscheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_batchDistance(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dtype),julia_to_cpp(dist),julia_to_cpp(nidx),julia_to_cpp(normType),julia_to_cpp(K),julia_to_cpp(mask),julia_to_cpp(update),julia_to_cpp(crosscheck)))
end
batchDistance(src1::UMat, src2::UMat, dtype::Int32; dist::UMat = (UMat()), nidx::UMat = (UMat()), normType::Int32 = Int32(NORM_L2), K::Int32 = Int32(0), mask::UMat = (UMatOP), update::Int32 = Int32(0), crosscheck::Bool = (false)) = batchDistance(src1, src2, dtype, dist, nidx, normType, K, mask, update, crosscheck)

function normalize(src::Image, dst::Image, alpha::Float64, beta::Float64, norm_type::Int32, dtype::Int32, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_normalize(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(norm_type),julia_to_cpp(dtype),julia_to_cpp(mask)))
end
normalize(src::Image, dst::Image; alpha::Float64 = Float64(1), beta::Float64 = Float64(0), norm_type::Int32 = Int32(NORM_L2), dtype::Int32 = Int32(-1), mask::Image = (MatOP)) = normalize(src, dst, alpha, beta, norm_type, dtype, mask)

function normalize(src::UMat, dst::UMat, alpha::Float64, beta::Float64, norm_type::Int32, dtype::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_normalize(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(norm_type),julia_to_cpp(dtype),julia_to_cpp(mask)))
end
normalize(src::UMat, dst::UMat; alpha::Float64 = Float64(1), beta::Float64 = Float64(0), norm_type::Int32 = Int32(NORM_L2), dtype::Int32 = Int32(-1), mask::UMat = (UMatOP)) = normalize(src, dst, alpha, beta, norm_type, dtype, mask)

function minMaxLoc(src::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_minMaxLoc(julia_to_cpp(src),julia_to_cpp(mask)))
end
minMaxLoc(src::Image; mask::Image = (MatOP)) = minMaxLoc(src, mask)

function minMaxLoc(src::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_minMaxLoc(julia_to_cpp(src),julia_to_cpp(mask)))
end
minMaxLoc(src::UMat; mask::UMat = (UMatOP)) = minMaxLoc(src, mask)

function reduce(src::Image, dim::Int32, rtype::Int32, dst::Image, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_reduce(julia_to_cpp(src),julia_to_cpp(dim),julia_to_cpp(rtype),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
reduce(src::Image, dim::Int32, rtype::Int32; dst::Image = (CxxMat()), dtype::Int32 = Int32(-1)) = reduce(src, dim, rtype, dst, dtype)

function reduce(src::UMat, dim::Int32, rtype::Int32, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_reduce(julia_to_cpp(src),julia_to_cpp(dim),julia_to_cpp(rtype),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
reduce(src::UMat, dim::Int32, rtype::Int32; dst::UMat = (UMat()), dtype::Int32 = Int32(-1)) = reduce(src, dim, rtype, dst, dtype)

function merge(mv::Array{Image, 1}, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_merge(julia_to_cpp(mv),julia_to_cpp(dst)))
end
merge(mv::Array{Image, 1}; dst::Image = (CxxMat())) = merge(mv, dst)

function merge(mv::Array{UMat, 1}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_merge(julia_to_cpp(mv),julia_to_cpp(dst)))
end
merge(mv::Array{UMat, 1}; dst::UMat = (UMat())) = merge(mv, dst)

function split(m::Image, mv::Array{Image, 1})
	return cpp_to_julia(jlopencv_cv_cv_split(julia_to_cpp(m),julia_to_cpp(mv)))
end
split(m::Image; mv::Array{Image, 1} = (Array{Image, 1}())) = split(m, mv)

function split(m::UMat, mv::Array{UMat, 1})
	return cpp_to_julia(jlopencv_cv_cv_split(julia_to_cpp(m),julia_to_cpp(mv)))
end
split(m::UMat; mv::Array{UMat, 1} = (Array{UMat, 1}())) = split(m, mv)

function mixChannels(src::Array{Image, 1}, dst::Array{Image, 1}, fromTo::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_mixChannels(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fromTo)))
end

function mixChannels(src::Array{UMat, 1}, dst::Array{UMat, 1}, fromTo::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_mixChannels(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fromTo)))
end

function extractChannel(src::Image, coi::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_extractChannel(julia_to_cpp(src),julia_to_cpp(coi),julia_to_cpp(dst)))
end
extractChannel(src::Image, coi::Int32; dst::Image = (CxxMat())) = extractChannel(src, coi, dst)

function extractChannel(src::UMat, coi::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_extractChannel(julia_to_cpp(src),julia_to_cpp(coi),julia_to_cpp(dst)))
end
extractChannel(src::UMat, coi::Int32; dst::UMat = (UMat())) = extractChannel(src, coi, dst)

function insertChannel(src::Image, dst::Image, coi::Int32)
	return cpp_to_julia(jlopencv_cv_cv_insertChannel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(coi)))
end

function insertChannel(src::UMat, dst::UMat, coi::Int32)
	return cpp_to_julia(jlopencv_cv_cv_insertChannel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(coi)))
end

function flip(src::Image, flipCode::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_flip(julia_to_cpp(src),julia_to_cpp(flipCode),julia_to_cpp(dst)))
end
flip(src::Image, flipCode::Int32; dst::Image = (CxxMat())) = flip(src, flipCode, dst)

function flip(src::UMat, flipCode::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_flip(julia_to_cpp(src),julia_to_cpp(flipCode),julia_to_cpp(dst)))
end
flip(src::UMat, flipCode::Int32; dst::UMat = (UMat())) = flip(src, flipCode, dst)

function rotate(src::Image, rotateCode::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_rotate(julia_to_cpp(src),julia_to_cpp(rotateCode),julia_to_cpp(dst)))
end
rotate(src::Image, rotateCode::Int32; dst::Image = (CxxMat())) = rotate(src, rotateCode, dst)

function rotate(src::UMat, rotateCode::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_rotate(julia_to_cpp(src),julia_to_cpp(rotateCode),julia_to_cpp(dst)))
end
rotate(src::UMat, rotateCode::Int32; dst::UMat = (UMat())) = rotate(src, rotateCode, dst)

function repeat(src::Image, ny::Int32, nx::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_repeat(julia_to_cpp(src),julia_to_cpp(ny),julia_to_cpp(nx),julia_to_cpp(dst)))
end
repeat(src::Image, ny::Int32, nx::Int32; dst::Image = (CxxMat())) = repeat(src, ny, nx, dst)

function repeat(src::UMat, ny::Int32, nx::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_repeat(julia_to_cpp(src),julia_to_cpp(ny),julia_to_cpp(nx),julia_to_cpp(dst)))
end
repeat(src::UMat, ny::Int32, nx::Int32; dst::UMat = (UMat())) = repeat(src, ny, nx, dst)

function hconcat(src::Array{Image, 1}, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_hconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
hconcat(src::Array{Image, 1}; dst::Image = (CxxMat())) = hconcat(src, dst)

function hconcat(src::Array{UMat, 1}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_hconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
hconcat(src::Array{UMat, 1}; dst::UMat = (UMat())) = hconcat(src, dst)

function vconcat(src::Array{Image, 1}, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_vconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
vconcat(src::Array{Image, 1}; dst::Image = (CxxMat())) = vconcat(src, dst)

function vconcat(src::Array{UMat, 1}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_vconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
vconcat(src::Array{UMat, 1}; dst::UMat = (UMat())) = vconcat(src, dst)

function bitwise_and(src1::Image, src2::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_and(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_and(src1::Image, src2::Image; dst::Image = (CxxMat()), mask::Image = (MatOP)) = bitwise_and(src1, src2, dst, mask)

function bitwise_and(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_and(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_and(src1::UMat, src2::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP)) = bitwise_and(src1, src2, dst, mask)

function bitwise_or(src1::Image, src2::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_or(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_or(src1::Image, src2::Image; dst::Image = (CxxMat()), mask::Image = (MatOP)) = bitwise_or(src1, src2, dst, mask)

function bitwise_or(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_or(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_or(src1::UMat, src2::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP)) = bitwise_or(src1, src2, dst, mask)

function bitwise_xor(src1::Image, src2::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_xor(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_xor(src1::Image, src2::Image; dst::Image = (CxxMat()), mask::Image = (MatOP)) = bitwise_xor(src1, src2, dst, mask)

function bitwise_xor(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_xor(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_xor(src1::UMat, src2::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP)) = bitwise_xor(src1, src2, dst, mask)

function bitwise_not(src::Image, dst::Image, mask::Image)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_not(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_not(src::Image; dst::Image = (CxxMat()), mask::Image = (MatOP)) = bitwise_not(src, dst, mask)

function bitwise_not(src::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_not(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_not(src::UMat; dst::UMat = (UMat()), mask::UMat = (UMatOP)) = bitwise_not(src, dst, mask)

function absdiff(src1::Image, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_absdiff(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
absdiff(src1::Image, src2::Image; dst::Image = (CxxMat())) = absdiff(src1, src2, dst)

function absdiff(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_absdiff(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
absdiff(src1::UMat, src2::UMat; dst::UMat = (UMat())) = absdiff(src1, src2, dst)

function copyTo(src::Image, mask::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_copyTo(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst)))
end
copyTo(src::Image, mask::Image; dst::Image = (CxxMat())) = copyTo(src, mask, dst)

function copyTo(src::UMat, mask::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_copyTo(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst)))
end
copyTo(src::UMat, mask::UMat; dst::UMat = (UMat())) = copyTo(src, mask, dst)

function inRange(src::Image, lowerb::Image, upperb::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_inRange(julia_to_cpp(src),julia_to_cpp(lowerb),julia_to_cpp(upperb),julia_to_cpp(dst)))
end
inRange(src::Image, lowerb::Image, upperb::Image; dst::Image = (CxxMat())) = inRange(src, lowerb, upperb, dst)

function inRange(src::UMat, lowerb::UMat, upperb::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_inRange(julia_to_cpp(src),julia_to_cpp(lowerb),julia_to_cpp(upperb),julia_to_cpp(dst)))
end
inRange(src::UMat, lowerb::UMat, upperb::UMat; dst::UMat = (UMat())) = inRange(src, lowerb, upperb, dst)

function compare(src1::Image, src2::Image, cmpop::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_compare(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(cmpop),julia_to_cpp(dst)))
end
compare(src1::Image, src2::Image, cmpop::Int32; dst::Image = (CxxMat())) = compare(src1, src2, cmpop, dst)

function compare(src1::UMat, src2::UMat, cmpop::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_compare(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(cmpop),julia_to_cpp(dst)))
end
compare(src1::UMat, src2::UMat, cmpop::Int32; dst::UMat = (UMat())) = compare(src1, src2, cmpop, dst)

function min(src1::Image, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_min(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
min(src1::Image, src2::Image; dst::Image = (CxxMat())) = min(src1, src2, dst)

function min(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_min(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
min(src1::UMat, src2::UMat; dst::UMat = (UMat())) = min(src1, src2, dst)

function max(src1::Image, src2::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_max(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
max(src1::Image, src2::Image; dst::Image = (CxxMat())) = max(src1, src2, dst)

function max(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_max(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
max(src1::UMat, src2::UMat; dst::UMat = (UMat())) = max(src1, src2, dst)

function sqrt(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_sqrt(julia_to_cpp(src),julia_to_cpp(dst)))
end
sqrt(src::Image; dst::Image = (CxxMat())) = sqrt(src, dst)

function sqrt(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sqrt(julia_to_cpp(src),julia_to_cpp(dst)))
end
sqrt(src::UMat; dst::UMat = (UMat())) = sqrt(src, dst)

function pow(src::Image, power::Float64, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_pow(julia_to_cpp(src),julia_to_cpp(power),julia_to_cpp(dst)))
end
pow(src::Image, power::Float64; dst::Image = (CxxMat())) = pow(src, power, dst)

function pow(src::UMat, power::Float64, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_pow(julia_to_cpp(src),julia_to_cpp(power),julia_to_cpp(dst)))
end
pow(src::UMat, power::Float64; dst::UMat = (UMat())) = pow(src, power, dst)

function exp(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_exp(julia_to_cpp(src),julia_to_cpp(dst)))
end
exp(src::Image; dst::Image = (CxxMat())) = exp(src, dst)

function exp(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_exp(julia_to_cpp(src),julia_to_cpp(dst)))
end
exp(src::UMat; dst::UMat = (UMat())) = exp(src, dst)

function log(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_log(julia_to_cpp(src),julia_to_cpp(dst)))
end
log(src::Image; dst::Image = (CxxMat())) = log(src, dst)

function log(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_log(julia_to_cpp(src),julia_to_cpp(dst)))
end
log(src::UMat; dst::UMat = (UMat())) = log(src, dst)

function polarToCart(magnitude::Image, angle::Image, x::Image, y::Image, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_polarToCart(julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angleInDegrees)))
end
polarToCart(magnitude::Image, angle::Image; x::Image = (CxxMat()), y::Image = (CxxMat()), angleInDegrees::Bool = (false)) = polarToCart(magnitude, angle, x, y, angleInDegrees)

function polarToCart(magnitude::UMat, angle::UMat, x::UMat, y::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_polarToCart(julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angleInDegrees)))
end
polarToCart(magnitude::UMat, angle::UMat; x::UMat = (UMat()), y::UMat = (UMat()), angleInDegrees::Bool = (false)) = polarToCart(magnitude, angle, x, y, angleInDegrees)

function cartToPolar(x::Image, y::Image, magnitude::Image, angle::Image, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_cartToPolar(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
cartToPolar(x::Image, y::Image; magnitude::Image = (CxxMat()), angle::Image = (CxxMat()), angleInDegrees::Bool = (false)) = cartToPolar(x, y, magnitude, angle, angleInDegrees)

function cartToPolar(x::UMat, y::UMat, magnitude::UMat, angle::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_cartToPolar(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
cartToPolar(x::UMat, y::UMat; magnitude::UMat = (UMat()), angle::UMat = (UMat()), angleInDegrees::Bool = (false)) = cartToPolar(x, y, magnitude, angle, angleInDegrees)

function phase(x::Image, y::Image, angle::Image, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_phase(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
phase(x::Image, y::Image; angle::Image = (CxxMat()), angleInDegrees::Bool = (false)) = phase(x, y, angle, angleInDegrees)

function phase(x::UMat, y::UMat, angle::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_phase(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
phase(x::UMat, y::UMat; angle::UMat = (UMat()), angleInDegrees::Bool = (false)) = phase(x, y, angle, angleInDegrees)

function magnitude(x::Image, y::Image, magnitude::Image)
	return cpp_to_julia(jlopencv_cv_cv_magnitude(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude)))
end
magnitude(x::Image, y::Image; magnitude::Image = (CxxMat())) = magnitude(x, y, magnitude)

function magnitude(x::UMat, y::UMat, magnitude::UMat)
	return cpp_to_julia(jlopencv_cv_cv_magnitude(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude)))
end
magnitude(x::UMat, y::UMat; magnitude::UMat = (UMat())) = magnitude(x, y, magnitude)

function checkRange(a::Image, quiet::Bool, minVal::Float64, maxVal::Float64)
	return cpp_to_julia(jlopencv_cv_cv_checkRange(julia_to_cpp(a),julia_to_cpp(quiet),julia_to_cpp(minVal),julia_to_cpp(maxVal)))
end
checkRange(a::Image; quiet::Bool = (true), minVal::Float64 = Float64(-DBL_MAX), maxVal::Float64 = Float64(DBL_MAX)) = checkRange(a, quiet, minVal, maxVal)

function checkRange(a::UMat, quiet::Bool, minVal::Float64, maxVal::Float64)
	return cpp_to_julia(jlopencv_cv_cv_checkRange(julia_to_cpp(a),julia_to_cpp(quiet),julia_to_cpp(minVal),julia_to_cpp(maxVal)))
end
checkRange(a::UMat; quiet::Bool = (true), minVal::Float64 = Float64(-DBL_MAX), maxVal::Float64 = Float64(DBL_MAX)) = checkRange(a, quiet, minVal, maxVal)

function patchNaNs(a::Image, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_patchNaNs(julia_to_cpp(a),julia_to_cpp(val)))
end
patchNaNs(a::Image; val::Float64 = Float64(0)) = patchNaNs(a, val)

function patchNaNs(a::UMat, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_patchNaNs(julia_to_cpp(a),julia_to_cpp(val)))
end
patchNaNs(a::UMat; val::Float64 = Float64(0)) = patchNaNs(a, val)

function gemm(src1::Image, src2::Image, alpha::Float64, src3::Image, beta::Float64, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_gemm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(alpha),julia_to_cpp(src3),julia_to_cpp(beta),julia_to_cpp(dst),julia_to_cpp(flags)))
end
gemm(src1::Image, src2::Image, alpha::Float64, src3::Image, beta::Float64; dst::Image = (CxxMat()), flags::Int32 = Int32(0)) = gemm(src1, src2, alpha, src3, beta, dst, flags)

function gemm(src1::UMat, src2::UMat, alpha::Float64, src3::UMat, beta::Float64, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_gemm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(alpha),julia_to_cpp(src3),julia_to_cpp(beta),julia_to_cpp(dst),julia_to_cpp(flags)))
end
gemm(src1::UMat, src2::UMat, alpha::Float64, src3::UMat, beta::Float64; dst::UMat = (UMat()), flags::Int32 = Int32(0)) = gemm(src1, src2, alpha, src3, beta, dst, flags)

function mulTransposed(src::Image, aTa::Bool, dst::Image, delta::Image, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_mulTransposed(julia_to_cpp(src),julia_to_cpp(aTa),julia_to_cpp(dst),julia_to_cpp(delta),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
mulTransposed(src::Image, aTa::Bool; dst::Image = (CxxMat()), delta::Image = (MatOP), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = mulTransposed(src, aTa, dst, delta, scale, dtype)

function mulTransposed(src::UMat, aTa::Bool, dst::UMat, delta::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_mulTransposed(julia_to_cpp(src),julia_to_cpp(aTa),julia_to_cpp(dst),julia_to_cpp(delta),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
mulTransposed(src::UMat, aTa::Bool; dst::UMat = (UMat()), delta::UMat = (UMatOP), scale::Float64 = Float64(1), dtype::Int32 = Int32(-1)) = mulTransposed(src, aTa, dst, delta, scale, dtype)

function transpose(src::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_transpose(julia_to_cpp(src),julia_to_cpp(dst)))
end
transpose(src::Image; dst::Image = (CxxMat())) = transpose(src, dst)

function transpose(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_transpose(julia_to_cpp(src),julia_to_cpp(dst)))
end
transpose(src::UMat; dst::UMat = (UMat())) = transpose(src, dst)

function transform(src::Image, m::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_transform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
transform(src::Image, m::Image; dst::Image = (CxxMat())) = transform(src, m, dst)

function transform(src::UMat, m::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_transform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
transform(src::UMat, m::UMat; dst::UMat = (UMat())) = transform(src, m, dst)

function perspectiveTransform(src::Image, m::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_perspectiveTransform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
perspectiveTransform(src::Image, m::Image; dst::Image = (CxxMat())) = perspectiveTransform(src, m, dst)

function perspectiveTransform(src::UMat, m::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_perspectiveTransform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
perspectiveTransform(src::UMat, m::UMat; dst::UMat = (UMat())) = perspectiveTransform(src, m, dst)

function completeSymm(m::Image, lowerToUpper::Bool)
	return cpp_to_julia(jlopencv_cv_cv_completeSymm(julia_to_cpp(m),julia_to_cpp(lowerToUpper)))
end
completeSymm(m::Image; lowerToUpper::Bool = (false)) = completeSymm(m, lowerToUpper)

function completeSymm(m::UMat, lowerToUpper::Bool)
	return cpp_to_julia(jlopencv_cv_cv_completeSymm(julia_to_cpp(m),julia_to_cpp(lowerToUpper)))
end
completeSymm(m::UMat; lowerToUpper::Bool = (false)) = completeSymm(m, lowerToUpper)

function setIdentity(mtx::Image, s::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_setIdentity(julia_to_cpp(mtx),julia_to_cpp(s)))
end
setIdentity(mtx::Image; s::Scalar = (ScalarOXP)) = setIdentity(mtx, s)

function setIdentity(mtx::UMat, s::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_setIdentity(julia_to_cpp(mtx),julia_to_cpp(s)))
end
setIdentity(mtx::UMat; s::Scalar = (ScalarOXP)) = setIdentity(mtx, s)

function determinant(mtx::Image)
	return cpp_to_julia(jlopencv_cv_cv_determinant(julia_to_cpp(mtx)))
end

function determinant(mtx::UMat)
	return cpp_to_julia(jlopencv_cv_cv_determinant(julia_to_cpp(mtx)))
end

function trace(mtx::Image)
	return cpp_to_julia(jlopencv_cv_cv_trace(julia_to_cpp(mtx)))
end

function trace(mtx::UMat)
	return cpp_to_julia(jlopencv_cv_cv_trace(julia_to_cpp(mtx)))
end

function invert(src::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_invert(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
invert(src::Image; dst::Image = (CxxMat()), flags::Int32 = Int32(DECOMP_LU)) = invert(src, dst, flags)

function invert(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_invert(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
invert(src::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(DECOMP_LU)) = invert(src, dst, flags)

function solve(src1::Image, src2::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solve(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(flags)))
end
solve(src1::Image, src2::Image; dst::Image = (CxxMat()), flags::Int32 = Int32(DECOMP_LU)) = solve(src1, src2, dst, flags)

function solve(src1::UMat, src2::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solve(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(flags)))
end
solve(src1::UMat, src2::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(DECOMP_LU)) = solve(src1, src2, dst, flags)

function sort(src::Image, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_sort(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sort(src::Image, flags::Int32; dst::Image = (CxxMat())) = sort(src, flags, dst)

function sort(src::UMat, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sort(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sort(src::UMat, flags::Int32; dst::UMat = (UMat())) = sort(src, flags, dst)

function sortIdx(src::Image, flags::Int32, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_sortIdx(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sortIdx(src::Image, flags::Int32; dst::Image = (CxxMat())) = sortIdx(src, flags, dst)

function sortIdx(src::UMat, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_sortIdx(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sortIdx(src::UMat, flags::Int32; dst::UMat = (UMat())) = sortIdx(src, flags, dst)

function solveCubic(coeffs::Image, roots::Image)
	return cpp_to_julia(jlopencv_cv_cv_solveCubic(julia_to_cpp(coeffs),julia_to_cpp(roots)))
end
solveCubic(coeffs::Image; roots::Image = (CxxMat())) = solveCubic(coeffs, roots)

function solveCubic(coeffs::UMat, roots::UMat)
	return cpp_to_julia(jlopencv_cv_cv_solveCubic(julia_to_cpp(coeffs),julia_to_cpp(roots)))
end
solveCubic(coeffs::UMat; roots::UMat = (UMat())) = solveCubic(coeffs, roots)

function solvePoly(coeffs::Image, roots::Image, maxIters::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePoly(julia_to_cpp(coeffs),julia_to_cpp(roots),julia_to_cpp(maxIters)))
end
solvePoly(coeffs::Image; roots::Image = (CxxMat()), maxIters::Int32 = Int32(300)) = solvePoly(coeffs, roots, maxIters)

function solvePoly(coeffs::UMat, roots::UMat, maxIters::Int32)
	return cpp_to_julia(jlopencv_cv_cv_solvePoly(julia_to_cpp(coeffs),julia_to_cpp(roots),julia_to_cpp(maxIters)))
end
solvePoly(coeffs::UMat; roots::UMat = (UMat()), maxIters::Int32 = Int32(300)) = solvePoly(coeffs, roots, maxIters)

function eigen(src::Image, eigenvalues::Image, eigenvectors::Image)
	return cpp_to_julia(jlopencv_cv_cv_eigen(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigen(src::Image; eigenvalues::Image = (CxxMat()), eigenvectors::Image = (MatOP)) = eigen(src, eigenvalues, eigenvectors)

function eigen(src::UMat, eigenvalues::UMat, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_cv_eigen(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigen(src::UMat; eigenvalues::UMat = (UMat()), eigenvectors::UMat = (UMatOP)) = eigen(src, eigenvalues, eigenvectors)

function eigenNonSymmetric(src::Image, eigenvalues::Image, eigenvectors::Image)
	return cpp_to_julia(jlopencv_cv_cv_eigenNonSymmetric(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigenNonSymmetric(src::Image; eigenvalues::Image = (CxxMat()), eigenvectors::Image = (CxxMat())) = eigenNonSymmetric(src, eigenvalues, eigenvectors)

function eigenNonSymmetric(src::UMat, eigenvalues::UMat, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_cv_eigenNonSymmetric(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigenNonSymmetric(src::UMat; eigenvalues::UMat = (UMat()), eigenvectors::UMat = (UMat())) = eigenNonSymmetric(src, eigenvalues, eigenvectors)

function calcCovarMatrix(samples::Image, mean::Image, flags::Int32, covar::Image, ctype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_calcCovarMatrix(julia_to_cpp(samples),julia_to_cpp(mean),julia_to_cpp(flags),julia_to_cpp(covar),julia_to_cpp(ctype)))
end
calcCovarMatrix(samples::Image, mean::Image, flags::Int32; covar::Image = (CxxMat()), ctype::Int32 = Int32(CV_64F)) = calcCovarMatrix(samples, mean, flags, covar, ctype)

function calcCovarMatrix(samples::UMat, mean::UMat, flags::Int32, covar::UMat, ctype::Int32)
	return cpp_to_julia(jlopencv_cv_cv_calcCovarMatrix(julia_to_cpp(samples),julia_to_cpp(mean),julia_to_cpp(flags),julia_to_cpp(covar),julia_to_cpp(ctype)))
end
calcCovarMatrix(samples::UMat, mean::UMat, flags::Int32; covar::UMat = (UMat()), ctype::Int32 = Int32(CV_64F)) = calcCovarMatrix(samples, mean, flags, covar, ctype)

function PCACompute(data::Image, mean::Image, eigenvectors::Image, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(maxComponents)))
end
PCACompute(data::Image, mean::Image; eigenvectors::Image = (CxxMat()), maxComponents::Int32 = Int32(0)) = PCACompute(data, mean, eigenvectors, maxComponents)

function PCACompute(data::UMat, mean::UMat, eigenvectors::UMat, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(maxComponents)))
end
PCACompute(data::UMat, mean::UMat; eigenvectors::UMat = (UMat()), maxComponents::Int32 = Int32(0)) = PCACompute(data, mean, eigenvectors, maxComponents)

function PCACompute2(data::Image, mean::Image, eigenvectors::Image, eigenvalues::Image, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues),julia_to_cpp(maxComponents)))
end
PCACompute2(data::Image, mean::Image; eigenvectors::Image = (CxxMat()), eigenvalues::Image = (CxxMat()), maxComponents::Int32 = Int32(0)) = PCACompute2(data, mean, eigenvectors, eigenvalues, maxComponents)

function PCACompute2(data::UMat, mean::UMat, eigenvectors::UMat, eigenvalues::UMat, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues),julia_to_cpp(maxComponents)))
end
PCACompute2(data::UMat, mean::UMat; eigenvectors::UMat = (UMat()), eigenvalues::UMat = (UMat()), maxComponents::Int32 = Int32(0)) = PCACompute2(data, mean, eigenvectors, eigenvalues, maxComponents)

function PCACompute(data::Image, mean::Image, retainedVariance::Float64, eigenvectors::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors)))
end
PCACompute(data::Image, mean::Image, retainedVariance::Float64; eigenvectors::Image = (CxxMat())) = PCACompute(data, mean, retainedVariance, eigenvectors)

function PCACompute(data::UMat, mean::UMat, retainedVariance::Float64, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors)))
end
PCACompute(data::UMat, mean::UMat, retainedVariance::Float64; eigenvectors::UMat = (UMat())) = PCACompute(data, mean, retainedVariance, eigenvectors)

function PCACompute2(data::Image, mean::Image, retainedVariance::Float64, eigenvectors::Image, eigenvalues::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues)))
end
PCACompute2(data::Image, mean::Image, retainedVariance::Float64; eigenvectors::Image = (CxxMat()), eigenvalues::Image = (CxxMat())) = PCACompute2(data, mean, retainedVariance, eigenvectors, eigenvalues)

function PCACompute2(data::UMat, mean::UMat, retainedVariance::Float64, eigenvectors::UMat, eigenvalues::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues)))
end
PCACompute2(data::UMat, mean::UMat, retainedVariance::Float64; eigenvectors::UMat = (UMat()), eigenvalues::UMat = (UMat())) = PCACompute2(data, mean, retainedVariance, eigenvectors, eigenvalues)

function PCAProject(data::Image, mean::Image, eigenvectors::Image, result::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCAProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCAProject(data::Image, mean::Image, eigenvectors::Image; result::Image = (CxxMat())) = PCAProject(data, mean, eigenvectors, result)

function PCAProject(data::UMat, mean::UMat, eigenvectors::UMat, result::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCAProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCAProject(data::UMat, mean::UMat, eigenvectors::UMat; result::UMat = (UMat())) = PCAProject(data, mean, eigenvectors, result)

function PCABackProject(data::Image, mean::Image, eigenvectors::Image, result::Image)
	return cpp_to_julia(jlopencv_cv_cv_PCABackProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCABackProject(data::Image, mean::Image, eigenvectors::Image; result::Image = (CxxMat())) = PCABackProject(data, mean, eigenvectors, result)

function PCABackProject(data::UMat, mean::UMat, eigenvectors::UMat, result::UMat)
	return cpp_to_julia(jlopencv_cv_cv_PCABackProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCABackProject(data::UMat, mean::UMat, eigenvectors::UMat; result::UMat = (UMat())) = PCABackProject(data, mean, eigenvectors, result)

function SVDecomp(src::Image, w::Image, u::Image, vt::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_SVDecomp(julia_to_cpp(src),julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(flags)))
end
SVDecomp(src::Image; w::Image = (CxxMat()), u::Image = (CxxMat()), vt::Image = (CxxMat()), flags::Int32 = Int32(0)) = SVDecomp(src, w, u, vt, flags)

function SVDecomp(src::UMat, w::UMat, u::UMat, vt::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_SVDecomp(julia_to_cpp(src),julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(flags)))
end
SVDecomp(src::UMat; w::UMat = (UMat()), u::UMat = (UMat()), vt::UMat = (UMat()), flags::Int32 = Int32(0)) = SVDecomp(src, w, u, vt, flags)

function SVBackSubst(w::Image, u::Image, vt::Image, rhs::Image, dst::Image)
	return cpp_to_julia(jlopencv_cv_cv_SVBackSubst(julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(rhs),julia_to_cpp(dst)))
end
SVBackSubst(w::Image, u::Image, vt::Image, rhs::Image; dst::Image = (CxxMat())) = SVBackSubst(w, u, vt, rhs, dst)

function SVBackSubst(w::UMat, u::UMat, vt::UMat, rhs::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cv_SVBackSubst(julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(rhs),julia_to_cpp(dst)))
end
SVBackSubst(w::UMat, u::UMat, vt::UMat, rhs::UMat; dst::UMat = (UMat())) = SVBackSubst(w, u, vt, rhs, dst)

function Mahalanobis(v1::Image, v2::Image, icovar::Image)
	return cpp_to_julia(jlopencv_cv_cv_Mahalanobis(julia_to_cpp(v1),julia_to_cpp(v2),julia_to_cpp(icovar)))
end

function Mahalanobis(v1::UMat, v2::UMat, icovar::UMat)
	return cpp_to_julia(jlopencv_cv_cv_Mahalanobis(julia_to_cpp(v1),julia_to_cpp(v2),julia_to_cpp(icovar)))
end

function dft(src::Image, dst::Image, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
dft(src::Image; dst::Image = (CxxMat()), flags::Int32 = Int32(0), nonzeroRows::Int32 = Int32(0)) = dft(src, dst, flags, nonzeroRows)

function dft(src::UMat, dst::UMat, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
dft(src::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(0), nonzeroRows::Int32 = Int32(0)) = dft(src, dst, flags, nonzeroRows)

function idft(src::Image, dst::Image, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
idft(src::Image; dst::Image = (CxxMat()), flags::Int32 = Int32(0), nonzeroRows::Int32 = Int32(0)) = idft(src, dst, flags, nonzeroRows)

function idft(src::UMat, dst::UMat, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
idft(src::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(0), nonzeroRows::Int32 = Int32(0)) = idft(src, dst, flags, nonzeroRows)

function dct(src::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
dct(src::Image; dst::Image = (CxxMat()), flags::Int32 = Int32(0)) = dct(src, dst, flags)

function dct(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_dct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
dct(src::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(0)) = dct(src, dst, flags)

function idct(src::Image, dst::Image, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
idct(src::Image; dst::Image = (CxxMat()), flags::Int32 = Int32(0)) = idct(src, dst, flags)

function idct(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_cv_idct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
idct(src::UMat; dst::UMat = (UMat()), flags::Int32 = Int32(0)) = idct(src, dst, flags)

function mulSpectrums(a::Image, b::Image, flags::Int32, c::Image, conjB::Bool)
	return cpp_to_julia(jlopencv_cv_cv_mulSpectrums(julia_to_cpp(a),julia_to_cpp(b),julia_to_cpp(flags),julia_to_cpp(c),julia_to_cpp(conjB)))
end
mulSpectrums(a::Image, b::Image, flags::Int32; c::Image = (CxxMat()), conjB::Bool = (false)) = mulSpectrums(a, b, flags, c, conjB)

function mulSpectrums(a::UMat, b::UMat, flags::Int32, c::UMat, conjB::Bool)
	return cpp_to_julia(jlopencv_cv_cv_mulSpectrums(julia_to_cpp(a),julia_to_cpp(b),julia_to_cpp(flags),julia_to_cpp(c),julia_to_cpp(conjB)))
end
mulSpectrums(a::UMat, b::UMat, flags::Int32; c::UMat = (UMat()), conjB::Bool = (false)) = mulSpectrums(a, b, flags, c, conjB)

function getOptimalDFTSize(vecsize::Int32)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalDFTSize(julia_to_cpp(vecsize)))
end

function setRNGSeed(seed::Int32)
	return cpp_to_julia(jlopencv_cv_cv_setRNGSeed(julia_to_cpp(seed)))
end

function randu(dst::Image, low::Image, high::Image)
	return cpp_to_julia(jlopencv_cv_cv_randu(julia_to_cpp(dst),julia_to_cpp(low),julia_to_cpp(high)))
end

function randu(dst::UMat, low::UMat, high::UMat)
	return cpp_to_julia(jlopencv_cv_cv_randu(julia_to_cpp(dst),julia_to_cpp(low),julia_to_cpp(high)))
end

function randn(dst::Image, mean::Image, stddev::Image)
	return cpp_to_julia(jlopencv_cv_cv_randn(julia_to_cpp(dst),julia_to_cpp(mean),julia_to_cpp(stddev)))
end

function randn(dst::UMat, mean::UMat, stddev::UMat)
	return cpp_to_julia(jlopencv_cv_cv_randn(julia_to_cpp(dst),julia_to_cpp(mean),julia_to_cpp(stddev)))
end

function randShuffle(dst::Image, iterFactor::Float64)
	return cpp_to_julia(jlopencv_cv_cv_randShuffle(julia_to_cpp(dst),julia_to_cpp(iterFactor)))
end
randShuffle(dst::Image; iterFactor::Float64 = Float64(1.)) = randShuffle(dst, iterFactor)

function randShuffle(dst::UMat, iterFactor::Float64)
	return cpp_to_julia(jlopencv_cv_cv_randShuffle(julia_to_cpp(dst),julia_to_cpp(iterFactor)))
end
randShuffle(dst::UMat; iterFactor::Float64 = Float64(1.)) = randShuffle(dst, iterFactor)

function kmeans(data::Image, K::Int32, bestLabels::Image, criteria::TermCriteria, attempts::Int32, flags::Int32, centers::Image)
	return cpp_to_julia(jlopencv_cv_cv_kmeans(julia_to_cpp(data),julia_to_cpp(K),julia_to_cpp(bestLabels),julia_to_cpp(criteria),julia_to_cpp(attempts),julia_to_cpp(flags),julia_to_cpp(centers)))
end
kmeans(data::Image, K::Int32, bestLabels::Image, criteria::TermCriteria, attempts::Int32, flags::Int32; centers::Image = (MatOP)) = kmeans(data, K, bestLabels, criteria, attempts, flags, centers)

function kmeans(data::UMat, K::Int32, bestLabels::UMat, criteria::TermCriteria, attempts::Int32, flags::Int32, centers::UMat)
	return cpp_to_julia(jlopencv_cv_cv_kmeans(julia_to_cpp(data),julia_to_cpp(K),julia_to_cpp(bestLabels),julia_to_cpp(criteria),julia_to_cpp(attempts),julia_to_cpp(flags),julia_to_cpp(centers)))
end
kmeans(data::UMat, K::Int32, bestLabels::UMat, criteria::TermCriteria, attempts::Int32, flags::Int32; centers::UMat = (UMatOP)) = kmeans(data, K, bestLabels, criteria, attempts, flags, centers)



include("cv_dnn_wrap.jl")