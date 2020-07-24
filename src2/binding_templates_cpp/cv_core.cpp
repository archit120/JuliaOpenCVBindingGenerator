
#include "jlcxx/array.hpp"
#include "jlcxx/jlcxx.hpp"
#include "jlcxx/functions.hpp"
#include "jlcxx/stl.hpp"
#include "jlcxx/tuple.hpp"

#include "jlcv2.hpp"

using namespace cv;
using namespace std;
using namespace jlcxx;


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

template<typename T, int Val>
struct BuildParameterList<cv::Vec<T, Val>>
{
typedef ParameterList<T, std::integral_constant<int, Val>> type;
};
${include_code}

} // namespace jlcxx
JLCXX_MODULE cv_wrap(jlcxx::Module &mod)
{
    mod.map_type<RotatedRect>("RotatedRect");
    mod.map_type<TermCriteria>("TermCriteria");
    mod.map_type<Range>("Range");

    mod.add_type<Parametric<TypeVar<1>, TypeVar<2>>>("CxxVec")
        .apply<Vec4f, Vec6f, Vec3d, Vec2d>([](auto wrapped){
            typedef typename decltype(wrapped)::type WrappedT;
            typedef typename get_template_type_vec<WrappedT>::type T;
            wrapped.template constructor<const T*>();
        });

    mod.add_type<Mat>("CxxMat").constructor<int, const int *, int, void *, const size_t *>();

    mod.method("jlopencv_core_get_sizet", [](){return sizeof(size_t);});
    jlcxx::add_smart_pointer<cv::Ptr>(mod, "cv_Ptr");
    mod.method("jlopencv_core_Mat_mutable_data", [](Mat m) {
        return make_tuple(m.data, m.type(), m.channels(), m.size[1], m.size[0], m.step[1], m.step[0]);
    });


    mod.add_type<Parametric<TypeVar<1>>>("CxxScalar")
        .apply<Scalar_<int>, Scalar_<float>, Scalar_<double>>([](auto wrapped) {
                typedef typename decltype(wrapped)::type WrappedT;
                typedef typename get_template_type<WrappedT>::type T;
                wrapped.template constructor<T, T, T, T>();
            });

    ${cpp_code}


}
