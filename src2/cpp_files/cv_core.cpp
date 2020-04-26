#include <vector>

#include "jlcxx/jlcxx.hpp"
#include "jlcxx/functions.hpp"
#include "jlcxx/stl.hpp"
#include "jlcxx/array.hpp"
#include "jlcxx/tuple.hpp"

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d.hpp>
#include <opencv2/core/utility.hpp>
#include <opencv2/objdetect.hpp>
#include <opencv2/imgproc.hpp>
#include "opencv2/highgui.hpp"
#include "opencv2/videoio.hpp"

using namespace cv;
using namespace std;
using namespace jlcxx;

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

template<typename T, int Val>
struct BuildParameterList<cv::Vec<T, Val>>
{
typedef ParameterList<T, std::integral_constant<int, Val>> type;
};

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

    
  
}
