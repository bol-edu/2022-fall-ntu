// #include <stdio.h>
// #include <stdlib.h>
// #include <string.h>
// #include <iostream>
// #include <math.h>
// #include <emmintrin.h>
// #include <algorithm>
// #include <vector>
// #include <cassert>

// #include "matrix.h"
// #include "size.h"

#include "myMatch.hpp"

using namespace std;

void fetch_col_bin (int32_t m1p[MAX_FEATURE_ARRAY_SIZE],int32_t m1c[MAX_FEATURE_ARRAY_SIZE], int32_t n1p[BIN_NUM],int32_t n1c[BIN_NUM], 
                    Feature_Point mc_buffer[4][COL_BIN_FEATURE_MAX], 
                    int32_t       mc_buffer_num[4][V_BIN_NUM+1],
                    Feature_Point mp_buffer[4][COL_BIN_FEATURE_MAX],
                    int32_t       mp_buffer_num[4][V_BIN_NUM+1],
                    int32_t       u_bin
) {
  int _bin, byte_len;
  for (int i=0; i<4;i++) {
    mc_buffer_num[i][0] = 0;
    mp_buffer_num[i][0] = 0;
  }
  for (int v_bin = 0; v_bin < V_BIN_NUM; v_bin++) {
    for (int c = 0; c < 4; c++) {
      _bin = (v_bin*U_BIN_NUM + u_bin)*4+c;
      // previous
      // byte_len = n1p[_bin]*48;
      // memcpy(mp_buffer[c][mp_buffer_num[c][v_bin]], m1p[_bin*MAX2_BIN_OFFSET], byte_len);
      for (int k=0; k < n1p[_bin]; k++) {
        Feature_Point fp;
        fp.u = m1p[_bin*MAX2_BIN_OFFSET+12*k+0];
        fp.v = m1p[_bin*MAX2_BIN_OFFSET+12*k+1];
        fp.val = m1p[_bin*MAX2_BIN_OFFSET+12*k+2];
        fp.type = m1p[_bin*MAX2_BIN_OFFSET+12*k+3];
        uint8_t d_tmp[32];
        memcpy(d_tmp, m1p+_bin*MAX2_BIN_OFFSET+12*k+4, 32);
        for (int s=0;s<32;s++) {
          fp.d[s] = d_tmp[s];
        }
        mp_buffer[c][mp_buffer_num[c][v_bin]+k] = fp;
      }
      mp_buffer_num[c][v_bin+1] = mp_buffer_num[c][v_bin]+n1p[_bin];
      // current
      // byte_len = n1c[_bin]*48;
      // memcpy(mc_buffer[c][mc_buffer_num[c][v_bin]], m1c[_bin*MAX2_BIN_OFFSET], byte_len);
      for (int k=0; k < n1c[_bin]; k++) {
        Feature_Point fp;
        fp.u = m1c[_bin*MAX2_BIN_OFFSET+12*k+0];
        fp.v = m1c[_bin*MAX2_BIN_OFFSET+12*k+1];
        fp.val = m1c[_bin*MAX2_BIN_OFFSET+12*k+2];
        fp.type = m1c[_bin*MAX2_BIN_OFFSET+12*k+3];
        uint8_t d_tmp[32];
        memcpy(d_tmp, m1c+_bin*MAX2_BIN_OFFSET+12*k+4, 32);
        for (int s=0;s<32;s++) {
          fp.d[s] = d_tmp[s];
        }
        mc_buffer[c][mc_buffer_num[c][v_bin]+k] = fp;
      }
      mc_buffer_num[c][v_bin+1] = mc_buffer_num[c][v_bin]+n1c[_bin];
    }
  }
}

inline void find_match (
  Feature_Point origin,
  int origin_u_bin,
  int origin_v_bin,
  int origin_col_idx,
  Feature_Point m_buffer[7][4][COL_BIN_FEATURE_MAX],
  int32_t       m_buffer_num[7][4][V_BIN_NUM+1],
  Matching_cand m_matching[U_BIN_NUM][4][COL_BIN_FEATURE_MAX]
) {
  Matching_cand min_cand;
  int16_t  min_cost = 32766;
  int16_t  psum;
  int32_t u_min,u_max,v_min,v_max;
  
  u_min = origin.u-SEARCH_RAD_U;
  u_max = origin.u+SEARCH_RAD_U;
  v_min = origin.v-SEARCH_RAD_V;
  v_max = origin.v+SEARCH_RAD_V;

  // bins of interest
  int32_t u_bin_min = max(origin_u_bin-3, 0);
  int32_t u_bin_max = min(origin_u_bin+3, U_BIN_NUM-1);
  int32_t v_bin_min = max(origin_v_bin-3, 0);
  int32_t v_bin_max = min(origin_v_bin+3, V_BIN_NUM-1);
  int32_t bin_class = origin.type;

  // for all bins of interest do
  for (int u_bin = u_bin_min; u_bin < u_bin_max; u_bin++) {
    int u_bin_buffer = u_bin % 7;
    for (int col_idx = m_buffer_num[u_bin_buffer][bin_class][v_bin_min]; col_idx < m_buffer_num[u_bin_buffer][bin_class][v_bin_max]; col_idx++) {
      Feature_Point target = m_buffer[u_bin_buffer][bin_class][col_idx];
      if (target.u>=u_min && target.u<=u_max && target.v>=v_min && target.v<=v_max) {
        psum = 0;
        for (int i = 0; i < 32; i++) {
          psum += (int16_t) ABS(origin.d[i], target.d[i]);
        }

        if (psum<min_cost) {
          min_cand.u = target.u;
          min_cand.v = target.v;
          min_cand.u_bin = u_bin;
          min_cand.type = bin_class;
          min_cand.idx = col_idx;
          min_cost = psum;
        }
      }
    }
  }
  m_matching[origin_u_bin][bin_class][origin_col_idx] = min_cand;
}


void myMatching (int32_t m1p[MAX_FEATURE_ARRAY_SIZE],int32_t m1c[MAX_FEATURE_ARRAY_SIZE], int32_t n1p[BIN_NUM],int32_t n1c[BIN_NUM],Matcher::p_match p_matched[POINT_L], int32_t& p_matched_num) {
  cout << "enter matching" << endl;
  int32_t step_size = 12;
  Feature_Point mc_buffer[7][4][COL_BIN_FEATURE_MAX];
  int32_t       mc_buffer_num[7][4][V_BIN_NUM+1];
  Feature_Point mp_buffer[7][4][COL_BIN_FEATURE_MAX];
  int32_t       mp_buffer_num[7][4][V_BIN_NUM+1];
  Matching_cand mc_matching[U_BIN_NUM][4][COL_BIN_FEATURE_MAX];
  Matching_cand mp_matching[U_BIN_NUM][4][COL_BIN_FEATURE_MAX];
  Matching_cand end;
  end.u = -1;

  bool M[IMG_H][IMG_W] = {0};
  /////////////////////////////////////////////////////
  fetch_col_bin(m1p, m1c, n1p, n1c, mc_buffer[0], mc_buffer_num[0], mp_buffer[0], mp_buffer_num[0], 0);
  fetch_col_bin(m1p, m1c, n1p, n1c, mc_buffer[1], mc_buffer_num[1], mp_buffer[1], mp_buffer_num[1], 1);
  fetch_col_bin(m1p, m1c, n1p, n1c, mc_buffer[2], mc_buffer_num[2], mp_buffer[2], mp_buffer_num[2], 2);

  for (int i=0; i < U_BIN_NUM; i++) {
    // fetch
    int write_u_bin = (i+3) % 7;
    if (i < U_BIN_NUM-4) { 
      fetch_col_bin(m1p, m1c, n1p, n1c, mc_buffer[write_u_bin], mc_buffer_num[write_u_bin], mp_buffer[write_u_bin], mp_buffer_num[write_u_bin], i+3);
    }
    // compute
    int u_buffer_idx = i % 7;

    for (int c=0; c<4; c++) {
      
      //#pragma unroll

      // current matching
      int v_buffer_idx = 0;

      for (int col_idx = 0; col_idx < mc_buffer_num[u_buffer_idx][c][V_BIN_NUM]; col_idx++) {
        if (col_idx >= mc_buffer_num[u_buffer_idx][c][v_buffer_idx]) {
          v_buffer_idx += 1;
        }
        Feature_Point origin = mc_buffer[u_buffer_idx][c][col_idx];
        find_match(origin, i, v_buffer_idx, col_idx, mp_buffer, mp_buffer_num, mc_matching);        
      }
      // place end
      mc_matching[i][c][mc_buffer_num[u_buffer_idx][c][V_BIN_NUM]] = end;

      // previous matching
      v_buffer_idx = 0;
      for (int col_idx = 0; col_idx < mp_buffer_num[u_buffer_idx][c][V_BIN_NUM]; col_idx++) {
        if (col_idx >= mp_buffer_num[u_buffer_idx][c][v_buffer_idx]) {
          v_buffer_idx += 1;
        }
        Feature_Point origin = mp_buffer[u_buffer_idx][c][col_idx];
        find_match(origin, i, v_buffer_idx, col_idx, mc_buffer, mc_buffer_num, mp_matching);        
      }
      mp_matching[i][c][mp_buffer_num[u_buffer_idx][c][V_BIN_NUM]] = end;
    }
  }

  // check cycle
  for (int u = 0; u < U_BIN_NUM; u++) {
    for (int c = 0; c < 4; c++) {
      for (int col_idx = 0; col_idx < COL_BIN_FEATURE_MAX; col_idx++) {
        Matching_cand cand_c = mc_matching[u][c][col_idx];
        if (cand_c.u == -1) {
          break;
        }
        Matching_cand cand_p = mp_matching[cand_c.u_bin][c][cand_c.idx];
        if ((cand_p.u_bin == u) && (cand_p.idx == col_idx)) {
          // matched!

          if (M[cand_c.v][cand_c.u]==0) {
            p_matched[p_matched_num] = Matcher::p_match(cand_c.u,cand_c.v,-1,-1,-1,-1,cand_p.u,cand_p.v,-1,-1,-1,-1);
            p_matched_num += 1;
            M[cand_c.v][cand_c.u]= 1;
          }
        }
      } 
    }
  }

  cout << "p_matched_num" << p_matched_num << endl;
  if (p_matched_num < 5) {
    p_matched_num = 0;
  }  
}