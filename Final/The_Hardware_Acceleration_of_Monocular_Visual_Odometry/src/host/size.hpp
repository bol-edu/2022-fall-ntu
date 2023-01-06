#ifndef __SIZE_H__
#define __SIZE_H__

#define IMG_SIZE                290816
#define MAX_FEATURE_POINT_SIZE  24000

#define IMG_W                   1024
#define IMG_H                   284
#define BIN_W                   60
#define BIN_H                   45
#define U_BIN_NUM               17
#define V_BIN_NUM               7
#define SEARCH_RAD_U            BIN_W*3
#define SEARCH_RAD_V            BIN_H*3

#define BIN_NUM                 U_BIN_NUM*V_BIN_NUM*4
#define MAX_FP_IN_BIN           160 // 158
#define MAX2_BIN_OFFSET         MAX_FP_IN_BIN*12 
#define MAX_FEATURE_ARRAY_SIZE  BIN_NUM*MAX_FP_IN_BIN*12

#define COL_BIN_FEATURE_MAX     608

#define POINT_L     14002
#define TRIANGLE_L  83598
#define HASH_L      119
#define EDGE_L      13

#endif
