#include "hls_stream.h"
#include "ap_fixed.h"

#define S 3
#define B 2
#define C 20
#define SCORE_TH 0.4
#define IOU_TH 0.5

typedef ap_fixed<32,4> fixed;

// x*0.0008453252376057208+0.22727718949317932

extern "C" void nms(
    hls::stream<fixed>& inData,
    fixed    *nms_bboxes,
    unsigned *nms_class_preds,
    unsigned *nms_num);
