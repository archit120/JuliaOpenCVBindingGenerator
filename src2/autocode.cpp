More than one base ['cv::Algorithm', 'cv::class', 'cv::Feature2D', 'cv::Algorithm']
JLCXX_MODULE cv(jlcxx::Module &mod) {
mod.add_type<cv::Algorithm>("Algorithm")

;
    mod.method("jlopencv_cv_Algorithm_clear",  [](Algorithm& cobj) { cobj.clear();  ;});
    mod.method("jlopencv_cv_Algorithm_write",  [](Algorithm& cobj, Ptr<FileStorage>& fs, String& name) { cobj.write(fs, name);  ;});
    mod.method("jlopencv_cv_Algorithm_read",  [](Algorithm& cobj, FileNode& fn) { cobj.read(fn);  ;});
    mod.method("jlopencv_cv_Algorithm_empty",  [](Algorithm& cobj) { auto retval = cobj.empty();  return retval;});
    mod.method("jlopencv_cv_Algorithm_save",  [](Algorithm& cobj, String& filename) { cobj.save(filename);  ;});
    mod.method("jlopencv_cv_Algorithm_getDefaultName",  [](Algorithm& cobj) { auto retval = cobj.getDefaultName();  return retval;});mod.add_type<cv::KeyPoint>("KeyPoint")
.constructor<>()
.constructor<const float&,const float&,const float&,const float&,const float&,const int&,const int&>()

.method("jlopencv_KeyPoint_set_pt", [](cv::KeyPoint &cobj,const Point2f &v) {cobj.pt=v;})
.method("jlopencv_KeyPoint_set_size", [](cv::KeyPoint &cobj,const float &v) {cobj.size=v;})
.method("jlopencv_KeyPoint_set_angle", [](cv::KeyPoint &cobj,const float &v) {cobj.angle=v;})
.method("jlopencv_KeyPoint_set_response", [](cv::KeyPoint &cobj,const float &v) {cobj.response=v;})
.method("jlopencv_KeyPoint_set_octave", [](cv::KeyPoint &cobj,const int &v) {cobj.octave=v;})
.method("jlopencv_KeyPoint_set_class_id", [](cv::KeyPoint &cobj,const int &v) {cobj.class_id=v;})

.method("jlopencv_KeyPoint_get_pt", [](const cv::KeyPoint &cobj) {return cobj.pt;})
.method("jlopencv_KeyPoint_get_size", [](const cv::KeyPoint &cobj) {return cobj.size;})
.method("jlopencv_KeyPoint_get_angle", [](const cv::KeyPoint &cobj) {return cobj.angle;})
.method("jlopencv_KeyPoint_get_response", [](const cv::KeyPoint &cobj) {return cobj.response;})
.method("jlopencv_KeyPoint_get_octave", [](const cv::KeyPoint &cobj) {return cobj.octave;})
.method("jlopencv_KeyPoint_get_class_id", [](const cv::KeyPoint &cobj) {return cobj.class_id;});
    mod.method("jlopencv_cv_KeyPoint_convert",  [](KeyPoint& cobj, vector<KeyPoint>& keypoints, vector<int>& keypointIndexes) {vector<Point2f> points2f; cv::KeyPoint::convert(keypoints, points2f, keypointIndexes); return points2f;});
    mod.method("jlopencv_cv_KeyPoint_convert",  [](KeyPoint& cobj, vector<Point2f>& points2f, float& size, float& response, int& octave, int& class_id) {vector<KeyPoint> keypoints; cv::KeyPoint::convert(points2f, keypoints, size, response, octave, class_id); return keypoints;});
    mod.method("jlopencv_cv_KeyPoint_overlap",  [](KeyPoint& cobj, KeyPoint& kp1, KeyPoint& kp2) { auto retval = cv::KeyPoint::overlap(kp1, kp2); return retval;});mod.add_type<cv::DMatch>("DMatch")
.constructor<>()
.constructor<const int&,const int&,const float&>()
.constructor<const int&,const int&,const int&,const float&>()

.method("jlopencv_DMatch_set_queryIdx", [](cv::DMatch &cobj,const int &v) {cobj.queryIdx=v;})
.method("jlopencv_DMatch_set_trainIdx", [](cv::DMatch &cobj,const int &v) {cobj.trainIdx=v;})
.method("jlopencv_DMatch_set_imgIdx", [](cv::DMatch &cobj,const int &v) {cobj.imgIdx=v;})
.method("jlopencv_DMatch_set_distance", [](cv::DMatch &cobj,const float &v) {cobj.distance=v;})

.method("jlopencv_DMatch_get_queryIdx", [](const cv::DMatch &cobj) {return cobj.queryIdx;})
.method("jlopencv_DMatch_get_trainIdx", [](const cv::DMatch &cobj) {return cobj.trainIdx;})
.method("jlopencv_DMatch_get_imgIdx", [](const cv::DMatch &cobj) {return cobj.imgIdx;})
.method("jlopencv_DMatch_get_distance", [](const cv::DMatch &cobj) {return cobj.distance;});mod.map_type<cv::Moments>("Moments");mod.add_type<cv::GeneralizedHough>("GeneralizedHough", jlcxx::julia_base_type<cv::Algorithm>())

;
    mod.method("jlopencv_cv_GeneralizedHough_setTemplate",  [](cv::Ptr<GeneralizedHough>& cobj, Mat& templ, Point& templCenter) { cobj->setTemplate(templ, templCenter);  ;});
    mod.method("jlopencv_cv_GeneralizedHough_setTemplate",  [](cv::Ptr<GeneralizedHough>& cobj, UMat& templ, Point& templCenter) { cobj->setTemplate(templ, templCenter);  ;});
    mod.method("jlopencv_cv_GeneralizedHough_setTemplate",  [](cv::Ptr<GeneralizedHough>& cobj, Mat& edges, Mat& dx, Mat& dy, Point& templCenter) { cobj->setTemplate(edges, dx, dy, templCenter);  ;});
    mod.method("jlopencv_cv_GeneralizedHough_setTemplate",  [](cv::Ptr<GeneralizedHough>& cobj, UMat& edges, UMat& dx, UMat& dy, Point& templCenter) { cobj->setTemplate(edges, dx, dy, templCenter);  ;});
    mod.method("jlopencv_cv_GeneralizedHough_detect",  [](cv::Ptr<GeneralizedHough>& cobj, Mat& image, Mat& positions, Mat& votes) { cobj->detect(image, positions, votes);  return make_tuple<Mat,Mat>(move(positions),move(votes));});
    mod.method("jlopencv_cv_GeneralizedHough_detect",  [](cv::Ptr<GeneralizedHough>& cobj, UMat& image, UMat& positions, UMat& votes) { cobj->detect(image, positions, votes);  return make_tuple<UMat,UMat>(move(positions),move(votes));});
    mod.method("jlopencv_cv_GeneralizedHough_detect",  [](cv::Ptr<GeneralizedHough>& cobj, Mat& edges, Mat& dx, Mat& dy, Mat& positions, Mat& votes) { cobj->detect(edges, dx, dy, positions, votes);  return make_tuple<Mat,Mat>(move(positions),move(votes));});
    mod.method("jlopencv_cv_GeneralizedHough_detect",  [](cv::Ptr<GeneralizedHough>& cobj, UMat& edges, UMat& dx, UMat& dy, UMat& positions, UMat& votes) { cobj->detect(edges, dx, dy, positions, votes);  return make_tuple<UMat,UMat>(move(positions),move(votes));});
    mod.method("jlopencv_cv_GeneralizedHough_setCannyLowThresh",  [](cv::Ptr<GeneralizedHough>& cobj, int& cannyLowThresh) { cobj->setCannyLowThresh(cannyLowThresh);  ;});
    mod.method("jlopencv_cv_GeneralizedHough_getCannyLowThresh",  [](cv::Ptr<GeneralizedHough>& cobj) { auto retval = cobj->getCannyLowThresh();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHough_setCannyHighThresh",  [](cv::Ptr<GeneralizedHough>& cobj, int& cannyHighThresh) { cobj->setCannyHighThresh(cannyHighThresh);  ;});
    mod.method("jlopencv_cv_GeneralizedHough_getCannyHighThresh",  [](cv::Ptr<GeneralizedHough>& cobj) { auto retval = cobj->getCannyHighThresh();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHough_setMinDist",  [](cv::Ptr<GeneralizedHough>& cobj, double& minDist) { cobj->setMinDist(minDist);  ;});
    mod.method("jlopencv_cv_GeneralizedHough_getMinDist",  [](cv::Ptr<GeneralizedHough>& cobj) { auto retval = cobj->getMinDist();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHough_setDp",  [](cv::Ptr<GeneralizedHough>& cobj, double& dp) { cobj->setDp(dp);  ;});
    mod.method("jlopencv_cv_GeneralizedHough_getDp",  [](cv::Ptr<GeneralizedHough>& cobj) { auto retval = cobj->getDp();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHough_setMaxBufferSize",  [](cv::Ptr<GeneralizedHough>& cobj, int& maxBufferSize) { cobj->setMaxBufferSize(maxBufferSize);  ;});
    mod.method("jlopencv_cv_GeneralizedHough_getMaxBufferSize",  [](cv::Ptr<GeneralizedHough>& cobj) { auto retval = cobj->getMaxBufferSize();  return retval;});mod.add_type<cv::GeneralizedHoughBallard>("GeneralizedHoughBallard", jlcxx::julia_base_type<cv::GeneralizedHough>())

;
    mod.method("jlopencv_cv_GeneralizedHoughBallard_setLevels",  [](cv::Ptr<GeneralizedHoughBallard>& cobj, int& levels) { cobj->setLevels(levels);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughBallard_getLevels",  [](cv::Ptr<GeneralizedHoughBallard>& cobj) { auto retval = cobj->getLevels();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughBallard_setVotesThreshold",  [](cv::Ptr<GeneralizedHoughBallard>& cobj, int& votesThreshold) { cobj->setVotesThreshold(votesThreshold);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughBallard_getVotesThreshold",  [](cv::Ptr<GeneralizedHoughBallard>& cobj) { auto retval = cobj->getVotesThreshold();  return retval;});mod.add_type<cv::GeneralizedHoughGuil>("GeneralizedHoughGuil", jlcxx::julia_base_type<cv::GeneralizedHough>())

;
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setXi",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, double& xi) { cobj->setXi(xi);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getXi",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getXi();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setLevels",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, int& levels) { cobj->setLevels(levels);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getLevels",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getLevels();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setAngleEpsilon",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, double& angleEpsilon) { cobj->setAngleEpsilon(angleEpsilon);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getAngleEpsilon",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getAngleEpsilon();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setMinAngle",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, double& minAngle) { cobj->setMinAngle(minAngle);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getMinAngle",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getMinAngle();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setMaxAngle",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, double& maxAngle) { cobj->setMaxAngle(maxAngle);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getMaxAngle",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getMaxAngle();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setAngleStep",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, double& angleStep) { cobj->setAngleStep(angleStep);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getAngleStep",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getAngleStep();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setAngleThresh",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, int& angleThresh) { cobj->setAngleThresh(angleThresh);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getAngleThresh",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getAngleThresh();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setMinScale",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, double& minScale) { cobj->setMinScale(minScale);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getMinScale",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getMinScale();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setMaxScale",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, double& maxScale) { cobj->setMaxScale(maxScale);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getMaxScale",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getMaxScale();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setScaleStep",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, double& scaleStep) { cobj->setScaleStep(scaleStep);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getScaleStep",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getScaleStep();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setScaleThresh",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, int& scaleThresh) { cobj->setScaleThresh(scaleThresh);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getScaleThresh",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getScaleThresh();  return retval;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_setPosThresh",  [](cv::Ptr<GeneralizedHoughGuil>& cobj, int& posThresh) { cobj->setPosThresh(posThresh);  ;});
    mod.method("jlopencv_cv_GeneralizedHoughGuil_getPosThresh",  [](cv::Ptr<GeneralizedHoughGuil>& cobj) { auto retval = cobj->getPosThresh();  return retval;});mod.add_type<cv::CLAHE>("CLAHE", jlcxx::julia_base_type<cv::Algorithm>())

;
    mod.method("jlopencv_cv_CLAHE_apply",  [](cv::Ptr<CLAHE>& cobj, Mat& src, Mat& dst) { cobj->apply(src, dst);  return dst;});
    mod.method("jlopencv_cv_CLAHE_apply",  [](cv::Ptr<CLAHE>& cobj, UMat& src, UMat& dst) { cobj->apply(src, dst);  return dst;});
    mod.method("jlopencv_cv_CLAHE_setClipLimit",  [](cv::Ptr<CLAHE>& cobj, double& clipLimit) { cobj->setClipLimit(clipLimit);  ;});
    mod.method("jlopencv_cv_CLAHE_getClipLimit",  [](cv::Ptr<CLAHE>& cobj) { auto retval = cobj->getClipLimit();  return retval;});
    mod.method("jlopencv_cv_CLAHE_setTilesGridSize",  [](cv::Ptr<CLAHE>& cobj, Size& tileGridSize) { cobj->setTilesGridSize(tileGridSize);  ;});
    mod.method("jlopencv_cv_CLAHE_getTilesGridSize",  [](cv::Ptr<CLAHE>& cobj) { auto retval = cobj->getTilesGridSize();  return retval;});
    mod.method("jlopencv_cv_CLAHE_collectGarbage",  [](cv::Ptr<CLAHE>& cobj) { cobj->collectGarbage();  ;});mod.add_type<cv::Subdiv2D>("Subdiv2D")
.constructor<>()
.constructor<const Rect&>()

;
    mod.method("jlopencv_cv_Subdiv2D_initDelaunay",  [](Subdiv2D& cobj, Rect& rect) { cobj.initDelaunay(rect);  ;});
    mod.method("jlopencv_cv_Subdiv2D_insert",  [](Subdiv2D& cobj, Point2f& pt) { auto retval = cobj.insert(pt);  return retval;});
    mod.method("jlopencv_cv_Subdiv2D_insert",  [](Subdiv2D& cobj, vector<Point2f>& ptvec) { cobj.insert(ptvec);  ;});
    mod.method("jlopencv_cv_Subdiv2D_locate",  [](Subdiv2D& cobj, Point2f& pt) {int edge;int vertex; auto retval = cobj.locate(pt, edge, vertex);  return make_tuple<int,int,int>(move(retval),move(edge),move(vertex));});
    mod.method("jlopencv_cv_Subdiv2D_findNearest",  [](Subdiv2D& cobj, Point2f& pt) {Point2f nearestPt; auto retval = cobj.findNearest(pt, &nearestPt);  return make_tuple<int,Point2f>(move(retval),move(nearestPt));});
    mod.method("jlopencv_cv_Subdiv2D_getEdgeList",  [](Subdiv2D& cobj) {vector<Vec4f> edgeList; cobj.getEdgeList(edgeList);  return edgeList;});
    mod.method("jlopencv_cv_Subdiv2D_getLeadingEdgeList",  [](Subdiv2D& cobj) {vector<int> leadingEdgeList; cobj.getLeadingEdgeList(leadingEdgeList);  return leadingEdgeList;});
    mod.method("jlopencv_cv_Subdiv2D_getTriangleList",  [](Subdiv2D& cobj) {vector<Vec6f> triangleList; cobj.getTriangleList(triangleList);  return triangleList;});
    mod.method("jlopencv_cv_Subdiv2D_getVoronoiFacetList",  [](Subdiv2D& cobj, vector<int>& idx) {vector<vector<Point2f>> facetList;vector<Point2f> facetCenters; cobj.getVoronoiFacetList(idx, facetList, facetCenters);  return make_tuple<vector<vector<Point2f>>,vector<Point2f>>(move(facetList),move(facetCenters));});
    mod.method("jlopencv_cv_Subdiv2D_getVertex",  [](Subdiv2D& cobj, int& vertex) {int firstEdge; auto retval = cobj.getVertex(vertex, &firstEdge);  return make_tuple<Point2f,int>(move(retval),move(firstEdge));});
    mod.method("jlopencv_cv_Subdiv2D_getEdge",  [](Subdiv2D& cobj, int& edge, int& nextEdgeType) { auto retval = cobj.getEdge(edge, nextEdgeType);  return retval;});
    mod.method("jlopencv_cv_Subdiv2D_nextEdge",  [](Subdiv2D& cobj, int& edge) { auto retval = cobj.nextEdge(edge);  return retval;});
    mod.method("jlopencv_cv_Subdiv2D_rotateEdge",  [](Subdiv2D& cobj, int& edge, int& rotate) { auto retval = cobj.rotateEdge(edge, rotate);  return retval;});
    mod.method("jlopencv_cv_Subdiv2D_symEdge",  [](Subdiv2D& cobj, int& edge) { auto retval = cobj.symEdge(edge);  return retval;});
    mod.method("jlopencv_cv_Subdiv2D_edgeOrg",  [](Subdiv2D& cobj, int& edge) {Point2f orgpt; auto retval = cobj.edgeOrg(edge, &orgpt);  return make_tuple<int,Point2f>(move(retval),move(orgpt));});
    mod.method("jlopencv_cv_Subdiv2D_edgeDst",  [](Subdiv2D& cobj, int& edge) {Point2f dstpt; auto retval = cobj.edgeDst(edge, &dstpt);  return make_tuple<int,Point2f>(move(retval),move(dstpt));});mod.add_type<cv::LineSegmentDetector>("LineSegmentDetector", jlcxx::julia_base_type<cv::Algorithm>())

;
    mod.method("jlopencv_cv_LineSegmentDetector_detect",  [](cv::Ptr<LineSegmentDetector>& cobj, Mat& _image, Mat& _lines, Mat& width, Mat& prec, Mat& nfa) { cobj->detect(_image, _lines, width, prec, nfa);  return make_tuple<Mat,Mat,Mat,Mat>(move(_lines),move(width),move(prec),move(nfa));});
    mod.method("jlopencv_cv_LineSegmentDetector_detect",  [](cv::Ptr<LineSegmentDetector>& cobj, UMat& _image, UMat& _lines, UMat& width, UMat& prec, UMat& nfa) { cobj->detect(_image, _lines, width, prec, nfa);  return make_tuple<UMat,UMat,UMat,UMat>(move(_lines),move(width),move(prec),move(nfa));});
    mod.method("jlopencv_cv_LineSegmentDetector_drawSegments",  [](cv::Ptr<LineSegmentDetector>& cobj, Mat& _image, Mat& lines) { cobj->drawSegments(_image, lines);  return _image;});
    mod.method("jlopencv_cv_LineSegmentDetector_drawSegments",  [](cv::Ptr<LineSegmentDetector>& cobj, UMat& _image, UMat& lines) { cobj->drawSegments(_image, lines);  return _image;});
    mod.method("jlopencv_cv_LineSegmentDetector_compareSegments",  [](cv::Ptr<LineSegmentDetector>& cobj, Size& size, Mat& lines1, Mat& lines2, Mat& _image) { auto retval = cobj->compareSegments(size, lines1, lines2, _image);  return make_tuple<int,Mat>(move(retval),move(_image));});
    mod.method("jlopencv_cv_LineSegmentDetector_compareSegments",  [](cv::Ptr<LineSegmentDetector>& cobj, Size& size, UMat& lines1, UMat& lines2, UMat& _image) { auto retval = cobj->compareSegments(size, lines1, lines2, _image);  return make_tuple<int,UMat>(move(retval),move(_image));});mod.add_type<cv::CirclesGridFinderParameters>("CirclesGridFinderParameters")
.constructor<>()

.method("jlopencv_CirclesGridFinderParameters_set_densityNeighborhoodSize", [](cv::CirclesGridFinderParameters &cobj,const Size2f &v) {cobj.densityNeighborhoodSize=v;})
.method("jlopencv_CirclesGridFinderParameters_set_minDensity", [](cv::CirclesGridFinderParameters &cobj,const float &v) {cobj.minDensity=v;})
.method("jlopencv_CirclesGridFinderParameters_set_kmeansAttempts", [](cv::CirclesGridFinderParameters &cobj,const int &v) {cobj.kmeansAttempts=v;})
.method("jlopencv_CirclesGridFinderParameters_set_minDistanceToAddKeypoint", [](cv::CirclesGridFinderParameters &cobj,const int &v) {cobj.minDistanceToAddKeypoint=v;})
.method("jlopencv_CirclesGridFinderParameters_set_keypointScale", [](cv::CirclesGridFinderParameters &cobj,const int &v) {cobj.keypointScale=v;})
.method("jlopencv_CirclesGridFinderParameters_set_minGraphConfidence", [](cv::CirclesGridFinderParameters &cobj,const float &v) {cobj.minGraphConfidence=v;})
.method("jlopencv_CirclesGridFinderParameters_set_vertexGain", [](cv::CirclesGridFinderParameters &cobj,const float &v) {cobj.vertexGain=v;})
.method("jlopencv_CirclesGridFinderParameters_set_vertexPenalty", [](cv::CirclesGridFinderParameters &cobj,const float &v) {cobj.vertexPenalty=v;})
.method("jlopencv_CirclesGridFinderParameters_set_existingVertexGain", [](cv::CirclesGridFinderParameters &cobj,const float &v) {cobj.existingVertexGain=v;})
.method("jlopencv_CirclesGridFinderParameters_set_edgeGain", [](cv::CirclesGridFinderParameters &cobj,const float &v) {cobj.edgeGain=v;})
.method("jlopencv_CirclesGridFinderParameters_set_edgePenalty", [](cv::CirclesGridFinderParameters &cobj,const float &v) {cobj.edgePenalty=v;})
.method("jlopencv_CirclesGridFinderParameters_set_convexHullFactor", [](cv::CirclesGridFinderParameters &cobj,const float &v) {cobj.convexHullFactor=v;})
.method("jlopencv_CirclesGridFinderParameters_set_minRNGEdgeSwitchDist", [](cv::CirclesGridFinderParameters &cobj,const float &v) {cobj.minRNGEdgeSwitchDist=v;})
.method("jlopencv_CirclesGridFinderParameters_set_squareSize", [](cv::CirclesGridFinderParameters &cobj,const float &v) {cobj.squareSize=v;})
.method("jlopencv_CirclesGridFinderParameters_set_maxRectifiedDistance", [](cv::CirclesGridFinderParameters &cobj,const float &v) {cobj.maxRectifiedDistance=v;})

.method("jlopencv_CirclesGridFinderParameters_get_densityNeighborhoodSize", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.densityNeighborhoodSize;})
.method("jlopencv_CirclesGridFinderParameters_get_minDensity", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.minDensity;})
.method("jlopencv_CirclesGridFinderParameters_get_kmeansAttempts", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.kmeansAttempts;})
.method("jlopencv_CirclesGridFinderParameters_get_minDistanceToAddKeypoint", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.minDistanceToAddKeypoint;})
.method("jlopencv_CirclesGridFinderParameters_get_keypointScale", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.keypointScale;})
.method("jlopencv_CirclesGridFinderParameters_get_minGraphConfidence", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.minGraphConfidence;})
.method("jlopencv_CirclesGridFinderParameters_get_vertexGain", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.vertexGain;})
.method("jlopencv_CirclesGridFinderParameters_get_vertexPenalty", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.vertexPenalty;})
.method("jlopencv_CirclesGridFinderParameters_get_existingVertexGain", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.existingVertexGain;})
.method("jlopencv_CirclesGridFinderParameters_get_edgeGain", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.edgeGain;})
.method("jlopencv_CirclesGridFinderParameters_get_edgePenalty", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.edgePenalty;})
.method("jlopencv_CirclesGridFinderParameters_get_convexHullFactor", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.convexHullFactor;})
.method("jlopencv_CirclesGridFinderParameters_get_minRNGEdgeSwitchDist", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.minRNGEdgeSwitchDist;})
.method("jlopencv_CirclesGridFinderParameters_get_squareSize", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.squareSize;})
.method("jlopencv_CirclesGridFinderParameters_get_maxRectifiedDistance", [](const cv::CirclesGridFinderParameters &cobj) {return cobj.maxRectifiedDistance;});mod.add_type<cv::StereoMatcher>("StereoMatcher", jlcxx::julia_base_type<cv::Algorithm>())

;
    mod.method("jlopencv_cv_StereoMatcher_compute",  [](cv::Ptr<StereoMatcher>& cobj, Mat& left, Mat& right, Mat& disparity) { cobj->compute(left, right, disparity);  return disparity;});
    mod.method("jlopencv_cv_StereoMatcher_compute",  [](cv::Ptr<StereoMatcher>& cobj, UMat& left, UMat& right, UMat& disparity) { cobj->compute(left, right, disparity);  return disparity;});
    mod.method("jlopencv_cv_StereoMatcher_getMinDisparity",  [](cv::Ptr<StereoMatcher>& cobj) { auto retval = cobj->getMinDisparity();  return retval;});
    mod.method("jlopencv_cv_StereoMatcher_setMinDisparity",  [](cv::Ptr<StereoMatcher>& cobj, int& minDisparity) { cobj->setMinDisparity(minDisparity);  ;});
    mod.method("jlopencv_cv_StereoMatcher_getNumDisparities",  [](cv::Ptr<StereoMatcher>& cobj) { auto retval = cobj->getNumDisparities();  return retval;});
    mod.method("jlopencv_cv_StereoMatcher_setNumDisparities",  [](cv::Ptr<StereoMatcher>& cobj, int& numDisparities) { cobj->setNumDisparities(numDisparities);  ;});
    mod.method("jlopencv_cv_StereoMatcher_getBlockSize",  [](cv::Ptr<StereoMatcher>& cobj) { auto retval = cobj->getBlockSize();  return retval;});
    mod.method("jlopencv_cv_StereoMatcher_setBlockSize",  [](cv::Ptr<StereoMatcher>& cobj, int& blockSize) { cobj->setBlockSize(blockSize);  ;});
    mod.method("jlopencv_cv_StereoMatcher_getSpeckleWindowSize",  [](cv::Ptr<StereoMatcher>& cobj) { auto retval = cobj->getSpeckleWindowSize();  return retval;});
    mod.method("jlopencv_cv_StereoMatcher_setSpeckleWindowSize",  [](cv::Ptr<StereoMatcher>& cobj, int& speckleWindowSize) { cobj->setSpeckleWindowSize(speckleWindowSize);  ;});
    mod.method("jlopencv_cv_StereoMatcher_getSpeckleRange",  [](cv::Ptr<StereoMatcher>& cobj) { auto retval = cobj->getSpeckleRange();  return retval;});
    mod.method("jlopencv_cv_StereoMatcher_setSpeckleRange",  [](cv::Ptr<StereoMatcher>& cobj, int& speckleRange) { cobj->setSpeckleRange(speckleRange);  ;});
    mod.method("jlopencv_cv_StereoMatcher_getDisp12MaxDiff",  [](cv::Ptr<StereoMatcher>& cobj) { auto retval = cobj->getDisp12MaxDiff();  return retval;});
    mod.method("jlopencv_cv_StereoMatcher_setDisp12MaxDiff",  [](cv::Ptr<StereoMatcher>& cobj, int& disp12MaxDiff) { cobj->setDisp12MaxDiff(disp12MaxDiff);  ;});mod.add_type<cv::StereoBM>("StereoBM", jlcxx::julia_base_type<cv::StereoMatcher>())

;
    mod.method("jlopencv_cv_StereoBM_getPreFilterType",  [](cv::Ptr<StereoBM>& cobj) { auto retval = cobj->getPreFilterType();  return retval;});
    mod.method("jlopencv_cv_StereoBM_setPreFilterType",  [](cv::Ptr<StereoBM>& cobj, int& preFilterType) { cobj->setPreFilterType(preFilterType);  ;});
    mod.method("jlopencv_cv_StereoBM_getPreFilterSize",  [](cv::Ptr<StereoBM>& cobj) { auto retval = cobj->getPreFilterSize();  return retval;});
    mod.method("jlopencv_cv_StereoBM_setPreFilterSize",  [](cv::Ptr<StereoBM>& cobj, int& preFilterSize) { cobj->setPreFilterSize(preFilterSize);  ;});
    mod.method("jlopencv_cv_StereoBM_getPreFilterCap",  [](cv::Ptr<StereoBM>& cobj) { auto retval = cobj->getPreFilterCap();  return retval;});
    mod.method("jlopencv_cv_StereoBM_setPreFilterCap",  [](cv::Ptr<StereoBM>& cobj, int& preFilterCap) { cobj->setPreFilterCap(preFilterCap);  ;});
    mod.method("jlopencv_cv_StereoBM_getTextureThreshold",  [](cv::Ptr<StereoBM>& cobj) { auto retval = cobj->getTextureThreshold();  return retval;});
    mod.method("jlopencv_cv_StereoBM_setTextureThreshold",  [](cv::Ptr<StereoBM>& cobj, int& textureThreshold) { cobj->setTextureThreshold(textureThreshold);  ;});
    mod.method("jlopencv_cv_StereoBM_getUniquenessRatio",  [](cv::Ptr<StereoBM>& cobj) { auto retval = cobj->getUniquenessRatio();  return retval;});
    mod.method("jlopencv_cv_StereoBM_setUniquenessRatio",  [](cv::Ptr<StereoBM>& cobj, int& uniquenessRatio) { cobj->setUniquenessRatio(uniquenessRatio);  ;});
    mod.method("jlopencv_cv_StereoBM_getSmallerBlockSize",  [](cv::Ptr<StereoBM>& cobj) { auto retval = cobj->getSmallerBlockSize();  return retval;});
    mod.method("jlopencv_cv_StereoBM_setSmallerBlockSize",  [](cv::Ptr<StereoBM>& cobj, int& blockSize) { cobj->setSmallerBlockSize(blockSize);  ;});
    mod.method("jlopencv_cv_StereoBM_getROI1",  [](cv::Ptr<StereoBM>& cobj) { auto retval = cobj->getROI1();  return retval;});
    mod.method("jlopencv_cv_StereoBM_setROI1",  [](cv::Ptr<StereoBM>& cobj, Rect& roi1) { cobj->setROI1(roi1);  ;});
    mod.method("jlopencv_cv_StereoBM_getROI2",  [](cv::Ptr<StereoBM>& cobj) { auto retval = cobj->getROI2();  return retval;});
    mod.method("jlopencv_cv_StereoBM_setROI2",  [](cv::Ptr<StereoBM>& cobj, Rect& roi2) { cobj->setROI2(roi2);  ;});
    mod.method("jlopencv_cv_StereoBM_create",  [](cv::Ptr<StereoBM>& cobj, int& numDisparities, int& blockSize) { auto retval = cv::StereoBM::create(numDisparities, blockSize); return retval;});mod.add_type<cv::StereoSGBM>("StereoSGBM", jlcxx::julia_base_type<cv::StereoMatcher>())

;
    mod.method("jlopencv_cv_StereoSGBM_getPreFilterCap",  [](cv::Ptr<StereoSGBM>& cobj) { auto retval = cobj->getPreFilterCap();  return retval;});
    mod.method("jlopencv_cv_StereoSGBM_setPreFilterCap",  [](cv::Ptr<StereoSGBM>& cobj, int& preFilterCap) { cobj->setPreFilterCap(preFilterCap);  ;});
    mod.method("jlopencv_cv_StereoSGBM_getUniquenessRatio",  [](cv::Ptr<StereoSGBM>& cobj) { auto retval = cobj->getUniquenessRatio();  return retval;});
    mod.method("jlopencv_cv_StereoSGBM_setUniquenessRatio",  [](cv::Ptr<StereoSGBM>& cobj, int& uniquenessRatio) { cobj->setUniquenessRatio(uniquenessRatio);  ;});
    mod.method("jlopencv_cv_StereoSGBM_getP1",  [](cv::Ptr<StereoSGBM>& cobj) { auto retval = cobj->getP1();  return retval;});
    mod.method("jlopencv_cv_StereoSGBM_setP1",  [](cv::Ptr<StereoSGBM>& cobj, int& P1) { cobj->setP1(P1);  ;});
    mod.method("jlopencv_cv_StereoSGBM_getP2",  [](cv::Ptr<StereoSGBM>& cobj) { auto retval = cobj->getP2();  return retval;});
    mod.method("jlopencv_cv_StereoSGBM_setP2",  [](cv::Ptr<StereoSGBM>& cobj, int& P2) { cobj->setP2(P2);  ;});
    mod.method("jlopencv_cv_StereoSGBM_getMode",  [](cv::Ptr<StereoSGBM>& cobj) { auto retval = cobj->getMode();  return retval;});
    mod.method("jlopencv_cv_StereoSGBM_setMode",  [](cv::Ptr<StereoSGBM>& cobj, int& mode) { cobj->setMode(mode);  ;});
    mod.method("jlopencv_cv_StereoSGBM_create",  [](cv::Ptr<StereoSGBM>& cobj, int& minDisparity, int& numDisparities, int& blockSize, int& P1, int& P2, int& disp12MaxDiff, int& preFilterCap, int& uniquenessRatio, int& speckleWindowSize, int& speckleRange, int& mode) { auto retval = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize, speckleRange, mode); return retval;});mod.add_type<cv::Feature2D>("Feature2D", jlcxx::julia_base_type<cv::Algorithm>())

;
    mod.method("jlopencv_cv_Feature2D_detect",  [](cv::Ptr<Feature2D>& cobj, Mat& image, Mat& mask) {vector<KeyPoint> keypoints; cobj->detect(image, keypoints, mask);  return keypoints;});
    mod.method("jlopencv_cv_Feature2D_detect",  [](cv::Ptr<Feature2D>& cobj, UMat& image, UMat& mask) {vector<KeyPoint> keypoints; cobj->detect(image, keypoints, mask);  return keypoints;});
    mod.method("jlopencv_cv_Feature2D_detect",  [](cv::Ptr<Feature2D>& cobj, vector<Mat>& images, vector<Mat>& masks) {vector<vector<KeyPoint>> keypoints; cobj->detect(images, keypoints, masks);  return keypoints;});
    mod.method("jlopencv_cv_Feature2D_detect",  [](cv::Ptr<Feature2D>& cobj, vector<UMat>& images, vector<UMat>& masks) {vector<vector<KeyPoint>> keypoints; cobj->detect(images, keypoints, masks);  return keypoints;});
    mod.method("jlopencv_cv_Feature2D_compute",  [](cv::Ptr<Feature2D>& cobj, Mat& image, vector<KeyPoint>& keypoints, Mat& descriptors) { cobj->compute(image, keypoints, descriptors);  return make_tuple<vector<KeyPoint>,Mat>(move(keypoints),move(descriptors));});
    mod.method("jlopencv_cv_Feature2D_compute",  [](cv::Ptr<Feature2D>& cobj, UMat& image, vector<KeyPoint>& keypoints, UMat& descriptors) { cobj->compute(image, keypoints, descriptors);  return make_tuple<vector<KeyPoint>,UMat>(move(keypoints),move(descriptors));});
    mod.method("jlopencv_cv_Feature2D_compute",  [](cv::Ptr<Feature2D>& cobj, vector<Mat>& images, vector<vector<KeyPoint>>& keypoints) {vector<Mat> descriptors; cobj->compute(images, keypoints, descriptors);  return make_tuple<vector<vector<KeyPoint>>,vector<Mat>>(move(keypoints),move(descriptors));});
    mod.method("jlopencv_cv_Feature2D_compute",  [](cv::Ptr<Feature2D>& cobj, vector<UMat>& images, vector<vector<KeyPoint>>& keypoints) {vector<UMat> descriptors; cobj->compute(images, keypoints, descriptors);  return make_tuple<vector<vector<KeyPoint>>,vector<UMat>>(move(keypoints),move(descriptors));});
    mod.method("jlopencv_cv_Feature2D_detectAndCompute",  [](cv::Ptr<Feature2D>& cobj, Mat& image, Mat& mask, Mat& descriptors, bool& useProvidedKeypoints) {vector<KeyPoint> keypoints; cobj->detectAndCompute(image, mask, keypoints, descriptors, useProvidedKeypoints);  return make_tuple<vector<KeyPoint>,Mat>(move(keypoints),move(descriptors));});
    mod.method("jlopencv_cv_Feature2D_detectAndCompute",  [](cv::Ptr<Feature2D>& cobj, UMat& image, UMat& mask, UMat& descriptors, bool& useProvidedKeypoints) {vector<KeyPoint> keypoints; cobj->detectAndCompute(image, mask, keypoints, descriptors, useProvidedKeypoints);  return make_tuple<vector<KeyPoint>,UMat>(move(keypoints),move(descriptors));});
    mod.method("jlopencv_cv_Feature2D_descriptorSize",  [](cv::Ptr<Feature2D>& cobj) { auto retval = cobj->descriptorSize();  return retval;});
    mod.method("jlopencv_cv_Feature2D_descriptorType",  [](cv::Ptr<Feature2D>& cobj) { auto retval = cobj->descriptorType();  return retval;});
    mod.method("jlopencv_cv_Feature2D_defaultNorm",  [](cv::Ptr<Feature2D>& cobj) { auto retval = cobj->defaultNorm();  return retval;});
    mod.method("jlopencv_cv_Feature2D_write",  [](cv::Ptr<Feature2D>& cobj, String& fileName) { cobj->write(fileName);  ;});
    mod.method("jlopencv_cv_Feature2D_write",  [](cv::Ptr<Feature2D>& cobj, Ptr<FileStorage>& fs, String& name) { cobj->write(fs, name);  ;});
    mod.method("jlopencv_cv_Feature2D_read",  [](cv::Ptr<Feature2D>& cobj, String& fileName) { cobj->read(fileName);  ;});
    mod.method("jlopencv_cv_Feature2D_read",  [](cv::Ptr<Feature2D>& cobj, FileNode& arg1) { cobj->read(arg1);  ;});
    mod.method("jlopencv_cv_Feature2D_empty",  [](cv::Ptr<Feature2D>& cobj) { auto retval = cobj->empty();  return retval;});
    mod.method("jlopencv_cv_Feature2D_getDefaultName",  [](cv::Ptr<Feature2D>& cobj) { auto retval = cobj->getDefaultName();  return retval;});mod.add_type<cv::BRISK>("BRISK", jlcxx::julia_base_type<cv::Feature2D>())

;
    mod.method("jlopencv_cv_BRISK_create",  [](cv::Ptr<BRISK>& cobj, int& thresh, int& octaves, float& patternScale) { auto retval = cv::BRISK::create(thresh, octaves, patternScale); return retval;});
    mod.method("jlopencv_cv_BRISK_create",  [](cv::Ptr<BRISK>& cobj, vector<float>& radiusList, vector<int>& numberList, float& dMax, float& dMin, vector<int>& indexChange) { auto retval = cv::BRISK::create(radiusList, numberList, dMax, dMin, indexChange); return retval;});
    mod.method("jlopencv_cv_BRISK_create",  [](cv::Ptr<BRISK>& cobj, int& thresh, int& octaves, vector<float>& radiusList, vector<int>& numberList, float& dMax, float& dMin, vector<int>& indexChange) { auto retval = cv::BRISK::create(thresh, octaves, radiusList, numberList, dMax, dMin, indexChange); return retval;});
    mod.method("jlopencv_cv_BRISK_getDefaultName",  [](cv::Ptr<BRISK>& cobj) { auto retval = cobj->getDefaultName();  return retval;});
    mod.method("jlopencv_cv_BRISK_setThreshold",  [](cv::Ptr<BRISK>& cobj, int& threshold) { cobj->setThreshold(threshold);  ;});
    mod.method("jlopencv_cv_BRISK_getThreshold",  [](cv::Ptr<BRISK>& cobj) { auto retval = cobj->getThreshold();  return retval;});
    mod.method("jlopencv_cv_BRISK_setOctaves",  [](cv::Ptr<BRISK>& cobj, int& octaves) { cobj->setOctaves(octaves);  ;});
    mod.method("jlopencv_cv_BRISK_getOctaves",  [](cv::Ptr<BRISK>& cobj) { auto retval = cobj->getOctaves();  return retval;});mod.add_type<cv::ORB>("ORB", jlcxx::julia_base_type<cv::Feature2D>())

;
    mod.method("jlopencv_cv_ORB_create",  [](cv::Ptr<ORB>& cobj, int& nfeatures, float& scaleFactor, int& nlevels, int& edgeThreshold, int& firstLevel, int& WTA_K, ORB_ScoreType& scoreType, int& patchSize, int& fastThreshold) { auto retval = cv::ORB::create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, scoreType, patchSize, fastThreshold); return retval;});
    mod.method("jlopencv_cv_ORB_setMaxFeatures",  [](cv::Ptr<ORB>& cobj, int& maxFeatures) { cobj->setMaxFeatures(maxFeatures);  ;});
    mod.method("jlopencv_cv_ORB_getMaxFeatures",  [](cv::Ptr<ORB>& cobj) { auto retval = cobj->getMaxFeatures();  return retval;});
    mod.method("jlopencv_cv_ORB_setScaleFactor",  [](cv::Ptr<ORB>& cobj, double& scaleFactor) { cobj->setScaleFactor(scaleFactor);  ;});
    mod.method("jlopencv_cv_ORB_getScaleFactor",  [](cv::Ptr<ORB>& cobj) { auto retval = cobj->getScaleFactor();  return retval;});
    mod.method("jlopencv_cv_ORB_setNLevels",  [](cv::Ptr<ORB>& cobj, int& nlevels) { cobj->setNLevels(nlevels);  ;});
    mod.method("jlopencv_cv_ORB_getNLevels",  [](cv::Ptr<ORB>& cobj) { auto retval = cobj->getNLevels();  return retval;});
    mod.method("jlopencv_cv_ORB_setEdgeThreshold",  [](cv::Ptr<ORB>& cobj, int& edgeThreshold) { cobj->setEdgeThreshold(edgeThreshold);  ;});
    mod.method("jlopencv_cv_ORB_getEdgeThreshold",  [](cv::Ptr<ORB>& cobj) { auto retval = cobj->getEdgeThreshold();  return retval;});
    mod.method("jlopencv_cv_ORB_setFirstLevel",  [](cv::Ptr<ORB>& cobj, int& firstLevel) { cobj->setFirstLevel(firstLevel);  ;});
    mod.method("jlopencv_cv_ORB_getFirstLevel",  [](cv::Ptr<ORB>& cobj) { auto retval = cobj->getFirstLevel();  return retval;});
    mod.method("jlopencv_cv_ORB_setWTA_K",  [](cv::Ptr<ORB>& cobj, int& wta_k) { cobj->setWTA_K(wta_k);  ;});
    mod.method("jlopencv_cv_ORB_getWTA_K",  [](cv::Ptr<ORB>& cobj) { auto retval = cobj->getWTA_K();  return retval;});
    mod.method("jlopencv_cv_ORB_setScoreType",  [](cv::Ptr<ORB>& cobj, ORB_ScoreType& scoreType) { cobj->setScoreType(scoreType);  ;});
    mod.method("jlopencv_cv_ORB_getScoreType",  [](cv::Ptr<ORB>& cobj) { auto retval = cobj->getScoreType();  return retval;});
    mod.method("jlopencv_cv_ORB_setPatchSize",  [](cv::Ptr<ORB>& cobj, int& patchSize) { cobj->setPatchSize(patchSize);  ;});
    mod.method("jlopencv_cv_ORB_getPatchSize",  [](cv::Ptr<ORB>& cobj) { auto retval = cobj->getPatchSize();  return retval;});
    mod.method("jlopencv_cv_ORB_setFastThreshold",  [](cv::Ptr<ORB>& cobj, int& fastThreshold) { cobj->setFastThreshold(fastThreshold);  ;});
    mod.method("jlopencv_cv_ORB_getFastThreshold",  [](cv::Ptr<ORB>& cobj) { auto retval = cobj->getFastThreshold();  return retval;});
    mod.method("jlopencv_cv_ORB_getDefaultName",  [](cv::Ptr<ORB>& cobj) { auto retval = cobj->getDefaultName();  return retval;});mod.add_type<cv::MSER>("MSER", jlcxx::julia_base_type<cv::Feature2D>())

;
    mod.method("jlopencv_cv_MSER_create",  [](cv::Ptr<MSER>& cobj, int& _delta, int& _min_area, int& _max_area, double& _max_variation, double& _min_diversity, int& _max_evolution, double& _area_threshold, double& _min_margin, int& _edge_blur_size) { auto retval = cv::MSER::create(_delta, _min_area, _max_area, _max_variation, _min_diversity, _max_evolution, _area_threshold, _min_margin, _edge_blur_size); return retval;});
    mod.method("jlopencv_cv_MSER_detectRegions",  [](cv::Ptr<MSER>& cobj, Mat& image) {vector<vector<Point>> msers;vector<Rect> bboxes; cobj->detectRegions(image, msers, bboxes);  return make_tuple<vector<vector<Point>>,vector<Rect>>(move(msers),move(bboxes));});
    mod.method("jlopencv_cv_MSER_detectRegions",  [](cv::Ptr<MSER>& cobj, UMat& image) {vector<vector<Point>> msers;vector<Rect> bboxes; cobj->detectRegions(image, msers, bboxes);  return make_tuple<vector<vector<Point>>,vector<Rect>>(move(msers),move(bboxes));});
    mod.method("jlopencv_cv_MSER_setDelta",  [](cv::Ptr<MSER>& cobj, int& delta) { cobj->setDelta(delta);  ;});
    mod.method("jlopencv_cv_MSER_getDelta",  [](cv::Ptr<MSER>& cobj) { auto retval = cobj->getDelta();  return retval;});
    mod.method("jlopencv_cv_MSER_setMinArea",  [](cv::Ptr<MSER>& cobj, int& minArea) { cobj->setMinArea(minArea);  ;});
    mod.method("jlopencv_cv_MSER_getMinArea",  [](cv::Ptr<MSER>& cobj) { auto retval = cobj->getMinArea();  return retval;});
    mod.method("jlopencv_cv_MSER_setMaxArea",  [](cv::Ptr<MSER>& cobj, int& maxArea) { cobj->setMaxArea(maxArea);  ;});
    mod.method("jlopencv_cv_MSER_getMaxArea",  [](cv::Ptr<MSER>& cobj) { auto retval = cobj->getMaxArea();  return retval;});
    mod.method("jlopencv_cv_MSER_setPass2Only",  [](cv::Ptr<MSER>& cobj, bool& f) { cobj->setPass2Only(f);  ;});
    mod.method("jlopencv_cv_MSER_getPass2Only",  [](cv::Ptr<MSER>& cobj) { auto retval = cobj->getPass2Only();  return retval;});
    mod.method("jlopencv_cv_MSER_getDefaultName",  [](cv::Ptr<MSER>& cobj) { auto retval = cobj->getDefaultName();  return retval;});mod.add_type<cv::FastFeatureDetector>("FastFeatureDetector", jlcxx::julia_base_type<cv::Feature2D>())

;
    mod.method("jlopencv_cv_FastFeatureDetector_create",  [](cv::Ptr<FastFeatureDetector>& cobj, int& threshold, bool& nonmaxSuppression, FastFeatureDetector_DetectorType& type) { auto retval = cv::FastFeatureDetector::create(threshold, nonmaxSuppression, type); return retval;});
    mod.method("jlopencv_cv_FastFeatureDetector_setThreshold",  [](cv::Ptr<FastFeatureDetector>& cobj, int& threshold) { cobj->setThreshold(threshold);  ;});
    mod.method("jlopencv_cv_FastFeatureDetector_getThreshold",  [](cv::Ptr<FastFeatureDetector>& cobj) { auto retval = cobj->getThreshold();  return retval;});
    mod.method("jlopencv_cv_FastFeatureDetector_setNonmaxSuppression",  [](cv::Ptr<FastFeatureDetector>& cobj, bool& f) { cobj->setNonmaxSuppression(f);  ;});
    mod.method("jlopencv_cv_FastFeatureDetector_getNonmaxSuppression",  [](cv::Ptr<FastFeatureDetector>& cobj) { auto retval = cobj->getNonmaxSuppression();  return retval;});
    mod.method("jlopencv_cv_FastFeatureDetector_setType",  [](cv::Ptr<FastFeatureDetector>& cobj, FastFeatureDetector_DetectorType& type) { cobj->setType(type);  ;});
    mod.method("jlopencv_cv_FastFeatureDetector_getType",  [](cv::Ptr<FastFeatureDetector>& cobj) { auto retval = cobj->getType();  return retval;});
    mod.method("jlopencv_cv_FastFeatureDetector_getDefaultName",  [](cv::Ptr<FastFeatureDetector>& cobj) { auto retval = cobj->getDefaultName();  return retval;});mod.add_type<cv::AgastFeatureDetector>("AgastFeatureDetector", jlcxx::julia_base_type<cv::Feature2D>())

;
    mod.method("jlopencv_cv_AgastFeatureDetector_create",  [](cv::Ptr<AgastFeatureDetector>& cobj, int& threshold, bool& nonmaxSuppression, AgastFeatureDetector_DetectorType& type) { auto retval = cv::AgastFeatureDetector::create(threshold, nonmaxSuppression, type); return retval;});
    mod.method("jlopencv_cv_AgastFeatureDetector_setThreshold",  [](cv::Ptr<AgastFeatureDetector>& cobj, int& threshold) { cobj->setThreshold(threshold);  ;});
    mod.method("jlopencv_cv_AgastFeatureDetector_getThreshold",  [](cv::Ptr<AgastFeatureDetector>& cobj) { auto retval = cobj->getThreshold();  return retval;});
    mod.method("jlopencv_cv_AgastFeatureDetector_setNonmaxSuppression",  [](cv::Ptr<AgastFeatureDetector>& cobj, bool& f) { cobj->setNonmaxSuppression(f);  ;});
    mod.method("jlopencv_cv_AgastFeatureDetector_getNonmaxSuppression",  [](cv::Ptr<AgastFeatureDetector>& cobj) { auto retval = cobj->getNonmaxSuppression();  return retval;});
    mod.method("jlopencv_cv_AgastFeatureDetector_setType",  [](cv::Ptr<AgastFeatureDetector>& cobj, AgastFeatureDetector_DetectorType& type) { cobj->setType(type);  ;});
    mod.method("jlopencv_cv_AgastFeatureDetector_getType",  [](cv::Ptr<AgastFeatureDetector>& cobj) { auto retval = cobj->getType();  return retval;});
    mod.method("jlopencv_cv_AgastFeatureDetector_getDefaultName",  [](cv::Ptr<AgastFeatureDetector>& cobj) { auto retval = cobj->getDefaultName();  return retval;});mod.add_type<cv::GFTTDetector>("GFTTDetector", jlcxx::julia_base_type<cv::Feature2D>())

;
    mod.method("jlopencv_cv_GFTTDetector_create",  [](cv::Ptr<GFTTDetector>& cobj, int& maxCorners, double& qualityLevel, double& minDistance, int& blockSize, bool& useHarrisDetector, double& k) { auto retval = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize, useHarrisDetector, k); return retval;});
    mod.method("jlopencv_cv_GFTTDetector_create",  [](cv::Ptr<GFTTDetector>& cobj, int& maxCorners, double& qualityLevel, double& minDistance, int& blockSize, int& gradiantSize, bool& useHarrisDetector, double& k) { auto retval = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize, gradiantSize, useHarrisDetector, k); return retval;});
    mod.method("jlopencv_cv_GFTTDetector_setMaxFeatures",  [](cv::Ptr<GFTTDetector>& cobj, int& maxFeatures) { cobj->setMaxFeatures(maxFeatures);  ;});
    mod.method("jlopencv_cv_GFTTDetector_getMaxFeatures",  [](cv::Ptr<GFTTDetector>& cobj) { auto retval = cobj->getMaxFeatures();  return retval;});
    mod.method("jlopencv_cv_GFTTDetector_setQualityLevel",  [](cv::Ptr<GFTTDetector>& cobj, double& qlevel) { cobj->setQualityLevel(qlevel);  ;});
    mod.method("jlopencv_cv_GFTTDetector_getQualityLevel",  [](cv::Ptr<GFTTDetector>& cobj) { auto retval = cobj->getQualityLevel();  return retval;});
    mod.method("jlopencv_cv_GFTTDetector_setMinDistance",  [](cv::Ptr<GFTTDetector>& cobj, double& minDistance) { cobj->setMinDistance(minDistance);  ;});
    mod.method("jlopencv_cv_GFTTDetector_getMinDistance",  [](cv::Ptr<GFTTDetector>& cobj) { auto retval = cobj->getMinDistance();  return retval;});
    mod.method("jlopencv_cv_GFTTDetector_setBlockSize",  [](cv::Ptr<GFTTDetector>& cobj, int& blockSize) { cobj->setBlockSize(blockSize);  ;});
    mod.method("jlopencv_cv_GFTTDetector_getBlockSize",  [](cv::Ptr<GFTTDetector>& cobj) { auto retval = cobj->getBlockSize();  return retval;});
    mod.method("jlopencv_cv_GFTTDetector_setHarrisDetector",  [](cv::Ptr<GFTTDetector>& cobj, bool& val) { cobj->setHarrisDetector(val);  ;});
    mod.method("jlopencv_cv_GFTTDetector_getHarrisDetector",  [](cv::Ptr<GFTTDetector>& cobj) { auto retval = cobj->getHarrisDetector();  return retval;});
    mod.method("jlopencv_cv_GFTTDetector_setK",  [](cv::Ptr<GFTTDetector>& cobj, double& k) { cobj->setK(k);  ;});
    mod.method("jlopencv_cv_GFTTDetector_getK",  [](cv::Ptr<GFTTDetector>& cobj) { auto retval = cobj->getK();  return retval;});
    mod.method("jlopencv_cv_GFTTDetector_getDefaultName",  [](cv::Ptr<GFTTDetector>& cobj) { auto retval = cobj->getDefaultName();  return retval;});mod.add_type<cv::SimpleBlobDetector>("SimpleBlobDetector", jlcxx::julia_base_type<cv::Feature2D>())

;
    mod.method("jlopencv_cv_SimpleBlobDetector_create",  [](cv::Ptr<SimpleBlobDetector>& cobj, SimpleBlobDetector_Params& parameters) { auto retval = cv::SimpleBlobDetector::create(parameters); return retval;});
    mod.method("jlopencv_cv_SimpleBlobDetector_getDefaultName",  [](cv::Ptr<SimpleBlobDetector>& cobj) { auto retval = cobj->getDefaultName();  return retval;});mod.add_type<cv::SimpleBlobDetector::Params>("SimpleBlobDetector_Params")

.method("jlopencv_SimpleBlobDetector_Params_set_thresholdStep", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.thresholdStep=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_minThreshold", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.minThreshold=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_maxThreshold", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.maxThreshold=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_minRepeatability", [](cv::SimpleBlobDetector::Params &cobj,const size_t &v) {cobj.minRepeatability=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_minDistBetweenBlobs", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.minDistBetweenBlobs=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_filterByColor", [](cv::SimpleBlobDetector::Params &cobj,const bool &v) {cobj.filterByColor=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_blobColor", [](cv::SimpleBlobDetector::Params &cobj,const uchar &v) {cobj.blobColor=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_filterByArea", [](cv::SimpleBlobDetector::Params &cobj,const bool &v) {cobj.filterByArea=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_minArea", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.minArea=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_maxArea", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.maxArea=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_filterByCircularity", [](cv::SimpleBlobDetector::Params &cobj,const bool &v) {cobj.filterByCircularity=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_minCircularity", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.minCircularity=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_maxCircularity", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.maxCircularity=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_filterByInertia", [](cv::SimpleBlobDetector::Params &cobj,const bool &v) {cobj.filterByInertia=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_minInertiaRatio", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.minInertiaRatio=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_maxInertiaRatio", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.maxInertiaRatio=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_filterByConvexity", [](cv::SimpleBlobDetector::Params &cobj,const bool &v) {cobj.filterByConvexity=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_minConvexity", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.minConvexity=v;})
.method("jlopencv_SimpleBlobDetector_Params_set_maxConvexity", [](cv::SimpleBlobDetector::Params &cobj,const float &v) {cobj.maxConvexity=v;})

.method("jlopencv_SimpleBlobDetector_Params_get_thresholdStep", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.thresholdStep;})
.method("jlopencv_SimpleBlobDetector_Params_get_minThreshold", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.minThreshold;})
.method("jlopencv_SimpleBlobDetector_Params_get_maxThreshold", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.maxThreshold;})
.method("jlopencv_SimpleBlobDetector_Params_get_minRepeatability", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.minRepeatability;})
.method("jlopencv_SimpleBlobDetector_Params_get_minDistBetweenBlobs", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.minDistBetweenBlobs;})
.method("jlopencv_SimpleBlobDetector_Params_get_filterByColor", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.filterByColor;})
.method("jlopencv_SimpleBlobDetector_Params_get_blobColor", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.blobColor;})
.method("jlopencv_SimpleBlobDetector_Params_get_filterByArea", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.filterByArea;})
.method("jlopencv_SimpleBlobDetector_Params_get_minArea", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.minArea;})
.method("jlopencv_SimpleBlobDetector_Params_get_maxArea", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.maxArea;})
.method("jlopencv_SimpleBlobDetector_Params_get_filterByCircularity", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.filterByCircularity;})
.method("jlopencv_SimpleBlobDetector_Params_get_minCircularity", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.minCircularity;})
.method("jlopencv_SimpleBlobDetector_Params_get_maxCircularity", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.maxCircularity;})
.method("jlopencv_SimpleBlobDetector_Params_get_filterByInertia", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.filterByInertia;})
.method("jlopencv_SimpleBlobDetector_Params_get_minInertiaRatio", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.minInertiaRatio;})
.method("jlopencv_SimpleBlobDetector_Params_get_maxInertiaRatio", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.maxInertiaRatio;})
.method("jlopencv_SimpleBlobDetector_Params_get_filterByConvexity", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.filterByConvexity;})
.method("jlopencv_SimpleBlobDetector_Params_get_minConvexity", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.minConvexity;})
.method("jlopencv_SimpleBlobDetector_Params_get_maxConvexity", [](const cv::SimpleBlobDetector::Params &cobj) {return cobj.maxConvexity;});mod.add_type<SimpleBlobDetector::Params>("SimpleBlobDetector_Params")
.constructor<>()

;mod.add_type<cv::KAZE>("KAZE", jlcxx::julia_base_type<cv::Feature2D>())

;
    mod.method("jlopencv_cv_KAZE_create",  [](cv::Ptr<KAZE>& cobj, bool& extended, bool& upright, float& threshold, int& nOctaves, int& nOctaveLayers, KAZE_DiffusivityType& diffusivity) { auto retval = cv::KAZE::create(extended, upright, threshold, nOctaves, nOctaveLayers, diffusivity); return retval;});
    mod.method("jlopencv_cv_KAZE_setExtended",  [](cv::Ptr<KAZE>& cobj, bool& extended) { cobj->setExtended(extended);  ;});
    mod.method("jlopencv_cv_KAZE_getExtended",  [](cv::Ptr<KAZE>& cobj) { auto retval = cobj->getExtended();  return retval;});
    mod.method("jlopencv_cv_KAZE_setUpright",  [](cv::Ptr<KAZE>& cobj, bool& upright) { cobj->setUpright(upright);  ;});
    mod.method("jlopencv_cv_KAZE_getUpright",  [](cv::Ptr<KAZE>& cobj) { auto retval = cobj->getUpright();  return retval;});
    mod.method("jlopencv_cv_KAZE_setThreshold",  [](cv::Ptr<KAZE>& cobj, double& threshold) { cobj->setThreshold(threshold);  ;});
    mod.method("jlopencv_cv_KAZE_getThreshold",  [](cv::Ptr<KAZE>& cobj) { auto retval = cobj->getThreshold();  return retval;});
    mod.method("jlopencv_cv_KAZE_setNOctaves",  [](cv::Ptr<KAZE>& cobj, int& octaves) { cobj->setNOctaves(octaves);  ;});
    mod.method("jlopencv_cv_KAZE_getNOctaves",  [](cv::Ptr<KAZE>& cobj) { auto retval = cobj->getNOctaves();  return retval;});
    mod.method("jlopencv_cv_KAZE_setNOctaveLayers",  [](cv::Ptr<KAZE>& cobj, int& octaveLayers) { cobj->setNOctaveLayers(octaveLayers);  ;});
    mod.method("jlopencv_cv_KAZE_getNOctaveLayers",  [](cv::Ptr<KAZE>& cobj) { auto retval = cobj->getNOctaveLayers();  return retval;});
    mod.method("jlopencv_cv_KAZE_setDiffusivity",  [](cv::Ptr<KAZE>& cobj, KAZE_DiffusivityType& diff) { cobj->setDiffusivity(diff);  ;});
    mod.method("jlopencv_cv_KAZE_getDiffusivity",  [](cv::Ptr<KAZE>& cobj) { auto retval = cobj->getDiffusivity();  return retval;});
    mod.method("jlopencv_cv_KAZE_getDefaultName",  [](cv::Ptr<KAZE>& cobj) { auto retval = cobj->getDefaultName();  return retval;});mod.add_type<cv::AKAZE>("AKAZE", jlcxx::julia_base_type<cv::Feature2D>())

;
    mod.method("jlopencv_cv_AKAZE_create",  [](cv::Ptr<AKAZE>& cobj, AKAZE_DescriptorType& descriptor_type, int& descriptor_size, int& descriptor_channels, float& threshold, int& nOctaves, int& nOctaveLayers, KAZE_DiffusivityType& diffusivity) { auto retval = cv::AKAZE::create(descriptor_type, descriptor_size, descriptor_channels, threshold, nOctaves, nOctaveLayers, diffusivity); return retval;});
    mod.method("jlopencv_cv_AKAZE_setDescriptorType",  [](cv::Ptr<AKAZE>& cobj, AKAZE_DescriptorType& dtype) { cobj->setDescriptorType(dtype);  ;});
    mod.method("jlopencv_cv_AKAZE_getDescriptorType",  [](cv::Ptr<AKAZE>& cobj) { auto retval = cobj->getDescriptorType();  return retval;});
    mod.method("jlopencv_cv_AKAZE_setDescriptorSize",  [](cv::Ptr<AKAZE>& cobj, int& dsize) { cobj->setDescriptorSize(dsize);  ;});
    mod.method("jlopencv_cv_AKAZE_getDescriptorSize",  [](cv::Ptr<AKAZE>& cobj) { auto retval = cobj->getDescriptorSize();  return retval;});
    mod.method("jlopencv_cv_AKAZE_setDescriptorChannels",  [](cv::Ptr<AKAZE>& cobj, int& dch) { cobj->setDescriptorChannels(dch);  ;});
    mod.method("jlopencv_cv_AKAZE_getDescriptorChannels",  [](cv::Ptr<AKAZE>& cobj) { auto retval = cobj->getDescriptorChannels();  return retval;});
    mod.method("jlopencv_cv_AKAZE_setThreshold",  [](cv::Ptr<AKAZE>& cobj, double& threshold) { cobj->setThreshold(threshold);  ;});
    mod.method("jlopencv_cv_AKAZE_getThreshold",  [](cv::Ptr<AKAZE>& cobj) { auto retval = cobj->getThreshold();  return retval;});
    mod.method("jlopencv_cv_AKAZE_setNOctaves",  [](cv::Ptr<AKAZE>& cobj, int& octaves) { cobj->setNOctaves(octaves);  ;});
    mod.method("jlopencv_cv_AKAZE_getNOctaves",  [](cv::Ptr<AKAZE>& cobj) { auto retval = cobj->getNOctaves();  return retval;});
    mod.method("jlopencv_cv_AKAZE_setNOctaveLayers",  [](cv::Ptr<AKAZE>& cobj, int& octaveLayers) { cobj->setNOctaveLayers(octaveLayers);  ;});
    mod.method("jlopencv_cv_AKAZE_getNOctaveLayers",  [](cv::Ptr<AKAZE>& cobj) { auto retval = cobj->getNOctaveLayers();  return retval;});
    mod.method("jlopencv_cv_AKAZE_setDiffusivity",  [](cv::Ptr<AKAZE>& cobj, KAZE_DiffusivityType& diff) { cobj->setDiffusivity(diff);  ;});
    mod.method("jlopencv_cv_AKAZE_getDiffusivity",  [](cv::Ptr<AKAZE>& cobj) { auto retval = cobj->getDiffusivity();  return retval;});
    mod.method("jlopencv_cv_AKAZE_getDefaultName",  [](cv::Ptr<AKAZE>& cobj) { auto retval = cobj->getDefaultName();  return retval;});mod.add_type<cv::DescriptorMatcher>("DescriptorMatcher", jlcxx::julia_base_type<cv::Algorithm>())

;
    mod.method("jlopencv_cv_DescriptorMatcher_add",  [](cv::Ptr<DescriptorMatcher>& cobj, vector<Mat>& descriptors) { cobj->add(descriptors);  ;});
    mod.method("jlopencv_cv_DescriptorMatcher_add",  [](cv::Ptr<DescriptorMatcher>& cobj, vector<UMat>& descriptors) { cobj->add(descriptors);  ;});
    mod.method("jlopencv_cv_DescriptorMatcher_getTrainDescriptors",  [](cv::Ptr<DescriptorMatcher>& cobj) { auto retval = cobj->getTrainDescriptors();  return retval;});
    mod.method("jlopencv_cv_DescriptorMatcher_clear",  [](cv::Ptr<DescriptorMatcher>& cobj) { cobj->clear();  ;});
    mod.method("jlopencv_cv_DescriptorMatcher_empty",  [](cv::Ptr<DescriptorMatcher>& cobj) { auto retval = cobj->empty();  return retval;});
    mod.method("jlopencv_cv_DescriptorMatcher_isMaskSupported",  [](cv::Ptr<DescriptorMatcher>& cobj) { auto retval = cobj->isMaskSupported();  return retval;});
    mod.method("jlopencv_cv_DescriptorMatcher_train",  [](cv::Ptr<DescriptorMatcher>& cobj) { cobj->train();  ;});
    mod.method("jlopencv_cv_DescriptorMatcher_match",  [](cv::Ptr<DescriptorMatcher>& cobj, Mat& queryDescriptors, Mat& trainDescriptors, Mat& mask) {vector<DMatch> matches; cobj->match(queryDescriptors, trainDescriptors, matches, mask);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_match",  [](cv::Ptr<DescriptorMatcher>& cobj, UMat& queryDescriptors, UMat& trainDescriptors, UMat& mask) {vector<DMatch> matches; cobj->match(queryDescriptors, trainDescriptors, matches, mask);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_match",  [](cv::Ptr<DescriptorMatcher>& cobj, Mat& queryDescriptors, vector<Mat>& masks) {vector<DMatch> matches; cobj->match(queryDescriptors, matches, masks);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_match",  [](cv::Ptr<DescriptorMatcher>& cobj, UMat& queryDescriptors, vector<UMat>& masks) {vector<DMatch> matches; cobj->match(queryDescriptors, matches, masks);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_knnMatch",  [](cv::Ptr<DescriptorMatcher>& cobj, Mat& queryDescriptors, Mat& trainDescriptors, int& k, Mat& mask, bool& compactResult) {vector<vector<DMatch>> matches; cobj->knnMatch(queryDescriptors, trainDescriptors, matches, k, mask, compactResult);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_knnMatch",  [](cv::Ptr<DescriptorMatcher>& cobj, UMat& queryDescriptors, UMat& trainDescriptors, int& k, UMat& mask, bool& compactResult) {vector<vector<DMatch>> matches; cobj->knnMatch(queryDescriptors, trainDescriptors, matches, k, mask, compactResult);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_knnMatch",  [](cv::Ptr<DescriptorMatcher>& cobj, Mat& queryDescriptors, int& k, vector<Mat>& masks, bool& compactResult) {vector<vector<DMatch>> matches; cobj->knnMatch(queryDescriptors, matches, k, masks, compactResult);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_knnMatch",  [](cv::Ptr<DescriptorMatcher>& cobj, UMat& queryDescriptors, int& k, vector<UMat>& masks, bool& compactResult) {vector<vector<DMatch>> matches; cobj->knnMatch(queryDescriptors, matches, k, masks, compactResult);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_radiusMatch",  [](cv::Ptr<DescriptorMatcher>& cobj, Mat& queryDescriptors, Mat& trainDescriptors, float& maxDistance, Mat& mask, bool& compactResult) {vector<vector<DMatch>> matches; cobj->radiusMatch(queryDescriptors, trainDescriptors, matches, maxDistance, mask, compactResult);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_radiusMatch",  [](cv::Ptr<DescriptorMatcher>& cobj, UMat& queryDescriptors, UMat& trainDescriptors, float& maxDistance, UMat& mask, bool& compactResult) {vector<vector<DMatch>> matches; cobj->radiusMatch(queryDescriptors, trainDescriptors, matches, maxDistance, mask, compactResult);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_radiusMatch",  [](cv::Ptr<DescriptorMatcher>& cobj, Mat& queryDescriptors, float& maxDistance, vector<Mat>& masks, bool& compactResult) {vector<vector<DMatch>> matches; cobj->radiusMatch(queryDescriptors, matches, maxDistance, masks, compactResult);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_radiusMatch",  [](cv::Ptr<DescriptorMatcher>& cobj, UMat& queryDescriptors, float& maxDistance, vector<UMat>& masks, bool& compactResult) {vector<vector<DMatch>> matches; cobj->radiusMatch(queryDescriptors, matches, maxDistance, masks, compactResult);  return matches;});
    mod.method("jlopencv_cv_DescriptorMatcher_write",  [](cv::Ptr<DescriptorMatcher>& cobj, String& fileName) { cobj->write(fileName);  ;});
    mod.method("jlopencv_cv_DescriptorMatcher_write",  [](cv::Ptr<DescriptorMatcher>& cobj, Ptr<FileStorage>& fs, String& name) { cobj->write(fs, name);  ;});
    mod.method("jlopencv_cv_DescriptorMatcher_read",  [](cv::Ptr<DescriptorMatcher>& cobj, String& fileName) { cobj->read(fileName);  ;});
    mod.method("jlopencv_cv_DescriptorMatcher_read",  [](cv::Ptr<DescriptorMatcher>& cobj, FileNode& arg1) { cobj->read(arg1);  ;});
    mod.method("jlopencv_cv_DescriptorMatcher_clone",  [](cv::Ptr<DescriptorMatcher>& cobj, bool& emptyTrainData) { auto retval = cobj->clone(emptyTrainData);  return retval;});
    mod.method("jlopencv_cv_DescriptorMatcher_create",  [](cv::Ptr<DescriptorMatcher>& cobj, String& descriptorMatcherType) { auto retval = cv::DescriptorMatcher::create(descriptorMatcherType); return retval;});
    mod.method("jlopencv_cv_DescriptorMatcher_create",  [](cv::Ptr<DescriptorMatcher>& cobj, DescriptorMatcher_MatcherType& matcherType) { auto retval = cv::DescriptorMatcher::create(matcherType); return retval;});mod.add_type<cv::BFMatcher>("BFMatcher", jlcxx::julia_base_type<cv::DescriptorMatcher>())
.constructor<const int&,const bool&>()

;
    mod.method("jlopencv_cv_BFMatcher_create",  [](cv::Ptr<BFMatcher>& cobj, int& normType, bool& crossCheck) { auto retval = cv::BFMatcher::create(normType, crossCheck); return retval;});mod.add_type<cv::FlannBasedMatcher>("FlannBasedMatcher", jlcxx::julia_base_type<cv::DescriptorMatcher>())
.constructor<const Ptr<flann_IndexParams>&,const Ptr<flann_SearchParams>&>()

;
    mod.method("jlopencv_cv_FlannBasedMatcher_create",  [](cv::Ptr<FlannBasedMatcher>& cobj) { auto retval = cv::FlannBasedMatcher::create(); return retval;});mod.add_type<cv::BOWTrainer>("BOWTrainer")

;
    mod.method("jlopencv_cv_BOWTrainer_add",  [](BOWTrainer& cobj, Mat& descriptors) { cobj.add(descriptors);  ;});
    mod.method("jlopencv_cv_BOWTrainer_add",  [](BOWTrainer& cobj, Mat& descriptors) { cobj.add(descriptors);  ;});
    mod.method("jlopencv_cv_BOWTrainer_getDescriptors",  [](BOWTrainer& cobj) { auto retval = cobj.getDescriptors();  return retval;});
    mod.method("jlopencv_cv_BOWTrainer_descriptorsCount",  [](BOWTrainer& cobj) { auto retval = cobj.descriptorsCount();  return retval;});
    mod.method("jlopencv_cv_BOWTrainer_clear",  [](BOWTrainer& cobj) { cobj.clear();  ;});
    mod.method("jlopencv_cv_BOWTrainer_cluster",  [](BOWTrainer& cobj) { auto retval = cobj.cluster();  return retval;});
    mod.method("jlopencv_cv_BOWTrainer_cluster",  [](BOWTrainer& cobj, Mat& descriptors) { auto retval = cobj.cluster(descriptors);  return retval;});
    mod.method("jlopencv_cv_BOWTrainer_cluster",  [](BOWTrainer& cobj, Mat& descriptors) { auto retval = cobj.cluster(descriptors);  return retval;});mod.add_type<cv::BOWKMeansTrainer>("BOWKMeansTrainer", jlcxx::julia_base_type<cv::BOWTrainer>())
.constructor<const int&,const TermCriteria&,const int&,const int&>()

;
    mod.method("jlopencv_cv_BOWKMeansTrainer_cluster",  [](BOWKMeansTrainer& cobj) { auto retval = cobj.cluster();  return retval;});
    mod.method("jlopencv_cv_BOWKMeansTrainer_cluster",  [](BOWKMeansTrainer& cobj, Mat& descriptors) { auto retval = cobj.cluster(descriptors);  return retval;});
    mod.method("jlopencv_cv_BOWKMeansTrainer_cluster",  [](BOWKMeansTrainer& cobj, Mat& descriptors) { auto retval = cobj.cluster(descriptors);  return retval;});mod.add_type<cv::BOWImgDescriptorExtractor>("BOWImgDescriptorExtractor")
.constructor<const Ptr<DescriptorExtractor>&,const Ptr<DescriptorMatcher>&>()

;
    mod.method("jlopencv_cv_BOWImgDescriptorExtractor_setVocabulary",  [](BOWImgDescriptorExtractor& cobj, Mat& vocabulary) { cobj.setVocabulary(vocabulary);  ;});
    mod.method("jlopencv_cv_BOWImgDescriptorExtractor_setVocabulary",  [](BOWImgDescriptorExtractor& cobj, Mat& vocabulary) { cobj.setVocabulary(vocabulary);  ;});
    mod.method("jlopencv_cv_BOWImgDescriptorExtractor_getVocabulary",  [](BOWImgDescriptorExtractor& cobj) { auto retval = cobj.getVocabulary();  return retval;});
    mod.method("jlopencv_cv_BOWImgDescriptorExtractor_compute",  [](BOWImgDescriptorExtractor& cobj, Mat& image, vector<KeyPoint>& keypoints, Mat& imgDescriptor) { cobj.compute(image, keypoints, imgDescriptor);  return imgDescriptor;});
    mod.method("jlopencv_cv_BOWImgDescriptorExtractor_compute",  [](BOWImgDescriptorExtractor& cobj, Mat& image, vector<KeyPoint>& keypoints, Mat& imgDescriptor) { cobj.compute(image, keypoints, imgDescriptor);  return imgDescriptor;});
    mod.method("jlopencv_cv_BOWImgDescriptorExtractor_descriptorSize",  [](BOWImgDescriptorExtractor& cobj) { auto retval = cobj.descriptorSize();  return retval;});
    mod.method("jlopencv_cv_BOWImgDescriptorExtractor_descriptorType",  [](BOWImgDescriptorExtractor& cobj) { auto retval = cobj.descriptorType();  return retval;});mod.add_type<cv::KalmanFilter>("KalmanFilter")
.constructor<>()
.constructor<const int&,const int&,const int&,const int&>()

.method("jlopencv_KalmanFilter_set_statePre", [](cv::KalmanFilter &cobj,const Mat &v) {cobj.statePre=v;})
.method("jlopencv_KalmanFilter_set_statePost", [](cv::KalmanFilter &cobj,const Mat &v) {cobj.statePost=v;})
.method("jlopencv_KalmanFilter_set_transitionMatrix", [](cv::KalmanFilter &cobj,const Mat &v) {cobj.transitionMatrix=v;})
.method("jlopencv_KalmanFilter_set_controlMatrix", [](cv::KalmanFilter &cobj,const Mat &v) {cobj.controlMatrix=v;})
.method("jlopencv_KalmanFilter_set_measurementMatrix", [](cv::KalmanFilter &cobj,const Mat &v) {cobj.measurementMatrix=v;})
.method("jlopencv_KalmanFilter_set_processNoiseCov", [](cv::KalmanFilter &cobj,const Mat &v) {cobj.processNoiseCov=v;})
.method("jlopencv_KalmanFilter_set_measurementNoiseCov", [](cv::KalmanFilter &cobj,const Mat &v) {cobj.measurementNoiseCov=v;})
.method("jlopencv_KalmanFilter_set_errorCovPre", [](cv::KalmanFilter &cobj,const Mat &v) {cobj.errorCovPre=v;})
.method("jlopencv_KalmanFilter_set_gain", [](cv::KalmanFilter &cobj,const Mat &v) {cobj.gain=v;})
.method("jlopencv_KalmanFilter_set_errorCovPost", [](cv::KalmanFilter &cobj,const Mat &v) {cobj.errorCovPost=v;})

.method("jlopencv_KalmanFilter_get_statePre", [](const cv::KalmanFilter &cobj) {return cobj.statePre;})
.method("jlopencv_KalmanFilter_get_statePost", [](const cv::KalmanFilter &cobj) {return cobj.statePost;})
.method("jlopencv_KalmanFilter_get_transitionMatrix", [](const cv::KalmanFilter &cobj) {return cobj.transitionMatrix;})
.method("jlopencv_KalmanFilter_get_controlMatrix", [](const cv::KalmanFilter &cobj) {return cobj.controlMatrix;})
.method("jlopencv_KalmanFilter_get_measurementMatrix", [](const cv::KalmanFilter &cobj) {return cobj.measurementMatrix;})
.method("jlopencv_KalmanFilter_get_processNoiseCov", [](const cv::KalmanFilter &cobj) {return cobj.processNoiseCov;})
.method("jlopencv_KalmanFilter_get_measurementNoiseCov", [](const cv::KalmanFilter &cobj) {return cobj.measurementNoiseCov;})
.method("jlopencv_KalmanFilter_get_errorCovPre", [](const cv::KalmanFilter &cobj) {return cobj.errorCovPre;})
.method("jlopencv_KalmanFilter_get_gain", [](const cv::KalmanFilter &cobj) {return cobj.gain;})
.method("jlopencv_KalmanFilter_get_errorCovPost", [](const cv::KalmanFilter &cobj) {return cobj.errorCovPost;});
    mod.method("jlopencv_cv_KalmanFilter_predict",  [](KalmanFilter& cobj, Mat& control) { auto retval = cobj.predict(control);  return retval;});
    mod.method("jlopencv_cv_KalmanFilter_predict",  [](KalmanFilter& cobj, Mat& control) { auto retval = cobj.predict(control);  return retval;});
    mod.method("jlopencv_cv_KalmanFilter_correct",  [](KalmanFilter& cobj, Mat& measurement) { auto retval = cobj.correct(measurement);  return retval;});
    mod.method("jlopencv_cv_KalmanFilter_correct",  [](KalmanFilter& cobj, Mat& measurement) { auto retval = cobj.correct(measurement);  return retval;});mod.add_type<cv::DenseOpticalFlow>("DenseOpticalFlow", jlcxx::julia_base_type<cv::Algorithm>())

;
    mod.method("jlopencv_cv_DenseOpticalFlow_calc",  [](cv::Ptr<DenseOpticalFlow>& cobj, Mat& I0, Mat& I1, Mat& flow) { cobj->calc(I0, I1, flow);  return flow;});
    mod.method("jlopencv_cv_DenseOpticalFlow_calc",  [](cv::Ptr<DenseOpticalFlow>& cobj, UMat& I0, UMat& I1, UMat& flow) { cobj->calc(I0, I1, flow);  return flow;});
    mod.method("jlopencv_cv_DenseOpticalFlow_collectGarbage",  [](cv::Ptr<DenseOpticalFlow>& cobj) { cobj->collectGarbage();  ;});mod.add_type<cv::SparseOpticalFlow>("SparseOpticalFlow", jlcxx::julia_base_type<cv::Algorithm>())

;
    mod.method("jlopencv_cv_SparseOpticalFlow_calc",  [](cv::Ptr<SparseOpticalFlow>& cobj, Mat& prevImg, Mat& nextImg, Mat& prevPts, Mat& nextPts, Mat& status, Mat& err) { cobj->calc(prevImg, nextImg, prevPts, nextPts, status, err);  return make_tuple<Mat,Mat,Mat>(move(nextPts),move(status),move(err));});
    mod.method("jlopencv_cv_SparseOpticalFlow_calc",  [](cv::Ptr<SparseOpticalFlow>& cobj, UMat& prevImg, UMat& nextImg, UMat& prevPts, UMat& nextPts, UMat& status, UMat& err) { cobj->calc(prevImg, nextImg, prevPts, nextPts, status, err);  return make_tuple<UMat,UMat,UMat>(move(nextPts),move(status),move(err));});mod.add_type<cv::FarnebackOpticalFlow>("FarnebackOpticalFlow", jlcxx::julia_base_type<cv::DenseOpticalFlow>())

;
    mod.method("jlopencv_cv_FarnebackOpticalFlow_getNumLevels",  [](cv::Ptr<FarnebackOpticalFlow>& cobj) { auto retval = cobj->getNumLevels();  return retval;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_setNumLevels",  [](cv::Ptr<FarnebackOpticalFlow>& cobj, int& numLevels) { cobj->setNumLevels(numLevels);  ;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_getPyrScale",  [](cv::Ptr<FarnebackOpticalFlow>& cobj) { auto retval = cobj->getPyrScale();  return retval;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_setPyrScale",  [](cv::Ptr<FarnebackOpticalFlow>& cobj, double& pyrScale) { cobj->setPyrScale(pyrScale);  ;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_getFastPyramids",  [](cv::Ptr<FarnebackOpticalFlow>& cobj) { auto retval = cobj->getFastPyramids();  return retval;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_setFastPyramids",  [](cv::Ptr<FarnebackOpticalFlow>& cobj, bool& fastPyramids) { cobj->setFastPyramids(fastPyramids);  ;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_getWinSize",  [](cv::Ptr<FarnebackOpticalFlow>& cobj) { auto retval = cobj->getWinSize();  return retval;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_setWinSize",  [](cv::Ptr<FarnebackOpticalFlow>& cobj, int& winSize) { cobj->setWinSize(winSize);  ;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_getNumIters",  [](cv::Ptr<FarnebackOpticalFlow>& cobj) { auto retval = cobj->getNumIters();  return retval;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_setNumIters",  [](cv::Ptr<FarnebackOpticalFlow>& cobj, int& numIters) { cobj->setNumIters(numIters);  ;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_getPolyN",  [](cv::Ptr<FarnebackOpticalFlow>& cobj) { auto retval = cobj->getPolyN();  return retval;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_setPolyN",  [](cv::Ptr<FarnebackOpticalFlow>& cobj, int& polyN) { cobj->setPolyN(polyN);  ;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_getPolySigma",  [](cv::Ptr<FarnebackOpticalFlow>& cobj) { auto retval = cobj->getPolySigma();  return retval;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_setPolySigma",  [](cv::Ptr<FarnebackOpticalFlow>& cobj, double& polySigma) { cobj->setPolySigma(polySigma);  ;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_getFlags",  [](cv::Ptr<FarnebackOpticalFlow>& cobj) { auto retval = cobj->getFlags();  return retval;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_setFlags",  [](cv::Ptr<FarnebackOpticalFlow>& cobj, int& flags) { cobj->setFlags(flags);  ;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_create",  [](cv::Ptr<FarnebackOpticalFlow>& cobj, int& numLevels, double& pyrScale, bool& fastPyramids, int& winSize, int& numIters, int& polyN, double& polySigma, int& flags) { auto retval = cv::FarnebackOpticalFlow::create(numLevels, pyrScale, fastPyramids, winSize, numIters, polyN, polySigma, flags); return retval;});mod.add_type<cv::VariationalRefinement>("VariationalRefinement", jlcxx::julia_base_type<cv::DenseOpticalFlow>())

;
    mod.method("jlopencv_cv_VariationalRefinement_calcUV",  [](cv::Ptr<VariationalRefinement>& cobj, Mat& I0, Mat& I1, Mat& flow_u, Mat& flow_v) { cobj->calcUV(I0, I1, flow_u, flow_v);  return make_tuple<Mat,Mat>(move(flow_u),move(flow_v));});
    mod.method("jlopencv_cv_VariationalRefinement_calcUV",  [](cv::Ptr<VariationalRefinement>& cobj, UMat& I0, UMat& I1, UMat& flow_u, UMat& flow_v) { cobj->calcUV(I0, I1, flow_u, flow_v);  return make_tuple<UMat,UMat>(move(flow_u),move(flow_v));});
    mod.method("jlopencv_cv_VariationalRefinement_getFixedPointIterations",  [](cv::Ptr<VariationalRefinement>& cobj) { auto retval = cobj->getFixedPointIterations();  return retval;});
    mod.method("jlopencv_cv_VariationalRefinement_setFixedPointIterations",  [](cv::Ptr<VariationalRefinement>& cobj, int& val) { cobj->setFixedPointIterations(val);  ;});
    mod.method("jlopencv_cv_VariationalRefinement_getSorIterations",  [](cv::Ptr<VariationalRefinement>& cobj) { auto retval = cobj->getSorIterations();  return retval;});
    mod.method("jlopencv_cv_VariationalRefinement_setSorIterations",  [](cv::Ptr<VariationalRefinement>& cobj, int& val) { cobj->setSorIterations(val);  ;});
    mod.method("jlopencv_cv_VariationalRefinement_getOmega",  [](cv::Ptr<VariationalRefinement>& cobj) { auto retval = cobj->getOmega();  return retval;});
    mod.method("jlopencv_cv_VariationalRefinement_setOmega",  [](cv::Ptr<VariationalRefinement>& cobj, float& val) { cobj->setOmega(val);  ;});
    mod.method("jlopencv_cv_VariationalRefinement_getAlpha",  [](cv::Ptr<VariationalRefinement>& cobj) { auto retval = cobj->getAlpha();  return retval;});
    mod.method("jlopencv_cv_VariationalRefinement_setAlpha",  [](cv::Ptr<VariationalRefinement>& cobj, float& val) { cobj->setAlpha(val);  ;});
    mod.method("jlopencv_cv_VariationalRefinement_getDelta",  [](cv::Ptr<VariationalRefinement>& cobj) { auto retval = cobj->getDelta();  return retval;});
    mod.method("jlopencv_cv_VariationalRefinement_setDelta",  [](cv::Ptr<VariationalRefinement>& cobj, float& val) { cobj->setDelta(val);  ;});
    mod.method("jlopencv_cv_VariationalRefinement_getGamma",  [](cv::Ptr<VariationalRefinement>& cobj) { auto retval = cobj->getGamma();  return retval;});
    mod.method("jlopencv_cv_VariationalRefinement_setGamma",  [](cv::Ptr<VariationalRefinement>& cobj, float& val) { cobj->setGamma(val);  ;});
    mod.method("jlopencv_cv_VariationalRefinement_create",  [](cv::Ptr<VariationalRefinement>& cobj) { auto retval = cv::VariationalRefinement::create(); return retval;});mod.add_type<cv::DISOpticalFlow>("DISOpticalFlow", jlcxx::julia_base_type<cv::DenseOpticalFlow>())

;
    mod.method("jlopencv_cv_DISOpticalFlow_getFinestScale",  [](cv::Ptr<DISOpticalFlow>& cobj) { auto retval = cobj->getFinestScale();  return retval;});
    mod.method("jlopencv_cv_DISOpticalFlow_setFinestScale",  [](cv::Ptr<DISOpticalFlow>& cobj, int& val) { cobj->setFinestScale(val);  ;});
    mod.method("jlopencv_cv_DISOpticalFlow_getPatchSize",  [](cv::Ptr<DISOpticalFlow>& cobj) { auto retval = cobj->getPatchSize();  return retval;});
    mod.method("jlopencv_cv_DISOpticalFlow_setPatchSize",  [](cv::Ptr<DISOpticalFlow>& cobj, int& val) { cobj->setPatchSize(val);  ;});
    mod.method("jlopencv_cv_DISOpticalFlow_getPatchStride",  [](cv::Ptr<DISOpticalFlow>& cobj) { auto retval = cobj->getPatchStride();  return retval;});
    mod.method("jlopencv_cv_DISOpticalFlow_setPatchStride",  [](cv::Ptr<DISOpticalFlow>& cobj, int& val) { cobj->setPatchStride(val);  ;});
    mod.method("jlopencv_cv_DISOpticalFlow_getGradientDescentIterations",  [](cv::Ptr<DISOpticalFlow>& cobj) { auto retval = cobj->getGradientDescentIterations();  return retval;});
    mod.method("jlopencv_cv_DISOpticalFlow_setGradientDescentIterations",  [](cv::Ptr<DISOpticalFlow>& cobj, int& val) { cobj->setGradientDescentIterations(val);  ;});
    mod.method("jlopencv_cv_DISOpticalFlow_getVariationalRefinementIterations",  [](cv::Ptr<DISOpticalFlow>& cobj) { auto retval = cobj->getVariationalRefinementIterations();  return retval;});
    mod.method("jlopencv_cv_DISOpticalFlow_setVariationalRefinementIterations",  [](cv::Ptr<DISOpticalFlow>& cobj, int& val) { cobj->setVariationalRefinementIterations(val);  ;});
    mod.method("jlopencv_cv_DISOpticalFlow_getVariationalRefinementAlpha",  [](cv::Ptr<DISOpticalFlow>& cobj) { auto retval = cobj->getVariationalRefinementAlpha();  return retval;});
    mod.method("jlopencv_cv_DISOpticalFlow_setVariationalRefinementAlpha",  [](cv::Ptr<DISOpticalFlow>& cobj, float& val) { cobj->setVariationalRefinementAlpha(val);  ;});
    mod.method("jlopencv_cv_DISOpticalFlow_getVariationalRefinementDelta",  [](cv::Ptr<DISOpticalFlow>& cobj) { auto retval = cobj->getVariationalRefinementDelta();  return retval;});
    mod.method("jlopencv_cv_DISOpticalFlow_setVariationalRefinementDelta",  [](cv::Ptr<DISOpticalFlow>& cobj, float& val) { cobj->setVariationalRefinementDelta(val);  ;});
    mod.method("jlopencv_cv_DISOpticalFlow_getVariationalRefinementGamma",  [](cv::Ptr<DISOpticalFlow>& cobj) { auto retval = cobj->getVariationalRefinementGamma();  return retval;});
    mod.method("jlopencv_cv_DISOpticalFlow_setVariationalRefinementGamma",  [](cv::Ptr<DISOpticalFlow>& cobj, float& val) { cobj->setVariationalRefinementGamma(val);  ;});
    mod.method("jlopencv_cv_DISOpticalFlow_getUseMeanNormalization",  [](cv::Ptr<DISOpticalFlow>& cobj) { auto retval = cobj->getUseMeanNormalization();  return retval;});
    mod.method("jlopencv_cv_DISOpticalFlow_setUseMeanNormalization",  [](cv::Ptr<DISOpticalFlow>& cobj, bool& val) { cobj->setUseMeanNormalization(val);  ;});
    mod.method("jlopencv_cv_DISOpticalFlow_getUseSpatialPropagation",  [](cv::Ptr<DISOpticalFlow>& cobj) { auto retval = cobj->getUseSpatialPropagation();  return retval;});
    mod.method("jlopencv_cv_DISOpticalFlow_setUseSpatialPropagation",  [](cv::Ptr<DISOpticalFlow>& cobj, bool& val) { cobj->setUseSpatialPropagation(val);  ;});
    mod.method("jlopencv_cv_DISOpticalFlow_create",  [](cv::Ptr<DISOpticalFlow>& cobj, int& preset) { auto retval = cv::DISOpticalFlow::create(preset); return retval;});mod.add_type<cv::SparsePyrLKOpticalFlow>("SparsePyrLKOpticalFlow", jlcxx::julia_base_type<cv::SparseOpticalFlow>())

;
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_getWinSize",  [](cv::Ptr<SparsePyrLKOpticalFlow>& cobj) { auto retval = cobj->getWinSize();  return retval;});
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_setWinSize",  [](cv::Ptr<SparsePyrLKOpticalFlow>& cobj, Size& winSize) { cobj->setWinSize(winSize);  ;});
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_getMaxLevel",  [](cv::Ptr<SparsePyrLKOpticalFlow>& cobj) { auto retval = cobj->getMaxLevel();  return retval;});
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_setMaxLevel",  [](cv::Ptr<SparsePyrLKOpticalFlow>& cobj, int& maxLevel) { cobj->setMaxLevel(maxLevel);  ;});
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_getTermCriteria",  [](cv::Ptr<SparsePyrLKOpticalFlow>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_setTermCriteria",  [](cv::Ptr<SparsePyrLKOpticalFlow>& cobj, TermCriteria& crit) { cobj->setTermCriteria(crit);  ;});
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_getFlags",  [](cv::Ptr<SparsePyrLKOpticalFlow>& cobj) { auto retval = cobj->getFlags();  return retval;});
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_setFlags",  [](cv::Ptr<SparsePyrLKOpticalFlow>& cobj, int& flags) { cobj->setFlags(flags);  ;});
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_getMinEigThreshold",  [](cv::Ptr<SparsePyrLKOpticalFlow>& cobj) { auto retval = cobj->getMinEigThreshold();  return retval;});
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_setMinEigThreshold",  [](cv::Ptr<SparsePyrLKOpticalFlow>& cobj, double& minEigThreshold) { cobj->setMinEigThreshold(minEigThreshold);  ;});
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_create",  [](cv::Ptr<SparsePyrLKOpticalFlow>& cobj, Size& winSize, int& maxLevel, TermCriteria& crit, int& flags, double& minEigThreshold) { auto retval = cv::SparsePyrLKOpticalFlow::create(winSize, maxLevel, crit, flags, minEigThreshold); return retval;});mod.add_type<cv::BackgroundSubtractor>("BackgroundSubtractor", jlcxx::julia_base_type<cv::Algorithm>())

;
    mod.method("jlopencv_cv_BackgroundSubtractor_apply",  [](cv::Ptr<BackgroundSubtractor>& cobj, Mat& image, Mat& fgmask, double& learningRate) { cobj->apply(image, fgmask, learningRate);  return fgmask;});
    mod.method("jlopencv_cv_BackgroundSubtractor_apply",  [](cv::Ptr<BackgroundSubtractor>& cobj, UMat& image, UMat& fgmask, double& learningRate) { cobj->apply(image, fgmask, learningRate);  return fgmask;});
    mod.method("jlopencv_cv_BackgroundSubtractor_getBackgroundImage",  [](cv::Ptr<BackgroundSubtractor>& cobj, Mat& backgroundImage) { cobj->getBackgroundImage(backgroundImage);  return backgroundImage;});
    mod.method("jlopencv_cv_BackgroundSubtractor_getBackgroundImage",  [](cv::Ptr<BackgroundSubtractor>& cobj, UMat& backgroundImage) { cobj->getBackgroundImage(backgroundImage);  return backgroundImage;});mod.add_type<cv::BackgroundSubtractorMOG2>("BackgroundSubtractorMOG2", jlcxx::julia_base_type<cv::BackgroundSubtractor>())

;
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getHistory",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getHistory();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setHistory",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, int& history) { cobj->setHistory(history);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getNMixtures",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getNMixtures();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setNMixtures",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, int& nmixtures) { cobj->setNMixtures(nmixtures);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getBackgroundRatio",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getBackgroundRatio();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setBackgroundRatio",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, double& ratio) { cobj->setBackgroundRatio(ratio);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getVarThreshold",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getVarThreshold();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setVarThreshold",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, double& varThreshold) { cobj->setVarThreshold(varThreshold);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getVarThresholdGen",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getVarThresholdGen();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setVarThresholdGen",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, double& varThresholdGen) { cobj->setVarThresholdGen(varThresholdGen);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getVarInit",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getVarInit();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setVarInit",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, double& varInit) { cobj->setVarInit(varInit);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getVarMin",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getVarMin();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setVarMin",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, double& varMin) { cobj->setVarMin(varMin);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getVarMax",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getVarMax();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setVarMax",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, double& varMax) { cobj->setVarMax(varMax);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getComplexityReductionThreshold",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getComplexityReductionThreshold();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setComplexityReductionThreshold",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, double& ct) { cobj->setComplexityReductionThreshold(ct);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getDetectShadows",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getDetectShadows();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setDetectShadows",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, bool& detectShadows) { cobj->setDetectShadows(detectShadows);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getShadowValue",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getShadowValue();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setShadowValue",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, int& value) { cobj->setShadowValue(value);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_getShadowThreshold",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj) { auto retval = cobj->getShadowThreshold();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_setShadowThreshold",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, double& threshold) { cobj->setShadowThreshold(threshold);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_apply",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, Mat& image, Mat& fgmask, double& learningRate) { cobj->apply(image, fgmask, learningRate);  return fgmask;});
    mod.method("jlopencv_cv_BackgroundSubtractorMOG2_apply",  [](cv::Ptr<BackgroundSubtractorMOG2>& cobj, UMat& image, UMat& fgmask, double& learningRate) { cobj->apply(image, fgmask, learningRate);  return fgmask;});mod.add_type<cv::BackgroundSubtractorKNN>("BackgroundSubtractorKNN", jlcxx::julia_base_type<cv::BackgroundSubtractor>())

;
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_getHistory",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj) { auto retval = cobj->getHistory();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_setHistory",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj, int& history) { cobj->setHistory(history);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_getNSamples",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj) { auto retval = cobj->getNSamples();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_setNSamples",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj, int& _nN) { cobj->setNSamples(_nN);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_getDist2Threshold",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj) { auto retval = cobj->getDist2Threshold();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_setDist2Threshold",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj, double& _dist2Threshold) { cobj->setDist2Threshold(_dist2Threshold);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_getkNNSamples",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj) { auto retval = cobj->getkNNSamples();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_setkNNSamples",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj, int& _nkNN) { cobj->setkNNSamples(_nkNN);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_getDetectShadows",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj) { auto retval = cobj->getDetectShadows();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_setDetectShadows",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj, bool& detectShadows) { cobj->setDetectShadows(detectShadows);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_getShadowValue",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj) { auto retval = cobj->getShadowValue();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_setShadowValue",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj, int& value) { cobj->setShadowValue(value);  ;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_getShadowThreshold",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj) { auto retval = cobj->getShadowThreshold();  return retval;});
    mod.method("jlopencv_cv_BackgroundSubtractorKNN_setShadowThreshold",  [](cv::Ptr<BackgroundSubtractorKNN>& cobj, double& threshold) { cobj->setShadowThreshold(threshold);  ;});mod.add_type<cv::BaseCascadeClassifier>("BaseCascadeClassifier", jlcxx::julia_base_type<cv::Algorithm>())

;mod.add_type<cv::CascadeClassifier>("CascadeClassifier")
.constructor<>()
.constructor<const String&>()

;
    mod.method("jlopencv_cv_CascadeClassifier_empty",  [](CascadeClassifier& cobj) { auto retval = cobj.empty();  return retval;});
    mod.method("jlopencv_cv_CascadeClassifier_load",  [](CascadeClassifier& cobj, String& filename) { auto retval = cobj.load(filename);  return retval;});
    mod.method("jlopencv_cv_CascadeClassifier_read",  [](CascadeClassifier& cobj, FileNode& node) { auto retval = cobj.read(node);  return retval;});
    mod.method("jlopencv_cv_CascadeClassifier_detectMultiScale",  [](CascadeClassifier& cobj, Mat& image, double& scaleFactor, int& minNeighbors, int& flags, Size& minSize, Size& maxSize) {vector<Rect> objects; cobj.detectMultiScale(image, objects, scaleFactor, minNeighbors, flags, minSize, maxSize);  return objects;});
    mod.method("jlopencv_cv_CascadeClassifier_detectMultiScale",  [](CascadeClassifier& cobj, UMat& image, double& scaleFactor, int& minNeighbors, int& flags, Size& minSize, Size& maxSize) {vector<Rect> objects; cobj.detectMultiScale(image, objects, scaleFactor, minNeighbors, flags, minSize, maxSize);  return objects;});
    mod.method("jlopencv_cv_CascadeClassifier_detectMultiScale2",  [](CascadeClassifier& cobj, Mat& image, double& scaleFactor, int& minNeighbors, int& flags, Size& minSize, Size& maxSize) {vector<Rect> objects;vector<int> numDetections; cobj.detectMultiScale2(image, objects, numDetections, scaleFactor, minNeighbors, flags, minSize, maxSize);  return make_tuple<vector<Rect>,vector<int>>(move(objects),move(numDetections));});
    mod.method("jlopencv_cv_CascadeClassifier_detectMultiScale2",  [](CascadeClassifier& cobj, UMat& image, double& scaleFactor, int& minNeighbors, int& flags, Size& minSize, Size& maxSize) {vector<Rect> objects;vector<int> numDetections; cobj.detectMultiScale2(image, objects, numDetections, scaleFactor, minNeighbors, flags, minSize, maxSize);  return make_tuple<vector<Rect>,vector<int>>(move(objects),move(numDetections));});
    mod.method("jlopencv_cv_CascadeClassifier_detectMultiScale3",  [](CascadeClassifier& cobj, Mat& image, double& scaleFactor, int& minNeighbors, int& flags, Size& minSize, Size& maxSize, bool& outputRejectLevels) {vector<Rect> objects;vector<int> rejectLevels;vector<double> levelWeights; cobj.detectMultiScale3(image, objects, rejectLevels, levelWeights, scaleFactor, minNeighbors, flags, minSize, maxSize, outputRejectLevels);  return make_tuple<vector<Rect>,vector<int>,vector<double>>(move(objects),move(rejectLevels),move(levelWeights));});
    mod.method("jlopencv_cv_CascadeClassifier_detectMultiScale3",  [](CascadeClassifier& cobj, UMat& image, double& scaleFactor, int& minNeighbors, int& flags, Size& minSize, Size& maxSize, bool& outputRejectLevels) {vector<Rect> objects;vector<int> rejectLevels;vector<double> levelWeights; cobj.detectMultiScale3(image, objects, rejectLevels, levelWeights, scaleFactor, minNeighbors, flags, minSize, maxSize, outputRejectLevels);  return make_tuple<vector<Rect>,vector<int>,vector<double>>(move(objects),move(rejectLevels),move(levelWeights));});
    mod.method("jlopencv_cv_CascadeClassifier_isOldFormatCascade",  [](CascadeClassifier& cobj) { auto retval = cobj.isOldFormatCascade();  return retval;});
    mod.method("jlopencv_cv_CascadeClassifier_getOriginalWindowSize",  [](CascadeClassifier& cobj) { auto retval = cobj.getOriginalWindowSize();  return retval;});
    mod.method("jlopencv_cv_CascadeClassifier_getFeatureType",  [](CascadeClassifier& cobj) { auto retval = cobj.getFeatureType();  return retval;});
    mod.method("jlopencv_cv_CascadeClassifier_convert",  [](CascadeClassifier& cobj, String& oldcascade, String& newcascade) { auto retval = cv::CascadeClassifier::convert(oldcascade, newcascade); return retval;});mod.add_type<cv::HOGDescriptor>("HOGDescriptor")
.constructor<>()
.constructor<const Size&,const Size&,const Size&,const Size&,const int&,const int&,const double&,const HOGDescriptor_HistogramNormType&,const double&,const bool&,const int&,const bool&>()
.constructor<const String&>()


.method("jlopencv_HOGDescriptor_get_winSize", [](const cv::HOGDescriptor &cobj) {return cobj.winSize;})
.method("jlopencv_HOGDescriptor_get_blockSize", [](const cv::HOGDescriptor &cobj) {return cobj.blockSize;})
.method("jlopencv_HOGDescriptor_get_blockStride", [](const cv::HOGDescriptor &cobj) {return cobj.blockStride;})
.method("jlopencv_HOGDescriptor_get_cellSize", [](const cv::HOGDescriptor &cobj) {return cobj.cellSize;})
.method("jlopencv_HOGDescriptor_get_nbins", [](const cv::HOGDescriptor &cobj) {return cobj.nbins;})
.method("jlopencv_HOGDescriptor_get_derivAperture", [](const cv::HOGDescriptor &cobj) {return cobj.derivAperture;})
.method("jlopencv_HOGDescriptor_get_winSigma", [](const cv::HOGDescriptor &cobj) {return cobj.winSigma;})
.method("jlopencv_HOGDescriptor_get_histogramNormType", [](const cv::HOGDescriptor &cobj) {return cobj.histogramNormType;})
.method("jlopencv_HOGDescriptor_get_L2HysThreshold", [](const cv::HOGDescriptor &cobj) {return cobj.L2HysThreshold;})
.method("jlopencv_HOGDescriptor_get_gammaCorrection", [](const cv::HOGDescriptor &cobj) {return cobj.gammaCorrection;})
.method("jlopencv_HOGDescriptor_get_svmDetector", [](const cv::HOGDescriptor &cobj) {return cobj.svmDetector;})
.method("jlopencv_HOGDescriptor_get_nlevels", [](const cv::HOGDescriptor &cobj) {return cobj.nlevels;})
.method("jlopencv_HOGDescriptor_get_signedGradient", [](const cv::HOGDescriptor &cobj) {return cobj.signedGradient;});
    mod.method("jlopencv_cv_HOGDescriptor_getDescriptorSize",  [](HOGDescriptor& cobj) { auto retval = cobj.getDescriptorSize();  return retval;});
    mod.method("jlopencv_cv_HOGDescriptor_checkDetectorSize",  [](HOGDescriptor& cobj) { auto retval = cobj.checkDetectorSize();  return retval;});
    mod.method("jlopencv_cv_HOGDescriptor_getWinSigma",  [](HOGDescriptor& cobj) { auto retval = cobj.getWinSigma();  return retval;});
    mod.method("jlopencv_cv_HOGDescriptor_setSVMDetector",  [](HOGDescriptor& cobj, Mat& svmdetector) { cobj.setSVMDetector(svmdetector);  ;});
    mod.method("jlopencv_cv_HOGDescriptor_setSVMDetector",  [](HOGDescriptor& cobj, UMat& svmdetector) { cobj.setSVMDetector(svmdetector);  ;});
    mod.method("jlopencv_cv_HOGDescriptor_load",  [](HOGDescriptor& cobj, String& filename, String& objname) { auto retval = cobj.load(filename, objname);  return retval;});
    mod.method("jlopencv_cv_HOGDescriptor_save",  [](HOGDescriptor& cobj, String& filename, String& objname) { cobj.save(filename, objname);  ;});
    mod.method("jlopencv_cv_HOGDescriptor_compute",  [](HOGDescriptor& cobj, Mat& img, Size& winStride, Size& padding, vector<Point>& locations) {vector<float> descriptors; cobj.compute(img, descriptors, winStride, padding, locations);  return descriptors;});
    mod.method("jlopencv_cv_HOGDescriptor_compute",  [](HOGDescriptor& cobj, UMat& img, Size& winStride, Size& padding, vector<Point>& locations) {vector<float> descriptors; cobj.compute(img, descriptors, winStride, padding, locations);  return descriptors;});
    mod.method("jlopencv_cv_HOGDescriptor_detect",  [](HOGDescriptor& cobj, Mat& img, double& hitThreshold, Size& winStride, Size& padding, vector<Point>& searchLocations) {vector<Point> foundLocations;vector<double> weights; cobj.detect(img, foundLocations, weights, hitThreshold, winStride, padding, searchLocations);  return make_tuple<vector<Point>,vector<double>>(move(foundLocations),move(weights));});
    mod.method("jlopencv_cv_HOGDescriptor_detect",  [](HOGDescriptor& cobj, UMat& img, double& hitThreshold, Size& winStride, Size& padding, vector<Point>& searchLocations) {vector<Point> foundLocations;vector<double> weights; cobj.detect(img, foundLocations, weights, hitThreshold, winStride, padding, searchLocations);  return make_tuple<vector<Point>,vector<double>>(move(foundLocations),move(weights));});
    mod.method("jlopencv_cv_HOGDescriptor_detectMultiScale",  [](HOGDescriptor& cobj, Mat& img, double& hitThreshold, Size& winStride, Size& padding, double& scale, double& finalThreshold, bool& useMeanshiftGrouping) {vector<Rect> foundLocations;vector<double> foundWeights; cobj.detectMultiScale(img, foundLocations, foundWeights, hitThreshold, winStride, padding, scale, finalThreshold, useMeanshiftGrouping);  return make_tuple<vector<Rect>,vector<double>>(move(foundLocations),move(foundWeights));});
    mod.method("jlopencv_cv_HOGDescriptor_detectMultiScale",  [](HOGDescriptor& cobj, UMat& img, double& hitThreshold, Size& winStride, Size& padding, double& scale, double& finalThreshold, bool& useMeanshiftGrouping) {vector<Rect> foundLocations;vector<double> foundWeights; cobj.detectMultiScale(img, foundLocations, foundWeights, hitThreshold, winStride, padding, scale, finalThreshold, useMeanshiftGrouping);  return make_tuple<vector<Rect>,vector<double>>(move(foundLocations),move(foundWeights));});
    mod.method("jlopencv_cv_HOGDescriptor_computeGradient",  [](HOGDescriptor& cobj, Mat& img, Mat& grad, Mat& angleOfs, Size& paddingTL, Size& paddingBR) { cobj.computeGradient(img, grad, angleOfs, paddingTL, paddingBR);  return make_tuple<Mat,Mat>(move(grad),move(angleOfs));});
    mod.method("jlopencv_cv_HOGDescriptor_computeGradient",  [](HOGDescriptor& cobj, UMat& img, UMat& grad, UMat& angleOfs, Size& paddingTL, Size& paddingBR) { cobj.computeGradient(img, grad, angleOfs, paddingTL, paddingBR);  return make_tuple<UMat,UMat>(move(grad),move(angleOfs));});
    mod.method("jlopencv_cv_HOGDescriptor_getDefaultPeopleDetector",  [](HOGDescriptor& cobj) { auto retval = cv::HOGDescriptor::getDefaultPeopleDetector(); return retval;});
    mod.method("jlopencv_cv_HOGDescriptor_getDaimlerPeopleDetector",  [](HOGDescriptor& cobj) { auto retval = cv::HOGDescriptor::getDaimlerPeopleDetector(); return retval;});mod.add_type<cv::QRCodeDetector>("QRCodeDetector")
.constructor<>()

;
    mod.method("jlopencv_cv_QRCodeDetector_setEpsX",  [](QRCodeDetector& cobj, double& epsX) { cobj.setEpsX(epsX);  ;});
    mod.method("jlopencv_cv_QRCodeDetector_setEpsY",  [](QRCodeDetector& cobj, double& epsY) { cobj.setEpsY(epsY);  ;});
    mod.method("jlopencv_cv_QRCodeDetector_detect",  [](QRCodeDetector& cobj, Mat& img, Mat& points) { auto retval = cobj.detect(img, points);  return make_tuple<bool,Mat>(move(retval),move(points));});
    mod.method("jlopencv_cv_QRCodeDetector_detect",  [](QRCodeDetector& cobj, UMat& img, UMat& points) { auto retval = cobj.detect(img, points);  return make_tuple<bool,UMat>(move(retval),move(points));});
    mod.method("jlopencv_cv_QRCodeDetector_decode",  [](QRCodeDetector& cobj, Mat& img, Mat& points, Mat& straight_qrcode) { auto retval = cobj.decode(img, points, straight_qrcode);  return make_tuple<std::string,Mat>(move(retval),move(straight_qrcode));});
    mod.method("jlopencv_cv_QRCodeDetector_decode",  [](QRCodeDetector& cobj, UMat& img, UMat& points, UMat& straight_qrcode) { auto retval = cobj.decode(img, points, straight_qrcode);  return make_tuple<std::string,UMat>(move(retval),move(straight_qrcode));});
    mod.method("jlopencv_cv_QRCodeDetector_detectAndDecode",  [](QRCodeDetector& cobj, Mat& img, Mat& points, Mat& straight_qrcode) { auto retval = cobj.detectAndDecode(img, points, straight_qrcode);  return make_tuple<std::string,Mat,Mat>(move(retval),move(points),move(straight_qrcode));});
    mod.method("jlopencv_cv_QRCodeDetector_detectAndDecode",  [](QRCodeDetector& cobj, UMat& img, UMat& points, UMat& straight_qrcode) { auto retval = cobj.detectAndDecode(img, points, straight_qrcode);  return make_tuple<std::string,UMat,UMat>(move(retval),move(points),move(straight_qrcode));});
    mod.method("jlopencv_cv_QRCodeDetector_detectMulti",  [](QRCodeDetector& cobj, Mat& img, Mat& points) { auto retval = cobj.detectMulti(img, points);  return make_tuple<bool,Mat>(move(retval),move(points));});
    mod.method("jlopencv_cv_QRCodeDetector_detectMulti",  [](QRCodeDetector& cobj, UMat& img, UMat& points) { auto retval = cobj.detectMulti(img, points);  return make_tuple<bool,UMat>(move(retval),move(points));});
    mod.method("jlopencv_cv_QRCodeDetector_decodeMulti",  [](QRCodeDetector& cobj, Mat& img, Mat& points) {vector<string> decoded_info;vector<Mat> straight_qrcode; auto retval = cobj.decodeMulti(img, points, decoded_info, straight_qrcode);  return make_tuple<bool,vector<string>,vector<Mat>>(move(retval),move(decoded_info),move(straight_qrcode));});
    mod.method("jlopencv_cv_QRCodeDetector_decodeMulti",  [](QRCodeDetector& cobj, UMat& img, UMat& points) {vector<string> decoded_info;vector<UMat> straight_qrcode; auto retval = cobj.decodeMulti(img, points, decoded_info, straight_qrcode);  return make_tuple<bool,vector<string>,vector<UMat>>(move(retval),move(decoded_info),move(straight_qrcode));});
    mod.method("jlopencv_cv_QRCodeDetector_detectAndDecodeMulti",  [](QRCodeDetector& cobj, Mat& img, Mat& points) {vector<string> decoded_info;vector<Mat> straight_qrcode; auto retval = cobj.detectAndDecodeMulti(img, decoded_info, points, straight_qrcode);  return make_tuple<bool,vector<string>,Mat,vector<Mat>>(move(retval),move(decoded_info),move(points),move(straight_qrcode));});
    mod.method("jlopencv_cv_QRCodeDetector_detectAndDecodeMulti",  [](QRCodeDetector& cobj, UMat& img, UMat& points) {vector<string> decoded_info;vector<UMat> straight_qrcode; auto retval = cobj.detectAndDecodeMulti(img, decoded_info, points, straight_qrcode);  return make_tuple<bool,vector<string>,UMat,vector<UMat>>(move(retval),move(decoded_info),move(points),move(straight_qrcode));});mod.add_type<cv::VideoCapture>("VideoCapture")
.constructor<>()
.constructor<const String&,const int&>()
.constructor<const int&,const int&>()

;
    mod.method("jlopencv_cv_VideoCapture_open",  [](VideoCapture& cobj, String& filename, int& apiPreference) { auto retval = cobj.open(filename, apiPreference);  return retval;});
    mod.method("jlopencv_cv_VideoCapture_open",  [](VideoCapture& cobj, int& index, int& apiPreference) { auto retval = cobj.open(index, apiPreference);  return retval;});
    mod.method("jlopencv_cv_VideoCapture_isOpened",  [](VideoCapture& cobj) { auto retval = cobj.isOpened();  return retval;});
    mod.method("jlopencv_cv_VideoCapture_release",  [](VideoCapture& cobj) { cobj.release();  ;});
    mod.method("jlopencv_cv_VideoCapture_grab",  [](VideoCapture& cobj) { auto retval = cobj.grab();  return retval;});
    mod.method("jlopencv_cv_VideoCapture_retrieve",  [](VideoCapture& cobj, Mat& image, int& flag) { auto retval = cobj.retrieve(image, flag);  return make_tuple<bool,Mat>(move(retval),move(image));});
    mod.method("jlopencv_cv_VideoCapture_retrieve",  [](VideoCapture& cobj, UMat& image, int& flag) { auto retval = cobj.retrieve(image, flag);  return make_tuple<bool,UMat>(move(retval),move(image));});
    mod.method("jlopencv_cv_VideoCapture_read",  [](VideoCapture& cobj, Mat& image) { auto retval = cobj.read(image);  return make_tuple<bool,Mat>(move(retval),move(image));});
    mod.method("jlopencv_cv_VideoCapture_read",  [](VideoCapture& cobj, UMat& image) { auto retval = cobj.read(image);  return make_tuple<bool,UMat>(move(retval),move(image));});
    mod.method("jlopencv_cv_VideoCapture_set",  [](VideoCapture& cobj, int& propId, double& value) { auto retval = cobj.set(propId, value);  return retval;});
    mod.method("jlopencv_cv_VideoCapture_get",  [](VideoCapture& cobj, int& propId) { auto retval = cobj.get(propId);  return retval;});
    mod.method("jlopencv_cv_VideoCapture_getBackendName",  [](VideoCapture& cobj) { auto retval = cobj.getBackendName();  return retval;});
    mod.method("jlopencv_cv_VideoCapture_setExceptionMode",  [](VideoCapture& cobj, bool& enable) { cobj.setExceptionMode(enable);  ;});
    mod.method("jlopencv_cv_VideoCapture_getExceptionMode",  [](VideoCapture& cobj) { auto retval = cobj.getExceptionMode();  return retval;});mod.add_type<cv::VideoWriter>("VideoWriter")
.constructor<>()
.constructor<const String&,const int&,const double&,const Size&,const bool&>()
.constructor<const String&,const int&,const int&,const double&,const Size&,const bool&>()

;
    mod.method("jlopencv_cv_VideoWriter_open",  [](VideoWriter& cobj, String& filename, int& fourcc, double& fps, Size& frameSize, bool& isColor) { auto retval = cobj.open(filename, fourcc, fps, frameSize, isColor);  return retval;});
    mod.method("jlopencv_cv_VideoWriter_open",  [](VideoWriter& cobj, String& filename, int& apiPreference, int& fourcc, double& fps, Size& frameSize, bool& isColor) { auto retval = cobj.open(filename, apiPreference, fourcc, fps, frameSize, isColor);  return retval;});
    mod.method("jlopencv_cv_VideoWriter_isOpened",  [](VideoWriter& cobj) { auto retval = cobj.isOpened();  return retval;});
    mod.method("jlopencv_cv_VideoWriter_release",  [](VideoWriter& cobj) { cobj.release();  ;});
    mod.method("jlopencv_cv_VideoWriter_write",  [](VideoWriter& cobj, Mat& image) { cobj.write(image);  ;});
    mod.method("jlopencv_cv_VideoWriter_write",  [](VideoWriter& cobj, UMat& image) { cobj.write(image);  ;});
    mod.method("jlopencv_cv_VideoWriter_set",  [](VideoWriter& cobj, int& propId, double& value) { auto retval = cobj.set(propId, value);  return retval;});
    mod.method("jlopencv_cv_VideoWriter_get",  [](VideoWriter& cobj, int& propId) { auto retval = cobj.get(propId);  return retval;});
    mod.method("jlopencv_cv_VideoWriter_fourcc",  [](VideoWriter& cobj, char& c1, char& c2, char& c3, char& c4) { auto retval = cv::VideoWriter::fourcc(c1, c2, c3, c4); return retval;});
    mod.method("jlopencv_cv_VideoWriter_getBackendName",  [](VideoWriter& cobj) { auto retval = cobj.getBackendName();  return retval;});
    mod.method("jlopencv_cv_borderInterpolate",  [](int& p, int& len, int& borderType) { auto retval = cv::borderInterpolate(p, len, borderType); return retval;});
    mod.method("jlopencv_cv_copyMakeBorder",  [](Mat& src, int& top, int& bottom, int& left, int& right, int& borderType, Mat& dst, Scalar& value) { cv::copyMakeBorder(src, dst, top, bottom, left, right, borderType, value); return dst;});
    mod.method("jlopencv_cv_copyMakeBorder",  [](UMat& src, int& top, int& bottom, int& left, int& right, int& borderType, UMat& dst, Scalar& value) { cv::copyMakeBorder(src, dst, top, bottom, left, right, borderType, value); return dst;});
    mod.method("jlopencv_cv_add",  [](Mat& src1, Mat& src2, Mat& dst, Mat& mask, int& dtype) { cv::add(src1, src2, dst, mask, dtype); return dst;});
    mod.method("jlopencv_cv_add",  [](UMat& src1, UMat& src2, UMat& dst, UMat& mask, int& dtype) { cv::add(src1, src2, dst, mask, dtype); return dst;});
    mod.method("jlopencv_cv_subtract",  [](Mat& src1, Mat& src2, Mat& dst, Mat& mask, int& dtype) { cv::subtract(src1, src2, dst, mask, dtype); return dst;});
    mod.method("jlopencv_cv_subtract",  [](UMat& src1, UMat& src2, UMat& dst, UMat& mask, int& dtype) { cv::subtract(src1, src2, dst, mask, dtype); return dst;});
    mod.method("jlopencv_cv_multiply",  [](Mat& src1, Mat& src2, Mat& dst, double& scale, int& dtype) { cv::multiply(src1, src2, dst, scale, dtype); return dst;});
    mod.method("jlopencv_cv_multiply",  [](UMat& src1, UMat& src2, UMat& dst, double& scale, int& dtype) { cv::multiply(src1, src2, dst, scale, dtype); return dst;});
    mod.method("jlopencv_cv_divide",  [](Mat& src1, Mat& src2, Mat& dst, double& scale, int& dtype) { cv::divide(src1, src2, dst, scale, dtype); return dst;});
    mod.method("jlopencv_cv_divide",  [](UMat& src1, UMat& src2, UMat& dst, double& scale, int& dtype) { cv::divide(src1, src2, dst, scale, dtype); return dst;});
    mod.method("jlopencv_cv_divide",  [](double& scale, Mat& src2, Mat& dst, int& dtype) { cv::divide(scale, src2, dst, dtype); return dst;});
    mod.method("jlopencv_cv_divide",  [](double& scale, UMat& src2, UMat& dst, int& dtype) { cv::divide(scale, src2, dst, dtype); return dst;});
    mod.method("jlopencv_cv_scaleAdd",  [](Mat& src1, double& alpha, Mat& src2, Mat& dst) { cv::scaleAdd(src1, alpha, src2, dst); return dst;});
    mod.method("jlopencv_cv_scaleAdd",  [](UMat& src1, double& alpha, UMat& src2, UMat& dst) { cv::scaleAdd(src1, alpha, src2, dst); return dst;});
    mod.method("jlopencv_cv_addWeighted",  [](Mat& src1, double& alpha, Mat& src2, double& beta, double& gamma, Mat& dst, int& dtype) { cv::addWeighted(src1, alpha, src2, beta, gamma, dst, dtype); return dst;});
    mod.method("jlopencv_cv_addWeighted",  [](UMat& src1, double& alpha, UMat& src2, double& beta, double& gamma, UMat& dst, int& dtype) { cv::addWeighted(src1, alpha, src2, beta, gamma, dst, dtype); return dst;});
    mod.method("jlopencv_cv_convertScaleAbs",  [](Mat& src, Mat& dst, double& alpha, double& beta) { cv::convertScaleAbs(src, dst, alpha, beta); return dst;});
    mod.method("jlopencv_cv_convertScaleAbs",  [](UMat& src, UMat& dst, double& alpha, double& beta) { cv::convertScaleAbs(src, dst, alpha, beta); return dst;});
    mod.method("jlopencv_cv_convertFp16",  [](Mat& src, Mat& dst) { cv::convertFp16(src, dst); return dst;});
    mod.method("jlopencv_cv_convertFp16",  [](UMat& src, UMat& dst) { cv::convertFp16(src, dst); return dst;});
    mod.method("jlopencv_cv_LUT",  [](Mat& src, Mat& lut, Mat& dst) { cv::LUT(src, lut, dst); return dst;});
    mod.method("jlopencv_cv_LUT",  [](UMat& src, UMat& lut, UMat& dst) { cv::LUT(src, lut, dst); return dst;});
    mod.method("jlopencv_cv_sumElems",  [](Mat& src) { auto retval = cv::sum(src); return retval;});
    mod.method("jlopencv_cv_sumElems",  [](UMat& src) { auto retval = cv::sum(src); return retval;});
    mod.method("jlopencv_cv_countNonZero",  [](Mat& src) { auto retval = cv::countNonZero(src); return retval;});
    mod.method("jlopencv_cv_countNonZero",  [](UMat& src) { auto retval = cv::countNonZero(src); return retval;});
    mod.method("jlopencv_cv_findNonZero",  [](Mat& src, Mat& idx) { cv::findNonZero(src, idx); return idx;});
    mod.method("jlopencv_cv_findNonZero",  [](UMat& src, UMat& idx) { cv::findNonZero(src, idx); return idx;});
    mod.method("jlopencv_cv_mean",  [](Mat& src, Mat& mask) { auto retval = cv::mean(src, mask); return retval;});
    mod.method("jlopencv_cv_mean",  [](UMat& src, UMat& mask) { auto retval = cv::mean(src, mask); return retval;});
    mod.method("jlopencv_cv_meanStdDev",  [](Mat& src, Mat& mean, Mat& stddev, Mat& mask) { cv::meanStdDev(src, mean, stddev, mask); return make_tuple<Mat,Mat>(move(mean),move(stddev));});
    mod.method("jlopencv_cv_meanStdDev",  [](UMat& src, UMat& mean, UMat& stddev, UMat& mask) { cv::meanStdDev(src, mean, stddev, mask); return make_tuple<UMat,UMat>(move(mean),move(stddev));});
    mod.method("jlopencv_cv_norm",  [](Mat& src1, int& normType, Mat& mask) { auto retval = cv::norm(src1, normType, mask); return retval;});
    mod.method("jlopencv_cv_norm",  [](UMat& src1, int& normType, UMat& mask) { auto retval = cv::norm(src1, normType, mask); return retval;});
    mod.method("jlopencv_cv_norm",  [](Mat& src1, Mat& src2, int& normType, Mat& mask) { auto retval = cv::norm(src1, src2, normType, mask); return retval;});
    mod.method("jlopencv_cv_norm",  [](UMat& src1, UMat& src2, int& normType, UMat& mask) { auto retval = cv::norm(src1, src2, normType, mask); return retval;});
    mod.method("jlopencv_cv_PSNR",  [](Mat& src1, Mat& src2, double& R) { auto retval = cv::PSNR(src1, src2, R); return retval;});
    mod.method("jlopencv_cv_PSNR",  [](UMat& src1, UMat& src2, double& R) { auto retval = cv::PSNR(src1, src2, R); return retval;});
    mod.method("jlopencv_cv_batchDistance",  [](Mat& src1, Mat& src2, int& dtype, Mat& dist, Mat& nidx, int& normType, int& K, Mat& mask, int& update, bool& crosscheck) { cv::batchDistance(src1, src2, dist, dtype, nidx, normType, K, mask, update, crosscheck); return make_tuple<Mat,Mat>(move(dist),move(nidx));});
    mod.method("jlopencv_cv_batchDistance",  [](UMat& src1, UMat& src2, int& dtype, UMat& dist, UMat& nidx, int& normType, int& K, UMat& mask, int& update, bool& crosscheck) { cv::batchDistance(src1, src2, dist, dtype, nidx, normType, K, mask, update, crosscheck); return make_tuple<UMat,UMat>(move(dist),move(nidx));});
    mod.method("jlopencv_cv_normalize",  [](Mat& src, Mat& dst, double& alpha, double& beta, int& norm_type, int& dtype, Mat& mask) { cv::normalize(src, dst, alpha, beta, norm_type, dtype, mask); return dst;});
    mod.method("jlopencv_cv_normalize",  [](UMat& src, UMat& dst, double& alpha, double& beta, int& norm_type, int& dtype, UMat& mask) { cv::normalize(src, dst, alpha, beta, norm_type, dtype, mask); return dst;});
    mod.method("jlopencv_cv_minMaxLoc",  [](Mat& src, Mat& mask) {double minVal;double maxVal;Point minLoc;Point maxLoc; cv::minMaxLoc(src, minVal, maxVal, minLoc, maxLoc, mask); return make_tuple<double,double,Point,Point>(move(minVal),move(maxVal),move(minLoc),move(maxLoc));});
    mod.method("jlopencv_cv_minMaxLoc",  [](UMat& src, UMat& mask) {double minVal;double maxVal;Point minLoc;Point maxLoc; cv::minMaxLoc(src, minVal, maxVal, minLoc, maxLoc, mask); return make_tuple<double,double,Point,Point>(move(minVal),move(maxVal),move(minLoc),move(maxLoc));});
    mod.method("jlopencv_cv_reduce",  [](Mat& src, int& dim, int& rtype, Mat& dst, int& dtype) { cv::reduce(src, dst, dim, rtype, dtype); return dst;});
    mod.method("jlopencv_cv_reduce",  [](UMat& src, int& dim, int& rtype, UMat& dst, int& dtype) { cv::reduce(src, dst, dim, rtype, dtype); return dst;});
    mod.method("jlopencv_cv_merge",  [](vector<Mat>& mv, Mat& dst) { cv::merge(mv, dst); return dst;});
    mod.method("jlopencv_cv_merge",  [](vector<UMat>& mv, UMat& dst) { cv::merge(mv, dst); return dst;});
    mod.method("jlopencv_cv_split",  [](Mat& m) {vector<Mat> mv; cv::split(m, mv); return mv;});
    mod.method("jlopencv_cv_split",  [](UMat& m) {vector<UMat> mv; cv::split(m, mv); return mv;});
    mod.method("jlopencv_cv_mixChannels",  [](vector<Mat>& src, vector<Mat>& dst, vector<int>& fromTo) { cv::mixChannels(src, dst, fromTo); return dst;});
    mod.method("jlopencv_cv_mixChannels",  [](vector<UMat>& src, vector<UMat>& dst, vector<int>& fromTo) { cv::mixChannels(src, dst, fromTo); return dst;});
    mod.method("jlopencv_cv_extractChannel",  [](Mat& src, int& coi, Mat& dst) { cv::extractChannel(src, dst, coi); return dst;});
    mod.method("jlopencv_cv_extractChannel",  [](UMat& src, int& coi, UMat& dst) { cv::extractChannel(src, dst, coi); return dst;});
    mod.method("jlopencv_cv_insertChannel",  [](Mat& src, Mat& dst, int& coi) { cv::insertChannel(src, dst, coi); return dst;});
    mod.method("jlopencv_cv_insertChannel",  [](UMat& src, UMat& dst, int& coi) { cv::insertChannel(src, dst, coi); return dst;});
    mod.method("jlopencv_cv_flip",  [](Mat& src, int& flipCode, Mat& dst) { cv::flip(src, dst, flipCode); return dst;});
    mod.method("jlopencv_cv_flip",  [](UMat& src, int& flipCode, UMat& dst) { cv::flip(src, dst, flipCode); return dst;});
    mod.method("jlopencv_cv_rotate",  [](Mat& src, int& rotateCode, Mat& dst) { cv::rotate(src, dst, rotateCode); return dst;});
    mod.method("jlopencv_cv_rotate",  [](UMat& src, int& rotateCode, UMat& dst) { cv::rotate(src, dst, rotateCode); return dst;});
    mod.method("jlopencv_cv_repeat",  [](Mat& src, int& ny, int& nx, Mat& dst) { cv::repeat(src, ny, nx, dst); return dst;});
    mod.method("jlopencv_cv_repeat",  [](UMat& src, int& ny, int& nx, UMat& dst) { cv::repeat(src, ny, nx, dst); return dst;});
    mod.method("jlopencv_cv_hconcat",  [](vector<Mat>& src, Mat& dst) { cv::hconcat(src, dst); return dst;});
    mod.method("jlopencv_cv_hconcat",  [](vector<UMat>& src, UMat& dst) { cv::hconcat(src, dst); return dst;});
    mod.method("jlopencv_cv_vconcat",  [](vector<Mat>& src, Mat& dst) { cv::vconcat(src, dst); return dst;});
    mod.method("jlopencv_cv_vconcat",  [](vector<UMat>& src, UMat& dst) { cv::vconcat(src, dst); return dst;});
    mod.method("jlopencv_cv_bitwise_and",  [](Mat& src1, Mat& src2, Mat& dst, Mat& mask) { cv::bitwise_and(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_bitwise_and",  [](UMat& src1, UMat& src2, UMat& dst, UMat& mask) { cv::bitwise_and(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_bitwise_or",  [](Mat& src1, Mat& src2, Mat& dst, Mat& mask) { cv::bitwise_or(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_bitwise_or",  [](UMat& src1, UMat& src2, UMat& dst, UMat& mask) { cv::bitwise_or(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_bitwise_xor",  [](Mat& src1, Mat& src2, Mat& dst, Mat& mask) { cv::bitwise_xor(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_bitwise_xor",  [](UMat& src1, UMat& src2, UMat& dst, UMat& mask) { cv::bitwise_xor(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_bitwise_not",  [](Mat& src, Mat& dst, Mat& mask) { cv::bitwise_not(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_bitwise_not",  [](UMat& src, UMat& dst, UMat& mask) { cv::bitwise_not(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_absdiff",  [](Mat& src1, Mat& src2, Mat& dst) { cv::absdiff(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_absdiff",  [](UMat& src1, UMat& src2, UMat& dst) { cv::absdiff(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_copyTo",  [](Mat& src, Mat& mask, Mat& dst) { cv::copyTo(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_copyTo",  [](UMat& src, UMat& mask, UMat& dst) { cv::copyTo(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_inRange",  [](Mat& src, Mat& lowerb, Mat& upperb, Mat& dst) { cv::inRange(src, lowerb, upperb, dst); return dst;});
    mod.method("jlopencv_cv_inRange",  [](UMat& src, UMat& lowerb, UMat& upperb, UMat& dst) { cv::inRange(src, lowerb, upperb, dst); return dst;});
    mod.method("jlopencv_cv_compare",  [](Mat& src1, Mat& src2, int& cmpop, Mat& dst) { cv::compare(src1, src2, dst, cmpop); return dst;});
    mod.method("jlopencv_cv_compare",  [](UMat& src1, UMat& src2, int& cmpop, UMat& dst) { cv::compare(src1, src2, dst, cmpop); return dst;});
    mod.method("jlopencv_cv_min",  [](Mat& src1, Mat& src2, Mat& dst) { cv::min(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_min",  [](UMat& src1, UMat& src2, UMat& dst) { cv::min(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_max",  [](Mat& src1, Mat& src2, Mat& dst) { cv::max(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_max",  [](UMat& src1, UMat& src2, UMat& dst) { cv::max(src1, src2, dst); return dst;});
    mod.method("jlopencv_cv_sqrt",  [](Mat& src, Mat& dst) { cv::sqrt(src, dst); return dst;});
    mod.method("jlopencv_cv_sqrt",  [](UMat& src, UMat& dst) { cv::sqrt(src, dst); return dst;});
    mod.method("jlopencv_cv_pow",  [](Mat& src, double& power, Mat& dst) { cv::pow(src, power, dst); return dst;});
    mod.method("jlopencv_cv_pow",  [](UMat& src, double& power, UMat& dst) { cv::pow(src, power, dst); return dst;});
    mod.method("jlopencv_cv_exp",  [](Mat& src, Mat& dst) { cv::exp(src, dst); return dst;});
    mod.method("jlopencv_cv_exp",  [](UMat& src, UMat& dst) { cv::exp(src, dst); return dst;});
    mod.method("jlopencv_cv_log",  [](Mat& src, Mat& dst) { cv::log(src, dst); return dst;});
    mod.method("jlopencv_cv_log",  [](UMat& src, UMat& dst) { cv::log(src, dst); return dst;});
    mod.method("jlopencv_cv_polarToCart",  [](Mat& magnitude, Mat& angle, Mat& x, Mat& y, bool& angleInDegrees) { cv::polarToCart(magnitude, angle, x, y, angleInDegrees); return make_tuple<Mat,Mat>(move(x),move(y));});
    mod.method("jlopencv_cv_polarToCart",  [](UMat& magnitude, UMat& angle, UMat& x, UMat& y, bool& angleInDegrees) { cv::polarToCart(magnitude, angle, x, y, angleInDegrees); return make_tuple<UMat,UMat>(move(x),move(y));});
    mod.method("jlopencv_cv_cartToPolar",  [](Mat& x, Mat& y, Mat& magnitude, Mat& angle, bool& angleInDegrees) { cv::cartToPolar(x, y, magnitude, angle, angleInDegrees); return make_tuple<Mat,Mat>(move(magnitude),move(angle));});
    mod.method("jlopencv_cv_cartToPolar",  [](UMat& x, UMat& y, UMat& magnitude, UMat& angle, bool& angleInDegrees) { cv::cartToPolar(x, y, magnitude, angle, angleInDegrees); return make_tuple<UMat,UMat>(move(magnitude),move(angle));});
    mod.method("jlopencv_cv_phase",  [](Mat& x, Mat& y, Mat& angle, bool& angleInDegrees) { cv::phase(x, y, angle, angleInDegrees); return angle;});
    mod.method("jlopencv_cv_phase",  [](UMat& x, UMat& y, UMat& angle, bool& angleInDegrees) { cv::phase(x, y, angle, angleInDegrees); return angle;});
    mod.method("jlopencv_cv_magnitude",  [](Mat& x, Mat& y, Mat& magnitude) { cv::magnitude(x, y, magnitude); return magnitude;});
    mod.method("jlopencv_cv_magnitude",  [](UMat& x, UMat& y, UMat& magnitude) { cv::magnitude(x, y, magnitude); return magnitude;});
    mod.method("jlopencv_cv_checkRange",  [](Mat& a, bool& quiet, double& minVal, double& maxVal) {Point pos; auto retval = cv::checkRange(a, quiet, pos, minVal, maxVal); return make_tuple<bool,Point>(move(retval),move(pos));});
    mod.method("jlopencv_cv_checkRange",  [](UMat& a, bool& quiet, double& minVal, double& maxVal) {Point pos; auto retval = cv::checkRange(a, quiet, pos, minVal, maxVal); return make_tuple<bool,Point>(move(retval),move(pos));});
    mod.method("jlopencv_cv_patchNaNs",  [](Mat& a, double& val) { cv::patchNaNs(a, val); return a;});
    mod.method("jlopencv_cv_patchNaNs",  [](UMat& a, double& val) { cv::patchNaNs(a, val); return a;});
    mod.method("jlopencv_cv_gemm",  [](Mat& src1, Mat& src2, double& alpha, Mat& src3, double& beta, Mat& dst, int& flags) { cv::gemm(src1, src2, alpha, src3, beta, dst, flags); return dst;});
    mod.method("jlopencv_cv_gemm",  [](UMat& src1, UMat& src2, double& alpha, UMat& src3, double& beta, UMat& dst, int& flags) { cv::gemm(src1, src2, alpha, src3, beta, dst, flags); return dst;});
    mod.method("jlopencv_cv_mulTransposed",  [](Mat& src, bool& aTa, Mat& dst, Mat& delta, double& scale, int& dtype) { cv::mulTransposed(src, dst, aTa, delta, scale, dtype); return dst;});
    mod.method("jlopencv_cv_mulTransposed",  [](UMat& src, bool& aTa, UMat& dst, UMat& delta, double& scale, int& dtype) { cv::mulTransposed(src, dst, aTa, delta, scale, dtype); return dst;});
    mod.method("jlopencv_cv_transpose",  [](Mat& src, Mat& dst) { cv::transpose(src, dst); return dst;});
    mod.method("jlopencv_cv_transpose",  [](UMat& src, UMat& dst) { cv::transpose(src, dst); return dst;});
    mod.method("jlopencv_cv_transform",  [](Mat& src, Mat& m, Mat& dst) { cv::transform(src, dst, m); return dst;});
    mod.method("jlopencv_cv_transform",  [](UMat& src, UMat& m, UMat& dst) { cv::transform(src, dst, m); return dst;});
    mod.method("jlopencv_cv_perspectiveTransform",  [](Mat& src, Mat& m, Mat& dst) { cv::perspectiveTransform(src, dst, m); return dst;});
    mod.method("jlopencv_cv_perspectiveTransform",  [](UMat& src, UMat& m, UMat& dst) { cv::perspectiveTransform(src, dst, m); return dst;});
    mod.method("jlopencv_cv_completeSymm",  [](Mat& m, bool& lowerToUpper) { cv::completeSymm(m, lowerToUpper); return m;});
    mod.method("jlopencv_cv_completeSymm",  [](UMat& m, bool& lowerToUpper) { cv::completeSymm(m, lowerToUpper); return m;});
    mod.method("jlopencv_cv_setIdentity",  [](Mat& mtx, Scalar& s) { cv::setIdentity(mtx, s); return mtx;});
    mod.method("jlopencv_cv_setIdentity",  [](UMat& mtx, Scalar& s) { cv::setIdentity(mtx, s); return mtx;});
    mod.method("jlopencv_cv_determinant",  [](Mat& mtx) { auto retval = cv::determinant(mtx); return retval;});
    mod.method("jlopencv_cv_determinant",  [](UMat& mtx) { auto retval = cv::determinant(mtx); return retval;});
    mod.method("jlopencv_cv_trace",  [](Mat& mtx) { auto retval = cv::trace(mtx); return retval;});
    mod.method("jlopencv_cv_trace",  [](UMat& mtx) { auto retval = cv::trace(mtx); return retval;});
    mod.method("jlopencv_cv_invert",  [](Mat& src, Mat& dst, int& flags) { auto retval = cv::invert(src, dst, flags); return make_tuple<double,Mat>(move(retval),move(dst));});
    mod.method("jlopencv_cv_invert",  [](UMat& src, UMat& dst, int& flags) { auto retval = cv::invert(src, dst, flags); return make_tuple<double,UMat>(move(retval),move(dst));});
    mod.method("jlopencv_cv_solve",  [](Mat& src1, Mat& src2, Mat& dst, int& flags) { auto retval = cv::solve(src1, src2, dst, flags); return make_tuple<bool,Mat>(move(retval),move(dst));});
    mod.method("jlopencv_cv_solve",  [](UMat& src1, UMat& src2, UMat& dst, int& flags) { auto retval = cv::solve(src1, src2, dst, flags); return make_tuple<bool,UMat>(move(retval),move(dst));});
    mod.method("jlopencv_cv_sort",  [](Mat& src, int& flags, Mat& dst) { cv::sort(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_sort",  [](UMat& src, int& flags, UMat& dst) { cv::sort(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_sortIdx",  [](Mat& src, int& flags, Mat& dst) { cv::sortIdx(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_sortIdx",  [](UMat& src, int& flags, UMat& dst) { cv::sortIdx(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_solveCubic",  [](Mat& coeffs, Mat& roots) { auto retval = cv::solveCubic(coeffs, roots); return make_tuple<int,Mat>(move(retval),move(roots));});
    mod.method("jlopencv_cv_solveCubic",  [](UMat& coeffs, UMat& roots) { auto retval = cv::solveCubic(coeffs, roots); return make_tuple<int,UMat>(move(retval),move(roots));});
    mod.method("jlopencv_cv_solvePoly",  [](Mat& coeffs, Mat& roots, int& maxIters) { auto retval = cv::solvePoly(coeffs, roots, maxIters); return make_tuple<double,Mat>(move(retval),move(roots));});
    mod.method("jlopencv_cv_solvePoly",  [](UMat& coeffs, UMat& roots, int& maxIters) { auto retval = cv::solvePoly(coeffs, roots, maxIters); return make_tuple<double,UMat>(move(retval),move(roots));});
    mod.method("jlopencv_cv_eigen",  [](Mat& src, Mat& eigenvalues, Mat& eigenvectors) { auto retval = cv::eigen(src, eigenvalues, eigenvectors); return make_tuple<bool,Mat,Mat>(move(retval),move(eigenvalues),move(eigenvectors));});
    mod.method("jlopencv_cv_eigen",  [](UMat& src, UMat& eigenvalues, UMat& eigenvectors) { auto retval = cv::eigen(src, eigenvalues, eigenvectors); return make_tuple<bool,UMat,UMat>(move(retval),move(eigenvalues),move(eigenvectors));});
    mod.method("jlopencv_cv_eigenNonSymmetric",  [](Mat& src, Mat& eigenvalues, Mat& eigenvectors) { cv::eigenNonSymmetric(src, eigenvalues, eigenvectors); return make_tuple<Mat,Mat>(move(eigenvalues),move(eigenvectors));});
    mod.method("jlopencv_cv_eigenNonSymmetric",  [](UMat& src, UMat& eigenvalues, UMat& eigenvectors) { cv::eigenNonSymmetric(src, eigenvalues, eigenvectors); return make_tuple<UMat,UMat>(move(eigenvalues),move(eigenvectors));});
    mod.method("jlopencv_cv_calcCovarMatrix",  [](Mat& samples, Mat& mean, int& flags, Mat& covar, int& ctype) { cv::calcCovarMatrix(samples, covar, mean, flags, ctype); return make_tuple<Mat,Mat>(move(covar),move(mean));});
    mod.method("jlopencv_cv_calcCovarMatrix",  [](UMat& samples, UMat& mean, int& flags, UMat& covar, int& ctype) { cv::calcCovarMatrix(samples, covar, mean, flags, ctype); return make_tuple<UMat,UMat>(move(covar),move(mean));});
    mod.method("jlopencv_cv_PCACompute",  [](Mat& data, Mat& mean, Mat& eigenvectors, int& maxComponents) { cv::PCACompute(data, mean, eigenvectors, maxComponents); return make_tuple<Mat,Mat>(move(mean),move(eigenvectors));});
    mod.method("jlopencv_cv_PCACompute",  [](UMat& data, UMat& mean, UMat& eigenvectors, int& maxComponents) { cv::PCACompute(data, mean, eigenvectors, maxComponents); return make_tuple<UMat,UMat>(move(mean),move(eigenvectors));});
    mod.method("jlopencv_cv_PCACompute",  [](Mat& data, Mat& mean, double& retainedVariance, Mat& eigenvectors) { cv::PCACompute(data, mean, eigenvectors, retainedVariance); return make_tuple<Mat,Mat>(move(mean),move(eigenvectors));});
    mod.method("jlopencv_cv_PCACompute",  [](UMat& data, UMat& mean, double& retainedVariance, UMat& eigenvectors) { cv::PCACompute(data, mean, eigenvectors, retainedVariance); return make_tuple<UMat,UMat>(move(mean),move(eigenvectors));});
    mod.method("jlopencv_cv_PCACompute2",  [](Mat& data, Mat& mean, Mat& eigenvectors, Mat& eigenvalues, int& maxComponents) { cv::PCACompute(data, mean, eigenvectors, eigenvalues, maxComponents); return make_tuple<Mat,Mat,Mat>(move(mean),move(eigenvectors),move(eigenvalues));});
    mod.method("jlopencv_cv_PCACompute2",  [](UMat& data, UMat& mean, UMat& eigenvectors, UMat& eigenvalues, int& maxComponents) { cv::PCACompute(data, mean, eigenvectors, eigenvalues, maxComponents); return make_tuple<UMat,UMat,UMat>(move(mean),move(eigenvectors),move(eigenvalues));});
    mod.method("jlopencv_cv_PCACompute2",  [](Mat& data, Mat& mean, double& retainedVariance, Mat& eigenvectors, Mat& eigenvalues) { cv::PCACompute(data, mean, eigenvectors, eigenvalues, retainedVariance); return make_tuple<Mat,Mat,Mat>(move(mean),move(eigenvectors),move(eigenvalues));});
    mod.method("jlopencv_cv_PCACompute2",  [](UMat& data, UMat& mean, double& retainedVariance, UMat& eigenvectors, UMat& eigenvalues) { cv::PCACompute(data, mean, eigenvectors, eigenvalues, retainedVariance); return make_tuple<UMat,UMat,UMat>(move(mean),move(eigenvectors),move(eigenvalues));});
    mod.method("jlopencv_cv_PCAProject",  [](Mat& data, Mat& mean, Mat& eigenvectors, Mat& result) { cv::PCAProject(data, mean, eigenvectors, result); return result;});
    mod.method("jlopencv_cv_PCAProject",  [](UMat& data, UMat& mean, UMat& eigenvectors, UMat& result) { cv::PCAProject(data, mean, eigenvectors, result); return result;});
    mod.method("jlopencv_cv_PCABackProject",  [](Mat& data, Mat& mean, Mat& eigenvectors, Mat& result) { cv::PCABackProject(data, mean, eigenvectors, result); return result;});
    mod.method("jlopencv_cv_PCABackProject",  [](UMat& data, UMat& mean, UMat& eigenvectors, UMat& result) { cv::PCABackProject(data, mean, eigenvectors, result); return result;});
    mod.method("jlopencv_cv_SVDecomp",  [](Mat& src, Mat& w, Mat& u, Mat& vt, int& flags) { cv::SVDecomp(src, w, u, vt, flags); return make_tuple<Mat,Mat,Mat>(move(w),move(u),move(vt));});
    mod.method("jlopencv_cv_SVDecomp",  [](UMat& src, UMat& w, UMat& u, UMat& vt, int& flags) { cv::SVDecomp(src, w, u, vt, flags); return make_tuple<UMat,UMat,UMat>(move(w),move(u),move(vt));});
    mod.method("jlopencv_cv_SVBackSubst",  [](Mat& w, Mat& u, Mat& vt, Mat& rhs, Mat& dst) { cv::SVBackSubst(w, u, vt, rhs, dst); return dst;});
    mod.method("jlopencv_cv_SVBackSubst",  [](UMat& w, UMat& u, UMat& vt, UMat& rhs, UMat& dst) { cv::SVBackSubst(w, u, vt, rhs, dst); return dst;});
    mod.method("jlopencv_cv_Mahalanobis",  [](Mat& v1, Mat& v2, Mat& icovar) { auto retval = cv::Mahalanobis(v1, v2, icovar); return retval;});
    mod.method("jlopencv_cv_Mahalanobis",  [](UMat& v1, UMat& v2, UMat& icovar) { auto retval = cv::Mahalanobis(v1, v2, icovar); return retval;});
    mod.method("jlopencv_cv_dft",  [](Mat& src, Mat& dst, int& flags, int& nonzeroRows) { cv::dft(src, dst, flags, nonzeroRows); return dst;});
    mod.method("jlopencv_cv_dft",  [](UMat& src, UMat& dst, int& flags, int& nonzeroRows) { cv::dft(src, dst, flags, nonzeroRows); return dst;});
    mod.method("jlopencv_cv_idft",  [](Mat& src, Mat& dst, int& flags, int& nonzeroRows) { cv::idft(src, dst, flags, nonzeroRows); return dst;});
    mod.method("jlopencv_cv_idft",  [](UMat& src, UMat& dst, int& flags, int& nonzeroRows) { cv::idft(src, dst, flags, nonzeroRows); return dst;});
    mod.method("jlopencv_cv_dct",  [](Mat& src, Mat& dst, int& flags) { cv::dct(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_dct",  [](UMat& src, UMat& dst, int& flags) { cv::dct(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_idct",  [](Mat& src, Mat& dst, int& flags) { cv::idct(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_idct",  [](UMat& src, UMat& dst, int& flags) { cv::idct(src, dst, flags); return dst;});
    mod.method("jlopencv_cv_mulSpectrums",  [](Mat& a, Mat& b, int& flags, Mat& c, bool& conjB) { cv::mulSpectrums(a, b, c, flags, conjB); return c;});
    mod.method("jlopencv_cv_mulSpectrums",  [](UMat& a, UMat& b, int& flags, UMat& c, bool& conjB) { cv::mulSpectrums(a, b, c, flags, conjB); return c;});
    mod.method("jlopencv_cv_getOptimalDFTSize",  [](int& vecsize) { auto retval = cv::getOptimalDFTSize(vecsize); return retval;});
    mod.method("jlopencv_cv_setRNGSeed",  [](int& seed) { cv::setRNGSeed(seed); ;});
    mod.method("jlopencv_cv_randu",  [](Mat& dst, Mat& low, Mat& high) { cv::randu(dst, low, high); return dst;});
    mod.method("jlopencv_cv_randu",  [](UMat& dst, UMat& low, UMat& high) { cv::randu(dst, low, high); return dst;});
    mod.method("jlopencv_cv_randn",  [](Mat& dst, Mat& mean, Mat& stddev) { cv::randn(dst, mean, stddev); return dst;});
    mod.method("jlopencv_cv_randn",  [](UMat& dst, UMat& mean, UMat& stddev) { cv::randn(dst, mean, stddev); return dst;});
    mod.method("jlopencv_cv_randShuffle",  [](Mat& dst, double& iterFactor) { cv::randShuffle(dst, iterFactor, rng); return dst;});
    mod.method("jlopencv_cv_randShuffle",  [](UMat& dst, double& iterFactor) { cv::randShuffle(dst, iterFactor, rng); return dst;});
    mod.method("jlopencv_cv_kmeans",  [](Mat& data, int& K, Mat& bestLabels, TermCriteria& criteria, int& attempts, int& flags, Mat& centers) { auto retval = cv::kmeans(data, K, bestLabels, criteria, attempts, flags, centers); return make_tuple<double,Mat,Mat>(move(retval),move(bestLabels),move(centers));});
    mod.method("jlopencv_cv_kmeans",  [](UMat& data, int& K, UMat& bestLabels, TermCriteria& criteria, int& attempts, int& flags, UMat& centers) { auto retval = cv::kmeans(data, K, bestLabels, criteria, attempts, flags, centers); return make_tuple<double,UMat,UMat>(move(retval),move(bestLabels),move(centers));});
    mod.method("jlopencv_cv_KeyPoint_convert",  [](vector<KeyPoint>& keypoints, vector<int>& keypointIndexes) {vector<Point2f> points2f; cv::KeyPoint::convert(keypoints, points2f, keypointIndexes); return points2f;});
    mod.method("jlopencv_cv_KeyPoint_convert",  [](vector<Point2f>& points2f, float& size, float& response, int& octave, int& class_id) {vector<KeyPoint> keypoints; cv::KeyPoint::convert(points2f, keypoints, size, response, octave, class_id); return keypoints;});
    mod.method("jlopencv_cv_CascadeClassifier_convert",  [](String& oldcascade, String& newcascade) { auto retval = cv::CascadeClassifier::convert(oldcascade, newcascade); return retval;});
    mod.method("jlopencv_cv_KeyPoint_overlap",  [](KeyPoint& kp1, KeyPoint& kp2) { auto retval = cv::KeyPoint::overlap(kp1, kp2); return retval;});
    mod.method("jlopencv_cv_createLineSegmentDetector",  [](int& _refine, double& _scale, double& _sigma_scale, double& _quant, double& _ang_th, double& _log_eps, double& _density_th, int& _n_bins) { auto retval = cv::createLineSegmentDetector(_refine, _scale, _sigma_scale, _quant, _ang_th, _log_eps, _density_th, _n_bins); return retval;});
    mod.method("jlopencv_cv_getGaussianKernel",  [](int& ksize, double& sigma, int& ktype) { auto retval = cv::getGaussianKernel(ksize, sigma, ktype); return retval;});
    mod.method("jlopencv_cv_getDerivKernels",  [](int& dx, int& dy, int& ksize, Mat& kx, Mat& ky, bool& normalize, int& ktype) { cv::getDerivKernels(kx, ky, dx, dy, ksize, normalize, ktype); return make_tuple<Mat,Mat>(move(kx),move(ky));});
    mod.method("jlopencv_cv_getDerivKernels",  [](int& dx, int& dy, int& ksize, UMat& kx, UMat& ky, bool& normalize, int& ktype) { cv::getDerivKernels(kx, ky, dx, dy, ksize, normalize, ktype); return make_tuple<UMat,UMat>(move(kx),move(ky));});
    mod.method("jlopencv_cv_getGaborKernel",  [](Size& ksize, double& sigma, double& theta, double& lambd, double& gamma, double& psi, int& ktype) { auto retval = cv::getGaborKernel(ksize, sigma, theta, lambd, gamma, psi, ktype); return retval;});
    mod.method("jlopencv_cv_getStructuringElement",  [](int& shape, Size& ksize, Point& anchor) { auto retval = cv::getStructuringElement(shape, ksize, anchor); return retval;});
    mod.method("jlopencv_cv_medianBlur",  [](Mat& src, int& ksize, Mat& dst) { cv::medianBlur(src, dst, ksize); return dst;});
    mod.method("jlopencv_cv_medianBlur",  [](UMat& src, int& ksize, UMat& dst) { cv::medianBlur(src, dst, ksize); return dst;});
    mod.method("jlopencv_cv_GaussianBlur",  [](Mat& src, Size& ksize, double& sigmaX, Mat& dst, double& sigmaY, int& borderType) { cv::GaussianBlur(src, dst, ksize, sigmaX, sigmaY, borderType); return dst;});
    mod.method("jlopencv_cv_GaussianBlur",  [](UMat& src, Size& ksize, double& sigmaX, UMat& dst, double& sigmaY, int& borderType) { cv::GaussianBlur(src, dst, ksize, sigmaX, sigmaY, borderType); return dst;});
    mod.method("jlopencv_cv_bilateralFilter",  [](Mat& src, int& d, double& sigmaColor, double& sigmaSpace, Mat& dst, int& borderType) { cv::bilateralFilter(src, dst, d, sigmaColor, sigmaSpace, borderType); return dst;});
    mod.method("jlopencv_cv_bilateralFilter",  [](UMat& src, int& d, double& sigmaColor, double& sigmaSpace, UMat& dst, int& borderType) { cv::bilateralFilter(src, dst, d, sigmaColor, sigmaSpace, borderType); return dst;});
    mod.method("jlopencv_cv_boxFilter",  [](Mat& src, int& ddepth, Size& ksize, Mat& dst, Point& anchor, bool& normalize, int& borderType) { cv::boxFilter(src, dst, ddepth, ksize, anchor, normalize, borderType); return dst;});
    mod.method("jlopencv_cv_boxFilter",  [](UMat& src, int& ddepth, Size& ksize, UMat& dst, Point& anchor, bool& normalize, int& borderType) { cv::boxFilter(src, dst, ddepth, ksize, anchor, normalize, borderType); return dst;});
    mod.method("jlopencv_cv_sqrBoxFilter",  [](Mat& src, int& ddepth, Size& ksize, Mat& dst, Point& anchor, bool& normalize, int& borderType) { cv::sqrBoxFilter(src, dst, ddepth, ksize, anchor, normalize, borderType); return dst;});
    mod.method("jlopencv_cv_sqrBoxFilter",  [](UMat& src, int& ddepth, Size& ksize, UMat& dst, Point& anchor, bool& normalize, int& borderType) { cv::sqrBoxFilter(src, dst, ddepth, ksize, anchor, normalize, borderType); return dst;});
    mod.method("jlopencv_cv_blur",  [](Mat& src, Size& ksize, Mat& dst, Point& anchor, int& borderType) { cv::blur(src, dst, ksize, anchor, borderType); return dst;});
    mod.method("jlopencv_cv_blur",  [](UMat& src, Size& ksize, UMat& dst, Point& anchor, int& borderType) { cv::blur(src, dst, ksize, anchor, borderType); return dst;});
    mod.method("jlopencv_cv_filter2D",  [](Mat& src, int& ddepth, Mat& kernel, Mat& dst, Point& anchor, double& delta, int& borderType) { cv::filter2D(src, dst, ddepth, kernel, anchor, delta, borderType); return dst;});
    mod.method("jlopencv_cv_filter2D",  [](UMat& src, int& ddepth, UMat& kernel, UMat& dst, Point& anchor, double& delta, int& borderType) { cv::filter2D(src, dst, ddepth, kernel, anchor, delta, borderType); return dst;});
    mod.method("jlopencv_cv_sepFilter2D",  [](Mat& src, int& ddepth, Mat& kernelX, Mat& kernelY, Mat& dst, Point& anchor, double& delta, int& borderType) { cv::sepFilter2D(src, dst, ddepth, kernelX, kernelY, anchor, delta, borderType); return dst;});
    mod.method("jlopencv_cv_sepFilter2D",  [](UMat& src, int& ddepth, UMat& kernelX, UMat& kernelY, UMat& dst, Point& anchor, double& delta, int& borderType) { cv::sepFilter2D(src, dst, ddepth, kernelX, kernelY, anchor, delta, borderType); return dst;});
    mod.method("jlopencv_cv_Sobel",  [](Mat& src, int& ddepth, int& dx, int& dy, Mat& dst, int& ksize, double& scale, double& delta, int& borderType) { cv::Sobel(src, dst, ddepth, dx, dy, ksize, scale, delta, borderType); return dst;});
    mod.method("jlopencv_cv_Sobel",  [](UMat& src, int& ddepth, int& dx, int& dy, UMat& dst, int& ksize, double& scale, double& delta, int& borderType) { cv::Sobel(src, dst, ddepth, dx, dy, ksize, scale, delta, borderType); return dst;});
    mod.method("jlopencv_cv_spatialGradient",  [](Mat& src, Mat& dx, Mat& dy, int& ksize, int& borderType) { cv::spatialGradient(src, dx, dy, ksize, borderType); return make_tuple<Mat,Mat>(move(dx),move(dy));});
    mod.method("jlopencv_cv_spatialGradient",  [](UMat& src, UMat& dx, UMat& dy, int& ksize, int& borderType) { cv::spatialGradient(src, dx, dy, ksize, borderType); return make_tuple<UMat,UMat>(move(dx),move(dy));});
    mod.method("jlopencv_cv_Scharr",  [](Mat& src, int& ddepth, int& dx, int& dy, Mat& dst, double& scale, double& delta, int& borderType) { cv::Scharr(src, dst, ddepth, dx, dy, scale, delta, borderType); return dst;});
    mod.method("jlopencv_cv_Scharr",  [](UMat& src, int& ddepth, int& dx, int& dy, UMat& dst, double& scale, double& delta, int& borderType) { cv::Scharr(src, dst, ddepth, dx, dy, scale, delta, borderType); return dst;});
    mod.method("jlopencv_cv_Laplacian",  [](Mat& src, int& ddepth, Mat& dst, int& ksize, double& scale, double& delta, int& borderType) { cv::Laplacian(src, dst, ddepth, ksize, scale, delta, borderType); return dst;});
    mod.method("jlopencv_cv_Laplacian",  [](UMat& src, int& ddepth, UMat& dst, int& ksize, double& scale, double& delta, int& borderType) { cv::Laplacian(src, dst, ddepth, ksize, scale, delta, borderType); return dst;});
    mod.method("jlopencv_cv_Canny",  [](Mat& image, double& threshold1, double& threshold2, Mat& edges, int& apertureSize, bool& L2gradient) { cv::Canny(image, edges, threshold1, threshold2, apertureSize, L2gradient); return edges;});
    mod.method("jlopencv_cv_Canny",  [](UMat& image, double& threshold1, double& threshold2, UMat& edges, int& apertureSize, bool& L2gradient) { cv::Canny(image, edges, threshold1, threshold2, apertureSize, L2gradient); return edges;});
    mod.method("jlopencv_cv_Canny",  [](Mat& dx, Mat& dy, double& threshold1, double& threshold2, Mat& edges, bool& L2gradient) { cv::Canny(dx, dy, edges, threshold1, threshold2, L2gradient); return edges;});
    mod.method("jlopencv_cv_Canny",  [](UMat& dx, UMat& dy, double& threshold1, double& threshold2, UMat& edges, bool& L2gradient) { cv::Canny(dx, dy, edges, threshold1, threshold2, L2gradient); return edges;});
    mod.method("jlopencv_cv_cornerMinEigenVal",  [](Mat& src, int& blockSize, Mat& dst, int& ksize, int& borderType) { cv::cornerMinEigenVal(src, dst, blockSize, ksize, borderType); return dst;});
    mod.method("jlopencv_cv_cornerMinEigenVal",  [](UMat& src, int& blockSize, UMat& dst, int& ksize, int& borderType) { cv::cornerMinEigenVal(src, dst, blockSize, ksize, borderType); return dst;});
    mod.method("jlopencv_cv_cornerHarris",  [](Mat& src, int& blockSize, int& ksize, double& k, Mat& dst, int& borderType) { cv::cornerHarris(src, dst, blockSize, ksize, k, borderType); return dst;});
    mod.method("jlopencv_cv_cornerHarris",  [](UMat& src, int& blockSize, int& ksize, double& k, UMat& dst, int& borderType) { cv::cornerHarris(src, dst, blockSize, ksize, k, borderType); return dst;});
    mod.method("jlopencv_cv_cornerEigenValsAndVecs",  [](Mat& src, int& blockSize, int& ksize, Mat& dst, int& borderType) { cv::cornerEigenValsAndVecs(src, dst, blockSize, ksize, borderType); return dst;});
    mod.method("jlopencv_cv_cornerEigenValsAndVecs",  [](UMat& src, int& blockSize, int& ksize, UMat& dst, int& borderType) { cv::cornerEigenValsAndVecs(src, dst, blockSize, ksize, borderType); return dst;});
    mod.method("jlopencv_cv_preCornerDetect",  [](Mat& src, int& ksize, Mat& dst, int& borderType) { cv::preCornerDetect(src, dst, ksize, borderType); return dst;});
    mod.method("jlopencv_cv_preCornerDetect",  [](UMat& src, int& ksize, UMat& dst, int& borderType) { cv::preCornerDetect(src, dst, ksize, borderType); return dst;});
    mod.method("jlopencv_cv_cornerSubPix",  [](Mat& image, Mat& corners, Size& winSize, Size& zeroZone, TermCriteria& criteria) { cv::cornerSubPix(image, corners, winSize, zeroZone, criteria); return corners;});
    mod.method("jlopencv_cv_cornerSubPix",  [](UMat& image, UMat& corners, Size& winSize, Size& zeroZone, TermCriteria& criteria) { cv::cornerSubPix(image, corners, winSize, zeroZone, criteria); return corners;});
    mod.method("jlopencv_cv_goodFeaturesToTrack",  [](Mat& image, int& maxCorners, double& qualityLevel, double& minDistance, Mat& corners, Mat& mask, int& blockSize, bool& useHarrisDetector, double& k) { cv::goodFeaturesToTrack(image, corners, maxCorners, qualityLevel, minDistance, mask, blockSize, useHarrisDetector, k); return corners;});
    mod.method("jlopencv_cv_goodFeaturesToTrack",  [](UMat& image, int& maxCorners, double& qualityLevel, double& minDistance, UMat& corners, UMat& mask, int& blockSize, bool& useHarrisDetector, double& k) { cv::goodFeaturesToTrack(image, corners, maxCorners, qualityLevel, minDistance, mask, blockSize, useHarrisDetector, k); return corners;});
    mod.method("jlopencv_cv_goodFeaturesToTrack",  [](Mat& image, int& maxCorners, double& qualityLevel, double& minDistance, Mat& mask, int& blockSize, int& gradientSize, Mat& corners, bool& useHarrisDetector, double& k) { cv::goodFeaturesToTrack(image, corners, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, useHarrisDetector, k); return corners;});
    mod.method("jlopencv_cv_goodFeaturesToTrack",  [](UMat& image, int& maxCorners, double& qualityLevel, double& minDistance, UMat& mask, int& blockSize, int& gradientSize, UMat& corners, bool& useHarrisDetector, double& k) { cv::goodFeaturesToTrack(image, corners, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, useHarrisDetector, k); return corners;});
    mod.method("jlopencv_cv_HoughLines",  [](Mat& image, double& rho, double& theta, int& threshold, Mat& lines, double& srn, double& stn, double& min_theta, double& max_theta) { cv::HoughLines(image, lines, rho, theta, threshold, srn, stn, min_theta, max_theta); return lines;});
    mod.method("jlopencv_cv_HoughLines",  [](UMat& image, double& rho, double& theta, int& threshold, UMat& lines, double& srn, double& stn, double& min_theta, double& max_theta) { cv::HoughLines(image, lines, rho, theta, threshold, srn, stn, min_theta, max_theta); return lines;});
    mod.method("jlopencv_cv_HoughLinesP",  [](Mat& image, double& rho, double& theta, int& threshold, Mat& lines, double& minLineLength, double& maxLineGap) { cv::HoughLinesP(image, lines, rho, theta, threshold, minLineLength, maxLineGap); return lines;});
    mod.method("jlopencv_cv_HoughLinesP",  [](UMat& image, double& rho, double& theta, int& threshold, UMat& lines, double& minLineLength, double& maxLineGap) { cv::HoughLinesP(image, lines, rho, theta, threshold, minLineLength, maxLineGap); return lines;});
    mod.method("jlopencv_cv_HoughLinesPointSet",  [](Mat& _point, int& lines_max, int& threshold, double& min_rho, double& max_rho, double& rho_step, double& min_theta, double& max_theta, double& theta_step, Mat& _lines) { cv::HoughLinesPointSet(_point, _lines, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step); return _lines;});
    mod.method("jlopencv_cv_HoughLinesPointSet",  [](UMat& _point, int& lines_max, int& threshold, double& min_rho, double& max_rho, double& rho_step, double& min_theta, double& max_theta, double& theta_step, UMat& _lines) { cv::HoughLinesPointSet(_point, _lines, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step); return _lines;});
    mod.method("jlopencv_cv_HoughCircles",  [](Mat& image, int& method, double& dp, double& minDist, Mat& circles, double& param1, double& param2, int& minRadius, int& maxRadius) { cv::HoughCircles(image, circles, method, dp, minDist, param1, param2, minRadius, maxRadius); return circles;});
    mod.method("jlopencv_cv_HoughCircles",  [](UMat& image, int& method, double& dp, double& minDist, UMat& circles, double& param1, double& param2, int& minRadius, int& maxRadius) { cv::HoughCircles(image, circles, method, dp, minDist, param1, param2, minRadius, maxRadius); return circles;});
    mod.method("jlopencv_cv_erode",  [](Mat& src, Mat& kernel, Mat& dst, Point& anchor, int& iterations, int& borderType, Scalar& borderValue) { cv::erode(src, dst, kernel, anchor, iterations, borderType, borderValue); return dst;});
    mod.method("jlopencv_cv_erode",  [](UMat& src, UMat& kernel, UMat& dst, Point& anchor, int& iterations, int& borderType, Scalar& borderValue) { cv::erode(src, dst, kernel, anchor, iterations, borderType, borderValue); return dst;});
    mod.method("jlopencv_cv_dilate",  [](Mat& src, Mat& kernel, Mat& dst, Point& anchor, int& iterations, int& borderType, Scalar& borderValue) { cv::dilate(src, dst, kernel, anchor, iterations, borderType, borderValue); return dst;});
    mod.method("jlopencv_cv_dilate",  [](UMat& src, UMat& kernel, UMat& dst, Point& anchor, int& iterations, int& borderType, Scalar& borderValue) { cv::dilate(src, dst, kernel, anchor, iterations, borderType, borderValue); return dst;});
    mod.method("jlopencv_cv_morphologyEx",  [](Mat& src, int& op, Mat& kernel, Mat& dst, Point& anchor, int& iterations, int& borderType, Scalar& borderValue) { cv::morphologyEx(src, dst, op, kernel, anchor, iterations, borderType, borderValue); return dst;});
    mod.method("jlopencv_cv_morphologyEx",  [](UMat& src, int& op, UMat& kernel, UMat& dst, Point& anchor, int& iterations, int& borderType, Scalar& borderValue) { cv::morphologyEx(src, dst, op, kernel, anchor, iterations, borderType, borderValue); return dst;});
    mod.method("jlopencv_cv_resize",  [](Mat& src, Size& dsize, Mat& dst, double& fx, double& fy, int& interpolation) { cv::resize(src, dst, dsize, fx, fy, interpolation); return dst;});
    mod.method("jlopencv_cv_resize",  [](UMat& src, Size& dsize, UMat& dst, double& fx, double& fy, int& interpolation) { cv::resize(src, dst, dsize, fx, fy, interpolation); return dst;});
    mod.method("jlopencv_cv_warpAffine",  [](Mat& src, Mat& M, Size& dsize, Mat& dst, int& flags, int& borderMode, Scalar& borderValue) { cv::warpAffine(src, dst, M, dsize, flags, borderMode, borderValue); return dst;});
    mod.method("jlopencv_cv_warpAffine",  [](UMat& src, UMat& M, Size& dsize, UMat& dst, int& flags, int& borderMode, Scalar& borderValue) { cv::warpAffine(src, dst, M, dsize, flags, borderMode, borderValue); return dst;});
    mod.method("jlopencv_cv_warpPerspective",  [](Mat& src, Mat& M, Size& dsize, Mat& dst, int& flags, int& borderMode, Scalar& borderValue) { cv::warpPerspective(src, dst, M, dsize, flags, borderMode, borderValue); return dst;});
    mod.method("jlopencv_cv_warpPerspective",  [](UMat& src, UMat& M, Size& dsize, UMat& dst, int& flags, int& borderMode, Scalar& borderValue) { cv::warpPerspective(src, dst, M, dsize, flags, borderMode, borderValue); return dst;});
    mod.method("jlopencv_cv_remap",  [](Mat& src, Mat& map1, Mat& map2, int& interpolation, Mat& dst, int& borderMode, Scalar& borderValue) { cv::remap(src, dst, map1, map2, interpolation, borderMode, borderValue); return dst;});
    mod.method("jlopencv_cv_remap",  [](UMat& src, UMat& map1, UMat& map2, int& interpolation, UMat& dst, int& borderMode, Scalar& borderValue) { cv::remap(src, dst, map1, map2, interpolation, borderMode, borderValue); return dst;});
    mod.method("jlopencv_cv_convertMaps",  [](Mat& map1, Mat& map2, int& dstmap1type, Mat& dstmap1, Mat& dstmap2, bool& nninterpolation) { cv::convertMaps(map1, map2, dstmap1, dstmap2, dstmap1type, nninterpolation); return make_tuple<Mat,Mat>(move(dstmap1),move(dstmap2));});
    mod.method("jlopencv_cv_convertMaps",  [](UMat& map1, UMat& map2, int& dstmap1type, UMat& dstmap1, UMat& dstmap2, bool& nninterpolation) { cv::convertMaps(map1, map2, dstmap1, dstmap2, dstmap1type, nninterpolation); return make_tuple<UMat,UMat>(move(dstmap1),move(dstmap2));});
    mod.method("jlopencv_cv_getRotationMatrix2D",  [](Point2f& center, double& angle, double& scale) { auto retval = cv::getRotationMatrix2D(center, angle, scale); return retval;});
    mod.method("jlopencv_cv_invertAffineTransform",  [](Mat& M, Mat& iM) { cv::invertAffineTransform(M, iM); return iM;});
    mod.method("jlopencv_cv_invertAffineTransform",  [](UMat& M, UMat& iM) { cv::invertAffineTransform(M, iM); return iM;});
    mod.method("jlopencv_cv_getPerspectiveTransform",  [](Mat& src, Mat& dst, int& solveMethod) { auto retval = cv::getPerspectiveTransform(src, dst, solveMethod); return retval;});
    mod.method("jlopencv_cv_getPerspectiveTransform",  [](UMat& src, UMat& dst, int& solveMethod) { auto retval = cv::getPerspectiveTransform(src, dst, solveMethod); return retval;});
    mod.method("jlopencv_cv_getAffineTransform",  [](Mat& src, Mat& dst) { auto retval = cv::getAffineTransform(src, dst); return retval;});
    mod.method("jlopencv_cv_getAffineTransform",  [](UMat& src, UMat& dst) { auto retval = cv::getAffineTransform(src, dst); return retval;});
    mod.method("jlopencv_cv_getRectSubPix",  [](Mat& image, Size& patchSize, Point2f& center, Mat& patch, int& patchType) { cv::getRectSubPix(image, patchSize, center, patch, patchType); return patch;});
    mod.method("jlopencv_cv_getRectSubPix",  [](UMat& image, Size& patchSize, Point2f& center, UMat& patch, int& patchType) { cv::getRectSubPix(image, patchSize, center, patch, patchType); return patch;});
    mod.method("jlopencv_cv_logPolar",  [](Mat& src, Point2f& center, double& M, int& flags, Mat& dst) { cv::logPolar(src, dst, center, M, flags); return dst;});
    mod.method("jlopencv_cv_logPolar",  [](UMat& src, Point2f& center, double& M, int& flags, UMat& dst) { cv::logPolar(src, dst, center, M, flags); return dst;});
    mod.method("jlopencv_cv_linearPolar",  [](Mat& src, Point2f& center, double& maxRadius, int& flags, Mat& dst) { cv::linearPolar(src, dst, center, maxRadius, flags); return dst;});
    mod.method("jlopencv_cv_linearPolar",  [](UMat& src, Point2f& center, double& maxRadius, int& flags, UMat& dst) { cv::linearPolar(src, dst, center, maxRadius, flags); return dst;});
    mod.method("jlopencv_cv_warpPolar",  [](Mat& src, Size& dsize, Point2f& center, double& maxRadius, int& flags, Mat& dst) { cv::warpPolar(src, dst, dsize, center, maxRadius, flags); return dst;});
    mod.method("jlopencv_cv_warpPolar",  [](UMat& src, Size& dsize, Point2f& center, double& maxRadius, int& flags, UMat& dst) { cv::warpPolar(src, dst, dsize, center, maxRadius, flags); return dst;});
    mod.method("jlopencv_cv_integral",  [](Mat& src, Mat& sum, int& sdepth) { cv::integral(src, sum, sdepth); return sum;});
    mod.method("jlopencv_cv_integral",  [](UMat& src, UMat& sum, int& sdepth) { cv::integral(src, sum, sdepth); return sum;});
    mod.method("jlopencv_cv_integral2",  [](Mat& src, Mat& sum, Mat& sqsum, int& sdepth, int& sqdepth) { cv::integral(src, sum, sqsum, sdepth, sqdepth); return make_tuple<Mat,Mat>(move(sum),move(sqsum));});
    mod.method("jlopencv_cv_integral2",  [](UMat& src, UMat& sum, UMat& sqsum, int& sdepth, int& sqdepth) { cv::integral(src, sum, sqsum, sdepth, sqdepth); return make_tuple<UMat,UMat>(move(sum),move(sqsum));});
    mod.method("jlopencv_cv_integral3",  [](Mat& src, Mat& sum, Mat& sqsum, Mat& tilted, int& sdepth, int& sqdepth) { cv::integral(src, sum, sqsum, tilted, sdepth, sqdepth); return make_tuple<Mat,Mat,Mat>(move(sum),move(sqsum),move(tilted));});
    mod.method("jlopencv_cv_integral3",  [](UMat& src, UMat& sum, UMat& sqsum, UMat& tilted, int& sdepth, int& sqdepth) { cv::integral(src, sum, sqsum, tilted, sdepth, sqdepth); return make_tuple<UMat,UMat,UMat>(move(sum),move(sqsum),move(tilted));});
    mod.method("jlopencv_cv_accumulate",  [](Mat& src, Mat& dst, Mat& mask) { cv::accumulate(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_accumulate",  [](UMat& src, UMat& dst, UMat& mask) { cv::accumulate(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_accumulateSquare",  [](Mat& src, Mat& dst, Mat& mask) { cv::accumulateSquare(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_accumulateSquare",  [](UMat& src, UMat& dst, UMat& mask) { cv::accumulateSquare(src, dst, mask); return dst;});
    mod.method("jlopencv_cv_accumulateProduct",  [](Mat& src1, Mat& src2, Mat& dst, Mat& mask) { cv::accumulateProduct(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_accumulateProduct",  [](UMat& src1, UMat& src2, UMat& dst, UMat& mask) { cv::accumulateProduct(src1, src2, dst, mask); return dst;});
    mod.method("jlopencv_cv_accumulateWeighted",  [](Mat& src, Mat& dst, double& alpha, Mat& mask) { cv::accumulateWeighted(src, dst, alpha, mask); return dst;});
    mod.method("jlopencv_cv_accumulateWeighted",  [](UMat& src, UMat& dst, double& alpha, UMat& mask) { cv::accumulateWeighted(src, dst, alpha, mask); return dst;});
    mod.method("jlopencv_cv_phaseCorrelate",  [](Mat& src1, Mat& src2, Mat& window) {double response; auto retval = cv::phaseCorrelate(src1, src2, window, response); return make_tuple<Point2d,double>(move(retval),move(response));});
    mod.method("jlopencv_cv_phaseCorrelate",  [](UMat& src1, UMat& src2, UMat& window) {double response; auto retval = cv::phaseCorrelate(src1, src2, window, response); return make_tuple<Point2d,double>(move(retval),move(response));});
    mod.method("jlopencv_cv_createHanningWindow",  [](Size& winSize, int& type, Mat& dst) { cv::createHanningWindow(dst, winSize, type); return dst;});
    mod.method("jlopencv_cv_createHanningWindow",  [](Size& winSize, int& type, UMat& dst) { cv::createHanningWindow(dst, winSize, type); return dst;});
    mod.method("jlopencv_cv_threshold",  [](Mat& src, double& thresh, double& maxval, int& type, Mat& dst) { auto retval = cv::threshold(src, dst, thresh, maxval, type); return make_tuple<double,Mat>(move(retval),move(dst));});
    mod.method("jlopencv_cv_threshold",  [](UMat& src, double& thresh, double& maxval, int& type, UMat& dst) { auto retval = cv::threshold(src, dst, thresh, maxval, type); return make_tuple<double,UMat>(move(retval),move(dst));});
    mod.method("jlopencv_cv_adaptiveThreshold",  [](Mat& src, double& maxValue, int& adaptiveMethod, int& thresholdType, int& blockSize, double& C, Mat& dst) { cv::adaptiveThreshold(src, dst, maxValue, adaptiveMethod, thresholdType, blockSize, C); return dst;});
    mod.method("jlopencv_cv_adaptiveThreshold",  [](UMat& src, double& maxValue, int& adaptiveMethod, int& thresholdType, int& blockSize, double& C, UMat& dst) { cv::adaptiveThreshold(src, dst, maxValue, adaptiveMethod, thresholdType, blockSize, C); return dst;});
    mod.method("jlopencv_cv_pyrDown",  [](Mat& src, Mat& dst, Size& dstsize, int& borderType) { cv::pyrDown(src, dst, dstsize, borderType); return dst;});
    mod.method("jlopencv_cv_pyrDown",  [](UMat& src, UMat& dst, Size& dstsize, int& borderType) { cv::pyrDown(src, dst, dstsize, borderType); return dst;});
    mod.method("jlopencv_cv_pyrUp",  [](Mat& src, Mat& dst, Size& dstsize, int& borderType) { cv::pyrUp(src, dst, dstsize, borderType); return dst;});
    mod.method("jlopencv_cv_pyrUp",  [](UMat& src, UMat& dst, Size& dstsize, int& borderType) { cv::pyrUp(src, dst, dstsize, borderType); return dst;});
    mod.method("jlopencv_cv_calcHist",  [](vector<Mat>& images, vector<int>& channels, Mat& mask, vector<int>& histSize, vector<float>& ranges, Mat& hist, bool& accumulate) { cv::calcHist(images, channels, mask, hist, histSize, ranges, accumulate); return hist;});
    mod.method("jlopencv_cv_calcHist",  [](vector<UMat>& images, vector<int>& channels, UMat& mask, vector<int>& histSize, vector<float>& ranges, UMat& hist, bool& accumulate) { cv::calcHist(images, channels, mask, hist, histSize, ranges, accumulate); return hist;});
    mod.method("jlopencv_cv_calcBackProject",  [](vector<Mat>& images, vector<int>& channels, Mat& hist, vector<float>& ranges, double& scale, Mat& dst) { cv::calcBackProject(images, channels, hist, dst, ranges, scale); return dst;});
    mod.method("jlopencv_cv_calcBackProject",  [](vector<UMat>& images, vector<int>& channels, UMat& hist, vector<float>& ranges, double& scale, UMat& dst) { cv::calcBackProject(images, channels, hist, dst, ranges, scale); return dst;});
    mod.method("jlopencv_cv_compareHist",  [](Mat& H1, Mat& H2, int& method) { auto retval = cv::compareHist(H1, H2, method); return retval;});
    mod.method("jlopencv_cv_compareHist",  [](UMat& H1, UMat& H2, int& method) { auto retval = cv::compareHist(H1, H2, method); return retval;});
    mod.method("jlopencv_cv_equalizeHist",  [](Mat& src, Mat& dst) { cv::equalizeHist(src, dst); return dst;});
    mod.method("jlopencv_cv_equalizeHist",  [](UMat& src, UMat& dst) { cv::equalizeHist(src, dst); return dst;});
    mod.method("jlopencv_cv_createCLAHE",  [](double& clipLimit, Size& tileGridSize) { auto retval = cv::createCLAHE(clipLimit, tileGridSize); return retval;});
    mod.method("jlopencv_cv_EMD",  [](Mat& signature1, Mat& signature2, int& distType, Mat& cost, Ptr<float>& lowerBound, Mat& flow) { auto retval = cv::wrapperEMD(signature1, signature2, distType, cost, lowerBound, flow); return make_tuple<float,Ptr<float>,Mat>(move(retval),move(lowerBound),move(flow));});
    mod.method("jlopencv_cv_EMD",  [](UMat& signature1, UMat& signature2, int& distType, UMat& cost, Ptr<float>& lowerBound, UMat& flow) { auto retval = cv::wrapperEMD(signature1, signature2, distType, cost, lowerBound, flow); return make_tuple<float,Ptr<float>,UMat>(move(retval),move(lowerBound),move(flow));});
    mod.method("jlopencv_cv_watershed",  [](Mat& image, Mat& markers) { cv::watershed(image, markers); return markers;});
    mod.method("jlopencv_cv_watershed",  [](UMat& image, UMat& markers) { cv::watershed(image, markers); return markers;});
    mod.method("jlopencv_cv_pyrMeanShiftFiltering",  [](Mat& src, double& sp, double& sr, Mat& dst, int& maxLevel, TermCriteria& termcrit) { cv::pyrMeanShiftFiltering(src, dst, sp, sr, maxLevel, termcrit); return dst;});
    mod.method("jlopencv_cv_pyrMeanShiftFiltering",  [](UMat& src, double& sp, double& sr, UMat& dst, int& maxLevel, TermCriteria& termcrit) { cv::pyrMeanShiftFiltering(src, dst, sp, sr, maxLevel, termcrit); return dst;});
    mod.method("jlopencv_cv_grabCut",  [](Mat& img, Mat& mask, Rect& rect, Mat& bgdModel, Mat& fgdModel, int& iterCount, int& mode) { cv::grabCut(img, mask, rect, bgdModel, fgdModel, iterCount, mode); return make_tuple<Mat,Mat,Mat>(move(mask),move(bgdModel),move(fgdModel));});
    mod.method("jlopencv_cv_grabCut",  [](UMat& img, UMat& mask, Rect& rect, UMat& bgdModel, UMat& fgdModel, int& iterCount, int& mode) { cv::grabCut(img, mask, rect, bgdModel, fgdModel, iterCount, mode); return make_tuple<UMat,UMat,UMat>(move(mask),move(bgdModel),move(fgdModel));});
    mod.method("jlopencv_cv_distanceTransformWithLabels",  [](Mat& src, int& distanceType, int& maskSize, Mat& dst, Mat& labels, int& labelType) { cv::distanceTransform(src, dst, labels, distanceType, maskSize, labelType); return make_tuple<Mat,Mat>(move(dst),move(labels));});
    mod.method("jlopencv_cv_distanceTransformWithLabels",  [](UMat& src, int& distanceType, int& maskSize, UMat& dst, UMat& labels, int& labelType) { cv::distanceTransform(src, dst, labels, distanceType, maskSize, labelType); return make_tuple<UMat,UMat>(move(dst),move(labels));});
    mod.method("jlopencv_cv_distanceTransform",  [](Mat& src, int& distanceType, int& maskSize, Mat& dst, int& dstType) { cv::distanceTransform(src, dst, distanceType, maskSize, dstType); return dst;});
    mod.method("jlopencv_cv_distanceTransform",  [](UMat& src, int& distanceType, int& maskSize, UMat& dst, int& dstType) { cv::distanceTransform(src, dst, distanceType, maskSize, dstType); return dst;});
    mod.method("jlopencv_cv_floodFill",  [](Mat& image, Mat& mask, Point& seedPoint, Scalar& newVal, Scalar& loDiff, Scalar& upDiff, int& flags) {Rect rect; auto retval = cv::floodFill(image, mask, seedPoint, newVal, rect, loDiff, upDiff, flags); return make_tuple<int,Mat,Mat,Rect>(move(retval),move(image),move(mask),move(rect));});
    mod.method("jlopencv_cv_floodFill",  [](UMat& image, UMat& mask, Point& seedPoint, Scalar& newVal, Scalar& loDiff, Scalar& upDiff, int& flags) {Rect rect; auto retval = cv::floodFill(image, mask, seedPoint, newVal, rect, loDiff, upDiff, flags); return make_tuple<int,UMat,UMat,Rect>(move(retval),move(image),move(mask),move(rect));});
    mod.method("jlopencv_cv_cvtColor",  [](Mat& src, int& code, Mat& dst, int& dstCn) { cv::cvtColor(src, dst, code, dstCn); return dst;});
    mod.method("jlopencv_cv_cvtColor",  [](UMat& src, int& code, UMat& dst, int& dstCn) { cv::cvtColor(src, dst, code, dstCn); return dst;});
    mod.method("jlopencv_cv_cvtColorTwoPlane",  [](Mat& src1, Mat& src2, int& code, Mat& dst) { cv::cvtColorTwoPlane(src1, src2, dst, code); return dst;});
    mod.method("jlopencv_cv_cvtColorTwoPlane",  [](UMat& src1, UMat& src2, int& code, UMat& dst) { cv::cvtColorTwoPlane(src1, src2, dst, code); return dst;});
    mod.method("jlopencv_cv_demosaicing",  [](Mat& src, int& code, Mat& dst, int& dstCn) { cv::demosaicing(src, dst, code, dstCn); return dst;});
    mod.method("jlopencv_cv_demosaicing",  [](UMat& src, int& code, UMat& dst, int& dstCn) { cv::demosaicing(src, dst, code, dstCn); return dst;});
    mod.method("jlopencv_cv_moments",  [](Mat& array, bool& binaryImage) { auto retval = cv::moments(array, binaryImage); return retval;});
    mod.method("jlopencv_cv_moments",  [](UMat& array, bool& binaryImage) { auto retval = cv::moments(array, binaryImage); return retval;});
    mod.method("jlopencv_cv_HuMoments",  [](Moments& m, Mat& hu) { cv::HuMoments(m, hu); return hu;});
    mod.method("jlopencv_cv_HuMoments",  [](Moments& m, UMat& hu) { cv::HuMoments(m, hu); return hu;});
    mod.method("jlopencv_cv_matchTemplate",  [](Mat& image, Mat& templ, int& method, Mat& result, Mat& mask) { cv::matchTemplate(image, templ, result, method, mask); return result;});
    mod.method("jlopencv_cv_matchTemplate",  [](UMat& image, UMat& templ, int& method, UMat& result, UMat& mask) { cv::matchTemplate(image, templ, result, method, mask); return result;});
    mod.method("jlopencv_cv_connectedComponentsWithAlgorithm",  [](Mat& image, int& connectivity, int& ltype, int& ccltype, Mat& labels) { auto retval = cv::connectedComponents(image, labels, connectivity, ltype, ccltype); return make_tuple<int,Mat>(move(retval),move(labels));});
    mod.method("jlopencv_cv_connectedComponentsWithAlgorithm",  [](UMat& image, int& connectivity, int& ltype, int& ccltype, UMat& labels) { auto retval = cv::connectedComponents(image, labels, connectivity, ltype, ccltype); return make_tuple<int,UMat>(move(retval),move(labels));});
    mod.method("jlopencv_cv_connectedComponents",  [](Mat& image, Mat& labels, int& connectivity, int& ltype) { auto retval = cv::connectedComponents(image, labels, connectivity, ltype); return make_tuple<int,Mat>(move(retval),move(labels));});
    mod.method("jlopencv_cv_connectedComponents",  [](UMat& image, UMat& labels, int& connectivity, int& ltype) { auto retval = cv::connectedComponents(image, labels, connectivity, ltype); return make_tuple<int,UMat>(move(retval),move(labels));});
    mod.method("jlopencv_cv_connectedComponentsWithStatsWithAlgorithm",  [](Mat& image, int& connectivity, int& ltype, int& ccltype, Mat& labels, Mat& stats, Mat& centroids) { auto retval = cv::connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype, ccltype); return make_tuple<int,Mat,Mat,Mat>(move(retval),move(labels),move(stats),move(centroids));});
    mod.method("jlopencv_cv_connectedComponentsWithStatsWithAlgorithm",  [](UMat& image, int& connectivity, int& ltype, int& ccltype, UMat& labels, UMat& stats, UMat& centroids) { auto retval = cv::connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype, ccltype); return make_tuple<int,UMat,UMat,UMat>(move(retval),move(labels),move(stats),move(centroids));});
    mod.method("jlopencv_cv_connectedComponentsWithStats",  [](Mat& image, Mat& labels, Mat& stats, Mat& centroids, int& connectivity, int& ltype) { auto retval = cv::connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype); return make_tuple<int,Mat,Mat,Mat>(move(retval),move(labels),move(stats),move(centroids));});
    mod.method("jlopencv_cv_connectedComponentsWithStats",  [](UMat& image, UMat& labels, UMat& stats, UMat& centroids, int& connectivity, int& ltype) { auto retval = cv::connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype); return make_tuple<int,UMat,UMat,UMat>(move(retval),move(labels),move(stats),move(centroids));});
    mod.method("jlopencv_cv_findContours",  [](Mat& image, int& mode, int& method, Mat& hierarchy, Point& offset) {vector<Mat> contours; cv::findContours(image, contours, hierarchy, mode, method, offset); return make_tuple<vector<Mat>,Mat>(move(contours),move(hierarchy));});
    mod.method("jlopencv_cv_findContours",  [](UMat& image, int& mode, int& method, UMat& hierarchy, Point& offset) {vector<UMat> contours; cv::findContours(image, contours, hierarchy, mode, method, offset); return make_tuple<vector<UMat>,UMat>(move(contours),move(hierarchy));});
    mod.method("jlopencv_cv_approxPolyDP",  [](Mat& curve, double& epsilon, bool& closed, Mat& approxCurve) { cv::approxPolyDP(curve, approxCurve, epsilon, closed); return approxCurve;});
    mod.method("jlopencv_cv_approxPolyDP",  [](UMat& curve, double& epsilon, bool& closed, UMat& approxCurve) { cv::approxPolyDP(curve, approxCurve, epsilon, closed); return approxCurve;});
    mod.method("jlopencv_cv_arcLength",  [](Mat& curve, bool& closed) { auto retval = cv::arcLength(curve, closed); return retval;});
    mod.method("jlopencv_cv_arcLength",  [](UMat& curve, bool& closed) { auto retval = cv::arcLength(curve, closed); return retval;});
    mod.method("jlopencv_cv_boundingRect",  [](Mat& array) { auto retval = cv::boundingRect(array); return retval;});
    mod.method("jlopencv_cv_boundingRect",  [](UMat& array) { auto retval = cv::boundingRect(array); return retval;});
    mod.method("jlopencv_cv_contourArea",  [](Mat& contour, bool& oriented) { auto retval = cv::contourArea(contour, oriented); return retval;});
    mod.method("jlopencv_cv_contourArea",  [](UMat& contour, bool& oriented) { auto retval = cv::contourArea(contour, oriented); return retval;});
    mod.method("jlopencv_cv_minAreaRect",  [](Mat& points) { auto retval = cv::minAreaRect(points); return retval;});
    mod.method("jlopencv_cv_minAreaRect",  [](UMat& points) { auto retval = cv::minAreaRect(points); return retval;});
    mod.method("jlopencv_cv_boxPoints",  [](RotatedRect& box, Mat& points) { cv::boxPoints(box, points); return points;});
    mod.method("jlopencv_cv_boxPoints",  [](RotatedRect& box, UMat& points) { cv::boxPoints(box, points); return points;});
    mod.method("jlopencv_cv_minEnclosingCircle",  [](Mat& points) {Point2f center;float radius; cv::minEnclosingCircle(points, center, radius); return make_tuple<Point2f,float>(move(center),move(radius));});
    mod.method("jlopencv_cv_minEnclosingCircle",  [](UMat& points) {Point2f center;float radius; cv::minEnclosingCircle(points, center, radius); return make_tuple<Point2f,float>(move(center),move(radius));});
    mod.method("jlopencv_cv_minEnclosingTriangle",  [](Mat& points, Mat& triangle) { auto retval = cv::minEnclosingTriangle(points, triangle); return make_tuple<double,Mat>(move(retval),move(triangle));});
    mod.method("jlopencv_cv_minEnclosingTriangle",  [](UMat& points, UMat& triangle) { auto retval = cv::minEnclosingTriangle(points, triangle); return make_tuple<double,UMat>(move(retval),move(triangle));});
    mod.method("jlopencv_cv_matchShapes",  [](Mat& contour1, Mat& contour2, int& method, double& parameter) { auto retval = cv::matchShapes(contour1, contour2, method, parameter); return retval;});
    mod.method("jlopencv_cv_matchShapes",  [](UMat& contour1, UMat& contour2, int& method, double& parameter) { auto retval = cv::matchShapes(contour1, contour2, method, parameter); return retval;});
    mod.method("jlopencv_cv_convexHull",  [](Mat& points, Mat& hull, bool& clockwise, bool& returnPoints) { cv::convexHull(points, hull, clockwise, returnPoints); return hull;});
    mod.method("jlopencv_cv_convexHull",  [](UMat& points, UMat& hull, bool& clockwise, bool& returnPoints) { cv::convexHull(points, hull, clockwise, returnPoints); return hull;});
    mod.method("jlopencv_cv_convexityDefects",  [](Mat& contour, Mat& convexhull, Mat& convexityDefects) { cv::convexityDefects(contour, convexhull, convexityDefects); return convexityDefects;});
    mod.method("jlopencv_cv_convexityDefects",  [](UMat& contour, UMat& convexhull, UMat& convexityDefects) { cv::convexityDefects(contour, convexhull, convexityDefects); return convexityDefects;});
    mod.method("jlopencv_cv_isContourConvex",  [](Mat& contour) { auto retval = cv::isContourConvex(contour); return retval;});
    mod.method("jlopencv_cv_isContourConvex",  [](UMat& contour) { auto retval = cv::isContourConvex(contour); return retval;});
    mod.method("jlopencv_cv_intersectConvexConvex",  [](Mat& _p1, Mat& _p2, Mat& _p12, bool& handleNested) { auto retval = cv::intersectConvexConvex(_p1, _p2, _p12, handleNested); return make_tuple<float,Mat>(move(retval),move(_p12));});
    mod.method("jlopencv_cv_intersectConvexConvex",  [](UMat& _p1, UMat& _p2, UMat& _p12, bool& handleNested) { auto retval = cv::intersectConvexConvex(_p1, _p2, _p12, handleNested); return make_tuple<float,UMat>(move(retval),move(_p12));});
    mod.method("jlopencv_cv_fitEllipse",  [](Mat& points) { auto retval = cv::fitEllipse(points); return retval;});
    mod.method("jlopencv_cv_fitEllipse",  [](UMat& points) { auto retval = cv::fitEllipse(points); return retval;});
    mod.method("jlopencv_cv_fitEllipseAMS",  [](Mat& points) { auto retval = cv::fitEllipseAMS(points); return retval;});
    mod.method("jlopencv_cv_fitEllipseAMS",  [](UMat& points) { auto retval = cv::fitEllipseAMS(points); return retval;});
    mod.method("jlopencv_cv_fitEllipseDirect",  [](Mat& points) { auto retval = cv::fitEllipseDirect(points); return retval;});
    mod.method("jlopencv_cv_fitEllipseDirect",  [](UMat& points) { auto retval = cv::fitEllipseDirect(points); return retval;});
    mod.method("jlopencv_cv_fitLine",  [](Mat& points, int& distType, double& param, double& reps, double& aeps, Mat& line) { cv::fitLine(points, line, distType, param, reps, aeps); return line;});
    mod.method("jlopencv_cv_fitLine",  [](UMat& points, int& distType, double& param, double& reps, double& aeps, UMat& line) { cv::fitLine(points, line, distType, param, reps, aeps); return line;});
    mod.method("jlopencv_cv_pointPolygonTest",  [](Mat& contour, Point2f& pt, bool& measureDist) { auto retval = cv::pointPolygonTest(contour, pt, measureDist); return retval;});
    mod.method("jlopencv_cv_pointPolygonTest",  [](UMat& contour, Point2f& pt, bool& measureDist) { auto retval = cv::pointPolygonTest(contour, pt, measureDist); return retval;});
    mod.method("jlopencv_cv_rotatedRectangleIntersection",  [](RotatedRect& rect1, RotatedRect& rect2, Mat& intersectingRegion) { auto retval = cv::rotatedRectangleIntersection(rect1, rect2, intersectingRegion); return make_tuple<int,Mat>(move(retval),move(intersectingRegion));});
    mod.method("jlopencv_cv_rotatedRectangleIntersection",  [](RotatedRect& rect1, RotatedRect& rect2, UMat& intersectingRegion) { auto retval = cv::rotatedRectangleIntersection(rect1, rect2, intersectingRegion); return make_tuple<int,UMat>(move(retval),move(intersectingRegion));});
    mod.method("jlopencv_cv_createGeneralizedHoughBallard",  []() { auto retval = cv::createGeneralizedHoughBallard(); return retval;});
    mod.method("jlopencv_cv_createGeneralizedHoughGuil",  []() { auto retval = cv::createGeneralizedHoughGuil(); return retval;});
    mod.method("jlopencv_cv_applyColorMap",  [](Mat& src, int& colormap, Mat& dst) { cv::applyColorMap(src, dst, colormap); return dst;});
    mod.method("jlopencv_cv_applyColorMap",  [](UMat& src, int& colormap, UMat& dst) { cv::applyColorMap(src, dst, colormap); return dst;});
    mod.method("jlopencv_cv_applyColorMap",  [](Mat& src, Mat& userColor, Mat& dst) { cv::applyColorMap(src, dst, userColor); return dst;});
    mod.method("jlopencv_cv_applyColorMap",  [](UMat& src, UMat& userColor, UMat& dst) { cv::applyColorMap(src, dst, userColor); return dst;});
    mod.method("jlopencv_cv_line",  [](Mat& img, Point& pt1, Point& pt2, Scalar& color, int& thickness, int& lineType, int& shift) { cv::line(img, pt1, pt2, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_line",  [](UMat& img, Point& pt1, Point& pt2, Scalar& color, int& thickness, int& lineType, int& shift) { cv::line(img, pt1, pt2, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_arrowedLine",  [](Mat& img, Point& pt1, Point& pt2, Scalar& color, int& thickness, int& line_type, int& shift, double& tipLength) { cv::arrowedLine(img, pt1, pt2, color, thickness, line_type, shift, tipLength); return img;});
    mod.method("jlopencv_cv_arrowedLine",  [](UMat& img, Point& pt1, Point& pt2, Scalar& color, int& thickness, int& line_type, int& shift, double& tipLength) { cv::arrowedLine(img, pt1, pt2, color, thickness, line_type, shift, tipLength); return img;});
    mod.method("jlopencv_cv_rectangle",  [](Mat& img, Point& pt1, Point& pt2, Scalar& color, int& thickness, int& lineType, int& shift) { cv::rectangle(img, pt1, pt2, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_rectangle",  [](UMat& img, Point& pt1, Point& pt2, Scalar& color, int& thickness, int& lineType, int& shift) { cv::rectangle(img, pt1, pt2, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_rectangle",  [](Mat& img, Rect& rec, Scalar& color, int& thickness, int& lineType, int& shift) { cv::rectangle(img, rec, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_rectangle",  [](UMat& img, Rect& rec, Scalar& color, int& thickness, int& lineType, int& shift) { cv::rectangle(img, rec, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_circle",  [](Mat& img, Point& center, int& radius, Scalar& color, int& thickness, int& lineType, int& shift) { cv::circle(img, center, radius, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_circle",  [](UMat& img, Point& center, int& radius, Scalar& color, int& thickness, int& lineType, int& shift) { cv::circle(img, center, radius, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_ellipse",  [](Mat& img, Point& center, Size& axes, double& angle, double& startAngle, double& endAngle, Scalar& color, int& thickness, int& lineType, int& shift) { cv::ellipse(img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_ellipse",  [](UMat& img, Point& center, Size& axes, double& angle, double& startAngle, double& endAngle, Scalar& color, int& thickness, int& lineType, int& shift) { cv::ellipse(img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_ellipse",  [](Mat& img, RotatedRect& box, Scalar& color, int& thickness, int& lineType) { cv::ellipse(img, box, color, thickness, lineType); return img;});
    mod.method("jlopencv_cv_ellipse",  [](UMat& img, RotatedRect& box, Scalar& color, int& thickness, int& lineType) { cv::ellipse(img, box, color, thickness, lineType); return img;});
    mod.method("jlopencv_cv_drawMarker",  [](Mat& img, Point& position, Scalar& color, int& markerType, int& markerSize, int& thickness, int& line_type) { cv::drawMarker(img, position, color, markerType, markerSize, thickness, line_type); return img;});
    mod.method("jlopencv_cv_drawMarker",  [](UMat& img, Point& position, Scalar& color, int& markerType, int& markerSize, int& thickness, int& line_type) { cv::drawMarker(img, position, color, markerType, markerSize, thickness, line_type); return img;});
    mod.method("jlopencv_cv_fillConvexPoly",  [](Mat& img, Mat& points, Scalar& color, int& lineType, int& shift) { cv::fillConvexPoly(img, points, color, lineType, shift); return img;});
    mod.method("jlopencv_cv_fillConvexPoly",  [](UMat& img, UMat& points, Scalar& color, int& lineType, int& shift) { cv::fillConvexPoly(img, points, color, lineType, shift); return img;});
    mod.method("jlopencv_cv_fillPoly",  [](Mat& img, vector<Mat>& pts, Scalar& color, int& lineType, int& shift, Point& offset) { cv::fillPoly(img, pts, color, lineType, shift, offset); return img;});
    mod.method("jlopencv_cv_fillPoly",  [](UMat& img, vector<UMat>& pts, Scalar& color, int& lineType, int& shift, Point& offset) { cv::fillPoly(img, pts, color, lineType, shift, offset); return img;});
    mod.method("jlopencv_cv_polylines",  [](Mat& img, vector<Mat>& pts, bool& isClosed, Scalar& color, int& thickness, int& lineType, int& shift) { cv::polylines(img, pts, isClosed, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_polylines",  [](UMat& img, vector<UMat>& pts, bool& isClosed, Scalar& color, int& thickness, int& lineType, int& shift) { cv::polylines(img, pts, isClosed, color, thickness, lineType, shift); return img;});
    mod.method("jlopencv_cv_drawContours",  [](Mat& image, vector<Mat>& contours, int& contourIdx, Scalar& color, int& thickness, int& lineType, Mat& hierarchy, int& maxLevel, Point& offset) { cv::drawContours(image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset); return image;});
    mod.method("jlopencv_cv_drawContours",  [](UMat& image, vector<UMat>& contours, int& contourIdx, Scalar& color, int& thickness, int& lineType, UMat& hierarchy, int& maxLevel, Point& offset) { cv::drawContours(image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset); return image;});
    mod.method("jlopencv_cv_clipLine",  [](Rect& imgRect, Point& pt1, Point& pt2) { auto retval = cv::clipLine(imgRect, pt1, pt2); return make_tuple<bool,Point,Point>(move(retval),move(pt1),move(pt2));});
    mod.method("jlopencv_cv_ellipse2Poly",  [](Point& center, Size& axes, int& angle, int& arcStart, int& arcEnd, int& delta) {vector<Point> pts; cv::ellipse2Poly(center, axes, angle, arcStart, arcEnd, delta, pts); return pts;});
    mod.method("jlopencv_cv_putText",  [](Mat& img, String& text, Point& org, int& fontFace, double& fontScale, Scalar& color, int& thickness, int& lineType, bool& bottomLeftOrigin) { cv::putText(img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin); return img;});
    mod.method("jlopencv_cv_putText",  [](UMat& img, String& text, Point& org, int& fontFace, double& fontScale, Scalar& color, int& thickness, int& lineType, bool& bottomLeftOrigin) { cv::putText(img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin); return img;});
    mod.method("jlopencv_cv_getTextSize",  [](String& text, int& fontFace, double& fontScale, int& thickness) {int baseLine; auto retval = cv::getTextSize(text, fontFace, fontScale, thickness, baseLine); return make_tuple<Size,int>(move(retval),move(baseLine));});
    mod.method("jlopencv_cv_getFontScaleFromHeight",  [](int& fontFace, int& pixelHeight, int& thickness) { auto retval = cv::getFontScaleFromHeight(fontFace, pixelHeight, thickness); return retval;});
    mod.method("jlopencv_cv_Rodrigues",  [](Mat& src, Mat& dst, Mat& jacobian) { cv::Rodrigues(src, dst, jacobian); return make_tuple<Mat,Mat>(move(dst),move(jacobian));});
    mod.method("jlopencv_cv_Rodrigues",  [](UMat& src, UMat& dst, UMat& jacobian) { cv::Rodrigues(src, dst, jacobian); return make_tuple<UMat,UMat>(move(dst),move(jacobian));});
    mod.method("jlopencv_cv_findHomography",  [](Mat& srcPoints, Mat& dstPoints, int& method, double& ransacReprojThreshold, Mat& mask, int& maxIters, double& confidence) { auto retval = cv::findHomography(srcPoints, dstPoints, method, ransacReprojThreshold, mask, maxIters, confidence); return make_tuple<Mat,Mat>(move(retval),move(mask));});
    mod.method("jlopencv_cv_findHomography",  [](UMat& srcPoints, UMat& dstPoints, int& method, double& ransacReprojThreshold, UMat& mask, int& maxIters, double& confidence) { auto retval = cv::findHomography(srcPoints, dstPoints, method, ransacReprojThreshold, mask, maxIters, confidence); return make_tuple<Mat,UMat>(move(retval),move(mask));});
    mod.method("jlopencv_cv_RQDecomp3x3",  [](Mat& src, Mat& mtxR, Mat& mtxQ, Mat& Qx, Mat& Qy, Mat& Qz) { auto retval = cv::RQDecomp3x3(src, mtxR, mtxQ, Qx, Qy, Qz); return make_tuple<Vec3d,Mat,Mat,Mat,Mat,Mat>(move(retval),move(mtxR),move(mtxQ),move(Qx),move(Qy),move(Qz));});
    mod.method("jlopencv_cv_RQDecomp3x3",  [](UMat& src, UMat& mtxR, UMat& mtxQ, UMat& Qx, UMat& Qy, UMat& Qz) { auto retval = cv::RQDecomp3x3(src, mtxR, mtxQ, Qx, Qy, Qz); return make_tuple<Vec3d,UMat,UMat,UMat,UMat,UMat>(move(retval),move(mtxR),move(mtxQ),move(Qx),move(Qy),move(Qz));});
    mod.method("jlopencv_cv_decomposeProjectionMatrix",  [](Mat& projMatrix, Mat& cameraMatrix, Mat& rotMatrix, Mat& transVect, Mat& rotMatrixX, Mat& rotMatrixY, Mat& rotMatrixZ, Mat& eulerAngles) { cv::decomposeProjectionMatrix(projMatrix, cameraMatrix, rotMatrix, transVect, rotMatrixX, rotMatrixY, rotMatrixZ, eulerAngles); return make_tuple<Mat,Mat,Mat,Mat,Mat,Mat,Mat>(move(cameraMatrix),move(rotMatrix),move(transVect),move(rotMatrixX),move(rotMatrixY),move(rotMatrixZ),move(eulerAngles));});
    mod.method("jlopencv_cv_decomposeProjectionMatrix",  [](UMat& projMatrix, UMat& cameraMatrix, UMat& rotMatrix, UMat& transVect, UMat& rotMatrixX, UMat& rotMatrixY, UMat& rotMatrixZ, UMat& eulerAngles) { cv::decomposeProjectionMatrix(projMatrix, cameraMatrix, rotMatrix, transVect, rotMatrixX, rotMatrixY, rotMatrixZ, eulerAngles); return make_tuple<UMat,UMat,UMat,UMat,UMat,UMat,UMat>(move(cameraMatrix),move(rotMatrix),move(transVect),move(rotMatrixX),move(rotMatrixY),move(rotMatrixZ),move(eulerAngles));});
    mod.method("jlopencv_cv_matMulDeriv",  [](Mat& A, Mat& B, Mat& dABdA, Mat& dABdB) { cv::matMulDeriv(A, B, dABdA, dABdB); return make_tuple<Mat,Mat>(move(dABdA),move(dABdB));});
    mod.method("jlopencv_cv_matMulDeriv",  [](UMat& A, UMat& B, UMat& dABdA, UMat& dABdB) { cv::matMulDeriv(A, B, dABdA, dABdB); return make_tuple<UMat,UMat>(move(dABdA),move(dABdB));});
    mod.method("jlopencv_cv_composeRT",  [](Mat& rvec1, Mat& tvec1, Mat& rvec2, Mat& tvec2, Mat& rvec3, Mat& tvec3, Mat& dr3dr1, Mat& dr3dt1, Mat& dr3dr2, Mat& dr3dt2, Mat& dt3dr1, Mat& dt3dt1, Mat& dt3dr2, Mat& dt3dt2) { cv::composeRT(rvec1, tvec1, rvec2, tvec2, rvec3, tvec3, dr3dr1, dr3dt1, dr3dr2, dr3dt2, dt3dr1, dt3dt1, dt3dr2, dt3dt2); return make_tuple<Mat,Mat,Mat,Mat,Mat,Mat,Mat,Mat,Mat,Mat>(move(rvec3),move(tvec3),move(dr3dr1),move(dr3dt1),move(dr3dr2),move(dr3dt2),move(dt3dr1),move(dt3dt1),move(dt3dr2),move(dt3dt2));});
    mod.method("jlopencv_cv_composeRT",  [](UMat& rvec1, UMat& tvec1, UMat& rvec2, UMat& tvec2, UMat& rvec3, UMat& tvec3, UMat& dr3dr1, UMat& dr3dt1, UMat& dr3dr2, UMat& dr3dt2, UMat& dt3dr1, UMat& dt3dt1, UMat& dt3dr2, UMat& dt3dt2) { cv::composeRT(rvec1, tvec1, rvec2, tvec2, rvec3, tvec3, dr3dr1, dr3dt1, dr3dr2, dr3dt2, dt3dr1, dt3dt1, dt3dr2, dt3dt2); return make_tuple<UMat,UMat,UMat,UMat,UMat,UMat,UMat,UMat,UMat,UMat>(move(rvec3),move(tvec3),move(dr3dr1),move(dr3dt1),move(dr3dr2),move(dr3dt2),move(dt3dr1),move(dt3dt1),move(dt3dr2),move(dt3dt2));});
    mod.method("jlopencv_cv_projectPoints",  [](Mat& objectPoints, Mat& rvec, Mat& tvec, Mat& cameraMatrix, Mat& distCoeffs, Mat& imagePoints, Mat& jacobian, double& aspectRatio) { cv::projectPoints(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, imagePoints, jacobian, aspectRatio); return make_tuple<Mat,Mat>(move(imagePoints),move(jacobian));});
    mod.method("jlopencv_cv_projectPoints",  [](UMat& objectPoints, UMat& rvec, UMat& tvec, UMat& cameraMatrix, UMat& distCoeffs, UMat& imagePoints, UMat& jacobian, double& aspectRatio) { cv::projectPoints(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, imagePoints, jacobian, aspectRatio); return make_tuple<UMat,UMat>(move(imagePoints),move(jacobian));});
    mod.method("jlopencv_cv_solvePnP",  [](Mat& objectPoints, Mat& imagePoints, Mat& cameraMatrix, Mat& distCoeffs, Mat& rvec, Mat& tvec, bool& useExtrinsicGuess, int& flags) { auto retval = cv::solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, flags); return make_tuple<bool,Mat,Mat>(move(retval),move(rvec),move(tvec));});
    mod.method("jlopencv_cv_solvePnP",  [](UMat& objectPoints, UMat& imagePoints, UMat& cameraMatrix, UMat& distCoeffs, UMat& rvec, UMat& tvec, bool& useExtrinsicGuess, int& flags) { auto retval = cv::solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, flags); return make_tuple<bool,UMat,UMat>(move(retval),move(rvec),move(tvec));});
    mod.method("jlopencv_cv_solvePnPRansac",  [](Mat& objectPoints, Mat& imagePoints, Mat& cameraMatrix, Mat& distCoeffs, Mat& rvec, Mat& tvec, bool& useExtrinsicGuess, int& iterationsCount, float& reprojectionError, double& confidence, Mat& inliers, int& flags) { auto retval = cv::solvePnPRansac(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers, flags); return make_tuple<bool,Mat,Mat,Mat>(move(retval),move(rvec),move(tvec),move(inliers));});
    mod.method("jlopencv_cv_solvePnPRansac",  [](UMat& objectPoints, UMat& imagePoints, UMat& cameraMatrix, UMat& distCoeffs, UMat& rvec, UMat& tvec, bool& useExtrinsicGuess, int& iterationsCount, float& reprojectionError, double& confidence, UMat& inliers, int& flags) { auto retval = cv::solvePnPRansac(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers, flags); return make_tuple<bool,UMat,UMat,UMat>(move(retval),move(rvec),move(tvec),move(inliers));});
    mod.method("jlopencv_cv_solveP3P",  [](Mat& objectPoints, Mat& imagePoints, Mat& cameraMatrix, Mat& distCoeffs, int& flags) {vector<Mat> rvecs;vector<Mat> tvecs; auto retval = cv::solveP3P(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvecs, tvecs, flags); return make_tuple<int,vector<Mat>,vector<Mat>>(move(retval),move(rvecs),move(tvecs));});
    mod.method("jlopencv_cv_solveP3P",  [](UMat& objectPoints, UMat& imagePoints, UMat& cameraMatrix, UMat& distCoeffs, int& flags) {vector<UMat> rvecs;vector<UMat> tvecs; auto retval = cv::solveP3P(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvecs, tvecs, flags); return make_tuple<int,vector<UMat>,vector<UMat>>(move(retval),move(rvecs),move(tvecs));});
    mod.method("jlopencv_cv_solvePnPRefineLM",  [](Mat& objectPoints, Mat& imagePoints, Mat& cameraMatrix, Mat& distCoeffs, Mat& rvec, Mat& tvec, TermCriteria& criteria) { cv::solvePnPRefineLM(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria); return make_tuple<Mat,Mat>(move(rvec),move(tvec));});
    mod.method("jlopencv_cv_solvePnPRefineLM",  [](UMat& objectPoints, UMat& imagePoints, UMat& cameraMatrix, UMat& distCoeffs, UMat& rvec, UMat& tvec, TermCriteria& criteria) { cv::solvePnPRefineLM(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria); return make_tuple<UMat,UMat>(move(rvec),move(tvec));});
    mod.method("jlopencv_cv_solvePnPRefineVVS",  [](Mat& objectPoints, Mat& imagePoints, Mat& cameraMatrix, Mat& distCoeffs, Mat& rvec, Mat& tvec, TermCriteria& criteria, double& VVSlambda) { cv::solvePnPRefineVVS(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria, VVSlambda); return make_tuple<Mat,Mat>(move(rvec),move(tvec));});
    mod.method("jlopencv_cv_solvePnPRefineVVS",  [](UMat& objectPoints, UMat& imagePoints, UMat& cameraMatrix, UMat& distCoeffs, UMat& rvec, UMat& tvec, TermCriteria& criteria, double& VVSlambda) { cv::solvePnPRefineVVS(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria, VVSlambda); return make_tuple<UMat,UMat>(move(rvec),move(tvec));});
    mod.method("jlopencv_cv_solvePnPGeneric",  [](Mat& objectPoints, Mat& imagePoints, Mat& cameraMatrix, Mat& distCoeffs, bool& useExtrinsicGuess, SolvePnPMethod& flags, Mat& rvec, Mat& tvec, Mat& reprojectionError) {vector<Mat> rvecs;vector<Mat> tvecs; auto retval = cv::solvePnPGeneric(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvecs, tvecs, useExtrinsicGuess, flags, rvec, tvec, reprojectionError); return make_tuple<int,vector<Mat>,vector<Mat>,Mat>(move(retval),move(rvecs),move(tvecs),move(reprojectionError));});
    mod.method("jlopencv_cv_solvePnPGeneric",  [](UMat& objectPoints, UMat& imagePoints, UMat& cameraMatrix, UMat& distCoeffs, bool& useExtrinsicGuess, SolvePnPMethod& flags, UMat& rvec, UMat& tvec, UMat& reprojectionError) {vector<UMat> rvecs;vector<UMat> tvecs; auto retval = cv::solvePnPGeneric(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvecs, tvecs, useExtrinsicGuess, flags, rvec, tvec, reprojectionError); return make_tuple<int,vector<UMat>,vector<UMat>,UMat>(move(retval),move(rvecs),move(tvecs),move(reprojectionError));});
    mod.method("jlopencv_cv_initCameraMatrix2D",  [](vector<Mat>& objectPoints, vector<Mat>& imagePoints, Size& imageSize, double& aspectRatio) { auto retval = cv::initCameraMatrix2D(objectPoints, imagePoints, imageSize, aspectRatio); return retval;});
    mod.method("jlopencv_cv_initCameraMatrix2D",  [](vector<UMat>& objectPoints, vector<UMat>& imagePoints, Size& imageSize, double& aspectRatio) { auto retval = cv::initCameraMatrix2D(objectPoints, imagePoints, imageSize, aspectRatio); return retval;});
    mod.method("jlopencv_cv_findChessboardCorners",  [](Mat& image, Size& patternSize, Mat& corners, int& flags) { auto retval = cv::findChessboardCorners(image, patternSize, corners, flags); return make_tuple<bool,Mat>(move(retval),move(corners));});
    mod.method("jlopencv_cv_findChessboardCorners",  [](UMat& image, Size& patternSize, UMat& corners, int& flags) { auto retval = cv::findChessboardCorners(image, patternSize, corners, flags); return make_tuple<bool,UMat>(move(retval),move(corners));});
    mod.method("jlopencv_cv_checkChessboard",  [](Mat& img, Size& size) { auto retval = cv::checkChessboard(img, size); return retval;});
    mod.method("jlopencv_cv_checkChessboard",  [](UMat& img, Size& size) { auto retval = cv::checkChessboard(img, size); return retval;});
    mod.method("jlopencv_cv_findChessboardCornersSB",  [](Mat& image, Size& patternSize, Mat& corners, int& flags) { auto retval = cv::findChessboardCornersSB(image, patternSize, corners, flags); return make_tuple<bool,Mat>(move(retval),move(corners));});
    mod.method("jlopencv_cv_findChessboardCornersSB",  [](UMat& image, Size& patternSize, UMat& corners, int& flags) { auto retval = cv::findChessboardCornersSB(image, patternSize, corners, flags); return make_tuple<bool,UMat>(move(retval),move(corners));});
    mod.method("jlopencv_cv_find4QuadCornerSubpix",  [](Mat& img, Mat& corners, Size& region_size) { auto retval = cv::find4QuadCornerSubpix(img, corners, region_size); return make_tuple<bool,Mat>(move(retval),move(corners));});
    mod.method("jlopencv_cv_find4QuadCornerSubpix",  [](UMat& img, UMat& corners, Size& region_size) { auto retval = cv::find4QuadCornerSubpix(img, corners, region_size); return make_tuple<bool,UMat>(move(retval),move(corners));});
    mod.method("jlopencv_cv_drawChessboardCorners",  [](Mat& image, Size& patternSize, Mat& corners, bool& patternWasFound) { cv::drawChessboardCorners(image, patternSize, corners, patternWasFound); return image;});
    mod.method("jlopencv_cv_drawChessboardCorners",  [](UMat& image, Size& patternSize, UMat& corners, bool& patternWasFound) { cv::drawChessboardCorners(image, patternSize, corners, patternWasFound); return image;});
    mod.method("jlopencv_cv_drawFrameAxes",  [](Mat& image, Mat& cameraMatrix, Mat& distCoeffs, Mat& rvec, Mat& tvec, float& length, int& thickness) { cv::drawFrameAxes(image, cameraMatrix, distCoeffs, rvec, tvec, length, thickness); return image;});
    mod.method("jlopencv_cv_drawFrameAxes",  [](UMat& image, UMat& cameraMatrix, UMat& distCoeffs, UMat& rvec, UMat& tvec, float& length, int& thickness) { cv::drawFrameAxes(image, cameraMatrix, distCoeffs, rvec, tvec, length, thickness); return image;});
    mod.method("jlopencv_cv_findCirclesGrid",  [](Mat& image, Size& patternSize, int& flags, Ptr<FeatureDetector>& blobDetector, CirclesGridFinderParameters& parameters, Mat& centers) { auto retval = cv::findCirclesGrid(image, patternSize, centers, flags, blobDetector, parameters); return make_tuple<bool,Mat>(move(retval),move(centers));});
    mod.method("jlopencv_cv_findCirclesGrid",  [](UMat& image, Size& patternSize, int& flags, Ptr<FeatureDetector>& blobDetector, CirclesGridFinderParameters& parameters, UMat& centers) { auto retval = cv::findCirclesGrid(image, patternSize, centers, flags, blobDetector, parameters); return make_tuple<bool,UMat>(move(retval),move(centers));});
    mod.method("jlopencv_cv_findCirclesGrid",  [](Mat& image, Size& patternSize, Mat& centers, int& flags, Ptr<FeatureDetector>& blobDetector) { auto retval = cv::findCirclesGrid(image, patternSize, centers, flags, blobDetector); return make_tuple<bool,Mat>(move(retval),move(centers));});
    mod.method("jlopencv_cv_findCirclesGrid",  [](UMat& image, Size& patternSize, UMat& centers, int& flags, Ptr<FeatureDetector>& blobDetector) { auto retval = cv::findCirclesGrid(image, patternSize, centers, flags, blobDetector); return make_tuple<bool,UMat>(move(retval),move(centers));});
    mod.method("jlopencv_cv_calibrateCameraExtended",  [](vector<Mat>& objectPoints, vector<Mat>& imagePoints, Size& imageSize, Mat& cameraMatrix, Mat& distCoeffs, Mat& stdDeviationsIntrinsics, Mat& stdDeviationsExtrinsics, Mat& perViewErrors, int& flags, TermCriteria& criteria) {vector<Mat> rvecs;vector<Mat> tvecs; auto retval = cv::calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, stdDeviationsIntrinsics, stdDeviationsExtrinsics, perViewErrors, flags, criteria); return make_tuple<double,Mat,Mat,vector<Mat>,vector<Mat>,Mat,Mat,Mat>(move(retval),move(cameraMatrix),move(distCoeffs),move(rvecs),move(tvecs),move(stdDeviationsIntrinsics),move(stdDeviationsExtrinsics),move(perViewErrors));});
    mod.method("jlopencv_cv_calibrateCameraExtended",  [](vector<UMat>& objectPoints, vector<UMat>& imagePoints, Size& imageSize, UMat& cameraMatrix, UMat& distCoeffs, UMat& stdDeviationsIntrinsics, UMat& stdDeviationsExtrinsics, UMat& perViewErrors, int& flags, TermCriteria& criteria) {vector<UMat> rvecs;vector<UMat> tvecs; auto retval = cv::calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, stdDeviationsIntrinsics, stdDeviationsExtrinsics, perViewErrors, flags, criteria); return make_tuple<double,UMat,UMat,vector<UMat>,vector<UMat>,UMat,UMat,UMat>(move(retval),move(cameraMatrix),move(distCoeffs),move(rvecs),move(tvecs),move(stdDeviationsIntrinsics),move(stdDeviationsExtrinsics),move(perViewErrors));});
    mod.method("jlopencv_cv_calibrateCamera",  [](vector<Mat>& objectPoints, vector<Mat>& imagePoints, Size& imageSize, Mat& cameraMatrix, Mat& distCoeffs, int& flags, TermCriteria& criteria) {vector<Mat> rvecs;vector<Mat> tvecs; auto retval = cv::calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, flags, criteria); return make_tuple<double,Mat,Mat,vector<Mat>,vector<Mat>>(move(retval),move(cameraMatrix),move(distCoeffs),move(rvecs),move(tvecs));});
    mod.method("jlopencv_cv_calibrateCamera",  [](vector<UMat>& objectPoints, vector<UMat>& imagePoints, Size& imageSize, UMat& cameraMatrix, UMat& distCoeffs, int& flags, TermCriteria& criteria) {vector<UMat> rvecs;vector<UMat> tvecs; auto retval = cv::calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, flags, criteria); return make_tuple<double,UMat,UMat,vector<UMat>,vector<UMat>>(move(retval),move(cameraMatrix),move(distCoeffs),move(rvecs),move(tvecs));});
    mod.method("jlopencv_cv_calibrateCameraROExtended",  [](vector<Mat>& objectPoints, vector<Mat>& imagePoints, Size& imageSize, int& iFixedPoint, Mat& cameraMatrix, Mat& distCoeffs, Mat& newObjPoints, Mat& stdDeviationsIntrinsics, Mat& stdDeviationsExtrinsics, Mat& stdDeviationsObjPoints, Mat& perViewErrors, int& flags, TermCriteria& criteria) {vector<Mat> rvecs;vector<Mat> tvecs; auto retval = cv::calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, stdDeviationsIntrinsics, stdDeviationsExtrinsics, stdDeviationsObjPoints, perViewErrors, flags, criteria); return make_tuple<double,Mat,Mat,vector<Mat>,vector<Mat>,Mat,Mat,Mat,Mat,Mat>(move(retval),move(cameraMatrix),move(distCoeffs),move(rvecs),move(tvecs),move(newObjPoints),move(stdDeviationsIntrinsics),move(stdDeviationsExtrinsics),move(stdDeviationsObjPoints),move(perViewErrors));});
    mod.method("jlopencv_cv_calibrateCameraROExtended",  [](vector<UMat>& objectPoints, vector<UMat>& imagePoints, Size& imageSize, int& iFixedPoint, UMat& cameraMatrix, UMat& distCoeffs, UMat& newObjPoints, UMat& stdDeviationsIntrinsics, UMat& stdDeviationsExtrinsics, UMat& stdDeviationsObjPoints, UMat& perViewErrors, int& flags, TermCriteria& criteria) {vector<UMat> rvecs;vector<UMat> tvecs; auto retval = cv::calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, stdDeviationsIntrinsics, stdDeviationsExtrinsics, stdDeviationsObjPoints, perViewErrors, flags, criteria); return make_tuple<double,UMat,UMat,vector<UMat>,vector<UMat>,UMat,UMat,UMat,UMat,UMat>(move(retval),move(cameraMatrix),move(distCoeffs),move(rvecs),move(tvecs),move(newObjPoints),move(stdDeviationsIntrinsics),move(stdDeviationsExtrinsics),move(stdDeviationsObjPoints),move(perViewErrors));});
    mod.method("jlopencv_cv_calibrateCameraRO",  [](vector<Mat>& objectPoints, vector<Mat>& imagePoints, Size& imageSize, int& iFixedPoint, Mat& cameraMatrix, Mat& distCoeffs, Mat& newObjPoints, int& flags, TermCriteria& criteria) {vector<Mat> rvecs;vector<Mat> tvecs; auto retval = cv::calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, flags, criteria); return make_tuple<double,Mat,Mat,vector<Mat>,vector<Mat>,Mat>(move(retval),move(cameraMatrix),move(distCoeffs),move(rvecs),move(tvecs),move(newObjPoints));});
    mod.method("jlopencv_cv_calibrateCameraRO",  [](vector<UMat>& objectPoints, vector<UMat>& imagePoints, Size& imageSize, int& iFixedPoint, UMat& cameraMatrix, UMat& distCoeffs, UMat& newObjPoints, int& flags, TermCriteria& criteria) {vector<UMat> rvecs;vector<UMat> tvecs; auto retval = cv::calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, flags, criteria); return make_tuple<double,UMat,UMat,vector<UMat>,vector<UMat>,UMat>(move(retval),move(cameraMatrix),move(distCoeffs),move(rvecs),move(tvecs),move(newObjPoints));});
    mod.method("jlopencv_cv_calibrationMatrixValues",  [](Mat& cameraMatrix, Size& imageSize, double& apertureWidth, double& apertureHeight) {double fovx;double fovy;double focalLength;Point2d principalPoint;double aspectRatio; cv::calibrationMatrixValues(cameraMatrix, imageSize, apertureWidth, apertureHeight, fovx, fovy, focalLength, principalPoint, aspectRatio); return make_tuple<double,double,double,Point2d,double>(move(fovx),move(fovy),move(focalLength),move(principalPoint),move(aspectRatio));});
    mod.method("jlopencv_cv_calibrationMatrixValues",  [](UMat& cameraMatrix, Size& imageSize, double& apertureWidth, double& apertureHeight) {double fovx;double fovy;double focalLength;Point2d principalPoint;double aspectRatio; cv::calibrationMatrixValues(cameraMatrix, imageSize, apertureWidth, apertureHeight, fovx, fovy, focalLength, principalPoint, aspectRatio); return make_tuple<double,double,double,Point2d,double>(move(fovx),move(fovy),move(focalLength),move(principalPoint),move(aspectRatio));});
    mod.method("jlopencv_cv_stereoCalibrateExtended",  [](vector<Mat>& objectPoints, vector<Mat>& imagePoints1, vector<Mat>& imagePoints2, Mat& cameraMatrix1, Mat& distCoeffs1, Mat& cameraMatrix2, Mat& distCoeffs2, Size& imageSize, Mat& R, Mat& T, Mat& E, Mat& F, Mat& perViewErrors, int& flags, TermCriteria& criteria) { auto retval = cv::stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, perViewErrors, flags, criteria); return make_tuple<double,Mat,Mat,Mat,Mat,Mat,Mat,Mat,Mat,Mat>(move(retval),move(cameraMatrix1),move(distCoeffs1),move(cameraMatrix2),move(distCoeffs2),move(R),move(T),move(E),move(F),move(perViewErrors));});
    mod.method("jlopencv_cv_stereoCalibrateExtended",  [](vector<UMat>& objectPoints, vector<UMat>& imagePoints1, vector<UMat>& imagePoints2, UMat& cameraMatrix1, UMat& distCoeffs1, UMat& cameraMatrix2, UMat& distCoeffs2, Size& imageSize, UMat& R, UMat& T, UMat& E, UMat& F, UMat& perViewErrors, int& flags, TermCriteria& criteria) { auto retval = cv::stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, perViewErrors, flags, criteria); return make_tuple<double,UMat,UMat,UMat,UMat,UMat,UMat,UMat,UMat,UMat>(move(retval),move(cameraMatrix1),move(distCoeffs1),move(cameraMatrix2),move(distCoeffs2),move(R),move(T),move(E),move(F),move(perViewErrors));});
    mod.method("jlopencv_cv_stereoCalibrate",  [](vector<Mat>& objectPoints, vector<Mat>& imagePoints1, vector<Mat>& imagePoints2, Mat& cameraMatrix1, Mat& distCoeffs1, Mat& cameraMatrix2, Mat& distCoeffs2, Size& imageSize, Mat& R, Mat& T, Mat& E, Mat& F, int& flags, TermCriteria& criteria) { auto retval = cv::stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, flags, criteria); return make_tuple<double,Mat,Mat,Mat,Mat,Mat,Mat,Mat,Mat>(move(retval),move(cameraMatrix1),move(distCoeffs1),move(cameraMatrix2),move(distCoeffs2),move(R),move(T),move(E),move(F));});
    mod.method("jlopencv_cv_stereoCalibrate",  [](vector<UMat>& objectPoints, vector<UMat>& imagePoints1, vector<UMat>& imagePoints2, UMat& cameraMatrix1, UMat& distCoeffs1, UMat& cameraMatrix2, UMat& distCoeffs2, Size& imageSize, UMat& R, UMat& T, UMat& E, UMat& F, int& flags, TermCriteria& criteria) { auto retval = cv::stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, flags, criteria); return make_tuple<double,UMat,UMat,UMat,UMat,UMat,UMat,UMat,UMat>(move(retval),move(cameraMatrix1),move(distCoeffs1),move(cameraMatrix2),move(distCoeffs2),move(R),move(T),move(E),move(F));});
    mod.method("jlopencv_cv_stereoRectify",  [](Mat& cameraMatrix1, Mat& distCoeffs1, Mat& cameraMatrix2, Mat& distCoeffs2, Size& imageSize, Mat& R, Mat& T, Mat& R1, Mat& R2, Mat& P1, Mat& P2, Mat& Q, int& flags, double& alpha, Size& newImageSize) {Rect validPixROI1;Rect validPixROI2; cv::stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, R1, R2, P1, P2, Q, flags, alpha, newImageSize, validPixROI1, validPixROI2); return make_tuple<Mat,Mat,Mat,Mat,Mat,Rect,Rect>(move(R1),move(R2),move(P1),move(P2),move(Q),move(validPixROI1),move(validPixROI2));});
    mod.method("jlopencv_cv_stereoRectify",  [](UMat& cameraMatrix1, UMat& distCoeffs1, UMat& cameraMatrix2, UMat& distCoeffs2, Size& imageSize, UMat& R, UMat& T, UMat& R1, UMat& R2, UMat& P1, UMat& P2, UMat& Q, int& flags, double& alpha, Size& newImageSize) {Rect validPixROI1;Rect validPixROI2; cv::stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, R1, R2, P1, P2, Q, flags, alpha, newImageSize, validPixROI1, validPixROI2); return make_tuple<UMat,UMat,UMat,UMat,UMat,Rect,Rect>(move(R1),move(R2),move(P1),move(P2),move(Q),move(validPixROI1),move(validPixROI2));});
    mod.method("jlopencv_cv_stereoRectifyUncalibrated",  [](Mat& points1, Mat& points2, Mat& F, Size& imgSize, Mat& H1, Mat& H2, double& threshold) { auto retval = cv::stereoRectifyUncalibrated(points1, points2, F, imgSize, H1, H2, threshold); return make_tuple<bool,Mat,Mat>(move(retval),move(H1),move(H2));});
    mod.method("jlopencv_cv_stereoRectifyUncalibrated",  [](UMat& points1, UMat& points2, UMat& F, Size& imgSize, UMat& H1, UMat& H2, double& threshold) { auto retval = cv::stereoRectifyUncalibrated(points1, points2, F, imgSize, H1, H2, threshold); return make_tuple<bool,UMat,UMat>(move(retval),move(H1),move(H2));});
    mod.method("jlopencv_cv_rectify3Collinear",  [](Mat& cameraMatrix1, Mat& distCoeffs1, Mat& cameraMatrix2, Mat& distCoeffs2, Mat& cameraMatrix3, Mat& distCoeffs3, vector<Mat>& imgpt1, vector<Mat>& imgpt3, Size& imageSize, Mat& R12, Mat& T12, Mat& R13, Mat& T13, double& alpha, Size& newImgSize, int& flags, Mat& R1, Mat& R2, Mat& R3, Mat& P1, Mat& P2, Mat& P3, Mat& Q) {Rect roi1;Rect roi2; auto retval = cv::rectify3Collinear(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, R12, T12, R13, T13, R1, R2, R3, P1, P2, P3, Q, alpha, newImgSize, roi1, roi2, flags); return make_tuple<float,Mat,Mat,Mat,Mat,Mat,Mat,Mat,Rect,Rect>(move(retval),move(R1),move(R2),move(R3),move(P1),move(P2),move(P3),move(Q),move(roi1),move(roi2));});
    mod.method("jlopencv_cv_rectify3Collinear",  [](UMat& cameraMatrix1, UMat& distCoeffs1, UMat& cameraMatrix2, UMat& distCoeffs2, UMat& cameraMatrix3, UMat& distCoeffs3, vector<UMat>& imgpt1, vector<UMat>& imgpt3, Size& imageSize, UMat& R12, UMat& T12, UMat& R13, UMat& T13, double& alpha, Size& newImgSize, int& flags, UMat& R1, UMat& R2, UMat& R3, UMat& P1, UMat& P2, UMat& P3, UMat& Q) {Rect roi1;Rect roi2; auto retval = cv::rectify3Collinear(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, R12, T12, R13, T13, R1, R2, R3, P1, P2, P3, Q, alpha, newImgSize, roi1, roi2, flags); return make_tuple<float,UMat,UMat,UMat,UMat,UMat,UMat,UMat,Rect,Rect>(move(retval),move(R1),move(R2),move(R3),move(P1),move(P2),move(P3),move(Q),move(roi1),move(roi2));});
    mod.method("jlopencv_cv_getOptimalNewCameraMatrix",  [](Mat& cameraMatrix, Mat& distCoeffs, Size& imageSize, double& alpha, Size& newImgSize, bool& centerPrincipalPoint) {Rect validPixROI; auto retval = cv::getOptimalNewCameraMatrix(cameraMatrix, distCoeffs, imageSize, alpha, newImgSize, validPixROI, centerPrincipalPoint); return make_tuple<Mat,Rect>(move(retval),move(validPixROI));});
    mod.method("jlopencv_cv_getOptimalNewCameraMatrix",  [](UMat& cameraMatrix, UMat& distCoeffs, Size& imageSize, double& alpha, Size& newImgSize, bool& centerPrincipalPoint) {Rect validPixROI; auto retval = cv::getOptimalNewCameraMatrix(cameraMatrix, distCoeffs, imageSize, alpha, newImgSize, validPixROI, centerPrincipalPoint); return make_tuple<Mat,Rect>(move(retval),move(validPixROI));});
    mod.method("jlopencv_cv_calibrateHandEye",  [](vector<Mat>& R_gripper2base, vector<Mat>& t_gripper2base, vector<Mat>& R_target2cam, vector<Mat>& t_target2cam, Mat& R_cam2gripper, Mat& t_cam2gripper, HandEyeCalibrationMethod& method) { cv::calibrateHandEye(R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, R_cam2gripper, t_cam2gripper, method); return make_tuple<Mat,Mat>(move(R_cam2gripper),move(t_cam2gripper));});
    mod.method("jlopencv_cv_calibrateHandEye",  [](vector<UMat>& R_gripper2base, vector<UMat>& t_gripper2base, vector<UMat>& R_target2cam, vector<UMat>& t_target2cam, UMat& R_cam2gripper, UMat& t_cam2gripper, HandEyeCalibrationMethod& method) { cv::calibrateHandEye(R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, R_cam2gripper, t_cam2gripper, method); return make_tuple<UMat,UMat>(move(R_cam2gripper),move(t_cam2gripper));});
    mod.method("jlopencv_cv_convertPointsToHomogeneous",  [](Mat& src, Mat& dst) { cv::convertPointsToHomogeneous(src, dst); return dst;});
    mod.method("jlopencv_cv_convertPointsToHomogeneous",  [](UMat& src, UMat& dst) { cv::convertPointsToHomogeneous(src, dst); return dst;});
    mod.method("jlopencv_cv_convertPointsFromHomogeneous",  [](Mat& src, Mat& dst) { cv::convertPointsFromHomogeneous(src, dst); return dst;});
    mod.method("jlopencv_cv_convertPointsFromHomogeneous",  [](UMat& src, UMat& dst) { cv::convertPointsFromHomogeneous(src, dst); return dst;});
    mod.method("jlopencv_cv_findFundamentalMat",  [](Mat& points1, Mat& points2, int& method, double& ransacReprojThreshold, double& confidence, Mat& mask) { auto retval = cv::findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, mask); return make_tuple<Mat,Mat>(move(retval),move(mask));});
    mod.method("jlopencv_cv_findFundamentalMat",  [](UMat& points1, UMat& points2, int& method, double& ransacReprojThreshold, double& confidence, UMat& mask) { auto retval = cv::findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, mask); return make_tuple<Mat,UMat>(move(retval),move(mask));});
    mod.method("jlopencv_cv_findEssentialMat",  [](Mat& points1, Mat& points2, Mat& cameraMatrix, int& method, double& prob, double& threshold, Mat& mask) { auto retval = cv::findEssentialMat(points1, points2, cameraMatrix, method, prob, threshold, mask); return make_tuple<Mat,Mat>(move(retval),move(mask));});
    mod.method("jlopencv_cv_findEssentialMat",  [](UMat& points1, UMat& points2, UMat& cameraMatrix, int& method, double& prob, double& threshold, UMat& mask) { auto retval = cv::findEssentialMat(points1, points2, cameraMatrix, method, prob, threshold, mask); return make_tuple<Mat,UMat>(move(retval),move(mask));});
    mod.method("jlopencv_cv_findEssentialMat",  [](Mat& points1, Mat& points2, double& focal, Point2d& pp, int& method, double& prob, double& threshold, Mat& mask) { auto retval = cv::findEssentialMat(points1, points2, focal, pp, method, prob, threshold, mask); return make_tuple<Mat,Mat>(move(retval),move(mask));});
    mod.method("jlopencv_cv_findEssentialMat",  [](UMat& points1, UMat& points2, double& focal, Point2d& pp, int& method, double& prob, double& threshold, UMat& mask) { auto retval = cv::findEssentialMat(points1, points2, focal, pp, method, prob, threshold, mask); return make_tuple<Mat,UMat>(move(retval),move(mask));});
    mod.method("jlopencv_cv_decomposeEssentialMat",  [](Mat& E, Mat& R1, Mat& R2, Mat& t) { cv::decomposeEssentialMat(E, R1, R2, t); return make_tuple<Mat,Mat,Mat>(move(R1),move(R2),move(t));});
    mod.method("jlopencv_cv_decomposeEssentialMat",  [](UMat& E, UMat& R1, UMat& R2, UMat& t) { cv::decomposeEssentialMat(E, R1, R2, t); return make_tuple<UMat,UMat,UMat>(move(R1),move(R2),move(t));});
    mod.method("jlopencv_cv_recoverPose",  [](Mat& E, Mat& points1, Mat& points2, Mat& cameraMatrix, Mat& R, Mat& t, Mat& mask) { auto retval = cv::recoverPose(E, points1, points2, cameraMatrix, R, t, mask); return make_tuple<int,Mat,Mat,Mat>(move(retval),move(R),move(t),move(mask));});
    mod.method("jlopencv_cv_recoverPose",  [](UMat& E, UMat& points1, UMat& points2, UMat& cameraMatrix, UMat& R, UMat& t, UMat& mask) { auto retval = cv::recoverPose(E, points1, points2, cameraMatrix, R, t, mask); return make_tuple<int,UMat,UMat,UMat>(move(retval),move(R),move(t),move(mask));});
    mod.method("jlopencv_cv_recoverPose",  [](Mat& E, Mat& points1, Mat& points2, Mat& R, Mat& t, double& focal, Point2d& pp, Mat& mask) { auto retval = cv::recoverPose(E, points1, points2, R, t, focal, pp, mask); return make_tuple<int,Mat,Mat,Mat>(move(retval),move(R),move(t),move(mask));});
    mod.method("jlopencv_cv_recoverPose",  [](UMat& E, UMat& points1, UMat& points2, UMat& R, UMat& t, double& focal, Point2d& pp, UMat& mask) { auto retval = cv::recoverPose(E, points1, points2, R, t, focal, pp, mask); return make_tuple<int,UMat,UMat,UMat>(move(retval),move(R),move(t),move(mask));});
    mod.method("jlopencv_cv_recoverPose",  [](Mat& E, Mat& points1, Mat& points2, Mat& cameraMatrix, double& distanceThresh, Mat& R, Mat& t, Mat& mask, Mat& triangulatedPoints) { auto retval = cv::recoverPose(E, points1, points2, cameraMatrix, R, t, distanceThresh, mask, triangulatedPoints); return make_tuple<int,Mat,Mat,Mat,Mat>(move(retval),move(R),move(t),move(mask),move(triangulatedPoints));});
    mod.method("jlopencv_cv_recoverPose",  [](UMat& E, UMat& points1, UMat& points2, UMat& cameraMatrix, double& distanceThresh, UMat& R, UMat& t, UMat& mask, UMat& triangulatedPoints) { auto retval = cv::recoverPose(E, points1, points2, cameraMatrix, R, t, distanceThresh, mask, triangulatedPoints); return make_tuple<int,UMat,UMat,UMat,UMat>(move(retval),move(R),move(t),move(mask),move(triangulatedPoints));});
    mod.method("jlopencv_cv_computeCorrespondEpilines",  [](Mat& points, int& whichImage, Mat& F, Mat& lines) { cv::computeCorrespondEpilines(points, whichImage, F, lines); return lines;});
    mod.method("jlopencv_cv_computeCorrespondEpilines",  [](UMat& points, int& whichImage, UMat& F, UMat& lines) { cv::computeCorrespondEpilines(points, whichImage, F, lines); return lines;});
    mod.method("jlopencv_cv_triangulatePoints",  [](Mat& projMatr1, Mat& projMatr2, Mat& projPoints1, Mat& projPoints2, Mat& points4D) { cv::triangulatePoints(projMatr1, projMatr2, projPoints1, projPoints2, points4D); return points4D;});
    mod.method("jlopencv_cv_triangulatePoints",  [](UMat& projMatr1, UMat& projMatr2, UMat& projPoints1, UMat& projPoints2, UMat& points4D) { cv::triangulatePoints(projMatr1, projMatr2, projPoints1, projPoints2, points4D); return points4D;});
    mod.method("jlopencv_cv_correctMatches",  [](Mat& F, Mat& points1, Mat& points2, Mat& newPoints1, Mat& newPoints2) { cv::correctMatches(F, points1, points2, newPoints1, newPoints2); return make_tuple<Mat,Mat>(move(newPoints1),move(newPoints2));});
    mod.method("jlopencv_cv_correctMatches",  [](UMat& F, UMat& points1, UMat& points2, UMat& newPoints1, UMat& newPoints2) { cv::correctMatches(F, points1, points2, newPoints1, newPoints2); return make_tuple<UMat,UMat>(move(newPoints1),move(newPoints2));});
    mod.method("jlopencv_cv_filterSpeckles",  [](Mat& img, double& newVal, int& maxSpeckleSize, double& maxDiff, Mat& buf) { cv::filterSpeckles(img, newVal, maxSpeckleSize, maxDiff, buf); return make_tuple<Mat,Mat>(move(img),move(buf));});
    mod.method("jlopencv_cv_filterSpeckles",  [](UMat& img, double& newVal, int& maxSpeckleSize, double& maxDiff, UMat& buf) { cv::filterSpeckles(img, newVal, maxSpeckleSize, maxDiff, buf); return make_tuple<UMat,UMat>(move(img),move(buf));});
    mod.method("jlopencv_cv_getValidDisparityROI",  [](Rect& roi1, Rect& roi2, int& minDisparity, int& numberOfDisparities, int& blockSize) { auto retval = cv::getValidDisparityROI(roi1, roi2, minDisparity, numberOfDisparities, blockSize); return retval;});
    mod.method("jlopencv_cv_validateDisparity",  [](Mat& disparity, Mat& cost, int& minDisparity, int& numberOfDisparities, int& disp12MaxDisp) { cv::validateDisparity(disparity, cost, minDisparity, numberOfDisparities, disp12MaxDisp); return disparity;});
    mod.method("jlopencv_cv_validateDisparity",  [](UMat& disparity, UMat& cost, int& minDisparity, int& numberOfDisparities, int& disp12MaxDisp) { cv::validateDisparity(disparity, cost, minDisparity, numberOfDisparities, disp12MaxDisp); return disparity;});
    mod.method("jlopencv_cv_reprojectImageTo3D",  [](Mat& disparity, Mat& Q, Mat& _3dImage, bool& handleMissingValues, int& ddepth) { cv::reprojectImageTo3D(disparity, _3dImage, Q, handleMissingValues, ddepth); return _3dImage;});
    mod.method("jlopencv_cv_reprojectImageTo3D",  [](UMat& disparity, UMat& Q, UMat& _3dImage, bool& handleMissingValues, int& ddepth) { cv::reprojectImageTo3D(disparity, _3dImage, Q, handleMissingValues, ddepth); return _3dImage;});
    mod.method("jlopencv_cv_sampsonDistance",  [](Mat& pt1, Mat& pt2, Mat& F) { auto retval = cv::sampsonDistance(pt1, pt2, F); return retval;});
    mod.method("jlopencv_cv_sampsonDistance",  [](UMat& pt1, UMat& pt2, UMat& F) { auto retval = cv::sampsonDistance(pt1, pt2, F); return retval;});
    mod.method("jlopencv_cv_estimateAffine3D",  [](Mat& src, Mat& dst, Mat& out, Mat& inliers, double& ransacThreshold, double& confidence) { auto retval = cv::estimateAffine3D(src, dst, out, inliers, ransacThreshold, confidence); return make_tuple<int,Mat,Mat>(move(retval),move(out),move(inliers));});
    mod.method("jlopencv_cv_estimateAffine3D",  [](UMat& src, UMat& dst, UMat& out, UMat& inliers, double& ransacThreshold, double& confidence) { auto retval = cv::estimateAffine3D(src, dst, out, inliers, ransacThreshold, confidence); return make_tuple<int,UMat,UMat>(move(retval),move(out),move(inliers));});
    mod.method("jlopencv_cv_estimateAffine2D",  [](Mat& from, Mat& to, Mat& inliers, int& method, double& ransacReprojThreshold, size_t& maxIters, double& confidence, size_t& refineIters) { auto retval = cv::estimateAffine2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters); return make_tuple<cv::Mat,Mat>(move(retval),move(inliers));});
    mod.method("jlopencv_cv_estimateAffine2D",  [](UMat& from, UMat& to, UMat& inliers, int& method, double& ransacReprojThreshold, size_t& maxIters, double& confidence, size_t& refineIters) { auto retval = cv::estimateAffine2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters); return make_tuple<cv::Mat,UMat>(move(retval),move(inliers));});
    mod.method("jlopencv_cv_estimateAffinePartial2D",  [](Mat& from, Mat& to, Mat& inliers, int& method, double& ransacReprojThreshold, size_t& maxIters, double& confidence, size_t& refineIters) { auto retval = cv::estimateAffinePartial2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters); return make_tuple<cv::Mat,Mat>(move(retval),move(inliers));});
    mod.method("jlopencv_cv_estimateAffinePartial2D",  [](UMat& from, UMat& to, UMat& inliers, int& method, double& ransacReprojThreshold, size_t& maxIters, double& confidence, size_t& refineIters) { auto retval = cv::estimateAffinePartial2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters); return make_tuple<cv::Mat,UMat>(move(retval),move(inliers));});
    mod.method("jlopencv_cv_decomposeHomographyMat",  [](Mat& H, Mat& K) {vector<Mat> rotations;vector<Mat> translations;vector<Mat> normals; auto retval = cv::decomposeHomographyMat(H, K, rotations, translations, normals); return make_tuple<int,vector<Mat>,vector<Mat>,vector<Mat>>(move(retval),move(rotations),move(translations),move(normals));});
    mod.method("jlopencv_cv_decomposeHomographyMat",  [](UMat& H, UMat& K) {vector<UMat> rotations;vector<UMat> translations;vector<UMat> normals; auto retval = cv::decomposeHomographyMat(H, K, rotations, translations, normals); return make_tuple<int,vector<UMat>,vector<UMat>,vector<UMat>>(move(retval),move(rotations),move(translations),move(normals));});
    mod.method("jlopencv_cv_filterHomographyDecompByVisibleRefpoints",  [](vector<Mat>& rotations, vector<Mat>& normals, Mat& beforePoints, Mat& afterPoints, Mat& possibleSolutions, Mat& pointsMask) { cv::filterHomographyDecompByVisibleRefpoints(rotations, normals, beforePoints, afterPoints, possibleSolutions, pointsMask); return possibleSolutions;});
    mod.method("jlopencv_cv_filterHomographyDecompByVisibleRefpoints",  [](vector<UMat>& rotations, vector<UMat>& normals, UMat& beforePoints, UMat& afterPoints, UMat& possibleSolutions, UMat& pointsMask) { cv::filterHomographyDecompByVisibleRefpoints(rotations, normals, beforePoints, afterPoints, possibleSolutions, pointsMask); return possibleSolutions;});
    mod.method("jlopencv_cv_StereoBM_create",  [](int& numDisparities, int& blockSize) { auto retval = cv::StereoBM::create(numDisparities, blockSize); return retval;});
    mod.method("jlopencv_cv_StereoSGBM_create",  [](int& minDisparity, int& numDisparities, int& blockSize, int& P1, int& P2, int& disp12MaxDiff, int& preFilterCap, int& uniquenessRatio, int& speckleWindowSize, int& speckleRange, int& mode) { auto retval = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize, speckleRange, mode); return retval;});
    mod.method("jlopencv_cv_BRISK_create",  [](int& thresh, int& octaves, float& patternScale) { auto retval = cv::BRISK::create(thresh, octaves, patternScale); return retval;});
    mod.method("jlopencv_cv_BRISK_create",  [](vector<float>& radiusList, vector<int>& numberList, float& dMax, float& dMin, vector<int>& indexChange) { auto retval = cv::BRISK::create(radiusList, numberList, dMax, dMin, indexChange); return retval;});
    mod.method("jlopencv_cv_BRISK_create",  [](int& thresh, int& octaves, vector<float>& radiusList, vector<int>& numberList, float& dMax, float& dMin, vector<int>& indexChange) { auto retval = cv::BRISK::create(thresh, octaves, radiusList, numberList, dMax, dMin, indexChange); return retval;});
    mod.method("jlopencv_cv_ORB_create",  [](int& nfeatures, float& scaleFactor, int& nlevels, int& edgeThreshold, int& firstLevel, int& WTA_K, ORB_ScoreType& scoreType, int& patchSize, int& fastThreshold) { auto retval = cv::ORB::create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, scoreType, patchSize, fastThreshold); return retval;});
    mod.method("jlopencv_cv_MSER_create",  [](int& _delta, int& _min_area, int& _max_area, double& _max_variation, double& _min_diversity, int& _max_evolution, double& _area_threshold, double& _min_margin, int& _edge_blur_size) { auto retval = cv::MSER::create(_delta, _min_area, _max_area, _max_variation, _min_diversity, _max_evolution, _area_threshold, _min_margin, _edge_blur_size); return retval;});
    mod.method("jlopencv_cv_FastFeatureDetector_create",  [](int& threshold, bool& nonmaxSuppression, FastFeatureDetector_DetectorType& type) { auto retval = cv::FastFeatureDetector::create(threshold, nonmaxSuppression, type); return retval;});
    mod.method("jlopencv_cv_AgastFeatureDetector_create",  [](int& threshold, bool& nonmaxSuppression, AgastFeatureDetector_DetectorType& type) { auto retval = cv::AgastFeatureDetector::create(threshold, nonmaxSuppression, type); return retval;});
    mod.method("jlopencv_cv_GFTTDetector_create",  [](int& maxCorners, double& qualityLevel, double& minDistance, int& blockSize, bool& useHarrisDetector, double& k) { auto retval = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize, useHarrisDetector, k); return retval;});
    mod.method("jlopencv_cv_GFTTDetector_create",  [](int& maxCorners, double& qualityLevel, double& minDistance, int& blockSize, int& gradiantSize, bool& useHarrisDetector, double& k) { auto retval = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize, gradiantSize, useHarrisDetector, k); return retval;});
    mod.method("jlopencv_cv_SimpleBlobDetector_create",  [](SimpleBlobDetector_Params& parameters) { auto retval = cv::SimpleBlobDetector::create(parameters); return retval;});
    mod.method("jlopencv_cv_KAZE_create",  [](bool& extended, bool& upright, float& threshold, int& nOctaves, int& nOctaveLayers, KAZE_DiffusivityType& diffusivity) { auto retval = cv::KAZE::create(extended, upright, threshold, nOctaves, nOctaveLayers, diffusivity); return retval;});
    mod.method("jlopencv_cv_AKAZE_create",  [](AKAZE_DescriptorType& descriptor_type, int& descriptor_size, int& descriptor_channels, float& threshold, int& nOctaves, int& nOctaveLayers, KAZE_DiffusivityType& diffusivity) { auto retval = cv::AKAZE::create(descriptor_type, descriptor_size, descriptor_channels, threshold, nOctaves, nOctaveLayers, diffusivity); return retval;});
    mod.method("jlopencv_cv_DescriptorMatcher_create",  [](String& descriptorMatcherType) { auto retval = cv::DescriptorMatcher::create(descriptorMatcherType); return retval;});
    mod.method("jlopencv_cv_DescriptorMatcher_create",  [](DescriptorMatcher_MatcherType& matcherType) { auto retval = cv::DescriptorMatcher::create(matcherType); return retval;});
    mod.method("jlopencv_cv_BFMatcher_create",  [](int& normType, bool& crossCheck) { auto retval = cv::BFMatcher::create(normType, crossCheck); return retval;});
    mod.method("jlopencv_cv_FlannBasedMatcher_create",  []() { auto retval = cv::FlannBasedMatcher::create(); return retval;});
    mod.method("jlopencv_cv_FarnebackOpticalFlow_create",  [](int& numLevels, double& pyrScale, bool& fastPyramids, int& winSize, int& numIters, int& polyN, double& polySigma, int& flags) { auto retval = cv::FarnebackOpticalFlow::create(numLevels, pyrScale, fastPyramids, winSize, numIters, polyN, polySigma, flags); return retval;});
    mod.method("jlopencv_cv_VariationalRefinement_create",  []() { auto retval = cv::VariationalRefinement::create(); return retval;});
    mod.method("jlopencv_cv_DISOpticalFlow_create",  [](int& preset) { auto retval = cv::DISOpticalFlow::create(preset); return retval;});
    mod.method("jlopencv_cv_SparsePyrLKOpticalFlow_create",  [](Size& winSize, int& maxLevel, TermCriteria& crit, int& flags, double& minEigThreshold) { auto retval = cv::SparsePyrLKOpticalFlow::create(winSize, maxLevel, crit, flags, minEigThreshold); return retval;});
    mod.method("jlopencv_cv_undistort",  [](Mat& src, Mat& cameraMatrix, Mat& distCoeffs, Mat& dst, Mat& newCameraMatrix) { cv::undistort(src, dst, cameraMatrix, distCoeffs, newCameraMatrix); return dst;});
    mod.method("jlopencv_cv_undistort",  [](UMat& src, UMat& cameraMatrix, UMat& distCoeffs, UMat& dst, UMat& newCameraMatrix) { cv::undistort(src, dst, cameraMatrix, distCoeffs, newCameraMatrix); return dst;});
    mod.method("jlopencv_cv_initUndistortRectifyMap",  [](Mat& cameraMatrix, Mat& distCoeffs, Mat& R, Mat& newCameraMatrix, Size& size, int& m1type, Mat& map1, Mat& map2) { cv::initUndistortRectifyMap(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2); return make_tuple<Mat,Mat>(move(map1),move(map2));});
    mod.method("jlopencv_cv_initUndistortRectifyMap",  [](UMat& cameraMatrix, UMat& distCoeffs, UMat& R, UMat& newCameraMatrix, Size& size, int& m1type, UMat& map1, UMat& map2) { cv::initUndistortRectifyMap(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2); return make_tuple<UMat,UMat>(move(map1),move(map2));});
    mod.method("jlopencv_cv_getDefaultNewCameraMatrix",  [](Mat& cameraMatrix, Size& imgsize, bool& centerPrincipalPoint) { auto retval = cv::getDefaultNewCameraMatrix(cameraMatrix, imgsize, centerPrincipalPoint); return retval;});
    mod.method("jlopencv_cv_getDefaultNewCameraMatrix",  [](UMat& cameraMatrix, Size& imgsize, bool& centerPrincipalPoint) { auto retval = cv::getDefaultNewCameraMatrix(cameraMatrix, imgsize, centerPrincipalPoint); return retval;});
    mod.method("jlopencv_cv_undistortPoints",  [](Mat& src, Mat& cameraMatrix, Mat& distCoeffs, Mat& dst, Mat& R, Mat& P) { cv::undistortPoints(src, dst, cameraMatrix, distCoeffs, R, P); return dst;});
    mod.method("jlopencv_cv_undistortPoints",  [](UMat& src, UMat& cameraMatrix, UMat& distCoeffs, UMat& dst, UMat& R, UMat& P) { cv::undistortPoints(src, dst, cameraMatrix, distCoeffs, R, P); return dst;});
    mod.method("jlopencv_cv_undistortPointsIter",  [](Mat& src, Mat& cameraMatrix, Mat& distCoeffs, Mat& R, Mat& P, TermCriteria& criteria, Mat& dst) { cv::undistortPoints(src, dst, cameraMatrix, distCoeffs, R, P, criteria); return dst;});
    mod.method("jlopencv_cv_undistortPointsIter",  [](UMat& src, UMat& cameraMatrix, UMat& distCoeffs, UMat& R, UMat& P, TermCriteria& criteria, UMat& dst) { cv::undistortPoints(src, dst, cameraMatrix, distCoeffs, R, P, criteria); return dst;});
    mod.method("jlopencv_cv_drawKeypoints",  [](Mat& image, vector<KeyPoint>& keypoints, Mat& outImage, Scalar& color, DrawMatchesFlags& flags) { cv::drawKeypoints(image, keypoints, outImage, color, flags); return outImage;});
    mod.method("jlopencv_cv_drawKeypoints",  [](UMat& image, vector<KeyPoint>& keypoints, UMat& outImage, Scalar& color, DrawMatchesFlags& flags) { cv::drawKeypoints(image, keypoints, outImage, color, flags); return outImage;});
    mod.method("jlopencv_cv_drawMatches",  [](Mat& img1, vector<KeyPoint>& keypoints1, Mat& img2, vector<KeyPoint>& keypoints2, vector<DMatch>& matches1to2, Mat& outImg, Scalar& matchColor, Scalar& singlePointColor, vector<char>& matchesMask, DrawMatchesFlags& flags) { cv::drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags); return outImg;});
    mod.method("jlopencv_cv_drawMatches",  [](UMat& img1, vector<KeyPoint>& keypoints1, UMat& img2, vector<KeyPoint>& keypoints2, vector<DMatch>& matches1to2, UMat& outImg, Scalar& matchColor, Scalar& singlePointColor, vector<char>& matchesMask, DrawMatchesFlags& flags) { cv::drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags); return outImg;});
    mod.method("jlopencv_cv_drawMatchesKnn",  [](Mat& img1, vector<KeyPoint>& keypoints1, Mat& img2, vector<KeyPoint>& keypoints2, vector<vector<DMatch>>& matches1to2, Mat& outImg, Scalar& matchColor, Scalar& singlePointColor, vector<vector<char>>& matchesMask, DrawMatchesFlags& flags) { cv::drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags); return outImg;});
    mod.method("jlopencv_cv_drawMatchesKnn",  [](UMat& img1, vector<KeyPoint>& keypoints1, UMat& img2, vector<KeyPoint>& keypoints2, vector<vector<DMatch>>& matches1to2, UMat& outImg, Scalar& matchColor, Scalar& singlePointColor, vector<vector<char>>& matchesMask, DrawMatchesFlags& flags) { cv::drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags); return outImg;});
    mod.method("jlopencv_cv_CamShift",  [](Mat& probImage, Rect& window, TermCriteria& criteria) { auto retval = cv::CamShift(probImage, window, criteria); return make_tuple<RotatedRect,Rect>(move(retval),move(window));});
    mod.method("jlopencv_cv_CamShift",  [](UMat& probImage, Rect& window, TermCriteria& criteria) { auto retval = cv::CamShift(probImage, window, criteria); return make_tuple<RotatedRect,Rect>(move(retval),move(window));});
    mod.method("jlopencv_cv_meanShift",  [](Mat& probImage, Rect& window, TermCriteria& criteria) { auto retval = cv::meanShift(probImage, window, criteria); return make_tuple<int,Rect>(move(retval),move(window));});
    mod.method("jlopencv_cv_meanShift",  [](UMat& probImage, Rect& window, TermCriteria& criteria) { auto retval = cv::meanShift(probImage, window, criteria); return make_tuple<int,Rect>(move(retval),move(window));});
    mod.method("jlopencv_cv_buildOpticalFlowPyramid",  [](Mat& img, Size& winSize, int& maxLevel, bool& withDerivatives, int& pyrBorder, int& derivBorder, bool& tryReuseInputImage) {vector<Mat> pyramid; auto retval = cv::buildOpticalFlowPyramid(img, pyramid, winSize, maxLevel, withDerivatives, pyrBorder, derivBorder, tryReuseInputImage); return make_tuple<int,vector<Mat>>(move(retval),move(pyramid));});
    mod.method("jlopencv_cv_buildOpticalFlowPyramid",  [](UMat& img, Size& winSize, int& maxLevel, bool& withDerivatives, int& pyrBorder, int& derivBorder, bool& tryReuseInputImage) {vector<UMat> pyramid; auto retval = cv::buildOpticalFlowPyramid(img, pyramid, winSize, maxLevel, withDerivatives, pyrBorder, derivBorder, tryReuseInputImage); return make_tuple<int,vector<UMat>>(move(retval),move(pyramid));});
    mod.method("jlopencv_cv_calcOpticalFlowPyrLK",  [](Mat& prevImg, Mat& nextImg, Mat& prevPts, Mat& nextPts, Mat& status, Mat& err, Size& winSize, int& maxLevel, TermCriteria& criteria, int& flags, double& minEigThreshold) { cv::calcOpticalFlowPyrLK(prevImg, nextImg, prevPts, nextPts, status, err, winSize, maxLevel, criteria, flags, minEigThreshold); return make_tuple<Mat,Mat,Mat>(move(nextPts),move(status),move(err));});
    mod.method("jlopencv_cv_calcOpticalFlowPyrLK",  [](UMat& prevImg, UMat& nextImg, UMat& prevPts, UMat& nextPts, UMat& status, UMat& err, Size& winSize, int& maxLevel, TermCriteria& criteria, int& flags, double& minEigThreshold) { cv::calcOpticalFlowPyrLK(prevImg, nextImg, prevPts, nextPts, status, err, winSize, maxLevel, criteria, flags, minEigThreshold); return make_tuple<UMat,UMat,UMat>(move(nextPts),move(status),move(err));});
    mod.method("jlopencv_cv_calcOpticalFlowFarneback",  [](Mat& prev, Mat& next, Mat& flow, double& pyr_scale, int& levels, int& winsize, int& iterations, int& poly_n, double& poly_sigma, int& flags) { cv::calcOpticalFlowFarneback(prev, next, flow, pyr_scale, levels, winsize, iterations, poly_n, poly_sigma, flags); return flow;});
    mod.method("jlopencv_cv_calcOpticalFlowFarneback",  [](UMat& prev, UMat& next, UMat& flow, double& pyr_scale, int& levels, int& winsize, int& iterations, int& poly_n, double& poly_sigma, int& flags) { cv::calcOpticalFlowFarneback(prev, next, flow, pyr_scale, levels, winsize, iterations, poly_n, poly_sigma, flags); return flow;});
    mod.method("jlopencv_cv_computeECC",  [](Mat& templateImage, Mat& inputImage, Mat& inputMask) { auto retval = cv::computeECC(templateImage, inputImage, inputMask); return retval;});
    mod.method("jlopencv_cv_computeECC",  [](UMat& templateImage, UMat& inputImage, UMat& inputMask) { auto retval = cv::computeECC(templateImage, inputImage, inputMask); return retval;});
    mod.method("jlopencv_cv_findTransformECC",  [](Mat& templateImage, Mat& inputImage, Mat& warpMatrix, int& motionType, TermCriteria& criteria, Mat& inputMask, int& gaussFiltSize) { auto retval = cv::findTransformECC(templateImage, inputImage, warpMatrix, motionType, criteria, inputMask, gaussFiltSize); return make_tuple<double,Mat>(move(retval),move(warpMatrix));});
    mod.method("jlopencv_cv_findTransformECC",  [](UMat& templateImage, UMat& inputImage, UMat& warpMatrix, int& motionType, TermCriteria& criteria, UMat& inputMask, int& gaussFiltSize) { auto retval = cv::findTransformECC(templateImage, inputImage, warpMatrix, motionType, criteria, inputMask, gaussFiltSize); return make_tuple<double,UMat>(move(retval),move(warpMatrix));});
    mod.method("jlopencv_cv_readOpticalFlow",  [](String& path) { auto retval = cv::readOpticalFlow(path); return retval;});
    mod.method("jlopencv_cv_writeOpticalFlow",  [](String& path, Mat& flow) { auto retval = cv::writeOpticalFlow(path, flow); return retval;});
    mod.method("jlopencv_cv_writeOpticalFlow",  [](String& path, UMat& flow) { auto retval = cv::writeOpticalFlow(path, flow); return retval;});
    mod.method("jlopencv_cv_createBackgroundSubtractorMOG2",  [](int& history, double& varThreshold, bool& detectShadows) { auto retval = cv::createBackgroundSubtractorMOG2(history, varThreshold, detectShadows); return retval;});
    mod.method("jlopencv_cv_createBackgroundSubtractorKNN",  [](int& history, double& dist2Threshold, bool& detectShadows) { auto retval = cv::createBackgroundSubtractorKNN(history, dist2Threshold, detectShadows); return retval;});
    mod.method("jlopencv_cv_groupRectangles",  [](vector<Rect>& rectList, int& groupThreshold, double& eps) {vector<int> weights; cv::groupRectangles(rectList, weights, groupThreshold, eps); return make_tuple<vector<Rect>,vector<int>>(move(rectList),move(weights));});
    mod.method("jlopencv_cv_HOGDescriptor_getDefaultPeopleDetector",  []() { auto retval = cv::HOGDescriptor::getDefaultPeopleDetector(); return retval;});
    mod.method("jlopencv_cv_HOGDescriptor_getDaimlerPeopleDetector",  []() { auto retval = cv::HOGDescriptor::getDaimlerPeopleDetector(); return retval;});
    mod.method("jlopencv_cv_imread",  [](String& filename, int& flags) { auto retval = cv::imread(filename, flags); return retval;});
    mod.method("jlopencv_cv_imreadmulti",  [](String& filename, int& flags) {vector<Mat> mats; auto retval = cv::imreadmulti(filename, mats, flags); return make_tuple<bool,vector<Mat>>(move(retval),move(mats));});
    mod.method("jlopencv_cv_imreadmulti",  [](String& filename, int& flags) {vector<Mat> mats; auto retval = cv::imreadmulti(filename, mats, flags); return make_tuple<bool,vector<Mat>>(move(retval),move(mats));});
    mod.method("jlopencv_cv_imwrite",  [](String& filename, Mat& img, vector<int>& params) { auto retval = cv::imwrite(filename, img, params); return retval;});
    mod.method("jlopencv_cv_imwrite",  [](String& filename, UMat& img, vector<int>& params) { auto retval = cv::imwrite(filename, img, params); return retval;});
    mod.method("jlopencv_cv_imdecode",  [](Mat& buf, int& flags) { auto retval = cv::imdecode(buf, flags); return retval;});
    mod.method("jlopencv_cv_imdecode",  [](UMat& buf, int& flags) { auto retval = cv::imdecode(buf, flags); return retval;});
    mod.method("jlopencv_cv_imencode",  [](String& ext, Mat& img, vector<int>& params) {vector<uchar> buf; auto retval = cv::imencode(ext, img, buf, params); return make_tuple<bool,vector<uchar>>(move(retval),move(buf));});
    mod.method("jlopencv_cv_imencode",  [](String& ext, UMat& img, vector<int>& params) {vector<uchar> buf; auto retval = cv::imencode(ext, img, buf, params); return make_tuple<bool,vector<uchar>>(move(retval),move(buf));});
    mod.method("jlopencv_cv_haveImageReader",  [](String& filename) { auto retval = cv::haveImageReader(filename); return retval;});
    mod.method("jlopencv_cv_haveImageWriter",  [](String& filename) { auto retval = cv::haveImageWriter(filename); return retval;});
    mod.method("jlopencv_cv_VideoWriter_fourcc",  [](char& c1, char& c2, char& c3, char& c4) { auto retval = cv::VideoWriter::fourcc(c1, c2, c3, c4); return retval;});
    mod.method("jlopencv_cv_namedWindow",  [](String& winname, int& flags) { cv::namedWindow(winname, flags); ;});
    mod.method("jlopencv_cv_destroyWindow",  [](String& winname) { cv::destroyWindow(winname); ;});
    mod.method("jlopencv_cv_destroyAllWindows",  []() { cv::destroyAllWindows(); ;});
    mod.method("jlopencv_cv_startWindowThread",  []() { auto retval = cv::startWindowThread(); return retval;});
    mod.method("jlopencv_cv_waitKeyEx",  [](int& delay) { auto retval = cv::waitKeyEx(delay); return retval;});
    mod.method("jlopencv_cv_waitKey",  [](int& delay) { auto retval = cv::waitKey(delay); return retval;});
    mod.method("jlopencv_cv_imshow",  [](String& winname, Mat& mat) { cv::imshow(winname, mat); ;});
    mod.method("jlopencv_cv_imshow",  [](String& winname, UMat& mat) { cv::imshow(winname, mat); ;});
    mod.method("jlopencv_cv_resizeWindow",  [](String& winname, int& width, int& height) { cv::resizeWindow(winname, width, height); ;});
    mod.method("jlopencv_cv_resizeWindow",  [](String& winname, Size& size) { cv::resizeWindow(winname, size); ;});
    mod.method("jlopencv_cv_moveWindow",  [](String& winname, int& x, int& y) { cv::moveWindow(winname, x, y); ;});
    mod.method("jlopencv_cv_setWindowProperty",  [](String& winname, int& prop_id, double& prop_value) { cv::setWindowProperty(winname, prop_id, prop_value); ;});
    mod.method("jlopencv_cv_setWindowTitle",  [](String& winname, String& title) { cv::setWindowTitle(winname, title); ;});
    mod.method("jlopencv_cv_getWindowProperty",  [](String& winname, int& prop_id) { auto retval = cv::getWindowProperty(winname, prop_id); return retval;});
    mod.method("jlopencv_cv_getWindowImageRect",  [](String& winname) { auto retval = cv::getWindowImageRect(winname); return retval;});
    mod.method("jlopencv_cv_selectROI",  [](String& windowName, Mat& img, bool& showCrosshair, bool& fromCenter) { auto retval = cv::selectROI(windowName, img, showCrosshair, fromCenter); return retval;});
    mod.method("jlopencv_cv_selectROI",  [](String& windowName, UMat& img, bool& showCrosshair, bool& fromCenter) { auto retval = cv::selectROI(windowName, img, showCrosshair, fromCenter); return retval;});
    mod.method("jlopencv_cv_selectROI",  [](Mat& img, bool& showCrosshair, bool& fromCenter) { auto retval = cv::selectROI(img, showCrosshair, fromCenter); return retval;});
    mod.method("jlopencv_cv_selectROI",  [](UMat& img, bool& showCrosshair, bool& fromCenter) { auto retval = cv::selectROI(img, showCrosshair, fromCenter); return retval;});
    mod.method("jlopencv_cv_selectROIs",  [](String& windowName, Mat& img, bool& showCrosshair, bool& fromCenter) {vector<Rect> boundingBoxes; cv::selectROIs(windowName, img, boundingBoxes, showCrosshair, fromCenter); return boundingBoxes;});
    mod.method("jlopencv_cv_selectROIs",  [](String& windowName, UMat& img, bool& showCrosshair, bool& fromCenter) {vector<Rect> boundingBoxes; cv::selectROIs(windowName, img, boundingBoxes, showCrosshair, fromCenter); return boundingBoxes;});
    mod.method("jlopencv_cv_getTrackbarPos",  [](String& trackbarname, String& winname) { auto retval = cv::getTrackbarPos(trackbarname, winname); return retval;});
    mod.method("jlopencv_cv_setTrackbarPos",  [](String& trackbarname, String& winname, int& pos) { cv::setTrackbarPos(trackbarname, winname, pos); ;});
    mod.method("jlopencv_cv_setTrackbarMax",  [](String& trackbarname, String& winname, int& maxval) { cv::setTrackbarMax(trackbarname, winname, maxval); ;});
    mod.method("jlopencv_cv_setTrackbarMin",  [](String& trackbarname, String& winname, int& minval) { cv::setTrackbarMin(trackbarname, winname, minval); ;});
    mod.method("jlopencv_cv_addText",  [](Mat& img, String& text, Point& org, String& nameFont, int& pointSize, Scalar& color, int& weight, int& style, int& spacing) { cv::addText(img, text, org, nameFont, pointSize, color, weight, style, spacing); ;});
    mod.method("jlopencv_cv_addText",  [](Mat& img, String& text, Point& org, String& nameFont, int& pointSize, Scalar& color, int& weight, int& style, int& spacing) { cv::addText(img, text, org, nameFont, pointSize, color, weight, style, spacing); ;});
    mod.method("jlopencv_cv_displayOverlay",  [](String& winname, String& text, int& delayms) { cv::displayOverlay(winname, text, delayms); ;});
    mod.method("jlopencv_cv_displayStatusBar",  [](String& winname, String& text, int& delayms) { cv::displayStatusBar(winname, text, delayms); ;});
    mod.add_bits<SortFlags>("SortFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<CovarFlags>("CovarFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<KmeansFlags>("KmeansFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ReduceTypes>("ReduceTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<RotateFlags>("RotateFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<Flags>("Flags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<FormatType>("FormatType", jlcxx::julia_type("CppEnum"));

    mod.add_bits<Param>("Param", jlcxx::julia_type("CppEnum"));

    mod.add_bits<AccessFlag>("AccessFlag", jlcxx::julia_type("CppEnum"));

    mod.add_bits<KindFlag>("KindFlag", jlcxx::julia_type("CppEnum"));

    mod.add_bits<DepthMask>("DepthMask", jlcxx::julia_type("CppEnum"));

    mod.add_bits<UMatUsageFlags>("UMatUsageFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<MemoryFlag>("MemoryFlag", jlcxx::julia_type("CppEnum"));

    mod.add_bits<Type>("Type", jlcxx::julia_type("CppEnum"));

    mod.add_bits<SpecialFilter>("SpecialFilter", jlcxx::julia_type("CppEnum"));

    mod.add_bits<MorphTypes>("MorphTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<MorphShapes>("MorphShapes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<InterpolationFlags>("InterpolationFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<WarpPolarMode>("WarpPolarMode", jlcxx::julia_type("CppEnum"));

    mod.add_bits<InterpolationMasks>("InterpolationMasks", jlcxx::julia_type("CppEnum"));

    mod.add_bits<DistanceTypes>("DistanceTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<DistanceTransformMasks>("DistanceTransformMasks", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ThresholdTypes>("ThresholdTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<AdaptiveThresholdTypes>("AdaptiveThresholdTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<GrabCutClasses>("GrabCutClasses", jlcxx::julia_type("CppEnum"));

    mod.add_bits<GrabCutModes>("GrabCutModes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<DistanceTransformLabelTypes>("DistanceTransformLabelTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<FloodFillFlags>("FloodFillFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ConnectedComponentsTypes>("ConnectedComponentsTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ConnectedComponentsAlgorithmsTypes>("ConnectedComponentsAlgorithmsTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<RetrievalModes>("RetrievalModes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ContourApproximationModes>("ContourApproximationModes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ShapeMatchModes>("ShapeMatchModes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<HoughModes>("HoughModes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<LineSegmentDetectorModes>("LineSegmentDetectorModes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<HistCompMethods>("HistCompMethods", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ColorConversionCodes>("ColorConversionCodes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<RectanglesIntersectTypes>("RectanglesIntersectTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<LineTypes>("LineTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<HersheyFonts>("HersheyFonts", jlcxx::julia_type("CppEnum"));

    mod.add_bits<MarkerTypes>("MarkerTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<TemplateMatchModes>("TemplateMatchModes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ColormapTypes>("ColormapTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<SolvePnPMethod>("SolvePnPMethod", jlcxx::julia_type("CppEnum"));

    mod.add_bits<HandEyeCalibrationMethod>("HandEyeCalibrationMethod", jlcxx::julia_type("CppEnum"));

    mod.add_bits<GridType>("GridType", jlcxx::julia_type("CppEnum"));

    mod.add_bits<UndistortTypes>("UndistortTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ScoreType>("ScoreType", jlcxx::julia_type("CppEnum"));

    mod.add_bits<DetectorType>("DetectorType", jlcxx::julia_type("CppEnum"));

    mod.add_bits<DiffusivityType>("DiffusivityType", jlcxx::julia_type("CppEnum"));

    mod.add_bits<DescriptorType>("DescriptorType", jlcxx::julia_type("CppEnum"));

    mod.add_bits<MatcherType>("MatcherType", jlcxx::julia_type("CppEnum"));

    mod.add_bits<DrawMatchesFlags>("DrawMatchesFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<HistogramNormType>("HistogramNormType", jlcxx::julia_type("CppEnum"));

    mod.add_bits<DescriptorStorageFormat>("DescriptorStorageFormat", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ImreadModes>("ImreadModes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ImwriteFlags>("ImwriteFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ImwriteEXRTypeFlags>("ImwriteEXRTypeFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ImwritePNGFlags>("ImwritePNGFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ImwritePAMFlags>("ImwritePAMFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<VideoCaptureAPIs>("VideoCaptureAPIs", jlcxx::julia_type("CppEnum"));

    mod.add_bits<VideoCaptureProperties>("VideoCaptureProperties", jlcxx::julia_type("CppEnum"));

    mod.add_bits<VideoWriterProperties>("VideoWriterProperties", jlcxx::julia_type("CppEnum"));

    mod.add_bits<WindowFlags>("WindowFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<WindowPropertyFlags>("WindowPropertyFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<MouseEventTypes>("MouseEventTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<MouseEventFlags>("MouseEventFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<QtFontWeights>("QtFontWeights", jlcxx::julia_type("CppEnum"));

    mod.add_bits<QtFontStyles>("QtFontStyles", jlcxx::julia_type("CppEnum"));

    mod.add_bits<QtButtonTypes>("QtButtonTypes", jlcxx::julia_type("CppEnum"));
    mod.set_const("ACCESS_FAST", cv::ACCESS_FAST);
    mod.set_const("ACCESS_MASK", cv::ACCESS_MASK);
    mod.set_const("ACCESS_READ", cv::ACCESS_READ);
    mod.set_const("ACCESS_RW", cv::ACCESS_RW);
    mod.set_const("ACCESS_WRITE", cv::ACCESS_WRITE);
    mod.set_const("ADAPTIVE_THRESH_GAUSSIAN_C", cv::ADAPTIVE_THRESH_GAUSSIAN_C);
    mod.set_const("ADAPTIVE_THRESH_MEAN_C", cv::ADAPTIVE_THRESH_MEAN_C);
    mod.set_const("AKAZE_DESCRIPTOR_KAZE", cv::AKAZE::DESCRIPTOR_KAZE);
    mod.set_const("AKAZE_DESCRIPTOR_KAZE_UPRIGHT", cv::AKAZE::DESCRIPTOR_KAZE_UPRIGHT);
    mod.set_const("AKAZE_DESCRIPTOR_MLDB", cv::AKAZE::DESCRIPTOR_MLDB);
    mod.set_const("AKAZE_DESCRIPTOR_MLDB_UPRIGHT", cv::AKAZE::DESCRIPTOR_MLDB_UPRIGHT);
    mod.set_const("AgastFeatureDetector_AGAST_5_8", cv::AgastFeatureDetector::AGAST_5_8);
    mod.set_const("AGAST_FEATURE_DETECTOR_AGAST_5_8", cv::AgastFeatureDetector::AGAST_5_8);
    mod.set_const("AgastFeatureDetector_AGAST_7_12d", cv::AgastFeatureDetector::AGAST_7_12d);
    mod.set_const("AGAST_FEATURE_DETECTOR_AGAST_7_12D", cv::AgastFeatureDetector::AGAST_7_12d);
    mod.set_const("AgastFeatureDetector_AGAST_7_12s", cv::AgastFeatureDetector::AGAST_7_12s);
    mod.set_const("AGAST_FEATURE_DETECTOR_AGAST_7_12S", cv::AgastFeatureDetector::AGAST_7_12s);
    mod.set_const("AgastFeatureDetector_NONMAX_SUPPRESSION", cv::AgastFeatureDetector::NONMAX_SUPPRESSION);
    mod.set_const("AGAST_FEATURE_DETECTOR_NONMAX_SUPPRESSION", cv::AgastFeatureDetector::NONMAX_SUPPRESSION);
    mod.set_const("AgastFeatureDetector_OAST_9_16", cv::AgastFeatureDetector::OAST_9_16);
    mod.set_const("AGAST_FEATURE_DETECTOR_OAST_9_16", cv::AgastFeatureDetector::OAST_9_16);
    mod.set_const("AgastFeatureDetector_THRESHOLD", cv::AgastFeatureDetector::THRESHOLD);
    mod.set_const("AGAST_FEATURE_DETECTOR_THRESHOLD", cv::AgastFeatureDetector::THRESHOLD);
    mod.set_const("CALIB_CB_ACCURACY", cv::CALIB_CB_ACCURACY);
    mod.set_const("CALIB_CB_ADAPTIVE_THRESH", cv::CALIB_CB_ADAPTIVE_THRESH);
    mod.set_const("CALIB_CB_ASYMMETRIC_GRID", cv::CALIB_CB_ASYMMETRIC_GRID);
    mod.set_const("CALIB_CB_CLUSTERING", cv::CALIB_CB_CLUSTERING);
    mod.set_const("CALIB_CB_EXHAUSTIVE", cv::CALIB_CB_EXHAUSTIVE);
    mod.set_const("CALIB_CB_FAST_CHECK", cv::CALIB_CB_FAST_CHECK);
    mod.set_const("CALIB_CB_FILTER_QUADS", cv::CALIB_CB_FILTER_QUADS);
    mod.set_const("CALIB_CB_NORMALIZE_IMAGE", cv::CALIB_CB_NORMALIZE_IMAGE);
    mod.set_const("CALIB_CB_SYMMETRIC_GRID", cv::CALIB_CB_SYMMETRIC_GRID);
    mod.set_const("CALIB_FIX_ASPECT_RATIO", cv::CALIB_FIX_ASPECT_RATIO);
    mod.set_const("CALIB_FIX_FOCAL_LENGTH", cv::CALIB_FIX_FOCAL_LENGTH);
    mod.set_const("CALIB_FIX_INTRINSIC", cv::CALIB_FIX_INTRINSIC);
    mod.set_const("CALIB_FIX_K1", cv::CALIB_FIX_K1);
    mod.set_const("CALIB_FIX_K2", cv::CALIB_FIX_K2);
    mod.set_const("CALIB_FIX_K3", cv::CALIB_FIX_K3);
    mod.set_const("CALIB_FIX_K4", cv::CALIB_FIX_K4);
    mod.set_const("CALIB_FIX_K5", cv::CALIB_FIX_K5);
    mod.set_const("CALIB_FIX_K6", cv::CALIB_FIX_K6);
    mod.set_const("CALIB_FIX_PRINCIPAL_POINT", cv::CALIB_FIX_PRINCIPAL_POINT);
    mod.set_const("CALIB_FIX_S1_S2_S3_S4", cv::CALIB_FIX_S1_S2_S3_S4);
    mod.set_const("CALIB_FIX_TANGENT_DIST", cv::CALIB_FIX_TANGENT_DIST);
    mod.set_const("CALIB_FIX_TAUX_TAUY", cv::CALIB_FIX_TAUX_TAUY);
    mod.set_const("CALIB_HAND_EYE_ANDREFF", cv::CALIB_HAND_EYE_ANDREFF);
    mod.set_const("CALIB_HAND_EYE_DANIILIDIS", cv::CALIB_HAND_EYE_DANIILIDIS);
    mod.set_const("CALIB_HAND_EYE_HORAUD", cv::CALIB_HAND_EYE_HORAUD);
    mod.set_const("CALIB_HAND_EYE_PARK", cv::CALIB_HAND_EYE_PARK);
    mod.set_const("CALIB_HAND_EYE_TSAI", cv::CALIB_HAND_EYE_TSAI);
    mod.set_const("CALIB_NINTRINSIC", cv::CALIB_NINTRINSIC);
    mod.set_const("CALIB_RATIONAL_MODEL", cv::CALIB_RATIONAL_MODEL);
    mod.set_const("CALIB_SAME_FOCAL_LENGTH", cv::CALIB_SAME_FOCAL_LENGTH);
    mod.set_const("CALIB_THIN_PRISM_MODEL", cv::CALIB_THIN_PRISM_MODEL);
    mod.set_const("CALIB_TILTED_MODEL", cv::CALIB_TILTED_MODEL);
    mod.set_const("CALIB_USE_EXTRINSIC_GUESS", cv::CALIB_USE_EXTRINSIC_GUESS);
    mod.set_const("CALIB_USE_INTRINSIC_GUESS", cv::CALIB_USE_INTRINSIC_GUESS);
    mod.set_const("CALIB_USE_LU", cv::CALIB_USE_LU);
    mod.set_const("CALIB_USE_QR", cv::CALIB_USE_QR);
    mod.set_const("CALIB_ZERO_DISPARITY", cv::CALIB_ZERO_DISPARITY);
    mod.set_const("CALIB_ZERO_TANGENT_DIST", cv::CALIB_ZERO_TANGENT_DIST);
    mod.set_const("CAP_ANDROID", cv::CAP_ANDROID);
    mod.set_const("CAP_ANY", cv::CAP_ANY);
    mod.set_const("CAP_ARAVIS", cv::CAP_ARAVIS);
    mod.set_const("CAP_AVFOUNDATION", cv::CAP_AVFOUNDATION);
    mod.set_const("CAP_CMU1394", cv::CAP_CMU1394);
    mod.set_const("CAP_DC1394", cv::CAP_DC1394);
    mod.set_const("CAP_DSHOW", cv::CAP_DSHOW);
    mod.set_const("CAP_FFMPEG", cv::CAP_FFMPEG);
    mod.set_const("CAP_FIREWARE", cv::CAP_FIREWARE);
    mod.set_const("CAP_FIREWIRE", cv::CAP_FIREWIRE);
    mod.set_const("CAP_GIGANETIX", cv::CAP_GIGANETIX);
    mod.set_const("CAP_GPHOTO2", cv::CAP_GPHOTO2);
    mod.set_const("CAP_GSTREAMER", cv::CAP_GSTREAMER);
    mod.set_const("CAP_IEEE1394", cv::CAP_IEEE1394);
    mod.set_const("CAP_IMAGES", cv::CAP_IMAGES);
    mod.set_const("CAP_INTELPERC", cv::CAP_INTELPERC);
    mod.set_const("CAP_INTELPERC_DEPTH_GENERATOR", cv::CAP_INTELPERC_DEPTH_GENERATOR);
    mod.set_const("CAP_INTELPERC_DEPTH_MAP", cv::CAP_INTELPERC_DEPTH_MAP);
    mod.set_const("CAP_INTELPERC_GENERATORS_MASK", cv::CAP_INTELPERC_GENERATORS_MASK);
    mod.set_const("CAP_INTELPERC_IMAGE", cv::CAP_INTELPERC_IMAGE);
    mod.set_const("CAP_INTELPERC_IMAGE_GENERATOR", cv::CAP_INTELPERC_IMAGE_GENERATOR);
    mod.set_const("CAP_INTELPERC_IR_GENERATOR", cv::CAP_INTELPERC_IR_GENERATOR);
    mod.set_const("CAP_INTELPERC_IR_MAP", cv::CAP_INTELPERC_IR_MAP);
    mod.set_const("CAP_INTELPERC_UVDEPTH_MAP", cv::CAP_INTELPERC_UVDEPTH_MAP);
    mod.set_const("CAP_INTEL_MFX", cv::CAP_INTEL_MFX);
    mod.set_const("CAP_MSMF", cv::CAP_MSMF);
    mod.set_const("CAP_OPENCV_MJPEG", cv::CAP_OPENCV_MJPEG);
    mod.set_const("CAP_OPENNI", cv::CAP_OPENNI);
    mod.set_const("CAP_OPENNI2", cv::CAP_OPENNI2);
    mod.set_const("CAP_OPENNI2_ASUS", cv::CAP_OPENNI2_ASUS);
    mod.set_const("CAP_OPENNI_ASUS", cv::CAP_OPENNI_ASUS);
    mod.set_const("CAP_OPENNI_BGR_IMAGE", cv::CAP_OPENNI_BGR_IMAGE);
    mod.set_const("CAP_OPENNI_DEPTH_GENERATOR", cv::CAP_OPENNI_DEPTH_GENERATOR);
    mod.set_const("CAP_OPENNI_DEPTH_GENERATOR_BASELINE", cv::CAP_OPENNI_DEPTH_GENERATOR_BASELINE);
    mod.set_const("CAP_OPENNI_DEPTH_GENERATOR_FOCAL_LENGTH", cv::CAP_OPENNI_DEPTH_GENERATOR_FOCAL_LENGTH);
    mod.set_const("CAP_OPENNI_DEPTH_GENERATOR_PRESENT", cv::CAP_OPENNI_DEPTH_GENERATOR_PRESENT);
    mod.set_const("CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION", cv::CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION);
    mod.set_const("CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION_ON", cv::CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION_ON);
    mod.set_const("CAP_OPENNI_DEPTH_MAP", cv::CAP_OPENNI_DEPTH_MAP);
    mod.set_const("CAP_OPENNI_DISPARITY_MAP", cv::CAP_OPENNI_DISPARITY_MAP);
    mod.set_const("CAP_OPENNI_DISPARITY_MAP_32F", cv::CAP_OPENNI_DISPARITY_MAP_32F);
    mod.set_const("CAP_OPENNI_GENERATORS_MASK", cv::CAP_OPENNI_GENERATORS_MASK);
    mod.set_const("CAP_OPENNI_GRAY_IMAGE", cv::CAP_OPENNI_GRAY_IMAGE);
    mod.set_const("CAP_OPENNI_IMAGE_GENERATOR", cv::CAP_OPENNI_IMAGE_GENERATOR);
    mod.set_const("CAP_OPENNI_IMAGE_GENERATOR_OUTPUT_MODE", cv::CAP_OPENNI_IMAGE_GENERATOR_OUTPUT_MODE);
    mod.set_const("CAP_OPENNI_IMAGE_GENERATOR_PRESENT", cv::CAP_OPENNI_IMAGE_GENERATOR_PRESENT);
    mod.set_const("CAP_OPENNI_IR_GENERATOR", cv::CAP_OPENNI_IR_GENERATOR);
    mod.set_const("CAP_OPENNI_IR_GENERATOR_PRESENT", cv::CAP_OPENNI_IR_GENERATOR_PRESENT);
    mod.set_const("CAP_OPENNI_IR_IMAGE", cv::CAP_OPENNI_IR_IMAGE);
    mod.set_const("CAP_OPENNI_POINT_CLOUD_MAP", cv::CAP_OPENNI_POINT_CLOUD_MAP);
    mod.set_const("CAP_OPENNI_QVGA_30HZ", cv::CAP_OPENNI_QVGA_30HZ);
    mod.set_const("CAP_OPENNI_QVGA_60HZ", cv::CAP_OPENNI_QVGA_60HZ);
    mod.set_const("CAP_OPENNI_SXGA_15HZ", cv::CAP_OPENNI_SXGA_15HZ);
    mod.set_const("CAP_OPENNI_SXGA_30HZ", cv::CAP_OPENNI_SXGA_30HZ);
    mod.set_const("CAP_OPENNI_VALID_DEPTH_MASK", cv::CAP_OPENNI_VALID_DEPTH_MASK);
    mod.set_const("CAP_OPENNI_VGA_30HZ", cv::CAP_OPENNI_VGA_30HZ);
    mod.set_const("CAP_PROP_APERTURE", cv::CAP_PROP_APERTURE);
    mod.set_const("CAP_PROP_ARAVIS_AUTOTRIGGER", cv::CAP_PROP_ARAVIS_AUTOTRIGGER);
    mod.set_const("CAP_PROP_AUTOFOCUS", cv::CAP_PROP_AUTOFOCUS);
    mod.set_const("CAP_PROP_AUTO_EXPOSURE", cv::CAP_PROP_AUTO_EXPOSURE);
    mod.set_const("CAP_PROP_AUTO_WB", cv::CAP_PROP_AUTO_WB);
    mod.set_const("CAP_PROP_BACKEND", cv::CAP_PROP_BACKEND);
    mod.set_const("CAP_PROP_BACKLIGHT", cv::CAP_PROP_BACKLIGHT);
    mod.set_const("CAP_PROP_BRIGHTNESS", cv::CAP_PROP_BRIGHTNESS);
    mod.set_const("CAP_PROP_BUFFERSIZE", cv::CAP_PROP_BUFFERSIZE);
    mod.set_const("CAP_PROP_CHANNEL", cv::CAP_PROP_CHANNEL);
    mod.set_const("CAP_PROP_CODEC_PIXEL_FORMAT", cv::CAP_PROP_CODEC_PIXEL_FORMAT);
    mod.set_const("CAP_PROP_CONTRAST", cv::CAP_PROP_CONTRAST);
    mod.set_const("CAP_PROP_CONVERT_RGB", cv::CAP_PROP_CONVERT_RGB);
    mod.set_const("CAP_PROP_DC1394_MAX", cv::CAP_PROP_DC1394_MAX);
    mod.set_const("CAP_PROP_DC1394_MODE_AUTO", cv::CAP_PROP_DC1394_MODE_AUTO);
    mod.set_const("CAP_PROP_DC1394_MODE_MANUAL", cv::CAP_PROP_DC1394_MODE_MANUAL);
    mod.set_const("CAP_PROP_DC1394_MODE_ONE_PUSH_AUTO", cv::CAP_PROP_DC1394_MODE_ONE_PUSH_AUTO);
    mod.set_const("CAP_PROP_DC1394_OFF", cv::CAP_PROP_DC1394_OFF);
    mod.set_const("CAP_PROP_EXPOSURE", cv::CAP_PROP_EXPOSURE);
    mod.set_const("CAP_PROP_EXPOSUREPROGRAM", cv::CAP_PROP_EXPOSUREPROGRAM);
    mod.set_const("CAP_PROP_FOCUS", cv::CAP_PROP_FOCUS);
    mod.set_const("CAP_PROP_FORMAT", cv::CAP_PROP_FORMAT);
    mod.set_const("CAP_PROP_FOURCC", cv::CAP_PROP_FOURCC);
    mod.set_const("CAP_PROP_FPS", cv::CAP_PROP_FPS);
    mod.set_const("CAP_PROP_FRAME_COUNT", cv::CAP_PROP_FRAME_COUNT);
    mod.set_const("CAP_PROP_FRAME_HEIGHT", cv::CAP_PROP_FRAME_HEIGHT);
    mod.set_const("CAP_PROP_FRAME_WIDTH", cv::CAP_PROP_FRAME_WIDTH);
    mod.set_const("CAP_PROP_GAIN", cv::CAP_PROP_GAIN);
    mod.set_const("CAP_PROP_GAMMA", cv::CAP_PROP_GAMMA);
    mod.set_const("CAP_PROP_GIGA_FRAME_HEIGH_MAX", cv::CAP_PROP_GIGA_FRAME_HEIGH_MAX);
    mod.set_const("CAP_PROP_GIGA_FRAME_OFFSET_X", cv::CAP_PROP_GIGA_FRAME_OFFSET_X);
    mod.set_const("CAP_PROP_GIGA_FRAME_OFFSET_Y", cv::CAP_PROP_GIGA_FRAME_OFFSET_Y);
    mod.set_const("CAP_PROP_GIGA_FRAME_SENS_HEIGH", cv::CAP_PROP_GIGA_FRAME_SENS_HEIGH);
    mod.set_const("CAP_PROP_GIGA_FRAME_SENS_WIDTH", cv::CAP_PROP_GIGA_FRAME_SENS_WIDTH);
    mod.set_const("CAP_PROP_GIGA_FRAME_WIDTH_MAX", cv::CAP_PROP_GIGA_FRAME_WIDTH_MAX);
    mod.set_const("CAP_PROP_GPHOTO2_COLLECT_MSGS", cv::CAP_PROP_GPHOTO2_COLLECT_MSGS);
    mod.set_const("CAP_PROP_GPHOTO2_FLUSH_MSGS", cv::CAP_PROP_GPHOTO2_FLUSH_MSGS);
    mod.set_const("CAP_PROP_GPHOTO2_PREVIEW", cv::CAP_PROP_GPHOTO2_PREVIEW);
    mod.set_const("CAP_PROP_GPHOTO2_RELOAD_CONFIG", cv::CAP_PROP_GPHOTO2_RELOAD_CONFIG);
    mod.set_const("CAP_PROP_GPHOTO2_RELOAD_ON_CHANGE", cv::CAP_PROP_GPHOTO2_RELOAD_ON_CHANGE);
    mod.set_const("CAP_PROP_GPHOTO2_WIDGET_ENUMERATE", cv::CAP_PROP_GPHOTO2_WIDGET_ENUMERATE);
    mod.set_const("CAP_PROP_GSTREAMER_QUEUE_LENGTH", cv::CAP_PROP_GSTREAMER_QUEUE_LENGTH);
    mod.set_const("CAP_PROP_GUID", cv::CAP_PROP_GUID);
    mod.set_const("CAP_PROP_HUE", cv::CAP_PROP_HUE);
    mod.set_const("CAP_PROP_IMAGES_BASE", cv::CAP_PROP_IMAGES_BASE);
    mod.set_const("CAP_PROP_IMAGES_LAST", cv::CAP_PROP_IMAGES_LAST);
    mod.set_const("CAP_PROP_INTELPERC_DEPTH_CONFIDENCE_THRESHOLD", cv::CAP_PROP_INTELPERC_DEPTH_CONFIDENCE_THRESHOLD);
    mod.set_const("CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_HORZ", cv::CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_HORZ);
    mod.set_const("CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_VERT", cv::CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_VERT);
    mod.set_const("CAP_PROP_INTELPERC_DEPTH_LOW_CONFIDENCE_VALUE", cv::CAP_PROP_INTELPERC_DEPTH_LOW_CONFIDENCE_VALUE);
    mod.set_const("CAP_PROP_INTELPERC_DEPTH_SATURATION_VALUE", cv::CAP_PROP_INTELPERC_DEPTH_SATURATION_VALUE);
    mod.set_const("CAP_PROP_INTELPERC_PROFILE_COUNT", cv::CAP_PROP_INTELPERC_PROFILE_COUNT);
    mod.set_const("CAP_PROP_INTELPERC_PROFILE_IDX", cv::CAP_PROP_INTELPERC_PROFILE_IDX);
    mod.set_const("CAP_PROP_IOS_DEVICE_EXPOSURE", cv::CAP_PROP_IOS_DEVICE_EXPOSURE);
    mod.set_const("CAP_PROP_IOS_DEVICE_FLASH", cv::CAP_PROP_IOS_DEVICE_FLASH);
    mod.set_const("CAP_PROP_IOS_DEVICE_FOCUS", cv::CAP_PROP_IOS_DEVICE_FOCUS);
    mod.set_const("CAP_PROP_IOS_DEVICE_TORCH", cv::CAP_PROP_IOS_DEVICE_TORCH);
    mod.set_const("CAP_PROP_IOS_DEVICE_WHITEBALANCE", cv::CAP_PROP_IOS_DEVICE_WHITEBALANCE);
    mod.set_const("CAP_PROP_IRIS", cv::CAP_PROP_IRIS);
    mod.set_const("CAP_PROP_ISO_SPEED", cv::CAP_PROP_ISO_SPEED);
    mod.set_const("CAP_PROP_MODE", cv::CAP_PROP_MODE);
    mod.set_const("CAP_PROP_MONOCHROME", cv::CAP_PROP_MONOCHROME);
    mod.set_const("CAP_PROP_OPENNI2_MIRROR", cv::CAP_PROP_OPENNI2_MIRROR);
    mod.set_const("CAP_PROP_OPENNI2_SYNC", cv::CAP_PROP_OPENNI2_SYNC);
    mod.set_const("CAP_PROP_OPENNI_APPROX_FRAME_SYNC", cv::CAP_PROP_OPENNI_APPROX_FRAME_SYNC);
    mod.set_const("CAP_PROP_OPENNI_BASELINE", cv::CAP_PROP_OPENNI_BASELINE);
    mod.set_const("CAP_PROP_OPENNI_CIRCLE_BUFFER", cv::CAP_PROP_OPENNI_CIRCLE_BUFFER);
    mod.set_const("CAP_PROP_OPENNI_FOCAL_LENGTH", cv::CAP_PROP_OPENNI_FOCAL_LENGTH);
    mod.set_const("CAP_PROP_OPENNI_FRAME_MAX_DEPTH", cv::CAP_PROP_OPENNI_FRAME_MAX_DEPTH);
    mod.set_const("CAP_PROP_OPENNI_GENERATOR_PRESENT", cv::CAP_PROP_OPENNI_GENERATOR_PRESENT);
    mod.set_const("CAP_PROP_OPENNI_MAX_BUFFER_SIZE", cv::CAP_PROP_OPENNI_MAX_BUFFER_SIZE);
    mod.set_const("CAP_PROP_OPENNI_MAX_TIME_DURATION", cv::CAP_PROP_OPENNI_MAX_TIME_DURATION);
    mod.set_const("CAP_PROP_OPENNI_OUTPUT_MODE", cv::CAP_PROP_OPENNI_OUTPUT_MODE);
    mod.set_const("CAP_PROP_OPENNI_REGISTRATION", cv::CAP_PROP_OPENNI_REGISTRATION);
    mod.set_const("CAP_PROP_OPENNI_REGISTRATION_ON", cv::CAP_PROP_OPENNI_REGISTRATION_ON);
    mod.set_const("CAP_PROP_PAN", cv::CAP_PROP_PAN);
    mod.set_const("CAP_PROP_POS_AVI_RATIO", cv::CAP_PROP_POS_AVI_RATIO);
    mod.set_const("CAP_PROP_POS_FRAMES", cv::CAP_PROP_POS_FRAMES);
    mod.set_const("CAP_PROP_POS_MSEC", cv::CAP_PROP_POS_MSEC);
    mod.set_const("CAP_PROP_PVAPI_BINNINGX", cv::CAP_PROP_PVAPI_BINNINGX);
    mod.set_const("CAP_PROP_PVAPI_BINNINGY", cv::CAP_PROP_PVAPI_BINNINGY);
    mod.set_const("CAP_PROP_PVAPI_DECIMATIONHORIZONTAL", cv::CAP_PROP_PVAPI_DECIMATIONHORIZONTAL);
    mod.set_const("CAP_PROP_PVAPI_DECIMATIONVERTICAL", cv::CAP_PROP_PVAPI_DECIMATIONVERTICAL);
    mod.set_const("CAP_PROP_PVAPI_FRAMESTARTTRIGGERMODE", cv::CAP_PROP_PVAPI_FRAMESTARTTRIGGERMODE);
    mod.set_const("CAP_PROP_PVAPI_MULTICASTIP", cv::CAP_PROP_PVAPI_MULTICASTIP);
    mod.set_const("CAP_PROP_PVAPI_PIXELFORMAT", cv::CAP_PROP_PVAPI_PIXELFORMAT);
    mod.set_const("CAP_PROP_RECTIFICATION", cv::CAP_PROP_RECTIFICATION);
    mod.set_const("CAP_PROP_ROLL", cv::CAP_PROP_ROLL);
    mod.set_const("CAP_PROP_SAR_DEN", cv::CAP_PROP_SAR_DEN);
    mod.set_const("CAP_PROP_SAR_NUM", cv::CAP_PROP_SAR_NUM);
    mod.set_const("CAP_PROP_SATURATION", cv::CAP_PROP_SATURATION);
    mod.set_const("CAP_PROP_SETTINGS", cv::CAP_PROP_SETTINGS);
    mod.set_const("CAP_PROP_SHARPNESS", cv::CAP_PROP_SHARPNESS);
    mod.set_const("CAP_PROP_SPEED", cv::CAP_PROP_SPEED);
    mod.set_const("CAP_PROP_TEMPERATURE", cv::CAP_PROP_TEMPERATURE);
    mod.set_const("CAP_PROP_TILT", cv::CAP_PROP_TILT);
    mod.set_const("CAP_PROP_TRIGGER", cv::CAP_PROP_TRIGGER);
    mod.set_const("CAP_PROP_TRIGGER_DELAY", cv::CAP_PROP_TRIGGER_DELAY);
    mod.set_const("CAP_PROP_VIEWFINDER", cv::CAP_PROP_VIEWFINDER);
    mod.set_const("CAP_PROP_WB_TEMPERATURE", cv::CAP_PROP_WB_TEMPERATURE);
    mod.set_const("CAP_PROP_WHITE_BALANCE_BLUE_U", cv::CAP_PROP_WHITE_BALANCE_BLUE_U);
    mod.set_const("CAP_PROP_WHITE_BALANCE_RED_V", cv::CAP_PROP_WHITE_BALANCE_RED_V);
    mod.set_const("CAP_PROP_XI_ACQ_BUFFER_SIZE", cv::CAP_PROP_XI_ACQ_BUFFER_SIZE);
    mod.set_const("CAP_PROP_XI_ACQ_BUFFER_SIZE_UNIT", cv::CAP_PROP_XI_ACQ_BUFFER_SIZE_UNIT);
    mod.set_const("CAP_PROP_XI_ACQ_FRAME_BURST_COUNT", cv::CAP_PROP_XI_ACQ_FRAME_BURST_COUNT);
    mod.set_const("CAP_PROP_XI_ACQ_TIMING_MODE", cv::CAP_PROP_XI_ACQ_TIMING_MODE);
    mod.set_const("CAP_PROP_XI_ACQ_TRANSPORT_BUFFER_COMMIT", cv::CAP_PROP_XI_ACQ_TRANSPORT_BUFFER_COMMIT);
    mod.set_const("CAP_PROP_XI_ACQ_TRANSPORT_BUFFER_SIZE", cv::CAP_PROP_XI_ACQ_TRANSPORT_BUFFER_SIZE);
    mod.set_const("CAP_PROP_XI_AEAG", cv::CAP_PROP_XI_AEAG);
    mod.set_const("CAP_PROP_XI_AEAG_LEVEL", cv::CAP_PROP_XI_AEAG_LEVEL);
    mod.set_const("CAP_PROP_XI_AEAG_ROI_HEIGHT", cv::CAP_PROP_XI_AEAG_ROI_HEIGHT);
    mod.set_const("CAP_PROP_XI_AEAG_ROI_OFFSET_X", cv::CAP_PROP_XI_AEAG_ROI_OFFSET_X);
    mod.set_const("CAP_PROP_XI_AEAG_ROI_OFFSET_Y", cv::CAP_PROP_XI_AEAG_ROI_OFFSET_Y);
    mod.set_const("CAP_PROP_XI_AEAG_ROI_WIDTH", cv::CAP_PROP_XI_AEAG_ROI_WIDTH);
    mod.set_const("CAP_PROP_XI_AE_MAX_LIMIT", cv::CAP_PROP_XI_AE_MAX_LIMIT);
    mod.set_const("CAP_PROP_XI_AG_MAX_LIMIT", cv::CAP_PROP_XI_AG_MAX_LIMIT);
    mod.set_const("CAP_PROP_XI_APPLY_CMS", cv::CAP_PROP_XI_APPLY_CMS);
    mod.set_const("CAP_PROP_XI_AUTO_BANDWIDTH_CALCULATION", cv::CAP_PROP_XI_AUTO_BANDWIDTH_CALCULATION);
    mod.set_const("CAP_PROP_XI_AUTO_WB", cv::CAP_PROP_XI_AUTO_WB);
    mod.set_const("CAP_PROP_XI_AVAILABLE_BANDWIDTH", cv::CAP_PROP_XI_AVAILABLE_BANDWIDTH);
    mod.set_const("CAP_PROP_XI_BINNING_HORIZONTAL", cv::CAP_PROP_XI_BINNING_HORIZONTAL);
    mod.set_const("CAP_PROP_XI_BINNING_PATTERN", cv::CAP_PROP_XI_BINNING_PATTERN);
    mod.set_const("CAP_PROP_XI_BINNING_SELECTOR", cv::CAP_PROP_XI_BINNING_SELECTOR);
    mod.set_const("CAP_PROP_XI_BINNING_VERTICAL", cv::CAP_PROP_XI_BINNING_VERTICAL);
    mod.set_const("CAP_PROP_XI_BPC", cv::CAP_PROP_XI_BPC);
    mod.set_const("CAP_PROP_XI_BUFFERS_QUEUE_SIZE", cv::CAP_PROP_XI_BUFFERS_QUEUE_SIZE);
    mod.set_const("CAP_PROP_XI_BUFFER_POLICY", cv::CAP_PROP_XI_BUFFER_POLICY);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_00", cv::CAP_PROP_XI_CC_MATRIX_00);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_01", cv::CAP_PROP_XI_CC_MATRIX_01);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_02", cv::CAP_PROP_XI_CC_MATRIX_02);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_03", cv::CAP_PROP_XI_CC_MATRIX_03);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_10", cv::CAP_PROP_XI_CC_MATRIX_10);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_11", cv::CAP_PROP_XI_CC_MATRIX_11);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_12", cv::CAP_PROP_XI_CC_MATRIX_12);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_13", cv::CAP_PROP_XI_CC_MATRIX_13);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_20", cv::CAP_PROP_XI_CC_MATRIX_20);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_21", cv::CAP_PROP_XI_CC_MATRIX_21);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_22", cv::CAP_PROP_XI_CC_MATRIX_22);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_23", cv::CAP_PROP_XI_CC_MATRIX_23);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_30", cv::CAP_PROP_XI_CC_MATRIX_30);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_31", cv::CAP_PROP_XI_CC_MATRIX_31);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_32", cv::CAP_PROP_XI_CC_MATRIX_32);
    mod.set_const("CAP_PROP_XI_CC_MATRIX_33", cv::CAP_PROP_XI_CC_MATRIX_33);
    mod.set_const("CAP_PROP_XI_CHIP_TEMP", cv::CAP_PROP_XI_CHIP_TEMP);
    mod.set_const("CAP_PROP_XI_CMS", cv::CAP_PROP_XI_CMS);
    mod.set_const("CAP_PROP_XI_COLOR_FILTER_ARRAY", cv::CAP_PROP_XI_COLOR_FILTER_ARRAY);
    mod.set_const("CAP_PROP_XI_COLUMN_FPN_CORRECTION", cv::CAP_PROP_XI_COLUMN_FPN_CORRECTION);
    mod.set_const("CAP_PROP_XI_COOLING", cv::CAP_PROP_XI_COOLING);
    mod.set_const("CAP_PROP_XI_COUNTER_SELECTOR", cv::CAP_PROP_XI_COUNTER_SELECTOR);
    mod.set_const("CAP_PROP_XI_COUNTER_VALUE", cv::CAP_PROP_XI_COUNTER_VALUE);
    mod.set_const("CAP_PROP_XI_DATA_FORMAT", cv::CAP_PROP_XI_DATA_FORMAT);
    mod.set_const("CAP_PROP_XI_DEBOUNCE_EN", cv::CAP_PROP_XI_DEBOUNCE_EN);
    mod.set_const("CAP_PROP_XI_DEBOUNCE_POL", cv::CAP_PROP_XI_DEBOUNCE_POL);
    mod.set_const("CAP_PROP_XI_DEBOUNCE_T0", cv::CAP_PROP_XI_DEBOUNCE_T0);
    mod.set_const("CAP_PROP_XI_DEBOUNCE_T1", cv::CAP_PROP_XI_DEBOUNCE_T1);
    mod.set_const("CAP_PROP_XI_DEBUG_LEVEL", cv::CAP_PROP_XI_DEBUG_LEVEL);
    mod.set_const("CAP_PROP_XI_DECIMATION_HORIZONTAL", cv::CAP_PROP_XI_DECIMATION_HORIZONTAL);
    mod.set_const("CAP_PROP_XI_DECIMATION_PATTERN", cv::CAP_PROP_XI_DECIMATION_PATTERN);
    mod.set_const("CAP_PROP_XI_DECIMATION_SELECTOR", cv::CAP_PROP_XI_DECIMATION_SELECTOR);
    mod.set_const("CAP_PROP_XI_DECIMATION_VERTICAL", cv::CAP_PROP_XI_DECIMATION_VERTICAL);
    mod.set_const("CAP_PROP_XI_DEFAULT_CC_MATRIX", cv::CAP_PROP_XI_DEFAULT_CC_MATRIX);
    mod.set_const("CAP_PROP_XI_DEVICE_MODEL_ID", cv::CAP_PROP_XI_DEVICE_MODEL_ID);
    mod.set_const("CAP_PROP_XI_DEVICE_RESET", cv::CAP_PROP_XI_DEVICE_RESET);
    mod.set_const("CAP_PROP_XI_DEVICE_SN", cv::CAP_PROP_XI_DEVICE_SN);
    mod.set_const("CAP_PROP_XI_DOWNSAMPLING", cv::CAP_PROP_XI_DOWNSAMPLING);
    mod.set_const("CAP_PROP_XI_DOWNSAMPLING_TYPE", cv::CAP_PROP_XI_DOWNSAMPLING_TYPE);
    mod.set_const("CAP_PROP_XI_EXPOSURE", cv::CAP_PROP_XI_EXPOSURE);
    mod.set_const("CAP_PROP_XI_EXPOSURE_BURST_COUNT", cv::CAP_PROP_XI_EXPOSURE_BURST_COUNT);
    mod.set_const("CAP_PROP_XI_EXP_PRIORITY", cv::CAP_PROP_XI_EXP_PRIORITY);
    mod.set_const("CAP_PROP_XI_FFS_ACCESS_KEY", cv::CAP_PROP_XI_FFS_ACCESS_KEY);
    mod.set_const("CAP_PROP_XI_FFS_FILE_ID", cv::CAP_PROP_XI_FFS_FILE_ID);
    mod.set_const("CAP_PROP_XI_FFS_FILE_SIZE", cv::CAP_PROP_XI_FFS_FILE_SIZE);
    mod.set_const("CAP_PROP_XI_FRAMERATE", cv::CAP_PROP_XI_FRAMERATE);
    mod.set_const("CAP_PROP_XI_FREE_FFS_SIZE", cv::CAP_PROP_XI_FREE_FFS_SIZE);
    mod.set_const("CAP_PROP_XI_GAIN", cv::CAP_PROP_XI_GAIN);
    mod.set_const("CAP_PROP_XI_GAIN_SELECTOR", cv::CAP_PROP_XI_GAIN_SELECTOR);
    mod.set_const("CAP_PROP_XI_GAMMAC", cv::CAP_PROP_XI_GAMMAC);
    mod.set_const("CAP_PROP_XI_GAMMAY", cv::CAP_PROP_XI_GAMMAY);
    mod.set_const("CAP_PROP_XI_GPI_LEVEL", cv::CAP_PROP_XI_GPI_LEVEL);
    mod.set_const("CAP_PROP_XI_GPI_MODE", cv::CAP_PROP_XI_GPI_MODE);
    mod.set_const("CAP_PROP_XI_GPI_SELECTOR", cv::CAP_PROP_XI_GPI_SELECTOR);
    mod.set_const("CAP_PROP_XI_GPO_MODE", cv::CAP_PROP_XI_GPO_MODE);
    mod.set_const("CAP_PROP_XI_GPO_SELECTOR", cv::CAP_PROP_XI_GPO_SELECTOR);
    mod.set_const("CAP_PROP_XI_HDR", cv::CAP_PROP_XI_HDR);
    mod.set_const("CAP_PROP_XI_HDR_KNEEPOINT_COUNT", cv::CAP_PROP_XI_HDR_KNEEPOINT_COUNT);
    mod.set_const("CAP_PROP_XI_HDR_T1", cv::CAP_PROP_XI_HDR_T1);
    mod.set_const("CAP_PROP_XI_HDR_T2", cv::CAP_PROP_XI_HDR_T2);
    mod.set_const("CAP_PROP_XI_HEIGHT", cv::CAP_PROP_XI_HEIGHT);
    mod.set_const("CAP_PROP_XI_HOUS_BACK_SIDE_TEMP", cv::CAP_PROP_XI_HOUS_BACK_SIDE_TEMP);
    mod.set_const("CAP_PROP_XI_HOUS_TEMP", cv::CAP_PROP_XI_HOUS_TEMP);
    mod.set_const("CAP_PROP_XI_HW_REVISION", cv::CAP_PROP_XI_HW_REVISION);
    mod.set_const("CAP_PROP_XI_IMAGE_BLACK_LEVEL", cv::CAP_PROP_XI_IMAGE_BLACK_LEVEL);
    mod.set_const("CAP_PROP_XI_IMAGE_DATA_BIT_DEPTH", cv::CAP_PROP_XI_IMAGE_DATA_BIT_DEPTH);
    mod.set_const("CAP_PROP_XI_IMAGE_DATA_FORMAT", cv::CAP_PROP_XI_IMAGE_DATA_FORMAT);
    mod.set_const("CAP_PROP_XI_IMAGE_DATA_FORMAT_RGB32_ALPHA", cv::CAP_PROP_XI_IMAGE_DATA_FORMAT_RGB32_ALPHA);
    mod.set_const("CAP_PROP_XI_IMAGE_IS_COLOR", cv::CAP_PROP_XI_IMAGE_IS_COLOR);
    mod.set_const("CAP_PROP_XI_IMAGE_PAYLOAD_SIZE", cv::CAP_PROP_XI_IMAGE_PAYLOAD_SIZE);
    mod.set_const("CAP_PROP_XI_IS_COOLED", cv::CAP_PROP_XI_IS_COOLED);
    mod.set_const("CAP_PROP_XI_IS_DEVICE_EXIST", cv::CAP_PROP_XI_IS_DEVICE_EXIST);
    mod.set_const("CAP_PROP_XI_KNEEPOINT1", cv::CAP_PROP_XI_KNEEPOINT1);
    mod.set_const("CAP_PROP_XI_KNEEPOINT2", cv::CAP_PROP_XI_KNEEPOINT2);
    mod.set_const("CAP_PROP_XI_LED_MODE", cv::CAP_PROP_XI_LED_MODE);
    mod.set_const("CAP_PROP_XI_LED_SELECTOR", cv::CAP_PROP_XI_LED_SELECTOR);
    mod.set_const("CAP_PROP_XI_LENS_APERTURE_VALUE", cv::CAP_PROP_XI_LENS_APERTURE_VALUE);
    mod.set_const("CAP_PROP_XI_LENS_FEATURE", cv::CAP_PROP_XI_LENS_FEATURE);
    mod.set_const("CAP_PROP_XI_LENS_FEATURE_SELECTOR", cv::CAP_PROP_XI_LENS_FEATURE_SELECTOR);
    mod.set_const("CAP_PROP_XI_LENS_FOCAL_LENGTH", cv::CAP_PROP_XI_LENS_FOCAL_LENGTH);
    mod.set_const("CAP_PROP_XI_LENS_FOCUS_DISTANCE", cv::CAP_PROP_XI_LENS_FOCUS_DISTANCE);
    mod.set_const("CAP_PROP_XI_LENS_FOCUS_MOVE", cv::CAP_PROP_XI_LENS_FOCUS_MOVE);
    mod.set_const("CAP_PROP_XI_LENS_FOCUS_MOVEMENT_VALUE", cv::CAP_PROP_XI_LENS_FOCUS_MOVEMENT_VALUE);
    mod.set_const("CAP_PROP_XI_LENS_MODE", cv::CAP_PROP_XI_LENS_MODE);
    mod.set_const("CAP_PROP_XI_LIMIT_BANDWIDTH", cv::CAP_PROP_XI_LIMIT_BANDWIDTH);
    mod.set_const("CAP_PROP_XI_LUT_EN", cv::CAP_PROP_XI_LUT_EN);
    mod.set_const("CAP_PROP_XI_LUT_INDEX", cv::CAP_PROP_XI_LUT_INDEX);
    mod.set_const("CAP_PROP_XI_LUT_VALUE", cv::CAP_PROP_XI_LUT_VALUE);
    mod.set_const("CAP_PROP_XI_MANUAL_WB", cv::CAP_PROP_XI_MANUAL_WB);
    mod.set_const("CAP_PROP_XI_OFFSET_X", cv::CAP_PROP_XI_OFFSET_X);
    mod.set_const("CAP_PROP_XI_OFFSET_Y", cv::CAP_PROP_XI_OFFSET_Y);
    mod.set_const("CAP_PROP_XI_OUTPUT_DATA_BIT_DEPTH", cv::CAP_PROP_XI_OUTPUT_DATA_BIT_DEPTH);
    mod.set_const("CAP_PROP_XI_OUTPUT_DATA_PACKING", cv::CAP_PROP_XI_OUTPUT_DATA_PACKING);
    mod.set_const("CAP_PROP_XI_OUTPUT_DATA_PACKING_TYPE", cv::CAP_PROP_XI_OUTPUT_DATA_PACKING_TYPE);
    mod.set_const("CAP_PROP_XI_RECENT_FRAME", cv::CAP_PROP_XI_RECENT_FRAME);
    mod.set_const("CAP_PROP_XI_REGION_MODE", cv::CAP_PROP_XI_REGION_MODE);
    mod.set_const("CAP_PROP_XI_REGION_SELECTOR", cv::CAP_PROP_XI_REGION_SELECTOR);
    mod.set_const("CAP_PROP_XI_ROW_FPN_CORRECTION", cv::CAP_PROP_XI_ROW_FPN_CORRECTION);
    mod.set_const("CAP_PROP_XI_SENSOR_BOARD_TEMP", cv::CAP_PROP_XI_SENSOR_BOARD_TEMP);
    mod.set_const("CAP_PROP_XI_SENSOR_CLOCK_FREQ_HZ", cv::CAP_PROP_XI_SENSOR_CLOCK_FREQ_HZ);
    mod.set_const("CAP_PROP_XI_SENSOR_CLOCK_FREQ_INDEX", cv::CAP_PROP_XI_SENSOR_CLOCK_FREQ_INDEX);
    mod.set_const("CAP_PROP_XI_SENSOR_DATA_BIT_DEPTH", cv::CAP_PROP_XI_SENSOR_DATA_BIT_DEPTH);
    mod.set_const("CAP_PROP_XI_SENSOR_FEATURE_SELECTOR", cv::CAP_PROP_XI_SENSOR_FEATURE_SELECTOR);
    mod.set_const("CAP_PROP_XI_SENSOR_FEATURE_VALUE", cv::CAP_PROP_XI_SENSOR_FEATURE_VALUE);
    mod.set_const("CAP_PROP_XI_SENSOR_MODE", cv::CAP_PROP_XI_SENSOR_MODE);
    mod.set_const("CAP_PROP_XI_SENSOR_OUTPUT_CHANNEL_COUNT", cv::CAP_PROP_XI_SENSOR_OUTPUT_CHANNEL_COUNT);
    mod.set_const("CAP_PROP_XI_SENSOR_TAPS", cv::CAP_PROP_XI_SENSOR_TAPS);
    mod.set_const("CAP_PROP_XI_SHARPNESS", cv::CAP_PROP_XI_SHARPNESS);
    mod.set_const("CAP_PROP_XI_SHUTTER_TYPE", cv::CAP_PROP_XI_SHUTTER_TYPE);
    mod.set_const("CAP_PROP_XI_TARGET_TEMP", cv::CAP_PROP_XI_TARGET_TEMP);
    mod.set_const("CAP_PROP_XI_TEST_PATTERN", cv::CAP_PROP_XI_TEST_PATTERN);
    mod.set_const("CAP_PROP_XI_TEST_PATTERN_GENERATOR_SELECTOR", cv::CAP_PROP_XI_TEST_PATTERN_GENERATOR_SELECTOR);
    mod.set_const("CAP_PROP_XI_TIMEOUT", cv::CAP_PROP_XI_TIMEOUT);
    mod.set_const("CAP_PROP_XI_TRANSPORT_PIXEL_FORMAT", cv::CAP_PROP_XI_TRANSPORT_PIXEL_FORMAT);
    mod.set_const("CAP_PROP_XI_TRG_DELAY", cv::CAP_PROP_XI_TRG_DELAY);
    mod.set_const("CAP_PROP_XI_TRG_SELECTOR", cv::CAP_PROP_XI_TRG_SELECTOR);
    mod.set_const("CAP_PROP_XI_TRG_SOFTWARE", cv::CAP_PROP_XI_TRG_SOFTWARE);
    mod.set_const("CAP_PROP_XI_TRG_SOURCE", cv::CAP_PROP_XI_TRG_SOURCE);
    mod.set_const("CAP_PROP_XI_TS_RST_MODE", cv::CAP_PROP_XI_TS_RST_MODE);
    mod.set_const("CAP_PROP_XI_TS_RST_SOURCE", cv::CAP_PROP_XI_TS_RST_SOURCE);
    mod.set_const("CAP_PROP_XI_USED_FFS_SIZE", cv::CAP_PROP_XI_USED_FFS_SIZE);
    mod.set_const("CAP_PROP_XI_WB_KB", cv::CAP_PROP_XI_WB_KB);
    mod.set_const("CAP_PROP_XI_WB_KG", cv::CAP_PROP_XI_WB_KG);
    mod.set_const("CAP_PROP_XI_WB_KR", cv::CAP_PROP_XI_WB_KR);
    mod.set_const("CAP_PROP_XI_WIDTH", cv::CAP_PROP_XI_WIDTH);
    mod.set_const("CAP_PROP_ZOOM", cv::CAP_PROP_ZOOM);
    mod.set_const("CAP_PVAPI", cv::CAP_PVAPI);
    mod.set_const("CAP_PVAPI_DECIMATION_2OUTOF16", cv::CAP_PVAPI_DECIMATION_2OUTOF16);
    mod.set_const("CAP_PVAPI_DECIMATION_2OUTOF4", cv::CAP_PVAPI_DECIMATION_2OUTOF4);
    mod.set_const("CAP_PVAPI_DECIMATION_2OUTOF8", cv::CAP_PVAPI_DECIMATION_2OUTOF8);
    mod.set_const("CAP_PVAPI_DECIMATION_OFF", cv::CAP_PVAPI_DECIMATION_OFF);
    mod.set_const("CAP_PVAPI_FSTRIGMODE_FIXEDRATE", cv::CAP_PVAPI_FSTRIGMODE_FIXEDRATE);
    mod.set_const("CAP_PVAPI_FSTRIGMODE_FREERUN", cv::CAP_PVAPI_FSTRIGMODE_FREERUN);
    mod.set_const("CAP_PVAPI_FSTRIGMODE_SOFTWARE", cv::CAP_PVAPI_FSTRIGMODE_SOFTWARE);
    mod.set_const("CAP_PVAPI_FSTRIGMODE_SYNCIN1", cv::CAP_PVAPI_FSTRIGMODE_SYNCIN1);
    mod.set_const("CAP_PVAPI_FSTRIGMODE_SYNCIN2", cv::CAP_PVAPI_FSTRIGMODE_SYNCIN2);
    mod.set_const("CAP_PVAPI_PIXELFORMAT_BAYER16", cv::CAP_PVAPI_PIXELFORMAT_BAYER16);
    mod.set_const("CAP_PVAPI_PIXELFORMAT_BAYER8", cv::CAP_PVAPI_PIXELFORMAT_BAYER8);
    mod.set_const("CAP_PVAPI_PIXELFORMAT_BGR24", cv::CAP_PVAPI_PIXELFORMAT_BGR24);
    mod.set_const("CAP_PVAPI_PIXELFORMAT_BGRA32", cv::CAP_PVAPI_PIXELFORMAT_BGRA32);
    mod.set_const("CAP_PVAPI_PIXELFORMAT_MONO16", cv::CAP_PVAPI_PIXELFORMAT_MONO16);
    mod.set_const("CAP_PVAPI_PIXELFORMAT_MONO8", cv::CAP_PVAPI_PIXELFORMAT_MONO8);
    mod.set_const("CAP_PVAPI_PIXELFORMAT_RGB24", cv::CAP_PVAPI_PIXELFORMAT_RGB24);
    mod.set_const("CAP_PVAPI_PIXELFORMAT_RGBA32", cv::CAP_PVAPI_PIXELFORMAT_RGBA32);
    mod.set_const("CAP_QT", cv::CAP_QT);
    mod.set_const("CAP_REALSENSE", cv::CAP_REALSENSE);
    mod.set_const("CAP_UNICAP", cv::CAP_UNICAP);
    mod.set_const("CAP_V4L", cv::CAP_V4L);
    mod.set_const("CAP_V4L2", cv::CAP_V4L2);
    mod.set_const("CAP_VFW", cv::CAP_VFW);
    mod.set_const("CAP_WINRT", cv::CAP_WINRT);
    mod.set_const("CAP_XIAPI", cv::CAP_XIAPI);
    mod.set_const("CAP_XINE", cv::CAP_XINE);
    mod.set_const("CASCADE_DO_CANNY_PRUNING", cv::CASCADE_DO_CANNY_PRUNING);
    mod.set_const("CASCADE_DO_ROUGH_SEARCH", cv::CASCADE_DO_ROUGH_SEARCH);
    mod.set_const("CASCADE_FIND_BIGGEST_OBJECT", cv::CASCADE_FIND_BIGGEST_OBJECT);
    mod.set_const("CASCADE_SCALE_IMAGE", cv::CASCADE_SCALE_IMAGE);
    mod.set_const("CCL_DEFAULT", cv::CCL_DEFAULT);
    mod.set_const("CCL_GRANA", cv::CCL_GRANA);
    mod.set_const("CCL_WU", cv::CCL_WU);
    mod.set_const("CC_STAT_AREA", cv::CC_STAT_AREA);
    mod.set_const("CC_STAT_HEIGHT", cv::CC_STAT_HEIGHT);
    mod.set_const("CC_STAT_LEFT", cv::CC_STAT_LEFT);
    mod.set_const("CC_STAT_MAX", cv::CC_STAT_MAX);
    mod.set_const("CC_STAT_TOP", cv::CC_STAT_TOP);
    mod.set_const("CC_STAT_WIDTH", cv::CC_STAT_WIDTH);
    mod.set_const("CHAIN_APPROX_NONE", cv::CHAIN_APPROX_NONE);
    mod.set_const("CHAIN_APPROX_SIMPLE", cv::CHAIN_APPROX_SIMPLE);
    mod.set_const("CHAIN_APPROX_TC89_KCOS", cv::CHAIN_APPROX_TC89_KCOS);
    mod.set_const("CHAIN_APPROX_TC89_L1", cv::CHAIN_APPROX_TC89_L1);
    mod.set_const("COLORMAP_AUTUMN", cv::COLORMAP_AUTUMN);
    mod.set_const("COLORMAP_BONE", cv::COLORMAP_BONE);
    mod.set_const("COLORMAP_CIVIDIS", cv::COLORMAP_CIVIDIS);
    mod.set_const("COLORMAP_COOL", cv::COLORMAP_COOL);
    mod.set_const("COLORMAP_HOT", cv::COLORMAP_HOT);
    mod.set_const("COLORMAP_HSV", cv::COLORMAP_HSV);
    mod.set_const("COLORMAP_INFERNO", cv::COLORMAP_INFERNO);
    mod.set_const("COLORMAP_JET", cv::COLORMAP_JET);
    mod.set_const("COLORMAP_MAGMA", cv::COLORMAP_MAGMA);
    mod.set_const("COLORMAP_OCEAN", cv::COLORMAP_OCEAN);
    mod.set_const("COLORMAP_PARULA", cv::COLORMAP_PARULA);
    mod.set_const("COLORMAP_PINK", cv::COLORMAP_PINK);
    mod.set_const("COLORMAP_PLASMA", cv::COLORMAP_PLASMA);
    mod.set_const("COLORMAP_RAINBOW", cv::COLORMAP_RAINBOW);
    mod.set_const("COLORMAP_SPRING", cv::COLORMAP_SPRING);
    mod.set_const("COLORMAP_SUMMER", cv::COLORMAP_SUMMER);
    mod.set_const("COLORMAP_TURBO", cv::COLORMAP_TURBO);
    mod.set_const("COLORMAP_TWILIGHT", cv::COLORMAP_TWILIGHT);
    mod.set_const("COLORMAP_TWILIGHT_SHIFTED", cv::COLORMAP_TWILIGHT_SHIFTED);
    mod.set_const("COLORMAP_VIRIDIS", cv::COLORMAP_VIRIDIS);
    mod.set_const("COLORMAP_WINTER", cv::COLORMAP_WINTER);
    mod.set_const("COLOR_BGR2BGR555", cv::COLOR_BGR2BGR555);
    mod.set_const("COLOR_BGR2BGR565", cv::COLOR_BGR2BGR565);
    mod.set_const("COLOR_BGR2BGRA", cv::COLOR_BGR2BGRA);
    mod.set_const("COLOR_BGR2GRAY", cv::COLOR_BGR2GRAY);
    mod.set_const("COLOR_BGR2HLS", cv::COLOR_BGR2HLS);
    mod.set_const("COLOR_BGR2HLS_FULL", cv::COLOR_BGR2HLS_FULL);
    mod.set_const("COLOR_BGR2HSV", cv::COLOR_BGR2HSV);
    mod.set_const("COLOR_BGR2HSV_FULL", cv::COLOR_BGR2HSV_FULL);
    mod.set_const("COLOR_BGR2Lab", cv::COLOR_BGR2Lab);
    mod.set_const("COLOR_BGR2LAB", cv::COLOR_BGR2Lab);
    mod.set_const("COLOR_BGR2Luv", cv::COLOR_BGR2Luv);
    mod.set_const("COLOR_BGR2LUV", cv::COLOR_BGR2Luv);
    mod.set_const("COLOR_BGR2RGB", cv::COLOR_BGR2RGB);
    mod.set_const("COLOR_BGR2RGBA", cv::COLOR_BGR2RGBA);
    mod.set_const("COLOR_BGR2XYZ", cv::COLOR_BGR2XYZ);
    mod.set_const("COLOR_BGR2YCrCb", cv::COLOR_BGR2YCrCb);
    mod.set_const("COLOR_BGR2YCR_CB", cv::COLOR_BGR2YCrCb);
    mod.set_const("COLOR_BGR2YUV", cv::COLOR_BGR2YUV);
    mod.set_const("COLOR_BGR2YUV_I420", cv::COLOR_BGR2YUV_I420);
    mod.set_const("COLOR_BGR2YUV_IYUV", cv::COLOR_BGR2YUV_IYUV);
    mod.set_const("COLOR_BGR2YUV_YV12", cv::COLOR_BGR2YUV_YV12);
    mod.set_const("COLOR_BGR5552BGR", cv::COLOR_BGR5552BGR);
    mod.set_const("COLOR_BGR5552BGRA", cv::COLOR_BGR5552BGRA);
    mod.set_const("COLOR_BGR5552GRAY", cv::COLOR_BGR5552GRAY);
    mod.set_const("COLOR_BGR5552RGB", cv::COLOR_BGR5552RGB);
    mod.set_const("COLOR_BGR5552RGBA", cv::COLOR_BGR5552RGBA);
    mod.set_const("COLOR_BGR5652BGR", cv::COLOR_BGR5652BGR);
    mod.set_const("COLOR_BGR5652BGRA", cv::COLOR_BGR5652BGRA);
    mod.set_const("COLOR_BGR5652GRAY", cv::COLOR_BGR5652GRAY);
    mod.set_const("COLOR_BGR5652RGB", cv::COLOR_BGR5652RGB);
    mod.set_const("COLOR_BGR5652RGBA", cv::COLOR_BGR5652RGBA);
    mod.set_const("COLOR_BGRA2BGR", cv::COLOR_BGRA2BGR);
    mod.set_const("COLOR_BGRA2BGR555", cv::COLOR_BGRA2BGR555);
    mod.set_const("COLOR_BGRA2BGR565", cv::COLOR_BGRA2BGR565);
    mod.set_const("COLOR_BGRA2GRAY", cv::COLOR_BGRA2GRAY);
    mod.set_const("COLOR_BGRA2RGB", cv::COLOR_BGRA2RGB);
    mod.set_const("COLOR_BGRA2RGBA", cv::COLOR_BGRA2RGBA);
    mod.set_const("COLOR_BGRA2YUV_I420", cv::COLOR_BGRA2YUV_I420);
    mod.set_const("COLOR_BGRA2YUV_IYUV", cv::COLOR_BGRA2YUV_IYUV);
    mod.set_const("COLOR_BGRA2YUV_YV12", cv::COLOR_BGRA2YUV_YV12);
    mod.set_const("COLOR_BayerBG2BGR", cv::COLOR_BayerBG2BGR);
    mod.set_const("COLOR_BAYER_BG2BGR", cv::COLOR_BayerBG2BGR);
    mod.set_const("COLOR_BayerBG2BGRA", cv::COLOR_BayerBG2BGRA);
    mod.set_const("COLOR_BAYER_BG2BGRA", cv::COLOR_BayerBG2BGRA);
    mod.set_const("COLOR_BayerBG2BGR_EA", cv::COLOR_BayerBG2BGR_EA);
    mod.set_const("COLOR_BAYER_BG2BGR_EA", cv::COLOR_BayerBG2BGR_EA);
    mod.set_const("COLOR_BayerBG2BGR_VNG", cv::COLOR_BayerBG2BGR_VNG);
    mod.set_const("COLOR_BAYER_BG2BGR_VNG", cv::COLOR_BayerBG2BGR_VNG);
    mod.set_const("COLOR_BayerBG2GRAY", cv::COLOR_BayerBG2GRAY);
    mod.set_const("COLOR_BAYER_BG2GRAY", cv::COLOR_BayerBG2GRAY);
    mod.set_const("COLOR_BayerBG2RGB", cv::COLOR_BayerBG2RGB);
    mod.set_const("COLOR_BAYER_BG2RGB", cv::COLOR_BayerBG2RGB);
    mod.set_const("COLOR_BayerBG2RGBA", cv::COLOR_BayerBG2RGBA);
    mod.set_const("COLOR_BAYER_BG2RGBA", cv::COLOR_BayerBG2RGBA);
    mod.set_const("COLOR_BayerBG2RGB_EA", cv::COLOR_BayerBG2RGB_EA);
    mod.set_const("COLOR_BAYER_BG2RGB_EA", cv::COLOR_BayerBG2RGB_EA);
    mod.set_const("COLOR_BayerBG2RGB_VNG", cv::COLOR_BayerBG2RGB_VNG);
    mod.set_const("COLOR_BAYER_BG2RGB_VNG", cv::COLOR_BayerBG2RGB_VNG);
    mod.set_const("COLOR_BayerGB2BGR", cv::COLOR_BayerGB2BGR);
    mod.set_const("COLOR_BAYER_GB2BGR", cv::COLOR_BayerGB2BGR);
    mod.set_const("COLOR_BayerGB2BGRA", cv::COLOR_BayerGB2BGRA);
    mod.set_const("COLOR_BAYER_GB2BGRA", cv::COLOR_BayerGB2BGRA);
    mod.set_const("COLOR_BayerGB2BGR_EA", cv::COLOR_BayerGB2BGR_EA);
    mod.set_const("COLOR_BAYER_GB2BGR_EA", cv::COLOR_BayerGB2BGR_EA);
    mod.set_const("COLOR_BayerGB2BGR_VNG", cv::COLOR_BayerGB2BGR_VNG);
    mod.set_const("COLOR_BAYER_GB2BGR_VNG", cv::COLOR_BayerGB2BGR_VNG);
    mod.set_const("COLOR_BayerGB2GRAY", cv::COLOR_BayerGB2GRAY);
    mod.set_const("COLOR_BAYER_GB2GRAY", cv::COLOR_BayerGB2GRAY);
    mod.set_const("COLOR_BayerGB2RGB", cv::COLOR_BayerGB2RGB);
    mod.set_const("COLOR_BAYER_GB2RGB", cv::COLOR_BayerGB2RGB);
    mod.set_const("COLOR_BayerGB2RGBA", cv::COLOR_BayerGB2RGBA);
    mod.set_const("COLOR_BAYER_GB2RGBA", cv::COLOR_BayerGB2RGBA);
    mod.set_const("COLOR_BayerGB2RGB_EA", cv::COLOR_BayerGB2RGB_EA);
    mod.set_const("COLOR_BAYER_GB2RGB_EA", cv::COLOR_BayerGB2RGB_EA);
    mod.set_const("COLOR_BayerGB2RGB_VNG", cv::COLOR_BayerGB2RGB_VNG);
    mod.set_const("COLOR_BAYER_GB2RGB_VNG", cv::COLOR_BayerGB2RGB_VNG);
    mod.set_const("COLOR_BayerGR2BGR", cv::COLOR_BayerGR2BGR);
    mod.set_const("COLOR_BAYER_GR2BGR", cv::COLOR_BayerGR2BGR);
    mod.set_const("COLOR_BayerGR2BGRA", cv::COLOR_BayerGR2BGRA);
    mod.set_const("COLOR_BAYER_GR2BGRA", cv::COLOR_BayerGR2BGRA);
    mod.set_const("COLOR_BayerGR2BGR_EA", cv::COLOR_BayerGR2BGR_EA);
    mod.set_const("COLOR_BAYER_GR2BGR_EA", cv::COLOR_BayerGR2BGR_EA);
    mod.set_const("COLOR_BayerGR2BGR_VNG", cv::COLOR_BayerGR2BGR_VNG);
    mod.set_const("COLOR_BAYER_GR2BGR_VNG", cv::COLOR_BayerGR2BGR_VNG);
    mod.set_const("COLOR_BayerGR2GRAY", cv::COLOR_BayerGR2GRAY);
    mod.set_const("COLOR_BAYER_GR2GRAY", cv::COLOR_BayerGR2GRAY);
    mod.set_const("COLOR_BayerGR2RGB", cv::COLOR_BayerGR2RGB);
    mod.set_const("COLOR_BAYER_GR2RGB", cv::COLOR_BayerGR2RGB);
    mod.set_const("COLOR_BayerGR2RGBA", cv::COLOR_BayerGR2RGBA);
    mod.set_const("COLOR_BAYER_GR2RGBA", cv::COLOR_BayerGR2RGBA);
    mod.set_const("COLOR_BayerGR2RGB_EA", cv::COLOR_BayerGR2RGB_EA);
    mod.set_const("COLOR_BAYER_GR2RGB_EA", cv::COLOR_BayerGR2RGB_EA);
    mod.set_const("COLOR_BayerGR2RGB_VNG", cv::COLOR_BayerGR2RGB_VNG);
    mod.set_const("COLOR_BAYER_GR2RGB_VNG", cv::COLOR_BayerGR2RGB_VNG);
    mod.set_const("COLOR_BayerRG2BGR", cv::COLOR_BayerRG2BGR);
    mod.set_const("COLOR_BAYER_RG2BGR", cv::COLOR_BayerRG2BGR);
    mod.set_const("COLOR_BayerRG2BGRA", cv::COLOR_BayerRG2BGRA);
    mod.set_const("COLOR_BAYER_RG2BGRA", cv::COLOR_BayerRG2BGRA);
    mod.set_const("COLOR_BayerRG2BGR_EA", cv::COLOR_BayerRG2BGR_EA);
    mod.set_const("COLOR_BAYER_RG2BGR_EA", cv::COLOR_BayerRG2BGR_EA);
    mod.set_const("COLOR_BayerRG2BGR_VNG", cv::COLOR_BayerRG2BGR_VNG);
    mod.set_const("COLOR_BAYER_RG2BGR_VNG", cv::COLOR_BayerRG2BGR_VNG);
    mod.set_const("COLOR_BayerRG2GRAY", cv::COLOR_BayerRG2GRAY);
    mod.set_const("COLOR_BAYER_RG2GRAY", cv::COLOR_BayerRG2GRAY);
    mod.set_const("COLOR_BayerRG2RGB", cv::COLOR_BayerRG2RGB);
    mod.set_const("COLOR_BAYER_RG2RGB", cv::COLOR_BayerRG2RGB);
    mod.set_const("COLOR_BayerRG2RGBA", cv::COLOR_BayerRG2RGBA);
    mod.set_const("COLOR_BAYER_RG2RGBA", cv::COLOR_BayerRG2RGBA);
    mod.set_const("COLOR_BayerRG2RGB_EA", cv::COLOR_BayerRG2RGB_EA);
    mod.set_const("COLOR_BAYER_RG2RGB_EA", cv::COLOR_BayerRG2RGB_EA);
    mod.set_const("COLOR_BayerRG2RGB_VNG", cv::COLOR_BayerRG2RGB_VNG);
    mod.set_const("COLOR_BAYER_RG2RGB_VNG", cv::COLOR_BayerRG2RGB_VNG);
    mod.set_const("COLOR_COLORCVT_MAX", cv::COLOR_COLORCVT_MAX);
    mod.set_const("COLOR_GRAY2BGR", cv::COLOR_GRAY2BGR);
    mod.set_const("COLOR_GRAY2BGR555", cv::COLOR_GRAY2BGR555);
    mod.set_const("COLOR_GRAY2BGR565", cv::COLOR_GRAY2BGR565);
    mod.set_const("COLOR_GRAY2BGRA", cv::COLOR_GRAY2BGRA);
    mod.set_const("COLOR_GRAY2RGB", cv::COLOR_GRAY2RGB);
    mod.set_const("COLOR_GRAY2RGBA", cv::COLOR_GRAY2RGBA);
    mod.set_const("COLOR_HLS2BGR", cv::COLOR_HLS2BGR);
    mod.set_const("COLOR_HLS2BGR_FULL", cv::COLOR_HLS2BGR_FULL);
    mod.set_const("COLOR_HLS2RGB", cv::COLOR_HLS2RGB);
    mod.set_const("COLOR_HLS2RGB_FULL", cv::COLOR_HLS2RGB_FULL);
    mod.set_const("COLOR_HSV2BGR", cv::COLOR_HSV2BGR);
    mod.set_const("COLOR_HSV2BGR_FULL", cv::COLOR_HSV2BGR_FULL);
    mod.set_const("COLOR_HSV2RGB", cv::COLOR_HSV2RGB);
    mod.set_const("COLOR_HSV2RGB_FULL", cv::COLOR_HSV2RGB_FULL);
    mod.set_const("COLOR_LBGR2Lab", cv::COLOR_LBGR2Lab);
    mod.set_const("COLOR_LBGR2LAB", cv::COLOR_LBGR2Lab);
    mod.set_const("COLOR_LBGR2Luv", cv::COLOR_LBGR2Luv);
    mod.set_const("COLOR_LBGR2LUV", cv::COLOR_LBGR2Luv);
    mod.set_const("COLOR_LRGB2Lab", cv::COLOR_LRGB2Lab);
    mod.set_const("COLOR_LRGB2LAB", cv::COLOR_LRGB2Lab);
    mod.set_const("COLOR_LRGB2Luv", cv::COLOR_LRGB2Luv);
    mod.set_const("COLOR_LRGB2LUV", cv::COLOR_LRGB2Luv);
    mod.set_const("COLOR_Lab2BGR", cv::COLOR_Lab2BGR);
    mod.set_const("COLOR_LAB2BGR", cv::COLOR_Lab2BGR);
    mod.set_const("COLOR_Lab2LBGR", cv::COLOR_Lab2LBGR);
    mod.set_const("COLOR_LAB2LBGR", cv::COLOR_Lab2LBGR);
    mod.set_const("COLOR_Lab2LRGB", cv::COLOR_Lab2LRGB);
    mod.set_const("COLOR_LAB2LRGB", cv::COLOR_Lab2LRGB);
    mod.set_const("COLOR_Lab2RGB", cv::COLOR_Lab2RGB);
    mod.set_const("COLOR_LAB2RGB", cv::COLOR_Lab2RGB);
    mod.set_const("COLOR_Luv2BGR", cv::COLOR_Luv2BGR);
    mod.set_const("COLOR_LUV2BGR", cv::COLOR_Luv2BGR);
    mod.set_const("COLOR_Luv2LBGR", cv::COLOR_Luv2LBGR);
    mod.set_const("COLOR_LUV2LBGR", cv::COLOR_Luv2LBGR);
    mod.set_const("COLOR_Luv2LRGB", cv::COLOR_Luv2LRGB);
    mod.set_const("COLOR_LUV2LRGB", cv::COLOR_Luv2LRGB);
    mod.set_const("COLOR_Luv2RGB", cv::COLOR_Luv2RGB);
    mod.set_const("COLOR_LUV2RGB", cv::COLOR_Luv2RGB);
    mod.set_const("COLOR_RGB2BGR", cv::COLOR_RGB2BGR);
    mod.set_const("COLOR_RGB2BGR555", cv::COLOR_RGB2BGR555);
    mod.set_const("COLOR_RGB2BGR565", cv::COLOR_RGB2BGR565);
    mod.set_const("COLOR_RGB2BGRA", cv::COLOR_RGB2BGRA);
    mod.set_const("COLOR_RGB2GRAY", cv::COLOR_RGB2GRAY);
    mod.set_const("COLOR_RGB2HLS", cv::COLOR_RGB2HLS);
    mod.set_const("COLOR_RGB2HLS_FULL", cv::COLOR_RGB2HLS_FULL);
    mod.set_const("COLOR_RGB2HSV", cv::COLOR_RGB2HSV);
    mod.set_const("COLOR_RGB2HSV_FULL", cv::COLOR_RGB2HSV_FULL);
    mod.set_const("COLOR_RGB2Lab", cv::COLOR_RGB2Lab);
    mod.set_const("COLOR_RGB2LAB", cv::COLOR_RGB2Lab);
    mod.set_const("COLOR_RGB2Luv", cv::COLOR_RGB2Luv);
    mod.set_const("COLOR_RGB2LUV", cv::COLOR_RGB2Luv);
    mod.set_const("COLOR_RGB2RGBA", cv::COLOR_RGB2RGBA);
    mod.set_const("COLOR_RGB2XYZ", cv::COLOR_RGB2XYZ);
    mod.set_const("COLOR_RGB2YCrCb", cv::COLOR_RGB2YCrCb);
    mod.set_const("COLOR_RGB2YCR_CB", cv::COLOR_RGB2YCrCb);
    mod.set_const("COLOR_RGB2YUV", cv::COLOR_RGB2YUV);
    mod.set_const("COLOR_RGB2YUV_I420", cv::COLOR_RGB2YUV_I420);
    mod.set_const("COLOR_RGB2YUV_IYUV", cv::COLOR_RGB2YUV_IYUV);
    mod.set_const("COLOR_RGB2YUV_YV12", cv::COLOR_RGB2YUV_YV12);
    mod.set_const("COLOR_RGBA2BGR", cv::COLOR_RGBA2BGR);
    mod.set_const("COLOR_RGBA2BGR555", cv::COLOR_RGBA2BGR555);
    mod.set_const("COLOR_RGBA2BGR565", cv::COLOR_RGBA2BGR565);
    mod.set_const("COLOR_RGBA2BGRA", cv::COLOR_RGBA2BGRA);
    mod.set_const("COLOR_RGBA2GRAY", cv::COLOR_RGBA2GRAY);
    mod.set_const("COLOR_RGBA2RGB", cv::COLOR_RGBA2RGB);
    mod.set_const("COLOR_RGBA2YUV_I420", cv::COLOR_RGBA2YUV_I420);
    mod.set_const("COLOR_RGBA2YUV_IYUV", cv::COLOR_RGBA2YUV_IYUV);
    mod.set_const("COLOR_RGBA2YUV_YV12", cv::COLOR_RGBA2YUV_YV12);
    mod.set_const("COLOR_RGBA2mRGBA", cv::COLOR_RGBA2mRGBA);
    mod.set_const("COLOR_RGBA2M_RGBA", cv::COLOR_RGBA2mRGBA);
    mod.set_const("COLOR_XYZ2BGR", cv::COLOR_XYZ2BGR);
    mod.set_const("COLOR_XYZ2RGB", cv::COLOR_XYZ2RGB);
    mod.set_const("COLOR_YCrCb2BGR", cv::COLOR_YCrCb2BGR);
    mod.set_const("COLOR_YCR_CB2BGR", cv::COLOR_YCrCb2BGR);
    mod.set_const("COLOR_YCrCb2RGB", cv::COLOR_YCrCb2RGB);
    mod.set_const("COLOR_YCR_CB2RGB", cv::COLOR_YCrCb2RGB);
    mod.set_const("COLOR_YUV2BGR", cv::COLOR_YUV2BGR);
    mod.set_const("COLOR_YUV2BGRA_I420", cv::COLOR_YUV2BGRA_I420);
    mod.set_const("COLOR_YUV2BGRA_IYUV", cv::COLOR_YUV2BGRA_IYUV);
    mod.set_const("COLOR_YUV2BGRA_NV12", cv::COLOR_YUV2BGRA_NV12);
    mod.set_const("COLOR_YUV2BGRA_NV21", cv::COLOR_YUV2BGRA_NV21);
    mod.set_const("COLOR_YUV2BGRA_UYNV", cv::COLOR_YUV2BGRA_UYNV);
    mod.set_const("COLOR_YUV2BGRA_UYVY", cv::COLOR_YUV2BGRA_UYVY);
    mod.set_const("COLOR_YUV2BGRA_Y422", cv::COLOR_YUV2BGRA_Y422);
    mod.set_const("COLOR_YUV2BGRA_YUNV", cv::COLOR_YUV2BGRA_YUNV);
    mod.set_const("COLOR_YUV2BGRA_YUY2", cv::COLOR_YUV2BGRA_YUY2);
    mod.set_const("COLOR_YUV2BGRA_YUYV", cv::COLOR_YUV2BGRA_YUYV);
    mod.set_const("COLOR_YUV2BGRA_YV12", cv::COLOR_YUV2BGRA_YV12);
    mod.set_const("COLOR_YUV2BGRA_YVYU", cv::COLOR_YUV2BGRA_YVYU);
    mod.set_const("COLOR_YUV2BGR_I420", cv::COLOR_YUV2BGR_I420);
    mod.set_const("COLOR_YUV2BGR_IYUV", cv::COLOR_YUV2BGR_IYUV);
    mod.set_const("COLOR_YUV2BGR_NV12", cv::COLOR_YUV2BGR_NV12);
    mod.set_const("COLOR_YUV2BGR_NV21", cv::COLOR_YUV2BGR_NV21);
    mod.set_const("COLOR_YUV2BGR_UYNV", cv::COLOR_YUV2BGR_UYNV);
    mod.set_const("COLOR_YUV2BGR_UYVY", cv::COLOR_YUV2BGR_UYVY);
    mod.set_const("COLOR_YUV2BGR_Y422", cv::COLOR_YUV2BGR_Y422);
    mod.set_const("COLOR_YUV2BGR_YUNV", cv::COLOR_YUV2BGR_YUNV);
    mod.set_const("COLOR_YUV2BGR_YUY2", cv::COLOR_YUV2BGR_YUY2);
    mod.set_const("COLOR_YUV2BGR_YUYV", cv::COLOR_YUV2BGR_YUYV);
    mod.set_const("COLOR_YUV2BGR_YV12", cv::COLOR_YUV2BGR_YV12);
    mod.set_const("COLOR_YUV2BGR_YVYU", cv::COLOR_YUV2BGR_YVYU);
    mod.set_const("COLOR_YUV2GRAY_420", cv::COLOR_YUV2GRAY_420);
    mod.set_const("COLOR_YUV2GRAY_I420", cv::COLOR_YUV2GRAY_I420);
    mod.set_const("COLOR_YUV2GRAY_IYUV", cv::COLOR_YUV2GRAY_IYUV);
    mod.set_const("COLOR_YUV2GRAY_NV12", cv::COLOR_YUV2GRAY_NV12);
    mod.set_const("COLOR_YUV2GRAY_NV21", cv::COLOR_YUV2GRAY_NV21);
    mod.set_const("COLOR_YUV2GRAY_UYNV", cv::COLOR_YUV2GRAY_UYNV);
    mod.set_const("COLOR_YUV2GRAY_UYVY", cv::COLOR_YUV2GRAY_UYVY);
    mod.set_const("COLOR_YUV2GRAY_Y422", cv::COLOR_YUV2GRAY_Y422);
    mod.set_const("COLOR_YUV2GRAY_YUNV", cv::COLOR_YUV2GRAY_YUNV);
    mod.set_const("COLOR_YUV2GRAY_YUY2", cv::COLOR_YUV2GRAY_YUY2);
    mod.set_const("COLOR_YUV2GRAY_YUYV", cv::COLOR_YUV2GRAY_YUYV);
    mod.set_const("COLOR_YUV2GRAY_YV12", cv::COLOR_YUV2GRAY_YV12);
    mod.set_const("COLOR_YUV2GRAY_YVYU", cv::COLOR_YUV2GRAY_YVYU);
    mod.set_const("COLOR_YUV2RGB", cv::COLOR_YUV2RGB);
    mod.set_const("COLOR_YUV2RGBA_I420", cv::COLOR_YUV2RGBA_I420);
    mod.set_const("COLOR_YUV2RGBA_IYUV", cv::COLOR_YUV2RGBA_IYUV);
    mod.set_const("COLOR_YUV2RGBA_NV12", cv::COLOR_YUV2RGBA_NV12);
    mod.set_const("COLOR_YUV2RGBA_NV21", cv::COLOR_YUV2RGBA_NV21);
    mod.set_const("COLOR_YUV2RGBA_UYNV", cv::COLOR_YUV2RGBA_UYNV);
    mod.set_const("COLOR_YUV2RGBA_UYVY", cv::COLOR_YUV2RGBA_UYVY);
    mod.set_const("COLOR_YUV2RGBA_Y422", cv::COLOR_YUV2RGBA_Y422);
    mod.set_const("COLOR_YUV2RGBA_YUNV", cv::COLOR_YUV2RGBA_YUNV);
    mod.set_const("COLOR_YUV2RGBA_YUY2", cv::COLOR_YUV2RGBA_YUY2);
    mod.set_const("COLOR_YUV2RGBA_YUYV", cv::COLOR_YUV2RGBA_YUYV);
    mod.set_const("COLOR_YUV2RGBA_YV12", cv::COLOR_YUV2RGBA_YV12);
    mod.set_const("COLOR_YUV2RGBA_YVYU", cv::COLOR_YUV2RGBA_YVYU);
    mod.set_const("COLOR_YUV2RGB_I420", cv::COLOR_YUV2RGB_I420);
    mod.set_const("COLOR_YUV2RGB_IYUV", cv::COLOR_YUV2RGB_IYUV);
    mod.set_const("COLOR_YUV2RGB_NV12", cv::COLOR_YUV2RGB_NV12);
    mod.set_const("COLOR_YUV2RGB_NV21", cv::COLOR_YUV2RGB_NV21);
    mod.set_const("COLOR_YUV2RGB_UYNV", cv::COLOR_YUV2RGB_UYNV);
    mod.set_const("COLOR_YUV2RGB_UYVY", cv::COLOR_YUV2RGB_UYVY);
    mod.set_const("COLOR_YUV2RGB_Y422", cv::COLOR_YUV2RGB_Y422);
    mod.set_const("COLOR_YUV2RGB_YUNV", cv::COLOR_YUV2RGB_YUNV);
    mod.set_const("COLOR_YUV2RGB_YUY2", cv::COLOR_YUV2RGB_YUY2);
    mod.set_const("COLOR_YUV2RGB_YUYV", cv::COLOR_YUV2RGB_YUYV);
    mod.set_const("COLOR_YUV2RGB_YV12", cv::COLOR_YUV2RGB_YV12);
    mod.set_const("COLOR_YUV2RGB_YVYU", cv::COLOR_YUV2RGB_YVYU);
    mod.set_const("COLOR_YUV420p2BGR", cv::COLOR_YUV420p2BGR);
    mod.set_const("COLOR_YUV420P2BGR", cv::COLOR_YUV420p2BGR);
    mod.set_const("COLOR_YUV420p2BGRA", cv::COLOR_YUV420p2BGRA);
    mod.set_const("COLOR_YUV420P2BGRA", cv::COLOR_YUV420p2BGRA);
    mod.set_const("COLOR_YUV420p2GRAY", cv::COLOR_YUV420p2GRAY);
    mod.set_const("COLOR_YUV420P2GRAY", cv::COLOR_YUV420p2GRAY);
    mod.set_const("COLOR_YUV420p2RGB", cv::COLOR_YUV420p2RGB);
    mod.set_const("COLOR_YUV420P2RGB", cv::COLOR_YUV420p2RGB);
    mod.set_const("COLOR_YUV420p2RGBA", cv::COLOR_YUV420p2RGBA);
    mod.set_const("COLOR_YUV420P2RGBA", cv::COLOR_YUV420p2RGBA);
    mod.set_const("COLOR_YUV420sp2BGR", cv::COLOR_YUV420sp2BGR);
    mod.set_const("COLOR_YUV420SP2BGR", cv::COLOR_YUV420sp2BGR);
    mod.set_const("COLOR_YUV420sp2BGRA", cv::COLOR_YUV420sp2BGRA);
    mod.set_const("COLOR_YUV420SP2BGRA", cv::COLOR_YUV420sp2BGRA);
    mod.set_const("COLOR_YUV420sp2GRAY", cv::COLOR_YUV420sp2GRAY);
    mod.set_const("COLOR_YUV420SP2GRAY", cv::COLOR_YUV420sp2GRAY);
    mod.set_const("COLOR_YUV420sp2RGB", cv::COLOR_YUV420sp2RGB);
    mod.set_const("COLOR_YUV420SP2RGB", cv::COLOR_YUV420sp2RGB);
    mod.set_const("COLOR_YUV420sp2RGBA", cv::COLOR_YUV420sp2RGBA);
    mod.set_const("COLOR_YUV420SP2RGBA", cv::COLOR_YUV420sp2RGBA);
    mod.set_const("COLOR_mRGBA2RGBA", cv::COLOR_mRGBA2RGBA);
    mod.set_const("COLOR_M_RGBA2RGBA", cv::COLOR_mRGBA2RGBA);
    mod.set_const("CONTOURS_MATCH_I1", cv::CONTOURS_MATCH_I1);
    mod.set_const("CONTOURS_MATCH_I2", cv::CONTOURS_MATCH_I2);
    mod.set_const("CONTOURS_MATCH_I3", cv::CONTOURS_MATCH_I3);
    mod.set_const("COVAR_COLS", cv::COVAR_COLS);
    mod.set_const("COVAR_NORMAL", cv::COVAR_NORMAL);
    mod.set_const("COVAR_ROWS", cv::COVAR_ROWS);
    mod.set_const("COVAR_SCALE", cv::COVAR_SCALE);
    mod.set_const("COVAR_SCRAMBLED", cv::COVAR_SCRAMBLED);
    mod.set_const("COVAR_USE_AVG", cv::COVAR_USE_AVG);
    mod.set_const("CirclesGridFinderParameters_ASYMMETRIC_GRID", cv::CirclesGridFinderParameters::ASYMMETRIC_GRID);
    mod.set_const("CIRCLES_GRID_FINDER_PARAMETERS_ASYMMETRIC_GRID", cv::CirclesGridFinderParameters::ASYMMETRIC_GRID);
    mod.set_const("CirclesGridFinderParameters_SYMMETRIC_GRID", cv::CirclesGridFinderParameters::SYMMETRIC_GRID);
    mod.set_const("CIRCLES_GRID_FINDER_PARAMETERS_SYMMETRIC_GRID", cv::CirclesGridFinderParameters::SYMMETRIC_GRID);
    mod.set_const("DISOpticalFlow_PRESET_FAST", cv::DISOpticalFlow::PRESET_FAST);
    mod.set_const("DISOPTICAL_FLOW_PRESET_FAST", cv::DISOpticalFlow::PRESET_FAST);
    mod.set_const("DISOpticalFlow_PRESET_MEDIUM", cv::DISOpticalFlow::PRESET_MEDIUM);
    mod.set_const("DISOPTICAL_FLOW_PRESET_MEDIUM", cv::DISOpticalFlow::PRESET_MEDIUM);
    mod.set_const("DISOpticalFlow_PRESET_ULTRAFAST", cv::DISOpticalFlow::PRESET_ULTRAFAST);
    mod.set_const("DISOPTICAL_FLOW_PRESET_ULTRAFAST", cv::DISOpticalFlow::PRESET_ULTRAFAST);
    mod.set_const("DIST_C", cv::DIST_C);
    mod.set_const("DIST_FAIR", cv::DIST_FAIR);
    mod.set_const("DIST_HUBER", cv::DIST_HUBER);
    mod.set_const("DIST_L1", cv::DIST_L1);
    mod.set_const("DIST_L12", cv::DIST_L12);
    mod.set_const("DIST_L2", cv::DIST_L2);
    mod.set_const("DIST_LABEL_CCOMP", cv::DIST_LABEL_CCOMP);
    mod.set_const("DIST_LABEL_PIXEL", cv::DIST_LABEL_PIXEL);
    mod.set_const("DIST_MASK_3", cv::DIST_MASK_3);
    mod.set_const("DIST_MASK_5", cv::DIST_MASK_5);
    mod.set_const("DIST_MASK_PRECISE", cv::DIST_MASK_PRECISE);
    mod.set_const("DIST_USER", cv::DIST_USER);
    mod.set_const("DIST_WELSCH", cv::DIST_WELSCH);
    mod.set_const("DescriptorMatcher_BRUTEFORCE", cv::DescriptorMatcher::BRUTEFORCE);
    mod.set_const("DESCRIPTOR_MATCHER_BRUTEFORCE", cv::DescriptorMatcher::BRUTEFORCE);
    mod.set_const("DescriptorMatcher_BRUTEFORCE_HAMMING", cv::DescriptorMatcher::BRUTEFORCE_HAMMING);
    mod.set_const("DESCRIPTOR_MATCHER_BRUTEFORCE_HAMMING", cv::DescriptorMatcher::BRUTEFORCE_HAMMING);
    mod.set_const("DescriptorMatcher_BRUTEFORCE_HAMMINGLUT", cv::DescriptorMatcher::BRUTEFORCE_HAMMINGLUT);
    mod.set_const("DESCRIPTOR_MATCHER_BRUTEFORCE_HAMMINGLUT", cv::DescriptorMatcher::BRUTEFORCE_HAMMINGLUT);
    mod.set_const("DescriptorMatcher_BRUTEFORCE_L1", cv::DescriptorMatcher::BRUTEFORCE_L1);
    mod.set_const("DESCRIPTOR_MATCHER_BRUTEFORCE_L1", cv::DescriptorMatcher::BRUTEFORCE_L1);
    mod.set_const("DescriptorMatcher_BRUTEFORCE_SL2", cv::DescriptorMatcher::BRUTEFORCE_SL2);
    mod.set_const("DESCRIPTOR_MATCHER_BRUTEFORCE_SL2", cv::DescriptorMatcher::BRUTEFORCE_SL2);
    mod.set_const("DescriptorMatcher_FLANNBASED", cv::DescriptorMatcher::FLANNBASED);
    mod.set_const("DESCRIPTOR_MATCHER_FLANNBASED", cv::DescriptorMatcher::FLANNBASED);
    mod.set_const("DrawMatchesFlags_DEFAULT", cv::DrawMatchesFlags::DEFAULT);
    mod.set_const("DRAW_MATCHES_FLAGS_DEFAULT", cv::DrawMatchesFlags::DEFAULT);
    mod.set_const("DrawMatchesFlags_DRAW_OVER_OUTIMG", cv::DrawMatchesFlags::DRAW_OVER_OUTIMG);
    mod.set_const("DRAW_MATCHES_FLAGS_DRAW_OVER_OUTIMG", cv::DrawMatchesFlags::DRAW_OVER_OUTIMG);
    mod.set_const("DrawMatchesFlags_DRAW_RICH_KEYPOINTS", cv::DrawMatchesFlags::DRAW_RICH_KEYPOINTS);
    mod.set_const("DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS", cv::DrawMatchesFlags::DRAW_RICH_KEYPOINTS);
    mod.set_const("DrawMatchesFlags_NOT_DRAW_SINGLE_POINTS", cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS);
    mod.set_const("DRAW_MATCHES_FLAGS_NOT_DRAW_SINGLE_POINTS", cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS);
    mod.set_const("EVENT_FLAG_ALTKEY", cv::EVENT_FLAG_ALTKEY);
    mod.set_const("EVENT_FLAG_CTRLKEY", cv::EVENT_FLAG_CTRLKEY);
    mod.set_const("EVENT_FLAG_LBUTTON", cv::EVENT_FLAG_LBUTTON);
    mod.set_const("EVENT_FLAG_MBUTTON", cv::EVENT_FLAG_MBUTTON);
    mod.set_const("EVENT_FLAG_RBUTTON", cv::EVENT_FLAG_RBUTTON);
    mod.set_const("EVENT_FLAG_SHIFTKEY", cv::EVENT_FLAG_SHIFTKEY);
    mod.set_const("EVENT_LBUTTONDBLCLK", cv::EVENT_LBUTTONDBLCLK);
    mod.set_const("EVENT_LBUTTONDOWN", cv::EVENT_LBUTTONDOWN);
    mod.set_const("EVENT_LBUTTONUP", cv::EVENT_LBUTTONUP);
    mod.set_const("EVENT_MBUTTONDBLCLK", cv::EVENT_MBUTTONDBLCLK);
    mod.set_const("EVENT_MBUTTONDOWN", cv::EVENT_MBUTTONDOWN);
    mod.set_const("EVENT_MBUTTONUP", cv::EVENT_MBUTTONUP);
    mod.set_const("EVENT_MOUSEHWHEEL", cv::EVENT_MOUSEHWHEEL);
    mod.set_const("EVENT_MOUSEMOVE", cv::EVENT_MOUSEMOVE);
    mod.set_const("EVENT_MOUSEWHEEL", cv::EVENT_MOUSEWHEEL);
    mod.set_const("EVENT_RBUTTONDBLCLK", cv::EVENT_RBUTTONDBLCLK);
    mod.set_const("EVENT_RBUTTONDOWN", cv::EVENT_RBUTTONDOWN);
    mod.set_const("EVENT_RBUTTONUP", cv::EVENT_RBUTTONUP);
    mod.set_const("FILLED", cv::FILLED);
    mod.set_const("FILTER_SCHARR", cv::FILTER_SCHARR);
    mod.set_const("FLOODFILL_FIXED_RANGE", cv::FLOODFILL_FIXED_RANGE);
    mod.set_const("FLOODFILL_MASK_ONLY", cv::FLOODFILL_MASK_ONLY);
    mod.set_const("FM_7POINT", cv::FM_7POINT);
    mod.set_const("FM_8POINT", cv::FM_8POINT);
    mod.set_const("FM_LMEDS", cv::FM_LMEDS);
    mod.set_const("FM_RANSAC", cv::FM_RANSAC);
    mod.set_const("FONT_HERSHEY_COMPLEX", cv::FONT_HERSHEY_COMPLEX);
    mod.set_const("FONT_HERSHEY_COMPLEX_SMALL", cv::FONT_HERSHEY_COMPLEX_SMALL);
    mod.set_const("FONT_HERSHEY_DUPLEX", cv::FONT_HERSHEY_DUPLEX);
    mod.set_const("FONT_HERSHEY_PLAIN", cv::FONT_HERSHEY_PLAIN);
    mod.set_const("FONT_HERSHEY_SCRIPT_COMPLEX", cv::FONT_HERSHEY_SCRIPT_COMPLEX);
    mod.set_const("FONT_HERSHEY_SCRIPT_SIMPLEX", cv::FONT_HERSHEY_SCRIPT_SIMPLEX);
    mod.set_const("FONT_HERSHEY_SIMPLEX", cv::FONT_HERSHEY_SIMPLEX);
    mod.set_const("FONT_HERSHEY_TRIPLEX", cv::FONT_HERSHEY_TRIPLEX);
    mod.set_const("FONT_ITALIC", cv::FONT_ITALIC);
    mod.set_const("FastFeatureDetector_FAST_N", cv::FastFeatureDetector::FAST_N);
    mod.set_const("FAST_FEATURE_DETECTOR_FAST_N", cv::FastFeatureDetector::FAST_N);
    mod.set_const("FastFeatureDetector_NONMAX_SUPPRESSION", cv::FastFeatureDetector::NONMAX_SUPPRESSION);
    mod.set_const("FAST_FEATURE_DETECTOR_NONMAX_SUPPRESSION", cv::FastFeatureDetector::NONMAX_SUPPRESSION);
    mod.set_const("FastFeatureDetector_THRESHOLD", cv::FastFeatureDetector::THRESHOLD);
    mod.set_const("FAST_FEATURE_DETECTOR_THRESHOLD", cv::FastFeatureDetector::THRESHOLD);
    mod.set_const("FastFeatureDetector_TYPE_5_8", cv::FastFeatureDetector::TYPE_5_8);
    mod.set_const("FAST_FEATURE_DETECTOR_TYPE_5_8", cv::FastFeatureDetector::TYPE_5_8);
    mod.set_const("FastFeatureDetector_TYPE_7_12", cv::FastFeatureDetector::TYPE_7_12);
    mod.set_const("FAST_FEATURE_DETECTOR_TYPE_7_12", cv::FastFeatureDetector::TYPE_7_12);
    mod.set_const("FastFeatureDetector_TYPE_9_16", cv::FastFeatureDetector::TYPE_9_16);
    mod.set_const("FAST_FEATURE_DETECTOR_TYPE_9_16", cv::FastFeatureDetector::TYPE_9_16);
    mod.set_const("Formatter_FMT_C", cv::Formatter::FMT_C);
    mod.set_const("FORMATTER_FMT_C", cv::Formatter::FMT_C);
    mod.set_const("Formatter_FMT_CSV", cv::Formatter::FMT_CSV);
    mod.set_const("FORMATTER_FMT_CSV", cv::Formatter::FMT_CSV);
    mod.set_const("Formatter_FMT_DEFAULT", cv::Formatter::FMT_DEFAULT);
    mod.set_const("FORMATTER_FMT_DEFAULT", cv::Formatter::FMT_DEFAULT);
    mod.set_const("Formatter_FMT_MATLAB", cv::Formatter::FMT_MATLAB);
    mod.set_const("FORMATTER_FMT_MATLAB", cv::Formatter::FMT_MATLAB);
    mod.set_const("Formatter_FMT_NUMPY", cv::Formatter::FMT_NUMPY);
    mod.set_const("FORMATTER_FMT_NUMPY", cv::Formatter::FMT_NUMPY);
    mod.set_const("Formatter_FMT_PYTHON", cv::Formatter::FMT_PYTHON);
    mod.set_const("FORMATTER_FMT_PYTHON", cv::Formatter::FMT_PYTHON);
    mod.set_const("GC_BGD", cv::GC_BGD);
    mod.set_const("GC_EVAL", cv::GC_EVAL);
    mod.set_const("GC_EVAL_FREEZE_MODEL", cv::GC_EVAL_FREEZE_MODEL);
    mod.set_const("GC_FGD", cv::GC_FGD);
    mod.set_const("GC_INIT_WITH_MASK", cv::GC_INIT_WITH_MASK);
    mod.set_const("GC_INIT_WITH_RECT", cv::GC_INIT_WITH_RECT);
    mod.set_const("GC_PR_BGD", cv::GC_PR_BGD);
    mod.set_const("GC_PR_FGD", cv::GC_PR_FGD);
    mod.set_const("HISTCMP_BHATTACHARYYA", cv::HISTCMP_BHATTACHARYYA);
    mod.set_const("HISTCMP_CHISQR", cv::HISTCMP_CHISQR);
    mod.set_const("HISTCMP_CHISQR_ALT", cv::HISTCMP_CHISQR_ALT);
    mod.set_const("HISTCMP_CORREL", cv::HISTCMP_CORREL);
    mod.set_const("HISTCMP_HELLINGER", cv::HISTCMP_HELLINGER);
    mod.set_const("HISTCMP_INTERSECT", cv::HISTCMP_INTERSECT);
    mod.set_const("HISTCMP_KL_DIV", cv::HISTCMP_KL_DIV);
    mod.set_const("HOGDescriptor_DEFAULT_NLEVELS", cv::HOGDescriptor::DEFAULT_NLEVELS);
    mod.set_const("HOGDESCRIPTOR_DEFAULT_NLEVELS", cv::HOGDescriptor::DEFAULT_NLEVELS);
    mod.set_const("HOGDescriptor_DESCR_FORMAT_COL_BY_COL", cv::HOGDescriptor::DESCR_FORMAT_COL_BY_COL);
    mod.set_const("HOGDESCRIPTOR_DESCR_FORMAT_COL_BY_COL", cv::HOGDescriptor::DESCR_FORMAT_COL_BY_COL);
    mod.set_const("HOGDescriptor_DESCR_FORMAT_ROW_BY_ROW", cv::HOGDescriptor::DESCR_FORMAT_ROW_BY_ROW);
    mod.set_const("HOGDESCRIPTOR_DESCR_FORMAT_ROW_BY_ROW", cv::HOGDescriptor::DESCR_FORMAT_ROW_BY_ROW);
    mod.set_const("HOGDescriptor_L2Hys", cv::HOGDescriptor::L2Hys);
    mod.set_const("HOGDESCRIPTOR_L2HYS", cv::HOGDescriptor::L2Hys);
    mod.set_const("HOUGH_GRADIENT", cv::HOUGH_GRADIENT);
    mod.set_const("HOUGH_GRADIENT_ALT", cv::HOUGH_GRADIENT_ALT);
    mod.set_const("HOUGH_MULTI_SCALE", cv::HOUGH_MULTI_SCALE);
    mod.set_const("HOUGH_PROBABILISTIC", cv::HOUGH_PROBABILISTIC);
    mod.set_const("HOUGH_STANDARD", cv::HOUGH_STANDARD);
    mod.set_const("IMREAD_ANYCOLOR", cv::IMREAD_ANYCOLOR);
    mod.set_const("IMREAD_ANYDEPTH", cv::IMREAD_ANYDEPTH);
    mod.set_const("IMREAD_COLOR", cv::IMREAD_COLOR);
    mod.set_const("IMREAD_GRAYSCALE", cv::IMREAD_GRAYSCALE);
    mod.set_const("IMREAD_IGNORE_ORIENTATION", cv::IMREAD_IGNORE_ORIENTATION);
    mod.set_const("IMREAD_LOAD_GDAL", cv::IMREAD_LOAD_GDAL);
    mod.set_const("IMREAD_REDUCED_COLOR_2", cv::IMREAD_REDUCED_COLOR_2);
    mod.set_const("IMREAD_REDUCED_COLOR_4", cv::IMREAD_REDUCED_COLOR_4);
    mod.set_const("IMREAD_REDUCED_COLOR_8", cv::IMREAD_REDUCED_COLOR_8);
    mod.set_const("IMREAD_REDUCED_GRAYSCALE_2", cv::IMREAD_REDUCED_GRAYSCALE_2);
    mod.set_const("IMREAD_REDUCED_GRAYSCALE_4", cv::IMREAD_REDUCED_GRAYSCALE_4);
    mod.set_const("IMREAD_REDUCED_GRAYSCALE_8", cv::IMREAD_REDUCED_GRAYSCALE_8);
    mod.set_const("IMREAD_UNCHANGED", cv::IMREAD_UNCHANGED);
    mod.set_const("IMWRITE_EXR_TYPE", cv::IMWRITE_EXR_TYPE);
    mod.set_const("IMWRITE_EXR_TYPE_FLOAT", cv::IMWRITE_EXR_TYPE_FLOAT);
    mod.set_const("IMWRITE_EXR_TYPE_HALF", cv::IMWRITE_EXR_TYPE_HALF);
    mod.set_const("IMWRITE_JPEG2000_COMPRESSION_X1000", cv::IMWRITE_JPEG2000_COMPRESSION_X1000);
    mod.set_const("IMWRITE_JPEG_CHROMA_QUALITY", cv::IMWRITE_JPEG_CHROMA_QUALITY);
    mod.set_const("IMWRITE_JPEG_LUMA_QUALITY", cv::IMWRITE_JPEG_LUMA_QUALITY);
    mod.set_const("IMWRITE_JPEG_OPTIMIZE", cv::IMWRITE_JPEG_OPTIMIZE);
    mod.set_const("IMWRITE_JPEG_PROGRESSIVE", cv::IMWRITE_JPEG_PROGRESSIVE);
    mod.set_const("IMWRITE_JPEG_QUALITY", cv::IMWRITE_JPEG_QUALITY);
    mod.set_const("IMWRITE_JPEG_RST_INTERVAL", cv::IMWRITE_JPEG_RST_INTERVAL);
    mod.set_const("IMWRITE_PAM_FORMAT_BLACKANDWHITE", cv::IMWRITE_PAM_FORMAT_BLACKANDWHITE);
    mod.set_const("IMWRITE_PAM_FORMAT_GRAYSCALE", cv::IMWRITE_PAM_FORMAT_GRAYSCALE);
    mod.set_const("IMWRITE_PAM_FORMAT_GRAYSCALE_ALPHA", cv::IMWRITE_PAM_FORMAT_GRAYSCALE_ALPHA);
    mod.set_const("IMWRITE_PAM_FORMAT_NULL", cv::IMWRITE_PAM_FORMAT_NULL);
    mod.set_const("IMWRITE_PAM_FORMAT_RGB", cv::IMWRITE_PAM_FORMAT_RGB);
    mod.set_const("IMWRITE_PAM_FORMAT_RGB_ALPHA", cv::IMWRITE_PAM_FORMAT_RGB_ALPHA);
    mod.set_const("IMWRITE_PAM_TUPLETYPE", cv::IMWRITE_PAM_TUPLETYPE);
    mod.set_const("IMWRITE_PNG_BILEVEL", cv::IMWRITE_PNG_BILEVEL);
    mod.set_const("IMWRITE_PNG_COMPRESSION", cv::IMWRITE_PNG_COMPRESSION);
    mod.set_const("IMWRITE_PNG_STRATEGY", cv::IMWRITE_PNG_STRATEGY);
    mod.set_const("IMWRITE_PNG_STRATEGY_DEFAULT", cv::IMWRITE_PNG_STRATEGY_DEFAULT);
    mod.set_const("IMWRITE_PNG_STRATEGY_FILTERED", cv::IMWRITE_PNG_STRATEGY_FILTERED);
    mod.set_const("IMWRITE_PNG_STRATEGY_FIXED", cv::IMWRITE_PNG_STRATEGY_FIXED);
    mod.set_const("IMWRITE_PNG_STRATEGY_HUFFMAN_ONLY", cv::IMWRITE_PNG_STRATEGY_HUFFMAN_ONLY);
    mod.set_const("IMWRITE_PNG_STRATEGY_RLE", cv::IMWRITE_PNG_STRATEGY_RLE);
    mod.set_const("IMWRITE_PXM_BINARY", cv::IMWRITE_PXM_BINARY);
    mod.set_const("IMWRITE_TIFF_COMPRESSION", cv::IMWRITE_TIFF_COMPRESSION);
    mod.set_const("IMWRITE_TIFF_RESUNIT", cv::IMWRITE_TIFF_RESUNIT);
    mod.set_const("IMWRITE_TIFF_XDPI", cv::IMWRITE_TIFF_XDPI);
    mod.set_const("IMWRITE_TIFF_YDPI", cv::IMWRITE_TIFF_YDPI);
    mod.set_const("IMWRITE_WEBP_QUALITY", cv::IMWRITE_WEBP_QUALITY);
    mod.set_const("INTERSECT_FULL", cv::INTERSECT_FULL);
    mod.set_const("INTERSECT_NONE", cv::INTERSECT_NONE);
    mod.set_const("INTERSECT_PARTIAL", cv::INTERSECT_PARTIAL);
    mod.set_const("INTER_AREA", cv::INTER_AREA);
    mod.set_const("INTER_BITS", cv::INTER_BITS);
    mod.set_const("INTER_BITS2", cv::INTER_BITS2);
    mod.set_const("INTER_CUBIC", cv::INTER_CUBIC);
    mod.set_const("INTER_LANCZOS4", cv::INTER_LANCZOS4);
    mod.set_const("INTER_LINEAR", cv::INTER_LINEAR);
    mod.set_const("INTER_LINEAR_EXACT", cv::INTER_LINEAR_EXACT);
    mod.set_const("INTER_MAX", cv::INTER_MAX);
    mod.set_const("INTER_NEAREST", cv::INTER_NEAREST);
    mod.set_const("INTER_TAB_SIZE", cv::INTER_TAB_SIZE);
    mod.set_const("INTER_TAB_SIZE2", cv::INTER_TAB_SIZE2);
    mod.set_const("KAZE_DIFF_CHARBONNIER", cv::KAZE::DIFF_CHARBONNIER);
    mod.set_const("KAZE_DIFF_PM_G1", cv::KAZE::DIFF_PM_G1);
    mod.set_const("KAZE_DIFF_PM_G2", cv::KAZE::DIFF_PM_G2);
    mod.set_const("KAZE_DIFF_WEICKERT", cv::KAZE::DIFF_WEICKERT);
    mod.set_const("KMEANS_PP_CENTERS", cv::KMEANS_PP_CENTERS);
    mod.set_const("KMEANS_RANDOM_CENTERS", cv::KMEANS_RANDOM_CENTERS);
    mod.set_const("KMEANS_USE_INITIAL_LABELS", cv::KMEANS_USE_INITIAL_LABELS);
    mod.set_const("LINE_4", cv::LINE_4);
    mod.set_const("LINE_8", cv::LINE_8);
    mod.set_const("LINE_AA", cv::LINE_AA);
    mod.set_const("LMEDS", cv::LMEDS);
    mod.set_const("LSD_REFINE_ADV", cv::LSD_REFINE_ADV);
    mod.set_const("LSD_REFINE_NONE", cv::LSD_REFINE_NONE);
    mod.set_const("LSD_REFINE_STD", cv::LSD_REFINE_STD);
    mod.set_const("MARKER_CROSS", cv::MARKER_CROSS);
    mod.set_const("MARKER_DIAMOND", cv::MARKER_DIAMOND);
    mod.set_const("MARKER_SQUARE", cv::MARKER_SQUARE);
    mod.set_const("MARKER_STAR", cv::MARKER_STAR);
    mod.set_const("MARKER_TILTED_CROSS", cv::MARKER_TILTED_CROSS);
    mod.set_const("MARKER_TRIANGLE_DOWN", cv::MARKER_TRIANGLE_DOWN);
    mod.set_const("MARKER_TRIANGLE_UP", cv::MARKER_TRIANGLE_UP);
    mod.set_const("MORPH_BLACKHAT", cv::MORPH_BLACKHAT);
    mod.set_const("MORPH_CLOSE", cv::MORPH_CLOSE);
    mod.set_const("MORPH_CROSS", cv::MORPH_CROSS);
    mod.set_const("MORPH_DILATE", cv::MORPH_DILATE);
    mod.set_const("MORPH_ELLIPSE", cv::MORPH_ELLIPSE);
    mod.set_const("MORPH_ERODE", cv::MORPH_ERODE);
    mod.set_const("MORPH_GRADIENT", cv::MORPH_GRADIENT);
    mod.set_const("MORPH_HITMISS", cv::MORPH_HITMISS);
    mod.set_const("MORPH_OPEN", cv::MORPH_OPEN);
    mod.set_const("MORPH_RECT", cv::MORPH_RECT);
    mod.set_const("MORPH_TOPHAT", cv::MORPH_TOPHAT);
    mod.set_const("MOTION_AFFINE", cv::MOTION_AFFINE);
    mod.set_const("MOTION_EUCLIDEAN", cv::MOTION_EUCLIDEAN);
    mod.set_const("MOTION_HOMOGRAPHY", cv::MOTION_HOMOGRAPHY);
    mod.set_const("MOTION_TRANSLATION", cv::MOTION_TRANSLATION);
    mod.set_const("Mat_AUTO_STEP", cv::Mat::AUTO_STEP);
    mod.set_const("MAT_AUTO_STEP", cv::Mat::AUTO_STEP);
    mod.set_const("Mat_CONTINUOUS_FLAG", cv::Mat::CONTINUOUS_FLAG);
    mod.set_const("MAT_CONTINUOUS_FLAG", cv::Mat::CONTINUOUS_FLAG);
    mod.set_const("Mat_DEPTH_MASK", cv::Mat::DEPTH_MASK);
    mod.set_const("MAT_DEPTH_MASK", cv::Mat::DEPTH_MASK);
    mod.set_const("Mat_MAGIC_MASK", cv::Mat::MAGIC_MASK);
    mod.set_const("MAT_MAGIC_MASK", cv::Mat::MAGIC_MASK);
    mod.set_const("Mat_MAGIC_VAL", cv::Mat::MAGIC_VAL);
    mod.set_const("MAT_MAGIC_VAL", cv::Mat::MAGIC_VAL);
    mod.set_const("Mat_SUBMATRIX_FLAG", cv::Mat::SUBMATRIX_FLAG);
    mod.set_const("MAT_SUBMATRIX_FLAG", cv::Mat::SUBMATRIX_FLAG);
    mod.set_const("Mat_TYPE_MASK", cv::Mat::TYPE_MASK);
    mod.set_const("MAT_TYPE_MASK", cv::Mat::TYPE_MASK);
    mod.set_const("OPTFLOW_FARNEBACK_GAUSSIAN", cv::OPTFLOW_FARNEBACK_GAUSSIAN);
    mod.set_const("OPTFLOW_LK_GET_MIN_EIGENVALS", cv::OPTFLOW_LK_GET_MIN_EIGENVALS);
    mod.set_const("OPTFLOW_USE_INITIAL_FLOW", cv::OPTFLOW_USE_INITIAL_FLOW);
    mod.set_const("ORB_FAST_SCORE", cv::ORB::FAST_SCORE);
    mod.set_const("ORB_HARRIS_SCORE", cv::ORB::HARRIS_SCORE);
    mod.set_const("PCA_DATA_AS_COL", cv::PCA::DATA_AS_COL);
    mod.set_const("PCA_DATA_AS_ROW", cv::PCA::DATA_AS_ROW);
    mod.set_const("PCA_USE_AVG", cv::PCA::USE_AVG);
    mod.set_const("PROJ_SPHERICAL_EQRECT", cv::PROJ_SPHERICAL_EQRECT);
    mod.set_const("PROJ_SPHERICAL_ORTHO", cv::PROJ_SPHERICAL_ORTHO);
    mod.set_const("Param_ALGORITHM", cv::Param::ALGORITHM);
    mod.set_const("PARAM_ALGORITHM", cv::Param::ALGORITHM);
    mod.set_const("Param_BOOLEAN", cv::Param::BOOLEAN);
    mod.set_const("PARAM_BOOLEAN", cv::Param::BOOLEAN);
    mod.set_const("Param_FLOAT", cv::Param::FLOAT);
    mod.set_const("PARAM_FLOAT", cv::Param::FLOAT);
    mod.set_const("Param_INT", cv::Param::INT);
    mod.set_const("PARAM_INT", cv::Param::INT);
    mod.set_const("Param_MAT", cv::Param::MAT);
    mod.set_const("PARAM_MAT", cv::Param::MAT);
    mod.set_const("Param_MAT_VECTOR", cv::Param::MAT_VECTOR);
    mod.set_const("PARAM_MAT_VECTOR", cv::Param::MAT_VECTOR);
    mod.set_const("Param_REAL", cv::Param::REAL);
    mod.set_const("PARAM_REAL", cv::Param::REAL);
    mod.set_const("Param_SCALAR", cv::Param::SCALAR);
    mod.set_const("PARAM_SCALAR", cv::Param::SCALAR);
    mod.set_const("Param_STRING", cv::Param::STRING);
    mod.set_const("PARAM_STRING", cv::Param::STRING);
    mod.set_const("Param_UCHAR", cv::Param::UCHAR);
    mod.set_const("PARAM_UCHAR", cv::Param::UCHAR);
    mod.set_const("Param_UINT64", cv::Param::UINT64);
    mod.set_const("PARAM_UINT64", cv::Param::UINT64);
    mod.set_const("Param_UNSIGNED_INT", cv::Param::UNSIGNED_INT);
    mod.set_const("PARAM_UNSIGNED_INT", cv::Param::UNSIGNED_INT);
    mod.set_const("QT_CHECKBOX", cv::QT_CHECKBOX);
    mod.set_const("QT_FONT_BLACK", cv::QT_FONT_BLACK);
    mod.set_const("QT_FONT_BOLD", cv::QT_FONT_BOLD);
    mod.set_const("QT_FONT_DEMIBOLD", cv::QT_FONT_DEMIBOLD);
    mod.set_const("QT_FONT_LIGHT", cv::QT_FONT_LIGHT);
    mod.set_const("QT_FONT_NORMAL", cv::QT_FONT_NORMAL);
    mod.set_const("QT_NEW_BUTTONBAR", cv::QT_NEW_BUTTONBAR);
    mod.set_const("QT_PUSH_BUTTON", cv::QT_PUSH_BUTTON);
    mod.set_const("QT_RADIOBOX", cv::QT_RADIOBOX);
    mod.set_const("QT_STYLE_ITALIC", cv::QT_STYLE_ITALIC);
    mod.set_const("QT_STYLE_NORMAL", cv::QT_STYLE_NORMAL);
    mod.set_const("QT_STYLE_OBLIQUE", cv::QT_STYLE_OBLIQUE);
    mod.set_const("RANSAC", cv::RANSAC);
    mod.set_const("REDUCE_AVG", cv::REDUCE_AVG);
    mod.set_const("REDUCE_MAX", cv::REDUCE_MAX);
    mod.set_const("REDUCE_MIN", cv::REDUCE_MIN);
    mod.set_const("REDUCE_SUM", cv::REDUCE_SUM);
    mod.set_const("RETR_CCOMP", cv::RETR_CCOMP);
    mod.set_const("RETR_EXTERNAL", cv::RETR_EXTERNAL);
    mod.set_const("RETR_FLOODFILL", cv::RETR_FLOODFILL);
    mod.set_const("RETR_LIST", cv::RETR_LIST);
    mod.set_const("RETR_TREE", cv::RETR_TREE);
    mod.set_const("RHO", cv::RHO);
    mod.set_const("RNG_NORMAL", cv::RNG::NORMAL);
    mod.set_const("RNG_UNIFORM", cv::RNG::UNIFORM);
    mod.set_const("ROTATE_180", cv::ROTATE_180);
    mod.set_const("ROTATE_90_CLOCKWISE", cv::ROTATE_90_CLOCKWISE);
    mod.set_const("ROTATE_90_COUNTERCLOCKWISE", cv::ROTATE_90_COUNTERCLOCKWISE);
    mod.set_const("SOLVEPNP_AP3P", cv::SOLVEPNP_AP3P);
    mod.set_const("SOLVEPNP_DLS", cv::SOLVEPNP_DLS);
    mod.set_const("SOLVEPNP_EPNP", cv::SOLVEPNP_EPNP);
    mod.set_const("SOLVEPNP_IPPE", cv::SOLVEPNP_IPPE);
    mod.set_const("SOLVEPNP_IPPE_SQUARE", cv::SOLVEPNP_IPPE_SQUARE);
    mod.set_const("SOLVEPNP_ITERATIVE", cv::SOLVEPNP_ITERATIVE);
    mod.set_const("SOLVEPNP_MAX_COUNT", cv::SOLVEPNP_MAX_COUNT);
    mod.set_const("SOLVEPNP_P3P", cv::SOLVEPNP_P3P);
    mod.set_const("SOLVEPNP_UPNP", cv::SOLVEPNP_UPNP);
    mod.set_const("SORT_ASCENDING", cv::SORT_ASCENDING);
    mod.set_const("SORT_DESCENDING", cv::SORT_DESCENDING);
    mod.set_const("SORT_EVERY_COLUMN", cv::SORT_EVERY_COLUMN);
    mod.set_const("SORT_EVERY_ROW", cv::SORT_EVERY_ROW);
    mod.set_const("SVD_FULL_UV", cv::SVD::FULL_UV);
    mod.set_const("SVD_MODIFY_A", cv::SVD::MODIFY_A);
    mod.set_const("SVD_NO_UV", cv::SVD::NO_UV);
    mod.set_const("SparseMat_HASH_BIT", cv::SparseMat::HASH_BIT);
    mod.set_const("SPARSE_MAT_HASH_BIT", cv::SparseMat::HASH_BIT);
    mod.set_const("SparseMat_HASH_SCALE", cv::SparseMat::HASH_SCALE);
    mod.set_const("SPARSE_MAT_HASH_SCALE", cv::SparseMat::HASH_SCALE);
    mod.set_const("SparseMat_MAGIC_VAL", cv::SparseMat::MAGIC_VAL);
    mod.set_const("SPARSE_MAT_MAGIC_VAL", cv::SparseMat::MAGIC_VAL);
    mod.set_const("SparseMat_MAX_DIM", cv::SparseMat::MAX_DIM);
    mod.set_const("SPARSE_MAT_MAX_DIM", cv::SparseMat::MAX_DIM);
    mod.set_const("StereoBM_PREFILTER_NORMALIZED_RESPONSE", cv::StereoBM::PREFILTER_NORMALIZED_RESPONSE);
    mod.set_const("STEREO_BM_PREFILTER_NORMALIZED_RESPONSE", cv::StereoBM::PREFILTER_NORMALIZED_RESPONSE);
    mod.set_const("StereoBM_PREFILTER_XSOBEL", cv::StereoBM::PREFILTER_XSOBEL);
    mod.set_const("STEREO_BM_PREFILTER_XSOBEL", cv::StereoBM::PREFILTER_XSOBEL);
    mod.set_const("StereoMatcher_DISP_SCALE", cv::StereoMatcher::DISP_SCALE);
    mod.set_const("STEREO_MATCHER_DISP_SCALE", cv::StereoMatcher::DISP_SCALE);
    mod.set_const("StereoMatcher_DISP_SHIFT", cv::StereoMatcher::DISP_SHIFT);
    mod.set_const("STEREO_MATCHER_DISP_SHIFT", cv::StereoMatcher::DISP_SHIFT);
    mod.set_const("StereoSGBM_MODE_HH", cv::StereoSGBM::MODE_HH);
    mod.set_const("STEREO_SGBM_MODE_HH", cv::StereoSGBM::MODE_HH);
    mod.set_const("StereoSGBM_MODE_HH4", cv::StereoSGBM::MODE_HH4);
    mod.set_const("STEREO_SGBM_MODE_HH4", cv::StereoSGBM::MODE_HH4);
    mod.set_const("StereoSGBM_MODE_SGBM", cv::StereoSGBM::MODE_SGBM);
    mod.set_const("STEREO_SGBM_MODE_SGBM", cv::StereoSGBM::MODE_SGBM);
    mod.set_const("StereoSGBM_MODE_SGBM_3WAY", cv::StereoSGBM::MODE_SGBM_3WAY);
    mod.set_const("STEREO_SGBM_MODE_SGBM_3WAY", cv::StereoSGBM::MODE_SGBM_3WAY);
    mod.set_const("Subdiv2D_NEXT_AROUND_DST", cv::Subdiv2D::NEXT_AROUND_DST);
    mod.set_const("SUBDIV2D_NEXT_AROUND_DST", cv::Subdiv2D::NEXT_AROUND_DST);
    mod.set_const("Subdiv2D_NEXT_AROUND_LEFT", cv::Subdiv2D::NEXT_AROUND_LEFT);
    mod.set_const("SUBDIV2D_NEXT_AROUND_LEFT", cv::Subdiv2D::NEXT_AROUND_LEFT);
    mod.set_const("Subdiv2D_NEXT_AROUND_ORG", cv::Subdiv2D::NEXT_AROUND_ORG);
    mod.set_const("SUBDIV2D_NEXT_AROUND_ORG", cv::Subdiv2D::NEXT_AROUND_ORG);
    mod.set_const("Subdiv2D_NEXT_AROUND_RIGHT", cv::Subdiv2D::NEXT_AROUND_RIGHT);
    mod.set_const("SUBDIV2D_NEXT_AROUND_RIGHT", cv::Subdiv2D::NEXT_AROUND_RIGHT);
    mod.set_const("Subdiv2D_PREV_AROUND_DST", cv::Subdiv2D::PREV_AROUND_DST);
    mod.set_const("SUBDIV2D_PREV_AROUND_DST", cv::Subdiv2D::PREV_AROUND_DST);
    mod.set_const("Subdiv2D_PREV_AROUND_LEFT", cv::Subdiv2D::PREV_AROUND_LEFT);
    mod.set_const("SUBDIV2D_PREV_AROUND_LEFT", cv::Subdiv2D::PREV_AROUND_LEFT);
    mod.set_const("Subdiv2D_PREV_AROUND_ORG", cv::Subdiv2D::PREV_AROUND_ORG);
    mod.set_const("SUBDIV2D_PREV_AROUND_ORG", cv::Subdiv2D::PREV_AROUND_ORG);
    mod.set_const("Subdiv2D_PREV_AROUND_RIGHT", cv::Subdiv2D::PREV_AROUND_RIGHT);
    mod.set_const("SUBDIV2D_PREV_AROUND_RIGHT", cv::Subdiv2D::PREV_AROUND_RIGHT);
    mod.set_const("Subdiv2D_PTLOC_ERROR", cv::Subdiv2D::PTLOC_ERROR);
    mod.set_const("SUBDIV2D_PTLOC_ERROR", cv::Subdiv2D::PTLOC_ERROR);
    mod.set_const("Subdiv2D_PTLOC_INSIDE", cv::Subdiv2D::PTLOC_INSIDE);
    mod.set_const("SUBDIV2D_PTLOC_INSIDE", cv::Subdiv2D::PTLOC_INSIDE);
    mod.set_const("Subdiv2D_PTLOC_ON_EDGE", cv::Subdiv2D::PTLOC_ON_EDGE);
    mod.set_const("SUBDIV2D_PTLOC_ON_EDGE", cv::Subdiv2D::PTLOC_ON_EDGE);
    mod.set_const("Subdiv2D_PTLOC_OUTSIDE_RECT", cv::Subdiv2D::PTLOC_OUTSIDE_RECT);
    mod.set_const("SUBDIV2D_PTLOC_OUTSIDE_RECT", cv::Subdiv2D::PTLOC_OUTSIDE_RECT);
    mod.set_const("Subdiv2D_PTLOC_VERTEX", cv::Subdiv2D::PTLOC_VERTEX);
    mod.set_const("SUBDIV2D_PTLOC_VERTEX", cv::Subdiv2D::PTLOC_VERTEX);
    mod.set_const("THRESH_BINARY", cv::THRESH_BINARY);
    mod.set_const("THRESH_BINARY_INV", cv::THRESH_BINARY_INV);
    mod.set_const("THRESH_MASK", cv::THRESH_MASK);
    mod.set_const("THRESH_OTSU", cv::THRESH_OTSU);
    mod.set_const("THRESH_TOZERO", cv::THRESH_TOZERO);
    mod.set_const("THRESH_TOZERO_INV", cv::THRESH_TOZERO_INV);
    mod.set_const("THRESH_TRIANGLE", cv::THRESH_TRIANGLE);
    mod.set_const("THRESH_TRUNC", cv::THRESH_TRUNC);
    mod.set_const("TM_CCOEFF", cv::TM_CCOEFF);
    mod.set_const("TM_CCOEFF_NORMED", cv::TM_CCOEFF_NORMED);
    mod.set_const("TM_CCORR", cv::TM_CCORR);
    mod.set_const("TM_CCORR_NORMED", cv::TM_CCORR_NORMED);
    mod.set_const("TM_SQDIFF", cv::TM_SQDIFF);
    mod.set_const("TM_SQDIFF_NORMED", cv::TM_SQDIFF_NORMED);
    mod.set_const("TermCriteria_COUNT", cv::TermCriteria::COUNT);
    mod.set_const("TERM_CRITERIA_COUNT", cv::TermCriteria::COUNT);
    mod.set_const("TermCriteria_EPS", cv::TermCriteria::EPS);
    mod.set_const("TERM_CRITERIA_EPS", cv::TermCriteria::EPS);
    mod.set_const("TermCriteria_MAX_ITER", cv::TermCriteria::MAX_ITER);
    mod.set_const("TERM_CRITERIA_MAX_ITER", cv::TermCriteria::MAX_ITER);
    mod.set_const("UMatData_ASYNC_CLEANUP", cv::UMatData::ASYNC_CLEANUP);
    mod.set_const("UMAT_DATA_ASYNC_CLEANUP", cv::UMatData::ASYNC_CLEANUP);
    mod.set_const("UMatData_COPY_ON_MAP", cv::UMatData::COPY_ON_MAP);
    mod.set_const("UMAT_DATA_COPY_ON_MAP", cv::UMatData::COPY_ON_MAP);
    mod.set_const("UMatData_DEVICE_COPY_OBSOLETE", cv::UMatData::DEVICE_COPY_OBSOLETE);
    mod.set_const("UMAT_DATA_DEVICE_COPY_OBSOLETE", cv::UMatData::DEVICE_COPY_OBSOLETE);
    mod.set_const("UMatData_DEVICE_MEM_MAPPED", cv::UMatData::DEVICE_MEM_MAPPED);
    mod.set_const("UMAT_DATA_DEVICE_MEM_MAPPED", cv::UMatData::DEVICE_MEM_MAPPED);
    mod.set_const("UMatData_HOST_COPY_OBSOLETE", cv::UMatData::HOST_COPY_OBSOLETE);
    mod.set_const("UMAT_DATA_HOST_COPY_OBSOLETE", cv::UMatData::HOST_COPY_OBSOLETE);
    mod.set_const("UMatData_TEMP_COPIED_UMAT", cv::UMatData::TEMP_COPIED_UMAT);
    mod.set_const("UMAT_DATA_TEMP_COPIED_UMAT", cv::UMatData::TEMP_COPIED_UMAT);
    mod.set_const("UMatData_TEMP_UMAT", cv::UMatData::TEMP_UMAT);
    mod.set_const("UMAT_DATA_TEMP_UMAT", cv::UMatData::TEMP_UMAT);
    mod.set_const("UMatData_USER_ALLOCATED", cv::UMatData::USER_ALLOCATED);
    mod.set_const("UMAT_DATA_USER_ALLOCATED", cv::UMatData::USER_ALLOCATED);
    mod.set_const("UMat_AUTO_STEP", cv::UMat::AUTO_STEP);
    mod.set_const("UMAT_AUTO_STEP", cv::UMat::AUTO_STEP);
    mod.set_const("UMat_CONTINUOUS_FLAG", cv::UMat::CONTINUOUS_FLAG);
    mod.set_const("UMAT_CONTINUOUS_FLAG", cv::UMat::CONTINUOUS_FLAG);
    mod.set_const("UMat_DEPTH_MASK", cv::UMat::DEPTH_MASK);
    mod.set_const("UMAT_DEPTH_MASK", cv::UMat::DEPTH_MASK);
    mod.set_const("UMat_MAGIC_MASK", cv::UMat::MAGIC_MASK);
    mod.set_const("UMAT_MAGIC_MASK", cv::UMat::MAGIC_MASK);
    mod.set_const("UMat_MAGIC_VAL", cv::UMat::MAGIC_VAL);
    mod.set_const("UMAT_MAGIC_VAL", cv::UMat::MAGIC_VAL);
    mod.set_const("UMat_SUBMATRIX_FLAG", cv::UMat::SUBMATRIX_FLAG);
    mod.set_const("UMAT_SUBMATRIX_FLAG", cv::UMat::SUBMATRIX_FLAG);
    mod.set_const("UMat_TYPE_MASK", cv::UMat::TYPE_MASK);
    mod.set_const("UMAT_TYPE_MASK", cv::UMat::TYPE_MASK);
    mod.set_const("USAGE_ALLOCATE_DEVICE_MEMORY", cv::USAGE_ALLOCATE_DEVICE_MEMORY);
    mod.set_const("USAGE_ALLOCATE_HOST_MEMORY", cv::USAGE_ALLOCATE_HOST_MEMORY);
    mod.set_const("USAGE_ALLOCATE_SHARED_MEMORY", cv::USAGE_ALLOCATE_SHARED_MEMORY);
    mod.set_const("USAGE_DEFAULT", cv::USAGE_DEFAULT);
    mod.set_const("VIDEOWRITER_PROP_FRAMEBYTES", cv::VIDEOWRITER_PROP_FRAMEBYTES);
    mod.set_const("VIDEOWRITER_PROP_NSTRIPES", cv::VIDEOWRITER_PROP_NSTRIPES);
    mod.set_const("VIDEOWRITER_PROP_QUALITY", cv::VIDEOWRITER_PROP_QUALITY);
    mod.set_const("WARP_FILL_OUTLIERS", cv::WARP_FILL_OUTLIERS);
    mod.set_const("WARP_INVERSE_MAP", cv::WARP_INVERSE_MAP);
    mod.set_const("WARP_POLAR_LINEAR", cv::WARP_POLAR_LINEAR);
    mod.set_const("WARP_POLAR_LOG", cv::WARP_POLAR_LOG);
    mod.set_const("WINDOW_AUTOSIZE", cv::WINDOW_AUTOSIZE);
    mod.set_const("WINDOW_FREERATIO", cv::WINDOW_FREERATIO);
    mod.set_const("WINDOW_FULLSCREEN", cv::WINDOW_FULLSCREEN);
    mod.set_const("WINDOW_GUI_EXPANDED", cv::WINDOW_GUI_EXPANDED);
    mod.set_const("WINDOW_GUI_NORMAL", cv::WINDOW_GUI_NORMAL);
    mod.set_const("WINDOW_KEEPRATIO", cv::WINDOW_KEEPRATIO);
    mod.set_const("WINDOW_NORMAL", cv::WINDOW_NORMAL);
    mod.set_const("WINDOW_OPENGL", cv::WINDOW_OPENGL);
    mod.set_const("WND_PROP_ASPECT_RATIO", cv::WND_PROP_ASPECT_RATIO);
    mod.set_const("WND_PROP_AUTOSIZE", cv::WND_PROP_AUTOSIZE);
    mod.set_const("WND_PROP_FULLSCREEN", cv::WND_PROP_FULLSCREEN);
    mod.set_const("WND_PROP_OPENGL", cv::WND_PROP_OPENGL);
    mod.set_const("WND_PROP_TOPMOST", cv::WND_PROP_TOPMOST);
    mod.set_const("WND_PROP_VISIBLE", cv::WND_PROP_VISIBLE);
    mod.set_const("_InputArray_CUDA_GPU_MAT", cv::_InputArray::CUDA_GPU_MAT);
    mod.set_const("_INPUT_ARRAY_CUDA_GPU_MAT", cv::_InputArray::CUDA_GPU_MAT);
    mod.set_const("_InputArray_CUDA_HOST_MEM", cv::_InputArray::CUDA_HOST_MEM);
    mod.set_const("_INPUT_ARRAY_CUDA_HOST_MEM", cv::_InputArray::CUDA_HOST_MEM);
    mod.set_const("_InputArray_EXPR", cv::_InputArray::EXPR);
    mod.set_const("_INPUT_ARRAY_EXPR", cv::_InputArray::EXPR);
    mod.set_const("_InputArray_FIXED_SIZE", cv::_InputArray::FIXED_SIZE);
    mod.set_const("_INPUT_ARRAY_FIXED_SIZE", cv::_InputArray::FIXED_SIZE);
    mod.set_const("_InputArray_FIXED_TYPE", cv::_InputArray::FIXED_TYPE);
    mod.set_const("_INPUT_ARRAY_FIXED_TYPE", cv::_InputArray::FIXED_TYPE);
    mod.set_const("_InputArray_KIND_MASK", cv::_InputArray::KIND_MASK);
    mod.set_const("_INPUT_ARRAY_KIND_MASK", cv::_InputArray::KIND_MASK);
    mod.set_const("_InputArray_KIND_SHIFT", cv::_InputArray::KIND_SHIFT);
    mod.set_const("_INPUT_ARRAY_KIND_SHIFT", cv::_InputArray::KIND_SHIFT);
    mod.set_const("_InputArray_MAT", cv::_InputArray::MAT);
    mod.set_const("_INPUT_ARRAY_MAT", cv::_InputArray::MAT);
    mod.set_const("_InputArray_MATX", cv::_InputArray::MATX);
    mod.set_const("_INPUT_ARRAY_MATX", cv::_InputArray::MATX);
    mod.set_const("_InputArray_NONE", cv::_InputArray::NONE);
    mod.set_const("_INPUT_ARRAY_NONE", cv::_InputArray::NONE);
    mod.set_const("_InputArray_OPENGL_BUFFER", cv::_InputArray::OPENGL_BUFFER);
    mod.set_const("_INPUT_ARRAY_OPENGL_BUFFER", cv::_InputArray::OPENGL_BUFFER);
    mod.set_const("_InputArray_STD_ARRAY", cv::_InputArray::STD_ARRAY);
    mod.set_const("_INPUT_ARRAY_STD_ARRAY", cv::_InputArray::STD_ARRAY);
    mod.set_const("_InputArray_STD_ARRAY_MAT", cv::_InputArray::STD_ARRAY_MAT);
    mod.set_const("_INPUT_ARRAY_STD_ARRAY_MAT", cv::_InputArray::STD_ARRAY_MAT);
    mod.set_const("_InputArray_STD_BOOL_VECTOR", cv::_InputArray::STD_BOOL_VECTOR);
    mod.set_const("_INPUT_ARRAY_STD_BOOL_VECTOR", cv::_InputArray::STD_BOOL_VECTOR);
    mod.set_const("_InputArray_STD_VECTOR", cv::_InputArray::STD_VECTOR);
    mod.set_const("_INPUT_ARRAY_STD_VECTOR", cv::_InputArray::STD_VECTOR);
    mod.set_const("_InputArray_STD_VECTOR_CUDA_GPU_MAT", cv::_InputArray::STD_VECTOR_CUDA_GPU_MAT);
    mod.set_const("_INPUT_ARRAY_STD_VECTOR_CUDA_GPU_MAT", cv::_InputArray::STD_VECTOR_CUDA_GPU_MAT);
    mod.set_const("_InputArray_STD_VECTOR_MAT", cv::_InputArray::STD_VECTOR_MAT);
    mod.set_const("_INPUT_ARRAY_STD_VECTOR_MAT", cv::_InputArray::STD_VECTOR_MAT);
    mod.set_const("_InputArray_STD_VECTOR_UMAT", cv::_InputArray::STD_VECTOR_UMAT);
    mod.set_const("_INPUT_ARRAY_STD_VECTOR_UMAT", cv::_InputArray::STD_VECTOR_UMAT);
    mod.set_const("_InputArray_STD_VECTOR_VECTOR", cv::_InputArray::STD_VECTOR_VECTOR);
    mod.set_const("_INPUT_ARRAY_STD_VECTOR_VECTOR", cv::_InputArray::STD_VECTOR_VECTOR);
    mod.set_const("_InputArray_UMAT", cv::_InputArray::UMAT);
    mod.set_const("_INPUT_ARRAY_UMAT", cv::_InputArray::UMAT);
    mod.set_const("_OutputArray_DEPTH_MASK_16F", cv::_OutputArray::DEPTH_MASK_16F);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_16F", cv::_OutputArray::DEPTH_MASK_16F);
    mod.set_const("_OutputArray_DEPTH_MASK_16S", cv::_OutputArray::DEPTH_MASK_16S);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_16S", cv::_OutputArray::DEPTH_MASK_16S);
    mod.set_const("_OutputArray_DEPTH_MASK_16U", cv::_OutputArray::DEPTH_MASK_16U);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_16U", cv::_OutputArray::DEPTH_MASK_16U);
    mod.set_const("_OutputArray_DEPTH_MASK_32F", cv::_OutputArray::DEPTH_MASK_32F);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_32F", cv::_OutputArray::DEPTH_MASK_32F);
    mod.set_const("_OutputArray_DEPTH_MASK_32S", cv::_OutputArray::DEPTH_MASK_32S);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_32S", cv::_OutputArray::DEPTH_MASK_32S);
    mod.set_const("_OutputArray_DEPTH_MASK_64F", cv::_OutputArray::DEPTH_MASK_64F);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_64F", cv::_OutputArray::DEPTH_MASK_64F);
    mod.set_const("_OutputArray_DEPTH_MASK_8S", cv::_OutputArray::DEPTH_MASK_8S);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_8S", cv::_OutputArray::DEPTH_MASK_8S);
    mod.set_const("_OutputArray_DEPTH_MASK_8U", cv::_OutputArray::DEPTH_MASK_8U);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_8U", cv::_OutputArray::DEPTH_MASK_8U);
    mod.set_const("_OutputArray_DEPTH_MASK_ALL", cv::_OutputArray::DEPTH_MASK_ALL);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_ALL", cv::_OutputArray::DEPTH_MASK_ALL);
    mod.set_const("_OutputArray_DEPTH_MASK_ALL_16F", cv::_OutputArray::DEPTH_MASK_ALL_16F);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_ALL_16F", cv::_OutputArray::DEPTH_MASK_ALL_16F);
    mod.set_const("_OutputArray_DEPTH_MASK_ALL_BUT_8S", cv::_OutputArray::DEPTH_MASK_ALL_BUT_8S);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_ALL_BUT_8S", cv::_OutputArray::DEPTH_MASK_ALL_BUT_8S);
    mod.set_const("_OutputArray_DEPTH_MASK_FLT", cv::_OutputArray::DEPTH_MASK_FLT);
    mod.set_const("_OUTPUT_ARRAY_DEPTH_MASK_FLT", cv::_OutputArray::DEPTH_MASK_FLT);
    mod.set_const("__UMAT_USAGE_FLAGS_32BIT", cv::__UMAT_USAGE_FLAGS_32BIT);
}
JLCXX_MODULE traits(jlcxx::Module &mod) {
}
JLCXX_MODULE ocl(jlcxx::Module &mod) {
mod.add_type<cv::ocl::Device>("ocl_Device")
.constructor<>()

;
    mod.method("jlopencv_cv_ocl_Device_name",  [](Device& cobj) { auto retval = cobj.name();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_extensions",  [](Device& cobj) { auto retval = cobj.extensions();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_isExtensionSupported",  [](Device& cobj, String& extensionName) { auto retval = cobj.isExtensionSupported(extensionName);  return retval;});
    mod.method("jlopencv_cv_ocl_Device_version",  [](Device& cobj) { auto retval = cobj.version();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_vendorName",  [](Device& cobj) { auto retval = cobj.vendorName();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_OpenCL_C_Version",  [](Device& cobj) { auto retval = cobj.OpenCL_C_Version();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_OpenCLVersion",  [](Device& cobj) { auto retval = cobj.OpenCLVersion();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_deviceVersionMajor",  [](Device& cobj) { auto retval = cobj.deviceVersionMajor();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_deviceVersionMinor",  [](Device& cobj) { auto retval = cobj.deviceVersionMinor();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_driverVersion",  [](Device& cobj) { auto retval = cobj.driverVersion();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_type",  [](Device& cobj) { auto retval = cobj.type();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_addressBits",  [](Device& cobj) { auto retval = cobj.addressBits();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_available",  [](Device& cobj) { auto retval = cobj.available();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_compilerAvailable",  [](Device& cobj) { auto retval = cobj.compilerAvailable();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_linkerAvailable",  [](Device& cobj) { auto retval = cobj.linkerAvailable();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_doubleFPConfig",  [](Device& cobj) { auto retval = cobj.doubleFPConfig();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_singleFPConfig",  [](Device& cobj) { auto retval = cobj.singleFPConfig();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_halfFPConfig",  [](Device& cobj) { auto retval = cobj.halfFPConfig();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_endianLittle",  [](Device& cobj) { auto retval = cobj.endianLittle();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_errorCorrectionSupport",  [](Device& cobj) { auto retval = cobj.errorCorrectionSupport();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_executionCapabilities",  [](Device& cobj) { auto retval = cobj.executionCapabilities();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_globalMemCacheSize",  [](Device& cobj) { auto retval = cobj.globalMemCacheSize();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_globalMemCacheType",  [](Device& cobj) { auto retval = cobj.globalMemCacheType();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_globalMemCacheLineSize",  [](Device& cobj) { auto retval = cobj.globalMemCacheLineSize();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_globalMemSize",  [](Device& cobj) { auto retval = cobj.globalMemSize();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_localMemSize",  [](Device& cobj) { auto retval = cobj.localMemSize();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_localMemType",  [](Device& cobj) { auto retval = cobj.localMemType();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_hostUnifiedMemory",  [](Device& cobj) { auto retval = cobj.hostUnifiedMemory();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_imageSupport",  [](Device& cobj) { auto retval = cobj.imageSupport();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_imageFromBufferSupport",  [](Device& cobj) { auto retval = cobj.imageFromBufferSupport();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_intelSubgroupsSupport",  [](Device& cobj) { auto retval = cobj.intelSubgroupsSupport();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_image2DMaxWidth",  [](Device& cobj) { auto retval = cobj.image2DMaxWidth();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_image2DMaxHeight",  [](Device& cobj) { auto retval = cobj.image2DMaxHeight();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_image3DMaxWidth",  [](Device& cobj) { auto retval = cobj.image3DMaxWidth();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_image3DMaxHeight",  [](Device& cobj) { auto retval = cobj.image3DMaxHeight();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_image3DMaxDepth",  [](Device& cobj) { auto retval = cobj.image3DMaxDepth();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_imageMaxBufferSize",  [](Device& cobj) { auto retval = cobj.imageMaxBufferSize();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_imageMaxArraySize",  [](Device& cobj) { auto retval = cobj.imageMaxArraySize();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_vendorID",  [](Device& cobj) { auto retval = cobj.vendorID();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_isAMD",  [](Device& cobj) { auto retval = cobj.isAMD();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_isIntel",  [](Device& cobj) { auto retval = cobj.isIntel();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_isNVidia",  [](Device& cobj) { auto retval = cobj.isNVidia();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_maxClockFrequency",  [](Device& cobj) { auto retval = cobj.maxClockFrequency();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_maxComputeUnits",  [](Device& cobj) { auto retval = cobj.maxComputeUnits();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_maxConstantArgs",  [](Device& cobj) { auto retval = cobj.maxConstantArgs();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_maxConstantBufferSize",  [](Device& cobj) { auto retval = cobj.maxConstantBufferSize();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_maxMemAllocSize",  [](Device& cobj) { auto retval = cobj.maxMemAllocSize();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_maxParameterSize",  [](Device& cobj) { auto retval = cobj.maxParameterSize();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_maxReadImageArgs",  [](Device& cobj) { auto retval = cobj.maxReadImageArgs();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_maxWriteImageArgs",  [](Device& cobj) { auto retval = cobj.maxWriteImageArgs();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_maxSamplers",  [](Device& cobj) { auto retval = cobj.maxSamplers();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_maxWorkGroupSize",  [](Device& cobj) { auto retval = cobj.maxWorkGroupSize();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_maxWorkItemDims",  [](Device& cobj) { auto retval = cobj.maxWorkItemDims();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_memBaseAddrAlign",  [](Device& cobj) { auto retval = cobj.memBaseAddrAlign();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_nativeVectorWidthChar",  [](Device& cobj) { auto retval = cobj.nativeVectorWidthChar();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_nativeVectorWidthShort",  [](Device& cobj) { auto retval = cobj.nativeVectorWidthShort();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_nativeVectorWidthInt",  [](Device& cobj) { auto retval = cobj.nativeVectorWidthInt();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_nativeVectorWidthLong",  [](Device& cobj) { auto retval = cobj.nativeVectorWidthLong();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_nativeVectorWidthFloat",  [](Device& cobj) { auto retval = cobj.nativeVectorWidthFloat();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_nativeVectorWidthDouble",  [](Device& cobj) { auto retval = cobj.nativeVectorWidthDouble();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_nativeVectorWidthHalf",  [](Device& cobj) { auto retval = cobj.nativeVectorWidthHalf();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_preferredVectorWidthChar",  [](Device& cobj) { auto retval = cobj.preferredVectorWidthChar();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_preferredVectorWidthShort",  [](Device& cobj) { auto retval = cobj.preferredVectorWidthShort();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_preferredVectorWidthInt",  [](Device& cobj) { auto retval = cobj.preferredVectorWidthInt();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_preferredVectorWidthLong",  [](Device& cobj) { auto retval = cobj.preferredVectorWidthLong();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_preferredVectorWidthFloat",  [](Device& cobj) { auto retval = cobj.preferredVectorWidthFloat();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_preferredVectorWidthDouble",  [](Device& cobj) { auto retval = cobj.preferredVectorWidthDouble();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_preferredVectorWidthHalf",  [](Device& cobj) { auto retval = cobj.preferredVectorWidthHalf();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_printfBufferSize",  [](Device& cobj) { auto retval = cobj.printfBufferSize();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_profilingTimerResolution",  [](Device& cobj) { auto retval = cobj.profilingTimerResolution();  return retval;});
    mod.method("jlopencv_cv_ocl_Device_getDefault",  [](Device& cobj) { auto retval = cv::ocl::Device::getDefault(); return retval;});
    mod.method("jlopencv_cv_ocl_haveOpenCL",  []() { auto retval = cv::ocl::haveOpenCL(); return retval;});
    mod.method("jlopencv_cv_ocl_useOpenCL",  []() { auto retval = cv::ocl::useOpenCL(); return retval;});
    mod.method("jlopencv_cv_ocl_haveAmdBlas",  []() { auto retval = cv::ocl::haveAmdBlas(); return retval;});
    mod.method("jlopencv_cv_ocl_haveAmdFft",  []() { auto retval = cv::ocl::haveAmdFft(); return retval;});
    mod.method("jlopencv_cv_ocl_setUseOpenCL",  [](bool& flag) { cv::ocl::setUseOpenCL(flag); ;});
    mod.method("jlopencv_cv_ocl_finish",  []() { cv::ocl::finish(); ;});
    mod.method("jlopencv_cv_ocl_Device_getDefault",  []() { auto retval = cv::ocl::Device::getDefault(); return retval;});
    mod.add_bits<OclVectorStrategy>("OclVectorStrategy", jlcxx::julia_type("CppEnum"));
    mod.set_const("Device_EXEC_KERNEL", cv::ocl::Device::EXEC_KERNEL);
    mod.set_const("DEVICE_EXEC_KERNEL", cv::ocl::Device::EXEC_KERNEL);
    mod.set_const("Device_EXEC_NATIVE_KERNEL", cv::ocl::Device::EXEC_NATIVE_KERNEL);
    mod.set_const("DEVICE_EXEC_NATIVE_KERNEL", cv::ocl::Device::EXEC_NATIVE_KERNEL);
    mod.set_const("Device_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT", cv::ocl::Device::FP_CORRECTLY_ROUNDED_DIVIDE_SQRT);
    mod.set_const("DEVICE_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT", cv::ocl::Device::FP_CORRECTLY_ROUNDED_DIVIDE_SQRT);
    mod.set_const("Device_FP_DENORM", cv::ocl::Device::FP_DENORM);
    mod.set_const("DEVICE_FP_DENORM", cv::ocl::Device::FP_DENORM);
    mod.set_const("Device_FP_FMA", cv::ocl::Device::FP_FMA);
    mod.set_const("DEVICE_FP_FMA", cv::ocl::Device::FP_FMA);
    mod.set_const("Device_FP_INF_NAN", cv::ocl::Device::FP_INF_NAN);
    mod.set_const("DEVICE_FP_INF_NAN", cv::ocl::Device::FP_INF_NAN);
    mod.set_const("Device_FP_ROUND_TO_INF", cv::ocl::Device::FP_ROUND_TO_INF);
    mod.set_const("DEVICE_FP_ROUND_TO_INF", cv::ocl::Device::FP_ROUND_TO_INF);
    mod.set_const("Device_FP_ROUND_TO_NEAREST", cv::ocl::Device::FP_ROUND_TO_NEAREST);
    mod.set_const("DEVICE_FP_ROUND_TO_NEAREST", cv::ocl::Device::FP_ROUND_TO_NEAREST);
    mod.set_const("Device_FP_ROUND_TO_ZERO", cv::ocl::Device::FP_ROUND_TO_ZERO);
    mod.set_const("DEVICE_FP_ROUND_TO_ZERO", cv::ocl::Device::FP_ROUND_TO_ZERO);
    mod.set_const("Device_FP_SOFT_FLOAT", cv::ocl::Device::FP_SOFT_FLOAT);
    mod.set_const("DEVICE_FP_SOFT_FLOAT", cv::ocl::Device::FP_SOFT_FLOAT);
    mod.set_const("Device_LOCAL_IS_GLOBAL", cv::ocl::Device::LOCAL_IS_GLOBAL);
    mod.set_const("DEVICE_LOCAL_IS_GLOBAL", cv::ocl::Device::LOCAL_IS_GLOBAL);
    mod.set_const("Device_LOCAL_IS_LOCAL", cv::ocl::Device::LOCAL_IS_LOCAL);
    mod.set_const("DEVICE_LOCAL_IS_LOCAL", cv::ocl::Device::LOCAL_IS_LOCAL);
    mod.set_const("Device_NO_CACHE", cv::ocl::Device::NO_CACHE);
    mod.set_const("DEVICE_NO_CACHE", cv::ocl::Device::NO_CACHE);
    mod.set_const("Device_NO_LOCAL_MEM", cv::ocl::Device::NO_LOCAL_MEM);
    mod.set_const("DEVICE_NO_LOCAL_MEM", cv::ocl::Device::NO_LOCAL_MEM);
    mod.set_const("Device_READ_ONLY_CACHE", cv::ocl::Device::READ_ONLY_CACHE);
    mod.set_const("DEVICE_READ_ONLY_CACHE", cv::ocl::Device::READ_ONLY_CACHE);
    mod.set_const("Device_READ_WRITE_CACHE", cv::ocl::Device::READ_WRITE_CACHE);
    mod.set_const("DEVICE_READ_WRITE_CACHE", cv::ocl::Device::READ_WRITE_CACHE);
    mod.set_const("Device_TYPE_ACCELERATOR", cv::ocl::Device::TYPE_ACCELERATOR);
    mod.set_const("DEVICE_TYPE_ACCELERATOR", cv::ocl::Device::TYPE_ACCELERATOR);
    mod.set_const("Device_TYPE_ALL", cv::ocl::Device::TYPE_ALL);
    mod.set_const("DEVICE_TYPE_ALL", cv::ocl::Device::TYPE_ALL);
    mod.set_const("Device_TYPE_CPU", cv::ocl::Device::TYPE_CPU);
    mod.set_const("DEVICE_TYPE_CPU", cv::ocl::Device::TYPE_CPU);
    mod.set_const("Device_TYPE_DEFAULT", cv::ocl::Device::TYPE_DEFAULT);
    mod.set_const("DEVICE_TYPE_DEFAULT", cv::ocl::Device::TYPE_DEFAULT);
    mod.set_const("Device_TYPE_DGPU", cv::ocl::Device::TYPE_DGPU);
    mod.set_const("DEVICE_TYPE_DGPU", cv::ocl::Device::TYPE_DGPU);
    mod.set_const("Device_TYPE_GPU", cv::ocl::Device::TYPE_GPU);
    mod.set_const("DEVICE_TYPE_GPU", cv::ocl::Device::TYPE_GPU);
    mod.set_const("Device_TYPE_IGPU", cv::ocl::Device::TYPE_IGPU);
    mod.set_const("DEVICE_TYPE_IGPU", cv::ocl::Device::TYPE_IGPU);
    mod.set_const("Device_UNKNOWN_VENDOR", cv::ocl::Device::UNKNOWN_VENDOR);
    mod.set_const("DEVICE_UNKNOWN_VENDOR", cv::ocl::Device::UNKNOWN_VENDOR);
    mod.set_const("Device_VENDOR_AMD", cv::ocl::Device::VENDOR_AMD);
    mod.set_const("DEVICE_VENDOR_AMD", cv::ocl::Device::VENDOR_AMD);
    mod.set_const("Device_VENDOR_INTEL", cv::ocl::Device::VENDOR_INTEL);
    mod.set_const("DEVICE_VENDOR_INTEL", cv::ocl::Device::VENDOR_INTEL);
    mod.set_const("Device_VENDOR_NVIDIA", cv::ocl::Device::VENDOR_NVIDIA);
    mod.set_const("DEVICE_VENDOR_NVIDIA", cv::ocl::Device::VENDOR_NVIDIA);
    mod.set_const("KernelArg_CONSTANT", cv::ocl::KernelArg::CONSTANT);
    mod.set_const("KERNEL_ARG_CONSTANT", cv::ocl::KernelArg::CONSTANT);
    mod.set_const("KernelArg_LOCAL", cv::ocl::KernelArg::LOCAL);
    mod.set_const("KERNEL_ARG_LOCAL", cv::ocl::KernelArg::LOCAL);
    mod.set_const("KernelArg_NO_SIZE", cv::ocl::KernelArg::NO_SIZE);
    mod.set_const("KERNEL_ARG_NO_SIZE", cv::ocl::KernelArg::NO_SIZE);
    mod.set_const("KernelArg_PTR_ONLY", cv::ocl::KernelArg::PTR_ONLY);
    mod.set_const("KERNEL_ARG_PTR_ONLY", cv::ocl::KernelArg::PTR_ONLY);
    mod.set_const("KernelArg_READ_ONLY", cv::ocl::KernelArg::READ_ONLY);
    mod.set_const("KERNEL_ARG_READ_ONLY", cv::ocl::KernelArg::READ_ONLY);
    mod.set_const("KernelArg_READ_WRITE", cv::ocl::KernelArg::READ_WRITE);
    mod.set_const("KERNEL_ARG_READ_WRITE", cv::ocl::KernelArg::READ_WRITE);
    mod.set_const("KernelArg_WRITE_ONLY", cv::ocl::KernelArg::WRITE_ONLY);
    mod.set_const("KERNEL_ARG_WRITE_ONLY", cv::ocl::KernelArg::WRITE_ONLY);
    mod.set_const("OCL_VECTOR_DEFAULT", cv::ocl::OCL_VECTOR_DEFAULT);
    mod.set_const("OCL_VECTOR_MAX", cv::ocl::OCL_VECTOR_MAX);
    mod.set_const("OCL_VECTOR_OWN", cv::ocl::OCL_VECTOR_OWN);
}
JLCXX_MODULE flann(jlcxx::Module &mod) {
mod.add_type<cv::flann::Index>("flann_Index")
.constructor<>()
.constructor<const Mat&,const IndexParams&,const cvflann_flann_distance_t&>()
.constructor<const UMat&,const IndexParams&,const cvflann_flann_distance_t&>()

;
    mod.method("jlopencv_cv_flann_Index_build",  [](Index& cobj, Mat& features, IndexParams& params, cvflann_flann_distance_t& distType) { cobj.build(features, params, distType);  ;});
    mod.method("jlopencv_cv_flann_Index_build",  [](Index& cobj, UMat& features, IndexParams& params, cvflann_flann_distance_t& distType) { cobj.build(features, params, distType);  ;});
    mod.method("jlopencv_cv_flann_Index_knnSearch",  [](Index& cobj, Mat& query, int& knn, Mat& indices, Mat& dists, SearchParams& params) { cobj.knnSearch(query, indices, dists, knn, params);  return make_tuple<Mat,Mat>(move(indices),move(dists));});
    mod.method("jlopencv_cv_flann_Index_knnSearch",  [](Index& cobj, UMat& query, int& knn, UMat& indices, UMat& dists, SearchParams& params) { cobj.knnSearch(query, indices, dists, knn, params);  return make_tuple<UMat,UMat>(move(indices),move(dists));});
    mod.method("jlopencv_cv_flann_Index_radiusSearch",  [](Index& cobj, Mat& query, double& radius, int& maxResults, Mat& indices, Mat& dists, SearchParams& params) { auto retval = cobj.radiusSearch(query, indices, dists, radius, maxResults, params);  return make_tuple<int,Mat,Mat>(move(retval),move(indices),move(dists));});
    mod.method("jlopencv_cv_flann_Index_radiusSearch",  [](Index& cobj, UMat& query, double& radius, int& maxResults, UMat& indices, UMat& dists, SearchParams& params) { auto retval = cobj.radiusSearch(query, indices, dists, radius, maxResults, params);  return make_tuple<int,UMat,UMat>(move(retval),move(indices),move(dists));});
    mod.method("jlopencv_cv_flann_Index_save",  [](Index& cobj, String& filename) { cobj.save(filename);  ;});
    mod.method("jlopencv_cv_flann_Index_load",  [](Index& cobj, Mat& features, String& filename) { auto retval = cobj.load(features, filename);  return retval;});
    mod.method("jlopencv_cv_flann_Index_load",  [](Index& cobj, UMat& features, String& filename) { auto retval = cobj.load(features, filename);  return retval;});
    mod.method("jlopencv_cv_flann_Index_release",  [](Index& cobj) { cobj.release();  ;});
    mod.method("jlopencv_cv_flann_Index_getDistance",  [](Index& cobj) { auto retval = cobj.getDistance();  return retval;});
    mod.method("jlopencv_cv_flann_Index_getAlgorithm",  [](Index& cobj) { auto retval = cobj.getAlgorithm();  return retval;});
    mod.add_bits<FlannIndexType>("FlannIndexType", jlcxx::julia_type("CppEnum"));
    mod.set_const("FLANN_INDEX_TYPE_16S", cv::flann::FLANN_INDEX_TYPE_16S);
    mod.set_const("FLANN_INDEX_TYPE_16U", cv::flann::FLANN_INDEX_TYPE_16U);
    mod.set_const("FLANN_INDEX_TYPE_32F", cv::flann::FLANN_INDEX_TYPE_32F);
    mod.set_const("FLANN_INDEX_TYPE_32S", cv::flann::FLANN_INDEX_TYPE_32S);
    mod.set_const("FLANN_INDEX_TYPE_64F", cv::flann::FLANN_INDEX_TYPE_64F);
    mod.set_const("FLANN_INDEX_TYPE_8S", cv::flann::FLANN_INDEX_TYPE_8S);
    mod.set_const("FLANN_INDEX_TYPE_8U", cv::flann::FLANN_INDEX_TYPE_8U);
    mod.set_const("FLANN_INDEX_TYPE_ALGORITHM", cv::flann::FLANN_INDEX_TYPE_ALGORITHM);
    mod.set_const("FLANN_INDEX_TYPE_BOOL", cv::flann::FLANN_INDEX_TYPE_BOOL);
    mod.set_const("FLANN_INDEX_TYPE_STRING", cv::flann::FLANN_INDEX_TYPE_STRING);
    mod.set_const("LAST_VALUE_FLANN_INDEX_TYPE", cv::flann::LAST_VALUE_FLANN_INDEX_TYPE);
}
JLCXX_MODULE ml(jlcxx::Module &mod) {
mod.add_type<cv::ml::ParamGrid>("ml_ParamGrid")

.method("jlopencv_ml_ParamGrid_set_minVal", [](cv::ml::ParamGrid &cobj,const double &v) {cobj.minVal=v;})
.method("jlopencv_ml_ParamGrid_set_maxVal", [](cv::ml::ParamGrid &cobj,const double &v) {cobj.maxVal=v;})
.method("jlopencv_ml_ParamGrid_set_logStep", [](cv::ml::ParamGrid &cobj,const double &v) {cobj.logStep=v;})

.method("jlopencv_ml_ParamGrid_get_minVal", [](const cv::ml::ParamGrid &cobj) {return cobj.minVal;})
.method("jlopencv_ml_ParamGrid_get_maxVal", [](const cv::ml::ParamGrid &cobj) {return cobj.maxVal;})
.method("jlopencv_ml_ParamGrid_get_logStep", [](const cv::ml::ParamGrid &cobj) {return cobj.logStep;});
    mod.method("jlopencv_cv_ml_ParamGrid_create",  [](ParamGrid& cobj, double& minVal, double& maxVal, double& logstep) { auto retval = cv::ml::ParamGrid::create(minVal, maxVal, logstep); return retval;});mod.add_type<cv::ml::TrainData>("ml_TrainData")

;
    mod.method("jlopencv_cv_ml_TrainData_getLayout",  [](TrainData& cobj) { auto retval = cobj.getLayout();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNTrainSamples",  [](TrainData& cobj) { auto retval = cobj.getNTrainSamples();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNTestSamples",  [](TrainData& cobj) { auto retval = cobj.getNTestSamples();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNSamples",  [](TrainData& cobj) { auto retval = cobj.getNSamples();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNVars",  [](TrainData& cobj) { auto retval = cobj.getNVars();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNAllVars",  [](TrainData& cobj) { auto retval = cobj.getNAllVars();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSample",  [](TrainData& cobj, Mat& varIdx, int& sidx, float& buf) { cobj.getSample(varIdx, sidx, &buf);  ;});
    mod.method("jlopencv_cv_ml_TrainData_getSample",  [](TrainData& cobj, UMat& varIdx, int& sidx, float& buf) { cobj.getSample(varIdx, sidx, &buf);  ;});
    mod.method("jlopencv_cv_ml_TrainData_getSamples",  [](TrainData& cobj) { auto retval = cobj.getSamples();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getMissing",  [](TrainData& cobj) { auto retval = cobj.getMissing();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTrainSamples",  [](TrainData& cobj, int& layout, bool& compressSamples, bool& compressVars) { auto retval = cobj.getTrainSamples(layout, compressSamples, compressVars);  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTrainResponses",  [](TrainData& cobj) { auto retval = cobj.getTrainResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTrainNormCatResponses",  [](TrainData& cobj) { auto retval = cobj.getTrainNormCatResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTestResponses",  [](TrainData& cobj) { auto retval = cobj.getTestResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTestNormCatResponses",  [](TrainData& cobj) { auto retval = cobj.getTestNormCatResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getResponses",  [](TrainData& cobj) { auto retval = cobj.getResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNormCatResponses",  [](TrainData& cobj) { auto retval = cobj.getNormCatResponses();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSampleWeights",  [](TrainData& cobj) { auto retval = cobj.getSampleWeights();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTrainSampleWeights",  [](TrainData& cobj) { auto retval = cobj.getTrainSampleWeights();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTestSampleWeights",  [](TrainData& cobj) { auto retval = cobj.getTestSampleWeights();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getVarIdx",  [](TrainData& cobj) { auto retval = cobj.getVarIdx();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getVarType",  [](TrainData& cobj) { auto retval = cobj.getVarType();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getVarSymbolFlags",  [](TrainData& cobj) { auto retval = cobj.getVarSymbolFlags();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getResponseType",  [](TrainData& cobj) { auto retval = cobj.getResponseType();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTrainSampleIdx",  [](TrainData& cobj) { auto retval = cobj.getTrainSampleIdx();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getTestSampleIdx",  [](TrainData& cobj) { auto retval = cobj.getTestSampleIdx();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getValues",  [](TrainData& cobj, int& vi, Mat& sidx, float& values) { cobj.getValues(vi, sidx, &values);  ;});
    mod.method("jlopencv_cv_ml_TrainData_getValues",  [](TrainData& cobj, int& vi, UMat& sidx, float& values) { cobj.getValues(vi, sidx, &values);  ;});
    mod.method("jlopencv_cv_ml_TrainData_getDefaultSubstValues",  [](TrainData& cobj) { auto retval = cobj.getDefaultSubstValues();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getCatCount",  [](TrainData& cobj, int& vi) { auto retval = cobj.getCatCount(vi);  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getClassLabels",  [](TrainData& cobj) { auto retval = cobj.getClassLabels();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getCatOfs",  [](TrainData& cobj) { auto retval = cobj.getCatOfs();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getCatMap",  [](TrainData& cobj) { auto retval = cobj.getCatMap();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_setTrainTestSplit",  [](TrainData& cobj, int& count, bool& shuffle) { cobj.setTrainTestSplit(count, shuffle);  ;});
    mod.method("jlopencv_cv_ml_TrainData_setTrainTestSplitRatio",  [](TrainData& cobj, double& ratio, bool& shuffle) { cobj.setTrainTestSplitRatio(ratio, shuffle);  ;});
    mod.method("jlopencv_cv_ml_TrainData_shuffleTrainTest",  [](TrainData& cobj) { cobj.shuffleTrainTest();  ;});
    mod.method("jlopencv_cv_ml_TrainData_getTestSamples",  [](TrainData& cobj) { auto retval = cobj.getTestSamples();  return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getNames",  [](TrainData& cobj, vector<String>& names) { cobj.getNames(names);  ;});
    mod.method("jlopencv_cv_ml_TrainData_getSubVector",  [](TrainData& cobj, Mat& vec, Mat& idx) { auto retval = cv::ml::TrainData::getSubVector(vec, idx); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubVector",  [](TrainData& cobj, Mat& vec, Mat& idx) { auto retval = cv::ml::TrainData::getSubVector(vec, idx); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubMatrix",  [](TrainData& cobj, Mat& matrix, Mat& idx, int& layout) { auto retval = cv::ml::TrainData::getSubMatrix(matrix, idx, layout); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubMatrix",  [](TrainData& cobj, Mat& matrix, Mat& idx, int& layout) { auto retval = cv::ml::TrainData::getSubMatrix(matrix, idx, layout); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_create",  [](TrainData& cobj, Mat& samples, int& layout, Mat& responses, Mat& varIdx, Mat& sampleIdx, Mat& sampleWeights, Mat& varType) { auto retval = cv::ml::TrainData::create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_create",  [](TrainData& cobj, UMat& samples, int& layout, UMat& responses, UMat& varIdx, UMat& sampleIdx, UMat& sampleWeights, UMat& varType) { auto retval = cv::ml::TrainData::create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType); return retval;});mod.add_type<cv::ml::StatModel>("ml_StatModel", jlcxx::julia_base_type<cv::Algorithm>())

;
    mod.method("jlopencv_cv_ml_StatModel_getVarCount",  [](cv::Ptr<StatModel>& cobj) { auto retval = cobj->getVarCount();  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_empty",  [](cv::Ptr<StatModel>& cobj) { auto retval = cobj->empty();  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_isTrained",  [](cv::Ptr<StatModel>& cobj) { auto retval = cobj->isTrained();  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_isClassifier",  [](cv::Ptr<StatModel>& cobj) { auto retval = cobj->isClassifier();  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_train",  [](cv::Ptr<StatModel>& cobj, Ptr<TrainData>& trainData, int& flags) { auto retval = cobj->train(trainData, flags);  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_train",  [](cv::Ptr<StatModel>& cobj, Mat& samples, int& layout, Mat& responses) { auto retval = cobj->train(samples, layout, responses);  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_train",  [](cv::Ptr<StatModel>& cobj, UMat& samples, int& layout, UMat& responses) { auto retval = cobj->train(samples, layout, responses);  return retval;});
    mod.method("jlopencv_cv_ml_StatModel_calcError",  [](cv::Ptr<StatModel>& cobj, Ptr<TrainData>& data, bool& test, Mat& resp) { auto retval = cobj->calcError(data, test, resp);  return make_tuple<float,Mat>(move(retval),move(resp));});
    mod.method("jlopencv_cv_ml_StatModel_calcError",  [](cv::Ptr<StatModel>& cobj, Ptr<TrainData>& data, bool& test, UMat& resp) { auto retval = cobj->calcError(data, test, resp);  return make_tuple<float,UMat>(move(retval),move(resp));});
    mod.method("jlopencv_cv_ml_StatModel_predict",  [](cv::Ptr<StatModel>& cobj, Mat& samples, Mat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple<float,Mat>(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_StatModel_predict",  [](cv::Ptr<StatModel>& cobj, UMat& samples, UMat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple<float,UMat>(move(retval),move(results));});mod.add_type<cv::ml::NormalBayesClassifier>("ml_NormalBayesClassifier", jlcxx::julia_base_type<cv::ml::StatModel>())

;
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_predictProb",  [](cv::Ptr<NormalBayesClassifier>& cobj, Mat& inputs, Mat& outputs, Mat& outputProbs, int& flags) { auto retval = cobj->predictProb(inputs, outputs, outputProbs, flags);  return make_tuple<float,Mat,Mat>(move(retval),move(outputs),move(outputProbs));});
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_predictProb",  [](cv::Ptr<NormalBayesClassifier>& cobj, UMat& inputs, UMat& outputs, UMat& outputProbs, int& flags) { auto retval = cobj->predictProb(inputs, outputs, outputProbs, flags);  return make_tuple<float,UMat,UMat>(move(retval),move(outputs),move(outputProbs));});
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_create",  [](cv::Ptr<NormalBayesClassifier>& cobj) { auto retval = cv::ml::NormalBayesClassifier::create(); return retval;});
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_load",  [](cv::Ptr<NormalBayesClassifier>& cobj, String& filepath, String& nodeName) { auto retval = cv::ml::NormalBayesClassifier::load(filepath, nodeName); return retval;});mod.add_type<cv::ml::KNearest>("ml_KNearest", jlcxx::julia_base_type<cv::ml::StatModel>())

;
    mod.method("jlopencv_cv_ml_KNearest_getDefaultK",  [](cv::Ptr<KNearest>& cobj) { auto retval = cobj->getDefaultK();  return retval;});
    mod.method("jlopencv_cv_ml_KNearest_setDefaultK",  [](cv::Ptr<KNearest>& cobj, int& val) { cobj->setDefaultK(val);  ;});
    mod.method("jlopencv_cv_ml_KNearest_getIsClassifier",  [](cv::Ptr<KNearest>& cobj) { auto retval = cobj->getIsClassifier();  return retval;});
    mod.method("jlopencv_cv_ml_KNearest_setIsClassifier",  [](cv::Ptr<KNearest>& cobj, bool& val) { cobj->setIsClassifier(val);  ;});
    mod.method("jlopencv_cv_ml_KNearest_getEmax",  [](cv::Ptr<KNearest>& cobj) { auto retval = cobj->getEmax();  return retval;});
    mod.method("jlopencv_cv_ml_KNearest_setEmax",  [](cv::Ptr<KNearest>& cobj, int& val) { cobj->setEmax(val);  ;});
    mod.method("jlopencv_cv_ml_KNearest_getAlgorithmType",  [](cv::Ptr<KNearest>& cobj) { auto retval = cobj->getAlgorithmType();  return retval;});
    mod.method("jlopencv_cv_ml_KNearest_setAlgorithmType",  [](cv::Ptr<KNearest>& cobj, int& val) { cobj->setAlgorithmType(val);  ;});
    mod.method("jlopencv_cv_ml_KNearest_findNearest",  [](cv::Ptr<KNearest>& cobj, Mat& samples, int& k, Mat& results, Mat& neighborResponses, Mat& dist) { auto retval = cobj->findNearest(samples, k, results, neighborResponses, dist);  return make_tuple<float,Mat,Mat,Mat>(move(retval),move(results),move(neighborResponses),move(dist));});
    mod.method("jlopencv_cv_ml_KNearest_findNearest",  [](cv::Ptr<KNearest>& cobj, UMat& samples, int& k, UMat& results, UMat& neighborResponses, UMat& dist) { auto retval = cobj->findNearest(samples, k, results, neighborResponses, dist);  return make_tuple<float,UMat,UMat,UMat>(move(retval),move(results),move(neighborResponses),move(dist));});
    mod.method("jlopencv_cv_ml_KNearest_create",  [](cv::Ptr<KNearest>& cobj) { auto retval = cv::ml::KNearest::create(); return retval;});
    mod.method("jlopencv_cv_ml_KNearest_load",  [](cv::Ptr<KNearest>& cobj, String& filepath) { auto retval = cv::ml::KNearest::load(filepath); return retval;});mod.add_type<cv::ml::SVM>("ml_SVM", jlcxx::julia_base_type<cv::ml::StatModel>())

;
    mod.method("jlopencv_cv_ml_SVM_getType",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getType();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setType",  [](cv::Ptr<SVM>& cobj, int& val) { cobj->setType(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getGamma",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getGamma();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setGamma",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->setGamma(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getCoef0",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getCoef0();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setCoef0",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->setCoef0(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getDegree",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getDegree();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setDegree",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->setDegree(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getC",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getC();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setC",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->setC(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getNu",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getNu();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setNu",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->setNu(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getP",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getP();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setP",  [](cv::Ptr<SVM>& cobj, double& val) { cobj->setP(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getClassWeights",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getClassWeights();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setClassWeights",  [](cv::Ptr<SVM>& cobj, Mat& val) { cobj->setClassWeights(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_setClassWeights",  [](cv::Ptr<SVM>& cobj, Mat& val) { cobj->setClassWeights(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getTermCriteria",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setTermCriteria",  [](cv::Ptr<SVM>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_SVM_getKernelType",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getKernelType();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_setKernel",  [](cv::Ptr<SVM>& cobj, int& kernelType) { cobj->setKernel(kernelType);  ;});
    mod.method("jlopencv_cv_ml_SVM_trainAuto",  [](cv::Ptr<SVM>& cobj, Mat& samples, int& layout, Mat& responses, int& kFold, Ptr<ParamGrid>& Cgrid, Ptr<ParamGrid>& gammaGrid, Ptr<ParamGrid>& pGrid, Ptr<ParamGrid>& nuGrid, Ptr<ParamGrid>& coeffGrid, Ptr<ParamGrid>& degreeGrid, bool& balanced) { auto retval = cobj->trainAuto(samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced);  return retval;});
    mod.method("jlopencv_cv_ml_SVM_trainAuto",  [](cv::Ptr<SVM>& cobj, UMat& samples, int& layout, UMat& responses, int& kFold, Ptr<ParamGrid>& Cgrid, Ptr<ParamGrid>& gammaGrid, Ptr<ParamGrid>& pGrid, Ptr<ParamGrid>& nuGrid, Ptr<ParamGrid>& coeffGrid, Ptr<ParamGrid>& degreeGrid, bool& balanced) { auto retval = cobj->trainAuto(samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced);  return retval;});
    mod.method("jlopencv_cv_ml_SVM_getSupportVectors",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getSupportVectors();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_getUncompressedSupportVectors",  [](cv::Ptr<SVM>& cobj) { auto retval = cobj->getUncompressedSupportVectors();  return retval;});
    mod.method("jlopencv_cv_ml_SVM_getDecisionFunction",  [](cv::Ptr<SVM>& cobj, int& i, Mat& alpha, Mat& svidx) { auto retval = cobj->getDecisionFunction(i, alpha, svidx);  return make_tuple<double,Mat,Mat>(move(retval),move(alpha),move(svidx));});
    mod.method("jlopencv_cv_ml_SVM_getDecisionFunction",  [](cv::Ptr<SVM>& cobj, int& i, UMat& alpha, UMat& svidx) { auto retval = cobj->getDecisionFunction(i, alpha, svidx);  return make_tuple<double,UMat,UMat>(move(retval),move(alpha),move(svidx));});
    mod.method("jlopencv_cv_ml_SVM_getDefaultGridPtr",  [](cv::Ptr<SVM>& cobj, int& param_id) { auto retval = cv::ml::SVM::getDefaultGridPtr(param_id); return retval;});
    mod.method("jlopencv_cv_ml_SVM_create",  [](cv::Ptr<SVM>& cobj) { auto retval = cv::ml::SVM::create(); return retval;});
    mod.method("jlopencv_cv_ml_SVM_load",  [](cv::Ptr<SVM>& cobj, String& filepath) { auto retval = cv::ml::SVM::load(filepath); return retval;});mod.add_type<cv::ml::EM>("ml_EM", jlcxx::julia_base_type<cv::ml::StatModel>())

;
    mod.method("jlopencv_cv_ml_EM_getClustersNumber",  [](cv::Ptr<EM>& cobj) { auto retval = cobj->getClustersNumber();  return retval;});
    mod.method("jlopencv_cv_ml_EM_setClustersNumber",  [](cv::Ptr<EM>& cobj, int& val) { cobj->setClustersNumber(val);  ;});
    mod.method("jlopencv_cv_ml_EM_getCovarianceMatrixType",  [](cv::Ptr<EM>& cobj) { auto retval = cobj->getCovarianceMatrixType();  return retval;});
    mod.method("jlopencv_cv_ml_EM_setCovarianceMatrixType",  [](cv::Ptr<EM>& cobj, int& val) { cobj->setCovarianceMatrixType(val);  ;});
    mod.method("jlopencv_cv_ml_EM_getTermCriteria",  [](cv::Ptr<EM>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_EM_setTermCriteria",  [](cv::Ptr<EM>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_EM_getWeights",  [](cv::Ptr<EM>& cobj) { auto retval = cobj->getWeights();  return retval;});
    mod.method("jlopencv_cv_ml_EM_getMeans",  [](cv::Ptr<EM>& cobj) { auto retval = cobj->getMeans();  return retval;});
    mod.method("jlopencv_cv_ml_EM_getCovs",  [](cv::Ptr<EM>& cobj) {vector<Mat> covs; cobj->getCovs(covs);  return covs;});
    mod.method("jlopencv_cv_ml_EM_getCovs",  [](cv::Ptr<EM>& cobj) {vector<Mat> covs; cobj->getCovs(covs);  return covs;});
    mod.method("jlopencv_cv_ml_EM_predict",  [](cv::Ptr<EM>& cobj, Mat& samples, Mat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple<float,Mat>(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_EM_predict",  [](cv::Ptr<EM>& cobj, UMat& samples, UMat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple<float,UMat>(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_EM_predict2",  [](cv::Ptr<EM>& cobj, Mat& sample, Mat& probs) { auto retval = cobj->predict2(sample, probs);  return make_tuple<Vec2d,Mat>(move(retval),move(probs));});
    mod.method("jlopencv_cv_ml_EM_predict2",  [](cv::Ptr<EM>& cobj, UMat& sample, UMat& probs) { auto retval = cobj->predict2(sample, probs);  return make_tuple<Vec2d,UMat>(move(retval),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainEM",  [](cv::Ptr<EM>& cobj, Mat& samples, Mat& logLikelihoods, Mat& labels, Mat& probs) { auto retval = cobj->trainEM(samples, logLikelihoods, labels, probs);  return make_tuple<bool,Mat,Mat,Mat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainEM",  [](cv::Ptr<EM>& cobj, UMat& samples, UMat& logLikelihoods, UMat& labels, UMat& probs) { auto retval = cobj->trainEM(samples, logLikelihoods, labels, probs);  return make_tuple<bool,UMat,UMat,UMat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainE",  [](cv::Ptr<EM>& cobj, Mat& samples, Mat& means0, Mat& covs0, Mat& weights0, Mat& logLikelihoods, Mat& labels, Mat& probs) { auto retval = cobj->trainE(samples, means0, covs0, weights0, logLikelihoods, labels, probs);  return make_tuple<bool,Mat,Mat,Mat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainE",  [](cv::Ptr<EM>& cobj, UMat& samples, UMat& means0, UMat& covs0, UMat& weights0, UMat& logLikelihoods, UMat& labels, UMat& probs) { auto retval = cobj->trainE(samples, means0, covs0, weights0, logLikelihoods, labels, probs);  return make_tuple<bool,UMat,UMat,UMat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainM",  [](cv::Ptr<EM>& cobj, Mat& samples, Mat& probs0, Mat& logLikelihoods, Mat& labels, Mat& probs) { auto retval = cobj->trainM(samples, probs0, logLikelihoods, labels, probs);  return make_tuple<bool,Mat,Mat,Mat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_trainM",  [](cv::Ptr<EM>& cobj, UMat& samples, UMat& probs0, UMat& logLikelihoods, UMat& labels, UMat& probs) { auto retval = cobj->trainM(samples, probs0, logLikelihoods, labels, probs);  return make_tuple<bool,UMat,UMat,UMat>(move(retval),move(logLikelihoods),move(labels),move(probs));});
    mod.method("jlopencv_cv_ml_EM_create",  [](cv::Ptr<EM>& cobj) { auto retval = cv::ml::EM::create(); return retval;});
    mod.method("jlopencv_cv_ml_EM_load",  [](cv::Ptr<EM>& cobj, String& filepath, String& nodeName) { auto retval = cv::ml::EM::load(filepath, nodeName); return retval;});mod.add_type<cv::ml::DTrees>("ml_DTrees", jlcxx::julia_base_type<cv::ml::StatModel>())

;
    mod.method("jlopencv_cv_ml_DTrees_getMaxCategories",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->getMaxCategories();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setMaxCategories",  [](cv::Ptr<DTrees>& cobj, int& val) { cobj->setMaxCategories(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getMaxDepth",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->getMaxDepth();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setMaxDepth",  [](cv::Ptr<DTrees>& cobj, int& val) { cobj->setMaxDepth(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getMinSampleCount",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->getMinSampleCount();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setMinSampleCount",  [](cv::Ptr<DTrees>& cobj, int& val) { cobj->setMinSampleCount(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getCVFolds",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->getCVFolds();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setCVFolds",  [](cv::Ptr<DTrees>& cobj, int& val) { cobj->setCVFolds(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getUseSurrogates",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->getUseSurrogates();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setUseSurrogates",  [](cv::Ptr<DTrees>& cobj, bool& val) { cobj->setUseSurrogates(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getUse1SERule",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->getUse1SERule();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setUse1SERule",  [](cv::Ptr<DTrees>& cobj, bool& val) { cobj->setUse1SERule(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getTruncatePrunedTree",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->getTruncatePrunedTree();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setTruncatePrunedTree",  [](cv::Ptr<DTrees>& cobj, bool& val) { cobj->setTruncatePrunedTree(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getRegressionAccuracy",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->getRegressionAccuracy();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setRegressionAccuracy",  [](cv::Ptr<DTrees>& cobj, float& val) { cobj->setRegressionAccuracy(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_getPriors",  [](cv::Ptr<DTrees>& cobj) { auto retval = cobj->getPriors();  return retval;});
    mod.method("jlopencv_cv_ml_DTrees_setPriors",  [](cv::Ptr<DTrees>& cobj, Mat& val) { cobj->setPriors(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_setPriors",  [](cv::Ptr<DTrees>& cobj, Mat& val) { cobj->setPriors(val);  ;});
    mod.method("jlopencv_cv_ml_DTrees_create",  [](cv::Ptr<DTrees>& cobj) { auto retval = cv::ml::DTrees::create(); return retval;});
    mod.method("jlopencv_cv_ml_DTrees_load",  [](cv::Ptr<DTrees>& cobj, String& filepath, String& nodeName) { auto retval = cv::ml::DTrees::load(filepath, nodeName); return retval;});mod.add_type<cv::ml::RTrees>("ml_RTrees", jlcxx::julia_base_type<cv::ml::DTrees>())

;
    mod.method("jlopencv_cv_ml_RTrees_getCalculateVarImportance",  [](cv::Ptr<RTrees>& cobj) { auto retval = cobj->getCalculateVarImportance();  return retval;});
    mod.method("jlopencv_cv_ml_RTrees_setCalculateVarImportance",  [](cv::Ptr<RTrees>& cobj, bool& val) { cobj->setCalculateVarImportance(val);  ;});
    mod.method("jlopencv_cv_ml_RTrees_getActiveVarCount",  [](cv::Ptr<RTrees>& cobj) { auto retval = cobj->getActiveVarCount();  return retval;});
    mod.method("jlopencv_cv_ml_RTrees_setActiveVarCount",  [](cv::Ptr<RTrees>& cobj, int& val) { cobj->setActiveVarCount(val);  ;});
    mod.method("jlopencv_cv_ml_RTrees_getTermCriteria",  [](cv::Ptr<RTrees>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_RTrees_setTermCriteria",  [](cv::Ptr<RTrees>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_RTrees_getVarImportance",  [](cv::Ptr<RTrees>& cobj) { auto retval = cobj->getVarImportance();  return retval;});
    mod.method("jlopencv_cv_ml_RTrees_getVotes",  [](cv::Ptr<RTrees>& cobj, Mat& samples, int& flags, Mat& results) { cobj->getVotes(samples, results, flags);  return results;});
    mod.method("jlopencv_cv_ml_RTrees_getVotes",  [](cv::Ptr<RTrees>& cobj, UMat& samples, int& flags, UMat& results) { cobj->getVotes(samples, results, flags);  return results;});
    mod.method("jlopencv_cv_ml_RTrees_create",  [](cv::Ptr<RTrees>& cobj) { auto retval = cv::ml::RTrees::create(); return retval;});
    mod.method("jlopencv_cv_ml_RTrees_load",  [](cv::Ptr<RTrees>& cobj, String& filepath, String& nodeName) { auto retval = cv::ml::RTrees::load(filepath, nodeName); return retval;});mod.add_type<cv::ml::Boost>("ml_Boost", jlcxx::julia_base_type<cv::ml::DTrees>())

;
    mod.method("jlopencv_cv_ml_Boost_getBoostType",  [](cv::Ptr<Boost>& cobj) { auto retval = cobj->getBoostType();  return retval;});
    mod.method("jlopencv_cv_ml_Boost_setBoostType",  [](cv::Ptr<Boost>& cobj, int& val) { cobj->setBoostType(val);  ;});
    mod.method("jlopencv_cv_ml_Boost_getWeakCount",  [](cv::Ptr<Boost>& cobj) { auto retval = cobj->getWeakCount();  return retval;});
    mod.method("jlopencv_cv_ml_Boost_setWeakCount",  [](cv::Ptr<Boost>& cobj, int& val) { cobj->setWeakCount(val);  ;});
    mod.method("jlopencv_cv_ml_Boost_getWeightTrimRate",  [](cv::Ptr<Boost>& cobj) { auto retval = cobj->getWeightTrimRate();  return retval;});
    mod.method("jlopencv_cv_ml_Boost_setWeightTrimRate",  [](cv::Ptr<Boost>& cobj, double& val) { cobj->setWeightTrimRate(val);  ;});
    mod.method("jlopencv_cv_ml_Boost_create",  [](cv::Ptr<Boost>& cobj) { auto retval = cv::ml::Boost::create(); return retval;});
    mod.method("jlopencv_cv_ml_Boost_load",  [](cv::Ptr<Boost>& cobj, String& filepath, String& nodeName) { auto retval = cv::ml::Boost::load(filepath, nodeName); return retval;});mod.add_type<cv::ml::ANN_MLP>("ml_ANN_MLP", jlcxx::julia_base_type<cv::ml::StatModel>())

;
    mod.method("jlopencv_cv_ml_ANN_MLP_setTrainMethod",  [](cv::Ptr<ANN_MLP>& cobj, int& method, double& param1, double& param2) { cobj->setTrainMethod(method, param1, param2);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getTrainMethod",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getTrainMethod();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setActivationFunction",  [](cv::Ptr<ANN_MLP>& cobj, int& type, double& param1, double& param2) { cobj->setActivationFunction(type, param1, param2);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setLayerSizes",  [](cv::Ptr<ANN_MLP>& cobj, Mat& _layer_sizes) { cobj->setLayerSizes(_layer_sizes);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setLayerSizes",  [](cv::Ptr<ANN_MLP>& cobj, UMat& _layer_sizes) { cobj->setLayerSizes(_layer_sizes);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getLayerSizes",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getLayerSizes();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getTermCriteria",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setTermCriteria",  [](cv::Ptr<ANN_MLP>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getBackpropWeightScale",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getBackpropWeightScale();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setBackpropWeightScale",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->setBackpropWeightScale(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getBackpropMomentumScale",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getBackpropMomentumScale();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setBackpropMomentumScale",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->setBackpropMomentumScale(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getRpropDW0",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getRpropDW0();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setRpropDW0",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->setRpropDW0(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getRpropDWPlus",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getRpropDWPlus();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setRpropDWPlus",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->setRpropDWPlus(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getRpropDWMinus",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getRpropDWMinus();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setRpropDWMinus",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->setRpropDWMinus(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getRpropDWMin",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getRpropDWMin();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setRpropDWMin",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->setRpropDWMin(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getRpropDWMax",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getRpropDWMax();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setRpropDWMax",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->setRpropDWMax(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getAnnealInitialT",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getAnnealInitialT();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setAnnealInitialT",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->setAnnealInitialT(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getAnnealFinalT",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getAnnealFinalT();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setAnnealFinalT",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->setAnnealFinalT(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getAnnealCoolingRatio",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getAnnealCoolingRatio();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setAnnealCoolingRatio",  [](cv::Ptr<ANN_MLP>& cobj, double& val) { cobj->setAnnealCoolingRatio(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getAnnealItePerStep",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cobj->getAnnealItePerStep();  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_setAnnealItePerStep",  [](cv::Ptr<ANN_MLP>& cobj, int& val) { cobj->setAnnealItePerStep(val);  ;});
    mod.method("jlopencv_cv_ml_ANN_MLP_getWeights",  [](cv::Ptr<ANN_MLP>& cobj, int& layerIdx) { auto retval = cobj->getWeights(layerIdx);  return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_create",  [](cv::Ptr<ANN_MLP>& cobj) { auto retval = cv::ml::ANN_MLP::create(); return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_load",  [](cv::Ptr<ANN_MLP>& cobj, String& filepath) { auto retval = cv::ml::ANN_MLP::load(filepath); return retval;});mod.add_type<cv::ml::LogisticRegression>("ml_LogisticRegression", jlcxx::julia_base_type<cv::ml::StatModel>())

;
    mod.method("jlopencv_cv_ml_LogisticRegression_getLearningRate",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->getLearningRate();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setLearningRate",  [](cv::Ptr<LogisticRegression>& cobj, double& val) { cobj->setLearningRate(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_getIterations",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->getIterations();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setIterations",  [](cv::Ptr<LogisticRegression>& cobj, int& val) { cobj->setIterations(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_getRegularization",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->getRegularization();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setRegularization",  [](cv::Ptr<LogisticRegression>& cobj, int& val) { cobj->setRegularization(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_getTrainMethod",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->getTrainMethod();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setTrainMethod",  [](cv::Ptr<LogisticRegression>& cobj, int& val) { cobj->setTrainMethod(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_getMiniBatchSize",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->getMiniBatchSize();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setMiniBatchSize",  [](cv::Ptr<LogisticRegression>& cobj, int& val) { cobj->setMiniBatchSize(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_getTermCriteria",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_setTermCriteria",  [](cv::Ptr<LogisticRegression>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_LogisticRegression_predict",  [](cv::Ptr<LogisticRegression>& cobj, Mat& samples, Mat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple<float,Mat>(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_LogisticRegression_predict",  [](cv::Ptr<LogisticRegression>& cobj, UMat& samples, UMat& results, int& flags) { auto retval = cobj->predict(samples, results, flags);  return make_tuple<float,UMat>(move(retval),move(results));});
    mod.method("jlopencv_cv_ml_LogisticRegression_get_learnt_thetas",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cobj->get_learnt_thetas();  return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_create",  [](cv::Ptr<LogisticRegression>& cobj) { auto retval = cv::ml::LogisticRegression::create(); return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_load",  [](cv::Ptr<LogisticRegression>& cobj, String& filepath, String& nodeName) { auto retval = cv::ml::LogisticRegression::load(filepath, nodeName); return retval;});mod.add_type<cv::ml::SVMSGD>("ml_SVMSGD", jlcxx::julia_base_type<cv::ml::StatModel>())

;
    mod.method("jlopencv_cv_ml_SVMSGD_getWeights",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->getWeights();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_getShift",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->getShift();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_create",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cv::ml::SVMSGD::create(); return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_load",  [](cv::Ptr<SVMSGD>& cobj, String& filepath, String& nodeName) { auto retval = cv::ml::SVMSGD::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setOptimalParameters",  [](cv::Ptr<SVMSGD>& cobj, int& svmsgdType, int& marginType) { cobj->setOptimalParameters(svmsgdType, marginType);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getSvmsgdType",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->getSvmsgdType();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setSvmsgdType",  [](cv::Ptr<SVMSGD>& cobj, int& svmsgdType) { cobj->setSvmsgdType(svmsgdType);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getMarginType",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->getMarginType();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setMarginType",  [](cv::Ptr<SVMSGD>& cobj, int& marginType) { cobj->setMarginType(marginType);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getMarginRegularization",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->getMarginRegularization();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setMarginRegularization",  [](cv::Ptr<SVMSGD>& cobj, float& marginRegularization) { cobj->setMarginRegularization(marginRegularization);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getInitialStepSize",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->getInitialStepSize();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setInitialStepSize",  [](cv::Ptr<SVMSGD>& cobj, float& InitialStepSize) { cobj->setInitialStepSize(InitialStepSize);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getStepDecreasingPower",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->getStepDecreasingPower();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setStepDecreasingPower",  [](cv::Ptr<SVMSGD>& cobj, float& stepDecreasingPower) { cobj->setStepDecreasingPower(stepDecreasingPower);  ;});
    mod.method("jlopencv_cv_ml_SVMSGD_getTermCriteria",  [](cv::Ptr<SVMSGD>& cobj) { auto retval = cobj->getTermCriteria();  return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_setTermCriteria",  [](cv::Ptr<SVMSGD>& cobj, TermCriteria& val) { cobj->setTermCriteria(val);  ;});
    mod.method("jlopencv_cv_ml_ParamGrid_create",  [](double& minVal, double& maxVal, double& logstep) { auto retval = cv::ml::ParamGrid::create(minVal, maxVal, logstep); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_create",  [](Mat& samples, int& layout, Mat& responses, Mat& varIdx, Mat& sampleIdx, Mat& sampleWeights, Mat& varType) { auto retval = cv::ml::TrainData::create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_create",  [](UMat& samples, int& layout, UMat& responses, UMat& varIdx, UMat& sampleIdx, UMat& sampleWeights, UMat& varType) { auto retval = cv::ml::TrainData::create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType); return retval;});
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_create",  []() { auto retval = cv::ml::NormalBayesClassifier::create(); return retval;});
    mod.method("jlopencv_cv_ml_KNearest_create",  []() { auto retval = cv::ml::KNearest::create(); return retval;});
    mod.method("jlopencv_cv_ml_SVM_create",  []() { auto retval = cv::ml::SVM::create(); return retval;});
    mod.method("jlopencv_cv_ml_EM_create",  []() { auto retval = cv::ml::EM::create(); return retval;});
    mod.method("jlopencv_cv_ml_DTrees_create",  []() { auto retval = cv::ml::DTrees::create(); return retval;});
    mod.method("jlopencv_cv_ml_RTrees_create",  []() { auto retval = cv::ml::RTrees::create(); return retval;});
    mod.method("jlopencv_cv_ml_Boost_create",  []() { auto retval = cv::ml::Boost::create(); return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_create",  []() { auto retval = cv::ml::ANN_MLP::create(); return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_create",  []() { auto retval = cv::ml::LogisticRegression::create(); return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_create",  []() { auto retval = cv::ml::SVMSGD::create(); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubVector",  [](Mat& vec, Mat& idx) { auto retval = cv::ml::TrainData::getSubVector(vec, idx); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubVector",  [](Mat& vec, Mat& idx) { auto retval = cv::ml::TrainData::getSubVector(vec, idx); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubMatrix",  [](Mat& matrix, Mat& idx, int& layout) { auto retval = cv::ml::TrainData::getSubMatrix(matrix, idx, layout); return retval;});
    mod.method("jlopencv_cv_ml_TrainData_getSubMatrix",  [](Mat& matrix, Mat& idx, int& layout) { auto retval = cv::ml::TrainData::getSubMatrix(matrix, idx, layout); return retval;});
    mod.method("jlopencv_cv_ml_NormalBayesClassifier_load",  [](String& filepath, String& nodeName) { auto retval = cv::ml::NormalBayesClassifier::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_KNearest_load",  [](String& filepath) { auto retval = cv::ml::KNearest::load(filepath); return retval;});
    mod.method("jlopencv_cv_ml_SVM_load",  [](String& filepath) { auto retval = cv::ml::SVM::load(filepath); return retval;});
    mod.method("jlopencv_cv_ml_EM_load",  [](String& filepath, String& nodeName) { auto retval = cv::ml::EM::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_DTrees_load",  [](String& filepath, String& nodeName) { auto retval = cv::ml::DTrees::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_RTrees_load",  [](String& filepath, String& nodeName) { auto retval = cv::ml::RTrees::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_Boost_load",  [](String& filepath, String& nodeName) { auto retval = cv::ml::Boost::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_ANN_MLP_load",  [](String& filepath) { auto retval = cv::ml::ANN_MLP::load(filepath); return retval;});
    mod.method("jlopencv_cv_ml_LogisticRegression_load",  [](String& filepath, String& nodeName) { auto retval = cv::ml::LogisticRegression::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_SVMSGD_load",  [](String& filepath, String& nodeName) { auto retval = cv::ml::SVMSGD::load(filepath, nodeName); return retval;});
    mod.method("jlopencv_cv_ml_SVM_getDefaultGridPtr",  [](int& param_id) { auto retval = cv::ml::SVM::getDefaultGridPtr(param_id); return retval;});
    mod.add_bits<VariableTypes>("VariableTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ErrorTypes>("ErrorTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<SampleTypes>("SampleTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<Flags>("Flags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<Types>("Types", jlcxx::julia_type("CppEnum"));

    mod.add_bits<KernelTypes>("KernelTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ParamTypes>("ParamTypes", jlcxx::julia_type("CppEnum"));

    mod.add_bits<TrainingMethods>("TrainingMethods", jlcxx::julia_type("CppEnum"));

    mod.add_bits<ActivationFunctions>("ActivationFunctions", jlcxx::julia_type("CppEnum"));

    mod.add_bits<TrainFlags>("TrainFlags", jlcxx::julia_type("CppEnum"));

    mod.add_bits<RegKinds>("RegKinds", jlcxx::julia_type("CppEnum"));

    mod.add_bits<Methods>("Methods", jlcxx::julia_type("CppEnum"));

    mod.add_bits<SvmsgdType>("SvmsgdType", jlcxx::julia_type("CppEnum"));

    mod.add_bits<MarginType>("MarginType", jlcxx::julia_type("CppEnum"));
    mod.set_const("ANN_MLP_ANNEAL", cv::ml::ANN_MLP::ANNEAL);
    mod.set_const("ANN_MLP_BACKPROP", cv::ml::ANN_MLP::BACKPROP);
    mod.set_const("ANN_MLP_GAUSSIAN", cv::ml::ANN_MLP::GAUSSIAN);
    mod.set_const("ANN_MLP_IDENTITY", cv::ml::ANN_MLP::IDENTITY);
    mod.set_const("ANN_MLP_LEAKYRELU", cv::ml::ANN_MLP::LEAKYRELU);
    mod.set_const("ANN_MLP_NO_INPUT_SCALE", cv::ml::ANN_MLP::NO_INPUT_SCALE);
    mod.set_const("ANN_MLP_NO_OUTPUT_SCALE", cv::ml::ANN_MLP::NO_OUTPUT_SCALE);
    mod.set_const("ANN_MLP_RELU", cv::ml::ANN_MLP::RELU);
    mod.set_const("ANN_MLP_RPROP", cv::ml::ANN_MLP::RPROP);
    mod.set_const("ANN_MLP_SIGMOID_SYM", cv::ml::ANN_MLP::SIGMOID_SYM);
    mod.set_const("ANN_MLP_UPDATE_WEIGHTS", cv::ml::ANN_MLP::UPDATE_WEIGHTS);
    mod.set_const("Boost_DISCRETE", cv::ml::Boost::DISCRETE);
    mod.set_const("BOOST_DISCRETE", cv::ml::Boost::DISCRETE);
    mod.set_const("Boost_GENTLE", cv::ml::Boost::GENTLE);
    mod.set_const("BOOST_GENTLE", cv::ml::Boost::GENTLE);
    mod.set_const("Boost_LOGIT", cv::ml::Boost::LOGIT);
    mod.set_const("BOOST_LOGIT", cv::ml::Boost::LOGIT);
    mod.set_const("Boost_REAL", cv::ml::Boost::REAL);
    mod.set_const("BOOST_REAL", cv::ml::Boost::REAL);
    mod.set_const("COL_SAMPLE", cv::ml::COL_SAMPLE);
    mod.set_const("DTrees_PREDICT_AUTO", cv::ml::DTrees::PREDICT_AUTO);
    mod.set_const("DTREES_PREDICT_AUTO", cv::ml::DTrees::PREDICT_AUTO);
    mod.set_const("DTrees_PREDICT_MASK", cv::ml::DTrees::PREDICT_MASK);
    mod.set_const("DTREES_PREDICT_MASK", cv::ml::DTrees::PREDICT_MASK);
    mod.set_const("DTrees_PREDICT_MAX_VOTE", cv::ml::DTrees::PREDICT_MAX_VOTE);
    mod.set_const("DTREES_PREDICT_MAX_VOTE", cv::ml::DTrees::PREDICT_MAX_VOTE);
    mod.set_const("DTrees_PREDICT_SUM", cv::ml::DTrees::PREDICT_SUM);
    mod.set_const("DTREES_PREDICT_SUM", cv::ml::DTrees::PREDICT_SUM);
    mod.set_const("EM_COV_MAT_DEFAULT", cv::ml::EM::COV_MAT_DEFAULT);
    mod.set_const("EM_COV_MAT_DIAGONAL", cv::ml::EM::COV_MAT_DIAGONAL);
    mod.set_const("EM_COV_MAT_GENERIC", cv::ml::EM::COV_MAT_GENERIC);
    mod.set_const("EM_COV_MAT_SPHERICAL", cv::ml::EM::COV_MAT_SPHERICAL);
    mod.set_const("EM_DEFAULT_MAX_ITERS", cv::ml::EM::DEFAULT_MAX_ITERS);
    mod.set_const("EM_DEFAULT_NCLUSTERS", cv::ml::EM::DEFAULT_NCLUSTERS);
    mod.set_const("EM_START_AUTO_STEP", cv::ml::EM::START_AUTO_STEP);
    mod.set_const("EM_START_E_STEP", cv::ml::EM::START_E_STEP);
    mod.set_const("EM_START_M_STEP", cv::ml::EM::START_M_STEP);
    mod.set_const("KNearest_BRUTE_FORCE", cv::ml::KNearest::BRUTE_FORCE);
    mod.set_const("KNEAREST_BRUTE_FORCE", cv::ml::KNearest::BRUTE_FORCE);
    mod.set_const("KNearest_KDTREE", cv::ml::KNearest::KDTREE);
    mod.set_const("KNEAREST_KDTREE", cv::ml::KNearest::KDTREE);
    mod.set_const("LogisticRegression_BATCH", cv::ml::LogisticRegression::BATCH);
    mod.set_const("LOGISTIC_REGRESSION_BATCH", cv::ml::LogisticRegression::BATCH);
    mod.set_const("LogisticRegression_MINI_BATCH", cv::ml::LogisticRegression::MINI_BATCH);
    mod.set_const("LOGISTIC_REGRESSION_MINI_BATCH", cv::ml::LogisticRegression::MINI_BATCH);
    mod.set_const("LogisticRegression_REG_DISABLE", cv::ml::LogisticRegression::REG_DISABLE);
    mod.set_const("LOGISTIC_REGRESSION_REG_DISABLE", cv::ml::LogisticRegression::REG_DISABLE);
    mod.set_const("LogisticRegression_REG_L1", cv::ml::LogisticRegression::REG_L1);
    mod.set_const("LOGISTIC_REGRESSION_REG_L1", cv::ml::LogisticRegression::REG_L1);
    mod.set_const("LogisticRegression_REG_L2", cv::ml::LogisticRegression::REG_L2);
    mod.set_const("LOGISTIC_REGRESSION_REG_L2", cv::ml::LogisticRegression::REG_L2);
    mod.set_const("ROW_SAMPLE", cv::ml::ROW_SAMPLE);
    mod.set_const("SVMSGD_ASGD", cv::ml::SVMSGD::ASGD);
    mod.set_const("SVMSGD_HARD_MARGIN", cv::ml::SVMSGD::HARD_MARGIN);
    mod.set_const("SVMSGD_SGD", cv::ml::SVMSGD::SGD);
    mod.set_const("SVMSGD_SOFT_MARGIN", cv::ml::SVMSGD::SOFT_MARGIN);
    mod.set_const("SVM_C", cv::ml::SVM::C);
    mod.set_const("SVM_CHI2", cv::ml::SVM::CHI2);
    mod.set_const("SVM_COEF", cv::ml::SVM::COEF);
    mod.set_const("SVM_CUSTOM", cv::ml::SVM::CUSTOM);
    mod.set_const("SVM_C_SVC", cv::ml::SVM::C_SVC);
    mod.set_const("SVM_DEGREE", cv::ml::SVM::DEGREE);
    mod.set_const("SVM_EPS_SVR", cv::ml::SVM::EPS_SVR);
    mod.set_const("SVM_GAMMA", cv::ml::SVM::GAMMA);
    mod.set_const("SVM_INTER", cv::ml::SVM::INTER);
    mod.set_const("SVM_LINEAR", cv::ml::SVM::LINEAR);
    mod.set_const("SVM_NU", cv::ml::SVM::NU);
    mod.set_const("SVM_NU_SVC", cv::ml::SVM::NU_SVC);
    mod.set_const("SVM_NU_SVR", cv::ml::SVM::NU_SVR);
    mod.set_const("SVM_ONE_CLASS", cv::ml::SVM::ONE_CLASS);
    mod.set_const("SVM_P", cv::ml::SVM::P);
    mod.set_const("SVM_POLY", cv::ml::SVM::POLY);
    mod.set_const("SVM_RBF", cv::ml::SVM::RBF);
    mod.set_const("SVM_SIGMOID", cv::ml::SVM::SIGMOID);
    mod.set_const("StatModel_COMPRESSED_INPUT", cv::ml::StatModel::COMPRESSED_INPUT);
    mod.set_const("STAT_MODEL_COMPRESSED_INPUT", cv::ml::StatModel::COMPRESSED_INPUT);
    mod.set_const("StatModel_PREPROCESSED_INPUT", cv::ml::StatModel::PREPROCESSED_INPUT);
    mod.set_const("STAT_MODEL_PREPROCESSED_INPUT", cv::ml::StatModel::PREPROCESSED_INPUT);
    mod.set_const("StatModel_RAW_OUTPUT", cv::ml::StatModel::RAW_OUTPUT);
    mod.set_const("STAT_MODEL_RAW_OUTPUT", cv::ml::StatModel::RAW_OUTPUT);
    mod.set_const("StatModel_UPDATE_MODEL", cv::ml::StatModel::UPDATE_MODEL);
    mod.set_const("STAT_MODEL_UPDATE_MODEL", cv::ml::StatModel::UPDATE_MODEL);
    mod.set_const("TEST_ERROR", cv::ml::TEST_ERROR);
    mod.set_const("TRAIN_ERROR", cv::ml::TRAIN_ERROR);
    mod.set_const("VAR_CATEGORICAL", cv::ml::VAR_CATEGORICAL);
    mod.set_const("VAR_NUMERICAL", cv::ml::VAR_NUMERICAL);
    mod.set_const("VAR_ORDERED", cv::ml::VAR_ORDERED);
}
JLCXX_MODULE fisheye(jlcxx::Module &mod) {

    mod.method("jlopencv_cv_fisheye_projectPoints",  [](Mat& objectPoints, Mat& rvec, Mat& tvec, Mat& K, Mat& D, Mat& imagePoints, double& alpha, Mat& jacobian) { cv::fisheye::projectPoints(objectPoints, imagePoints, rvec, tvec, K, D, alpha, jacobian); return make_tuple<Mat,Mat>(move(imagePoints),move(jacobian));});
    mod.method("jlopencv_cv_fisheye_projectPoints",  [](UMat& objectPoints, UMat& rvec, UMat& tvec, UMat& K, UMat& D, UMat& imagePoints, double& alpha, UMat& jacobian) { cv::fisheye::projectPoints(objectPoints, imagePoints, rvec, tvec, K, D, alpha, jacobian); return make_tuple<UMat,UMat>(move(imagePoints),move(jacobian));});
    mod.method("jlopencv_cv_fisheye_distortPoints",  [](Mat& undistorted, Mat& K, Mat& D, Mat& distorted, double& alpha) { cv::fisheye::distortPoints(undistorted, distorted, K, D, alpha); return distorted;});
    mod.method("jlopencv_cv_fisheye_distortPoints",  [](UMat& undistorted, UMat& K, UMat& D, UMat& distorted, double& alpha) { cv::fisheye::distortPoints(undistorted, distorted, K, D, alpha); return distorted;});
    mod.method("jlopencv_cv_fisheye_undistortPoints",  [](Mat& distorted, Mat& K, Mat& D, Mat& undistorted, Mat& R, Mat& P) { cv::fisheye::undistortPoints(distorted, undistorted, K, D, R, P); return undistorted;});
    mod.method("jlopencv_cv_fisheye_undistortPoints",  [](UMat& distorted, UMat& K, UMat& D, UMat& undistorted, UMat& R, UMat& P) { cv::fisheye::undistortPoints(distorted, undistorted, K, D, R, P); return undistorted;});
    mod.method("jlopencv_cv_fisheye_initUndistortRectifyMap",  [](Mat& K, Mat& D, Mat& R, Mat& P, Size& size, int& m1type, Mat& map1, Mat& map2) { cv::fisheye::initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2); return make_tuple<Mat,Mat>(move(map1),move(map2));});
    mod.method("jlopencv_cv_fisheye_initUndistortRectifyMap",  [](UMat& K, UMat& D, UMat& R, UMat& P, Size& size, int& m1type, UMat& map1, UMat& map2) { cv::fisheye::initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2); return make_tuple<UMat,UMat>(move(map1),move(map2));});
    mod.method("jlopencv_cv_fisheye_undistortImage",  [](Mat& distorted, Mat& K, Mat& D, Mat& undistorted, Mat& Knew, Size& new_size) { cv::fisheye::undistortImage(distorted, undistorted, K, D, Knew, new_size); return undistorted;});
    mod.method("jlopencv_cv_fisheye_undistortImage",  [](UMat& distorted, UMat& K, UMat& D, UMat& undistorted, UMat& Knew, Size& new_size) { cv::fisheye::undistortImage(distorted, undistorted, K, D, Knew, new_size); return undistorted;});
    mod.method("jlopencv_cv_fisheye_estimateNewCameraMatrixForUndistortRectify",  [](Mat& K, Mat& D, Size& image_size, Mat& R, Mat& P, double& balance, Size& new_size, double& fov_scale) { cv::fisheye::estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale); return P;});
    mod.method("jlopencv_cv_fisheye_estimateNewCameraMatrixForUndistortRectify",  [](UMat& K, UMat& D, Size& image_size, UMat& R, UMat& P, double& balance, Size& new_size, double& fov_scale) { cv::fisheye::estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale); return P;});
    mod.method("jlopencv_cv_fisheye_calibrate",  [](vector<Mat>& objectPoints, vector<Mat>& imagePoints, Size& image_size, Mat& K, Mat& D, int& flags, TermCriteria& criteria) {vector<Mat> rvecs;vector<Mat> tvecs; auto retval = cv::fisheye::calibrate(objectPoints, imagePoints, image_size, K, D, rvecs, tvecs, flags, criteria); return make_tuple<double,Mat,Mat,vector<Mat>,vector<Mat>>(move(retval),move(K),move(D),move(rvecs),move(tvecs));});
    mod.method("jlopencv_cv_fisheye_calibrate",  [](vector<UMat>& objectPoints, vector<UMat>& imagePoints, Size& image_size, UMat& K, UMat& D, int& flags, TermCriteria& criteria) {vector<UMat> rvecs;vector<UMat> tvecs; auto retval = cv::fisheye::calibrate(objectPoints, imagePoints, image_size, K, D, rvecs, tvecs, flags, criteria); return make_tuple<double,UMat,UMat,vector<UMat>,vector<UMat>>(move(retval),move(K),move(D),move(rvecs),move(tvecs));});
    mod.method("jlopencv_cv_fisheye_stereoRectify",  [](Mat& K1, Mat& D1, Mat& K2, Mat& D2, Size& imageSize, Mat& R, Mat& tvec, int& flags, Mat& R1, Mat& R2, Mat& P1, Mat& P2, Mat& Q, Size& newImageSize, double& balance, double& fov_scale) { cv::fisheye::stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, R1, R2, P1, P2, Q, flags, newImageSize, balance, fov_scale); return make_tuple<Mat,Mat,Mat,Mat,Mat>(move(R1),move(R2),move(P1),move(P2),move(Q));});
    mod.method("jlopencv_cv_fisheye_stereoRectify",  [](UMat& K1, UMat& D1, UMat& K2, UMat& D2, Size& imageSize, UMat& R, UMat& tvec, int& flags, UMat& R1, UMat& R2, UMat& P1, UMat& P2, UMat& Q, Size& newImageSize, double& balance, double& fov_scale) { cv::fisheye::stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, R1, R2, P1, P2, Q, flags, newImageSize, balance, fov_scale); return make_tuple<UMat,UMat,UMat,UMat,UMat>(move(R1),move(R2),move(P1),move(P2),move(Q));});
    mod.method("jlopencv_cv_fisheye_stereoCalibrate",  [](vector<Mat>& objectPoints, vector<Mat>& imagePoints1, vector<Mat>& imagePoints2, Mat& K1, Mat& D1, Mat& K2, Mat& D2, Size& imageSize, Mat& R, Mat& T, int& flags, TermCriteria& criteria) { auto retval = cv::fisheye::stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria); return make_tuple<double,Mat,Mat,Mat,Mat,Mat,Mat>(move(retval),move(K1),move(D1),move(K2),move(D2),move(R),move(T));});
    mod.method("jlopencv_cv_fisheye_stereoCalibrate",  [](vector<UMat>& objectPoints, vector<UMat>& imagePoints1, vector<UMat>& imagePoints2, UMat& K1, UMat& D1, UMat& K2, UMat& D2, Size& imageSize, UMat& R, UMat& T, int& flags, TermCriteria& criteria) { auto retval = cv::fisheye::stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria); return make_tuple<double,UMat,UMat,UMat,UMat,UMat,UMat>(move(retval),move(K1),move(D1),move(K2),move(D2),move(R),move(T));});    mod.set_const("CALIB_CHECK_COND", cv::fisheye::CALIB_CHECK_COND);
    mod.set_const("CALIB_FIX_INTRINSIC", cv::fisheye::CALIB_FIX_INTRINSIC);
    mod.set_const("CALIB_FIX_K1", cv::fisheye::CALIB_FIX_K1);
    mod.set_const("CALIB_FIX_K2", cv::fisheye::CALIB_FIX_K2);
    mod.set_const("CALIB_FIX_K3", cv::fisheye::CALIB_FIX_K3);
    mod.set_const("CALIB_FIX_K4", cv::fisheye::CALIB_FIX_K4);
    mod.set_const("CALIB_FIX_PRINCIPAL_POINT", cv::fisheye::CALIB_FIX_PRINCIPAL_POINT);
    mod.set_const("CALIB_FIX_SKEW", cv::fisheye::CALIB_FIX_SKEW);
    mod.set_const("CALIB_RECOMPUTE_EXTRINSIC", cv::fisheye::CALIB_RECOMPUTE_EXTRINSIC);
    mod.set_const("CALIB_USE_INTRINSIC_GUESS", cv::fisheye::CALIB_USE_INTRINSIC_GUESS);
}
JLCXX_MODULE internal(jlcxx::Module &mod) {
}

