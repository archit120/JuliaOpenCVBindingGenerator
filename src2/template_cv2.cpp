#include <vector>

#include "jlcxx/jlcxx.hpp"
#include "jlcxx/functions.hpp"
#include "jlcxx/stl.hpp"
#include "jlcxx/array.hpp"
#include "jlcxx/tuple.hpp"

#include <opencv2/opencv.hpp>
#include <opencv2/opencv_modules.hpp>
#include <type_traits>

#include <opencv2/core/ocl.hpp>

using namespace cv;
using namespace std;
using namespace jlcxx;

#ifdef HAVE_OPENCV_FEATURES2D
typedef SimpleBlobDetector::Params SimpleBlobDetector_Params;
typedef AKAZE::DescriptorType AKAZE_DescriptorType;
typedef AgastFeatureDetector::DetectorType AgastFeatureDetector_DetectorType;
typedef FastFeatureDetector::DetectorType FastFeatureDetector_DetectorType;
typedef DescriptorMatcher::MatcherType DescriptorMatcher_MatcherType;
typedef KAZE::DiffusivityType KAZE_DiffusivityType;
typedef ORB::ScoreType ORB_ScoreType;
#endif

#ifdef HAVE_OPENCV_OBJDETECT

#include "opencv2/objdetect.hpp"

typedef HOGDescriptor::HistogramNormType HOGDescriptor_HistogramNormType;
typedef HOGDescriptor::DescriptorStorageFormat HOGDescriptor_DescriptorStorageFormat;

#endif

#ifdef HAVE_OPENCV_FLANN
typedef cvflann::flann_distance_t cvflann_flann_distance_t;
typedef cvflann::flann_algorithm_t cvflann_flann_algorithm_t;

typedef flann::IndexParams flann_IndexParams;
typedef flann::SearchParams flann_SearchParams;
#endif

template <typename C>
struct get_template_type;

template <template <typename> class C, typename T>
struct get_template_type<C<T>> {
  using type = T;
};




namespace jlcxx
{
template <typename T>
struct IsSmartPointerType<cv::Ptr<T>> : std::true_type
{
};
template <typename T>
struct ConstructorPointerType<cv::Ptr<T>>
{
    typedef T *type;
};

struct VecTrait
{
};

template <typename T, int N>
struct TraitSelector<Vec<T, N>>
{
    using type = VecTrait;
};

template <typename T, int N>
struct MappingTrait<Vec<T, N>, VecTrait>
{
    using type = VecTrait;
};

template <typename T, int Dim>
struct static_type_mapping<cv::Vec<T, Dim>, VecTrait>
{
    typedef jl_array_t *type;
};

template <typename T, int Dim>
struct ConvertToJulia<cv::Vec<T, Dim>, VecTrait>
{
    jl_array_t *operator()(cv::Vec<T, Dim> &&vec) const
    {
        return wrap_array(true, (T *)vec.val, Dim);
    }
};
template <typename T, int Dim>
struct ConvertToCpp<cv::Vec<T, Dim>, VecTrait>
{
    cv::Vec<T, Dim> operator()(jl_array_t *arr) const
    {
        return cv::Vec<T, Dim>((const T *)jl_array_data(arr));
    }
};

template <typename T, int Dim>
struct julia_type_factory<cv::Vec<T, Dim>, VecTrait>
{
    static jl_datatype_t *julia_type()
    {
        return (jl_datatype_t *)apply_array_type(jlcxx::julia_type<T>(), 1);
    }
};

${inherit_code}

} // namespace jlcxx

JLCXX_MODULE
cv2_core(jlcxx::Module &mod)
{
    mod.add_type<Mat>("Mat").constructor<int, const int *, int, void *, const size_t *>();

    jlcxx::add_smart_pointer<cv::Ptr>(mod, "cv_Ptr");
    mod.method("jlopencv_core_Mat_mutable_data", [](Mat m) {
        return make_tuple(m.data, m.type(), m.channels(), m.size[1], m.size[0], m.step[1], m.step[0]);
    });

    // types.hpp
    mod.add_type<Parametric<TypeVar<1>>>("Point")
  .apply<Point_<int>, Point_<float>, Point_<double>>([](auto wrapped)
    {
    typedef typename decltype(wrapped)::type WrappedT;
    typedef typename get_template_type<WrappedT>::type T;
    wrapped.template constructor<T, T>();
    wrapped.method("get_x", [](const WrappedT v){return v.x;});
    wrapped.method("get_y", [](const WrappedT v){return v.y;});
    });

        mod.add_type<Parametric<TypeVar<1>>>("Point3")
  .apply<Point_<int>, Point_<float>, Point_<double>>([](auto wrapped)
    {
    typedef typename decltype(wrapped)::type WrappedT;
    typedef typename get_template_type<WrappedT>::type T;
    wrapped.template constructor<T, T>();
    wrapped.method("get_x", [](const WrappedT v){return v.x;});
    wrapped.method("get_y", [](const WrappedT v){return v.y;});
    wrapped.method("get_z", [](const WrappedT v){return v.z;});
    });

    mod.add_type<Parametric<TypeVar<1>>>("Size")
  .apply<Size_<int>, Size_<float>, Size_<double>>([](auto wrapped)
    {
    typedef typename decltype(wrapped)::type WrappedT;
    typedef typename get_template_type<WrappedT>::type T;
    wrapped.template constructor<T, T>();
    wrapped.method("get_height", [](const WrappedT v){return v.height;});
    wrapped.method("get_width", [](const WrappedT v){return v.width;});
    });

    mod.add_type<Parametric<TypeVar<1>>>("Rect")
  .apply<Rect_<int>, Rect_<float>, Rect_<double>>([](auto wrapped)
    {
    typedef typename decltype(wrapped)::type WrappedT;
    typedef typename get_template_type<WrappedT>::type T;
    wrapped.template constructor<T, T, T, T>();
    wrapped.method("get_x", [](const WrappedT v){return v.x;});
    wrapped.method("get_y", [](const WrappedT v){return v.y;});
    wrapped.method("get_height", [](const WrappedT v){return v.height;});
    wrapped.method("get_width", [](const WrappedT v){return v.width;});
    });
    

}

${module_code}
