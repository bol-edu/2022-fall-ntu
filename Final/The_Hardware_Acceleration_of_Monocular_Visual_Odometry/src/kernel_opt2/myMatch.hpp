#ifndef MYMATCH_H
#define MYMATCH_H

#include <iostream>
#include <stdint.h>
#include "ap_int.h"

#include "size.hpp"
#include "matcher.h"

using namespace std;

#define ABS(a, b) ((a > b)? a-b:b-a);
#define PARALLEL        2
#define HALF_PARALLEL   PARALLEL/2

extern "C" {


struct Feature_Point
{
    int32_t u, v, val, type;
    ap_int<256> d;
};

struct Matching_cand
{
    int16_t u, v;
    uint8_t u_bin, type;
    int16_t idx;
};

void fetch_col_bin (int32_t m1p[MAX_FEATURE_ARRAY_SIZE],int32_t m1c[MAX_FEATURE_ARRAY_SIZE], int32_t n1p[BIN_NUM],int32_t n1c[BIN_NUM], 
                    Feature_Point mc_buffer[4][COL_BIN_FEATURE_MAX], 
                    int32_t       mc_buffer_num[4][V_BIN_NUM+1],
                    Feature_Point mp_buffer[4][COL_BIN_FEATURE_MAX],
                    int32_t       mp_buffer_num[4][V_BIN_NUM+1],
                    int32_t       u_bin
);

void find_match (
  Feature_Point origin,
  int origin_u_bin,
  int origin_v_bin,
  int origin_col_idx,
  Feature_Point m_buffer[7][4][COL_BIN_FEATURE_MAX],
  int32_t       m_buffer_num[7][4][V_BIN_NUM+1],
  Matching_cand m_matching[U_BIN_NUM][4][COL_BIN_FEATURE_MAX]
);

void myMatching (int32_t m1p[MAX_FEATURE_ARRAY_SIZE],
            int32_t m1c[MAX_FEATURE_ARRAY_SIZE], 
            int32_t n1p[BIN_NUM],
            int32_t n1c[BIN_NUM],
            Matcher::p_match p_matched[POINT_L], 
            int32_t* p_matched_num,
            int32_t iter);

}
#endif
