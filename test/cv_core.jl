include("cv_cxx.jl")

module OpenCV
import ..OpenCVCxx

const dtypes = OpenCVCxx.dtypes
const size_t = OpenCVCxx.size_t

const Mat = OpenCVCxx.Mat

const InputArray = OpenCVCxx.InputArray
const Scalar = OpenCVCxx.Scalar
const Point = OpenCVCxx.Point
const Size = OpenCVCxx.Point
const Rect = OpenCVCxx.Rect
const Point3 = OpenCVCxx.Point3

include("cv_wrap.jl")

end