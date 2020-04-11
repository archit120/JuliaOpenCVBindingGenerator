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



namespace jlcxx
{
template <>
struct SuperType<SimpleBlobDetector>
{
    typedef Feature2D type;
};

template <typename T>
struct IsSmartPointerType<cv::Ptr<T>> : std::true_type
{
};
template <typename T>
struct ConstructorPointerType<cv::Ptr<T>>
{
    typedef T *type;
};

template<typename NumberT> struct IsMirroredType<Point_<NumberT>> : std::true_type {};

} // namespace jlcxx

jlcxx::ArrayRef<uint8_t, 3> Mat_mutable_data(cv::Mat Mat)
{
    return make_julia_array(Mat.data, Mat.channels(), Mat.cols, Mat.rows);
}

void julia_to_cpp(tuple<int, int> v, Size& s)
{
    s.width = get<0>(v);
    s.height = get<1>(v);
}

tuple<int, int> cpp_to_julia(const Size &v)
{
    return make_tuple(v.width, v.height);
}

void julia_to_cpp(tuple<float, float> v, Size2f& s)
{
    s.width = get<0>(v);
    s.height = get<1>(v);
}

tuple<float, float> cpp_to_julia(const Size_<float> &sz)
{
    return make_tuple(sz.width, sz.height);
}

void julia_to_cpp(tuple<int, int, int, int> v, Rect& r)
{
    r.x = get<0>(v);
    r.y = get<1>(v);
    r.width = get<2>(v);
    r.height = get<3>(v);
}

tuple<int, int, int, int> cpp_to_julia(const Rect &r)
{
    return make_tuple(r.x, r.y, r.width, r.height);
}

void julia_to_cpp(tuple<double, double, double, double> &v, Rect2d &r)
{
    r.x = get<0>(v);
    r.y = get<1>(v);
    r.width = get<2>(v);
    r.height = get<3>(v);
}

tuple<double, double, double, double> cpp_to_julia(const Rect2d &r)
{
    return make_tuple(r.x, r.y, r.width, r.height);
}

void julia_to_cpp(tuple<int, int> v, Range &r)
{
    r.start = get<0>(v);
    r.end = get<1>(v);
}

tuple<int, int> cpp_to_julia(const Range &r)
{
    return make_tuple(r.start, r.end);
}

void julia_to_cpp(tuple<int, int> v, Point &p)
{
    p.x = get<0>(v);
    p.y = get<1>(v);
}

void julia_to_cpp(tuple<double, double> v, Point2f &p)
{
    p.x = get<0>(v);
    p.y = get<1>(v);
}

void julia_to_cpp(tuple<double, double> v, Point2d &p)
{
    p.x = get<0>(v);
    p.y = get<1>(v);
}

void julia_to_cpp(tuple<float, float, float> v, Point3f &p)
{
    p.x = get<0>(v);
    p.y = get<1>(v);
    p.z = get<2>(v);
}

void julia_to_cpp(tuple<double, double, double> v, Point3d &p)
{
    p.x = get<0>(v);
    p.y = get<1>(v);
    p.z = get<2>(v);
}

tuple<int, int> cpp_to_julia(const Point &p)
{
    return make_tuple(p.x, p.y);
}

tuple<float, float> cpp_to_julia(const Point2f &p)
{
    return make_tuple(p.x, p.y);
}

tuple<float, float, float> cpp_to_julia(const Point3f &p)
{
    return make_tuple(p.x, p.y, p.z);
}

void julia_to_cpp(tuple<double, double, double, double> obj, Vec4d &v)
{
    v[0] = get<0>(obj);
    v[1] = get<1>(obj);
    v[2] = get<2>(obj);
    v[3] = get<3>(obj);
}

void julia_to_cpp(tuple<float, float, float, float> obj, Vec4f &v)
{
    v[0] = get<0>(obj);
    v[1] = get<1>(obj);
    v[2] = get<2>(obj);
    v[3] = get<3>(obj);
}

void julia_to_cpp(tuple<int, int, int, int>  obj, Vec4i &v)
{
    v[0] = get<0>(obj);
    v[1] = get<1>(obj);
    v[2] = get<2>(obj);
    v[3] = get<3>(obj);
}

void julia_to_cpp(tuple<double, double, double> obj, Vec3d &v)
{
    v[0] = get<0>(obj);
    v[1] = get<1>(obj);
    v[2] = get<2>(obj);
}

void julia_to_cpp(tuple<float, float, float> obj, Vec3f &v)
{
    v[0] = get<0>(obj);
    v[1] = get<1>(obj);
    v[2] = get<2>(obj);
}

void julia_to_cpp( tuple<int, int, int> obj, Vec3i &v)
{
    v[0] = get<0>(obj);
    v[1] = get<1>(obj);
    v[2] = get<2>(obj);
}

void julia_to_cpp(tuple<double, double> obj, Vec2d &v)
{
    v[0] = get<0>(obj);
    v[1] = get<1>(obj);
}

void julia_to_cpp(tuple<float, float> obj, Vec2f &v)
{

    v[0] = get<0>(obj);
    v[1] = get<1>(obj);
}

void julia_to_cpp(tuple<int, int> obj, Vec2i &v)
{

    v[0] = get<0>(obj);
    v[1] = get<1>(obj);
}

tuple<double, double, double, double> cpp_to_julia(const Vec4d &v)
{
    return make_tuple(v[0], v[1], v[2], v[3]);
}

tuple<float, float, float, float> cpp_to_julia(const Vec4f &v)
{
    return make_tuple(v[0], v[1], v[2], v[3]);
}

tuple<int, int, int, int> cpp_to_julia(const Vec4i &v)
{
    return make_tuple(v[0], v[1], v[2], v[3]);
}

tuple<double, double, double> cpp_to_julia(const Vec3d &v)
{
    return make_tuple(v[0], v[1], v[2]);
}

tuple<float, float, float> cpp_to_julia(const Vec3f &v)
{
    return make_tuple(v[0], v[1], v[2]);
}

tuple<int, int, int> cpp_to_julia(const Vec3i &v)
{
    return make_tuple(v[0], v[1], v[2]);
}

tuple<double, double> cpp_to_julia(const Vec2d &v)
{
    return make_tuple(v[0], v[1]);
}

tuple<float, float> cpp_to_julia(const Vec2f &v)
{
    return make_tuple(v[0], v[1]);
}

tuple<int, int> cpp_to_julia(const Vec2i &v)
{
    return make_tuple(v[0], v[1]);
}

tuple<double, double>  cpp_to_julia(const Point2d &p)
{
    return make_tuple(p.x, p.y);
}

tuple<double, double, double>  cpp_to_julia(const Point3d &p)
{
    return make_tuple(p.x, p.y, p.z);
}


void julia_to_cpp(tuple<int, int, double> obj, TermCriteria& dst)
{
    dst.type = get<0>(obj);
    dst.maxCount = get<1>(obj);
    dst.epsilon = get<2>(obj);
}

tuple<int, int, double> cpp_to_julia(const TermCriteria& src)
{
    return make_tuple(src.type, src.maxCount, src.epsilon);
}

void julia_to_cpp(tuple<tuple<float, float>, tuple<float, float>, float> obj, RotatedRect& dst)
{
    julia_to_cpp(get<0>(obj), dst.center);
    julia_to_cpp(get<1>(obj), dst.size);
    dst.angle = get<2>(obj);
}

tuple<tuple<float, float>, tuple<float, float>, float> cpp_to_julia(const RotatedRect& src)
{
    return make_tuple(cpp_to_julia(src.center), cpp_to_julia(src.size), src.angle);
}


JLCXX_MODULE
cv2(jlcxx::Module &mod)
{
    mod.add_type<Mat>("Mat").constructor<int, const int *, int, void *, const size_t *>();
    mod.map_type<Parametric<TypeVar<1>>>("Point").apply<Point_<int>, Point_<float>, Point_<double>>([](auto wrapped){});
    mod.add_type<Point2f>("Point2f").constructor<float, float>().method("Point2f_get_x", [](const Point2f &a) { return a.x; }).method("Point2f_get_y", [](const Point2f &a) { return a.y; });

    mod.add_type<Size2i>("Size2i").constructor<int, int>().method("Size2i_get_height", [](const Size2i &a) { return a.height; }).method("Size2i_get_width", [](const Size2i &a) { return a.width; });
    mod.add_type<Rect2i>("Rect2i").constructor<int, int, int, int>().method("Rect2i_get_height", [](const Rect2i &a) { return a.height; }).method("Rect2i_get_width", [](const Rect2i &a) { return a.width; }).method("Rect2i_get_x", [](const Rect2i &a) { return a.x; }).method("Rect2i_get_y", [](const Rect2i &a) { return a.y; });

    mod.add_type<Scalar>("Scalar_").constructor<double, double, double, double>();
    mod.add_type<KeyPoint>("KeyPoint_").method("KeyPoint_get_pt", [](const KeyPoint &a) { return a.pt; }).method("KeyPoint_get_size", [](const KeyPoint &a) { return a.size; }).method("KeyPoint_get_angle", [](const KeyPoint &a) { return a.angle; }).method("KeyPoint_get_response", [](const KeyPoint &a) { return a.response; }).method("KeyPoint_get_octave", [](const KeyPoint &a) { return a.octave; }).method("KeyPoint_get_class_id", [](const KeyPoint &a) { return a.class_id; });
    mod.add_type<Feature2D>("Feature2D");
    mod.add_type<SimpleBlobDetector>("SimpleBlobDetector", jlcxx::julia_base_type<Feature2D>());
    mod.add_type<VideoCapture>("VideoCapture").constructor<const std::string &>().constructor<int>().method("read", [](VideoCapture c1) { Mat dst; return make_tuple(c1.read(dst), dst); });

    jlcxx::add_smart_pointer<cv::Ptr>(mod, "cv_Ptr");

    mod.method("imread_", [](string a1, int a2) { return cv::imread(a1, a2); });
    mod.method("imshow", [](string a1, Mat a2) { return cv::imshow(a1, a2); });
    mod.method("namedWindow", [](string a1) { cv::namedWindow(a1); });
    mod.method("namedWindow", [](string a1, int a2) { cv::namedWindow(a1, a2); });
    mod.method("waitKey", [](int a1) { return cv::waitKey(a1); });
    mod.method("rectangle", [](Mat a1, Point2f a2, Point2f a3, const Scalar &a4, int a5, int a6, int a7) { cv::rectangle(a1, a2, a3, a4, a5, a6, a7); });
    mod.method("cvtColor", [](Mat a1, int a2) {Mat o1; cv::cvtColor(a1, o1, a2); return o1; });
    mod.method("equalizeHist", [](Mat a1) {Mat o1; cv::equalizeHist(a1, o1); return o1; });
    mod.method("destroyAllWindows", []() { cv::destroyAllWindows(); });
    mod.method("destroyAllWindows", [](Mat a) { cv::destroyAllWindows(); });

    mod.method("Mat_mutable_data", &Mat_mutable_data);

    // Algorithm Inherits
    mod.method("simpleBlobDetector_detect", [](cv::Ptr<Feature2D> c1, Mat a1) { vector<KeyPoint> o1; c1->detect(a1, o1); return o1; });
    mod.method("simpleBlobDetector_create", []() { return cv::Ptr<SimpleBlobDetector>(SimpleBlobDetector::create()); });
}
