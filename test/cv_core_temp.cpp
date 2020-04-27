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



    mod.method("get_vec4f", []() {
        return Vec4f::all(3);
    });

    mod.method("get_vec4fs", []() {
        vector<Vec4f> f;
        f.push_back(Vec4f::all(-5));
        f.push_back(Vec4f::all(4));
        return f;
    });
    mod.method("print_vec4f", [](Vec4f v){
        cout << &v[0] << " " << v[1] << " " << v[2] << " " << v[3] << "\n";
    });

    mod.method("print_scalar", [](Scalar s){cout << s[0] << " " << s[1] << " " << s[2] << " " << s[3] << "\n";});
    mod.method("get_scalar", [](){return Scalar::all(-3.14);});
    mod.method("get_scalars", [](){vector<Scalar> s;
    s.push_back(Scalar::all(-3.14));
    s.push_back(Scalar::all(99)); return s;});

    mod.method("get_tuple", [](){return make_tuple(Range::all(), Scalar::all(-2.89));});


    mod.method("get_point", [](){return Point2d(-3,4);});
    mod.method("get_point3", [](){return Point3i(-30,4,5);});
    mod.method("get_size", [](){return Size2f(-9,42);});
    mod.method("get_rect", [](){return Rect2f(-3,4,0,1);});
    mod.method("get_rr", [](){return RotatedRect(Point2f(99,-99), Size2f(6,7), 0.8);});
    mod.method("get_term", [](){return TermCriteria(1,2,0.1);});
    mod.method("get_range", [](){return Range::all();});

    mod.method("get_rr_vec", [](){
        vector<RotatedRect> r;
        r.push_back(RotatedRect(Point2f(99,-99), Size2f(6,7), 0.8));
        r.push_back(RotatedRect(Point2f(23,-99), Size2f(6,7), 0.2));
        
        return r;
    });

  mod.method("get_sz_vec", [](){
        vector<Size2f> r;
        r.push_back( Size2f(6,7));
        r.push_back( Size2f(6,7));
        
        return r;
    });

  mod.method("get_tup", [](){
        vector<Size2f> r;
        r.push_back( Size2f(6,7));
        r.push_back( Size2f(6,7));
                vector<RotatedRect> r2;
        r2.push_back(RotatedRect(Point2f(99,-99), Size2f(6,7), 0.8));
        r2.push_back(RotatedRect(Point2f(23,-99), Size2f(6,7), 0.2));

        return make_tuple(r,r2);
    });
      mod.method("get_tup2", [](){
    
        return make_tuple(Size(2,3),Point2f(-9.2,3), Range::all());
    });
    mod.method("pr_point", [](Point2d a){cout << a.x<< " " << a.y << "\n";});
    mod.method("pr_point", [](Point3d a){cout << a.x<< " " << a.y<<" " << a.z << "\n";});
    mod.method("pr_point", [](Size2d a){cout << a.width<< " " << a.height << "\n";});
    mod.method("pr_point", [](Rect2d a){cout << a.x<< " " << a.y << "\n";});
    mod.method("pr_point", [](RotatedRect a){cout << a.angle<< " " << a.center.x << "\n";});
    mod.method("pr_term", [](TermCriteria a){cout << a.epsilon << "\n";});

    mod.method("jlopencv_cv_cv_imread",  [](string& filename, int& flags) { auto retval = cv::imread(filename, flags); return retval;});
    mod.method("jlopencv_cv_cv_imreadmulti",  [](string& filename, vector<Mat>& mats, int& flags) { auto retval = cv::imreadmulti(filename, mats, flags); return make_tuple(move(retval),move(mats));});
    // mod.add_bits<cv::ImreadModes>("ImreadModes", jlcxx::julia_type("CppEnum"));
    mod.set_const("IMREAD_ANYCOLOR", (force_enum_int<decltype(cv::IMREAD_ANYCOLOR)>::Type)cv::IMREAD_ANYCOLOR);
    mod.set_const("IMREAD_COLOR", (force_enum_int<decltype(cv::IMREAD_ANYCOLOR)>::Type)cv::IMREAD_COLOR);

}
