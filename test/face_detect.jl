include("cv_core.jl")

cap = OpenCV.VideoCapture(Int32(0))
while true
    ret, img = OpenCV.read(cap)
    if ret==false
        break
    end
    gray = OpenCV.cvtColor(img, Int32(OpenCV.COLOR_BGR2GRAY))
    gray = OpenCV.equalizeHist(gray)

    OpenCV.imshow("facedetect", img)
    if OpenCV.waitKey(Int32(5))==27
        break
    end
end

OpenCV.destroyAllWindows()
