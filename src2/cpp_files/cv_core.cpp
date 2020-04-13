
#include "jlcv2.hpp"

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

} // namespace jlcxx

JLCXX_MODULE
cv2_core(jlcxx::Module &mod)
{
    mod.add_type<Mat>("Mat").constructor<int, const int *, int, void *, const size_t *>();

    mod.method("jlopencv_core_get_sizet", [](){return sizeof(size_t);});
    jlcxx::add_smart_pointer<cv::Ptr>(mod, "cv_Ptr");
    mod.method("jlopencv_core_Mat_mutable_data", [](Mat m) {
        return make_tuple(m.data, m.type(), m.channels(), m.size[1], m.size[0], m.step[1], m.step[0]);
    });

    // types.hpp
    mod.add_type<Parametric<TypeVar<1>>>("Point_")
  .apply<Point_<int>, Point_<float>, Point_<double>>([](auto wrapped)
    {
    typedef typename decltype(wrapped)::type WrappedT;
    typedef typename get_template_type<WrappedT>::type T;
    wrapped.template constructor<T, T>();
    wrapped.method("jlopencv_core_get_x", [](const WrappedT v){return v.x;});
    wrapped.method("jlopencv_core_get_y", [](const WrappedT v){return v.y;});
    });

        mod.add_type<Parametric<TypeVar<1>>>("Point3_")
  .apply<Point3_<int>, Point3_<float>, Point3_<double>>([](auto wrapped)
    {
    typedef typename decltype(wrapped)::type WrappedT;
    typedef typename get_template_type<WrappedT>::type T;
    wrapped.template constructor<T, T, T>();
    wrapped.method("jlopencv_core_get_x", [](const WrappedT v){return v.x;});
    wrapped.method("jlopencv_core_get_y", [](const WrappedT v){return v.y;});
    wrapped.method("jlopencv_core_get_z", [](const WrappedT v){return v.z;});
    });

    mod.add_type<Parametric<TypeVar<1>>>("Size_")
  .apply<Size_<int>, Size_<float>, Size_<double>>([](auto wrapped)
    {
    typedef typename decltype(wrapped)::type WrappedT;
    typedef typename get_template_type<WrappedT>::type T;
    wrapped.template constructor<T, T>();
    wrapped.method("jlopencv_core_get_height", [](const WrappedT v){return v.height;});
    wrapped.method("jlopencv_core_get_width", [](const WrappedT v){return v.width;});
    });

    mod.add_type<Parametric<TypeVar<1>>>("Rect_")
  .apply<Rect_<int>, Rect_<float>, Rect_<double>>([](auto wrapped)
    {
    typedef typename decltype(wrapped)::type WrappedT;
    typedef typename get_template_type<WrappedT>::type T;
    wrapped.template constructor<T, T, T, T>();
    wrapped.method("jlopencv_core_get_x", [](const WrappedT v){return v.x;});
    wrapped.method("jlopencv_core_get_y", [](const WrappedT v){return v.y;});
    wrapped.method("jlopencv_core_get_height", [](const WrappedT v){return v.height;});
    wrapped.method("jlopencv_core_get_width", [](const WrappedT v){return v.width;});
    });
    
    mod.add_type<Parametric<TypeVar<1>>>("Scalar_")
  .apply<Scalar_<int>, Scalar_<float>, Scalar_<double>>([](auto wrapped)
    {
    typedef typename decltype(wrapped)::type WrappedT;
    typedef typename get_template_type<WrappedT>::type T;
    wrapped.template constructor<T, T, T, T>();
    wrapped.method("jlopencv_core_get_z", [](const WrappedT v){return v[0];});
    wrapped.method("jlopencv_core_get_o", [](const WrappedT v){return v[1];});
    wrapped.method("jlopencv_core_get_tw", [](const WrappedT v){return v[2];});
    wrapped.method("jlopencv_core_get_th", [](const WrappedT v){return v[3];});
    });


    mod.add_type<TermCriteria>("TermCritera_").constructor<int, int, double>()
                                                .method("jlopencv_core_get_type", [](const TermCriteria v){return v.type;})
                                                .method("jlopencv_core_get_maxcount", [](const TermCriteria v){return v.maxCount;})
                                                .method("jlopencv_core_get_epsilon", [](const TermCriteria v){return v.epsilon;});

    mod.add_type<Range>("Range_").constructor<int, int>()
                                                .method("jlopencv_core_get_start", [](const Range v){return v.start;})
                                                .method("jlopencv_core_get_end", [](const Range v){return v.end;});

    mod.add_type<RotatedRect>("RotatedRect_").constructor<Point2f, Size2f, float>()
                                                .method("jlopencv_core_get_center", [](const RotatedRect v){return v.center;})
                                                .method("jlopencv_core_get_size", [](const RotatedRect v){return v.size;})
                                                .method("jlopencv_core_get_angle", [](const RotatedRect v){return v.angle;});


}