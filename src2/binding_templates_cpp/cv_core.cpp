
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


//
// Manual Wrapping BEGIN
//

#ifdef HAVE_OPENCV_HIGHGUI
    mod.method("createButton", [](const string & bar_name, jl_function_t* on_change, int type, bool initial_button_state) {createButton(bar_name, [](int s, void* c) {
        JuliaFunction f((jl_function_t*)c);
        f(forward<int>(s));
    }, (void*)on_change, type, initial_button_state);});

    mod.method("setMouseCallback", [](const string & winname, jl_function_t* onMouse) {
        setMouseCallback(winname, [](int event, int x, int y, int flags, void* c) {
        JuliaFunction f((jl_function_t*)c);
        f(forward<int>(event), forward<int>(x), forward<int>(y), forward<int>(flags));
    }, (void*)onMouse);});

    mod.method("createTrackbar", [](const String &trackbarname, const String &winname, int& value, int count, jl_function_t* onChange) {
        createTrackbar(trackbarname, winname, &value, count, [](int s, void* c) {
        JuliaFunction f((jl_function_t*)c);
        f(forward<int>(s));
    }, (void*)onChange);});

#endif


//
// Manual Wrapping END
//

    ${cpp_code}


}
