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
const int parallel=PARALLEL;

extern "C" {
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
  fetch_v_bin: for (int v_bin = 0; v_bin < V_BIN_NUM; v_bin++) {
	  fetch_class: for (int c = 0; c < 4; c++) {
      _bin = (v_bin*U_BIN_NUM + u_bin)*4+c;
      // previous
      // byte_len = n1p[_bin]*48;
      // memcpy(mp_buffer[c][mp_buffer_num[c][v_bin]], m1p[_bin*MAX2_BIN_OFFSET], byte_len);
      fetch_perv: for (int k=0; k < n1p[_bin]; k++) {
        Feature_Point fp;
        for (int ii=0; ii<12; ii++) {
          #pragma HLS PIPELINE II=1
          int32_t mp_data = m1p[_bin*MAX2_BIN_OFFSET+12*k+ii];
          if (ii==0) {
            fp.u = mp_data;
          }
          if (ii==1) {
            fp.v = mp_data;
          }
          if (ii==2) {
            fp.val = mp_data;
          }
          if (ii==3) {
            fp.type = mp_data;
          }
          if (ii>=4) {
            fp.d.range(32*(ii-3)-1, 32*(ii-4)) = mp_data;
          }
        }
        // fp.u = m1p[_bin*MAX2_BIN_OFFSET+12*k+0];
        // fp.v = m1p[_bin*MAX2_BIN_OFFSET+12*k+1];
        // fp.val = m1p[_bin*MAX2_BIN_OFFSET+12*k+2];
        // fp.type = m1p[_bin*MAX2_BIN_OFFSET+12*k+3];
        // // memcpy(fp.d, m1p+_bin*MAX2_BIN_OFFSET+12*k+4, 32);
        // fp.d.range(31, 0) = m1p[_bin*MAX2_BIN_OFFSET+12*k+4];
        // fp.d.range(63, 32) = m1p[_bin*MAX2_BIN_OFFSET+12*k+5];
        // fp.d.range(95, 64) = m1p[_bin*MAX2_BIN_OFFSET+12*k+6];
        // fp.d.range(127, 96) = m1p[_bin*MAX2_BIN_OFFSET+12*k+7];
        // fp.d.range(159, 128) = m1p[_bin*MAX2_BIN_OFFSET+12*k+8];
        // fp.d.range(191, 160) = m1p[_bin*MAX2_BIN_OFFSET+12*k+9];
        // fp.d.range(223, 192) = m1p[_bin*MAX2_BIN_OFFSET+12*k+10];
        // fp.d.range(255, 224) = m1p[_bin*MAX2_BIN_OFFSET+12*k+11];
        mp_buffer[c][mp_buffer_num[c][v_bin]+k] = fp;
      }
      mp_buffer_num[c][v_bin+1] = mp_buffer_num[c][v_bin]+n1p[_bin];
      // current
      // byte_len = n1c[_bin]*48;
      // memcpy(mc_buffer[c][mc_buffer_num[c][v_bin]], m1c[_bin*MAX2_BIN_OFFSET], byte_len);
      fetch_cur: for (int k=0; k < n1c[_bin]; k++) {
        Feature_Point fp;
        for (int ii=0; ii<12; ii++) {
          #pragma HLS PIPELINE II=1
          int32_t mc_data = m1c[_bin*MAX2_BIN_OFFSET+12*k+ii];
          if (ii==0) {
            fp.u = mc_data;
          }
          if (ii==1) {
            fp.v = mc_data;
          }
          if (ii==2) {
            fp.val = mc_data;
          }
          if (ii==3) {
            fp.type = mc_data;
          }
          if (ii>=4) {
            fp.d.range(32*(ii-3)-1, 32*(ii-4)) = mc_data;
          }
        }
        // fp.u = m1c[_bin*MAX2_BIN_OFFSET+12*k+0];
        // fp.v = m1c[_bin*MAX2_BIN_OFFSET+12*k+1];
        // fp.val = m1c[_bin*MAX2_BIN_OFFSET+12*k+2];
        // fp.type = m1c[_bin*MAX2_BIN_OFFSET+12*k+3];
        // // memcpy(fp.d, m1c+_bin*MAX2_BIN_OFFSET+12*k+4, 32);
        // fp.d.range(31, 0) = m1c[_bin*MAX2_BIN_OFFSET+12*k+4];
        // fp.d.range(63, 32) = m1c[_bin*MAX2_BIN_OFFSET+12*k+5];
        // fp.d.range(95, 64) = m1c[_bin*MAX2_BIN_OFFSET+12*k+6];
        // fp.d.range(127, 96) = m1c[_bin*MAX2_BIN_OFFSET+12*k+7];
        // fp.d.range(159, 128) = m1c[_bin*MAX2_BIN_OFFSET+12*k+8];
        // fp.d.range(191, 160) = m1c[_bin*MAX2_BIN_OFFSET+12*k+9];
        // fp.d.range(223, 192) = m1c[_bin*MAX2_BIN_OFFSET+12*k+10];
        // fp.d.range(255, 224) = m1c[_bin*MAX2_BIN_OFFSET+12*k+11];
        mc_buffer[c][mc_buffer_num[c][v_bin]+k] = fp;
      }
      mc_buffer_num[c][v_bin+1] = mc_buffer_num[c][v_bin]+n1c[_bin];
    }
  }
}

void find_match (
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
  int16_t  psum_03, psum_47, psum_811, psum_1215, psum_1619, psum_2023, psum_2427, psum_2831;
  int16_t  psum_015, psum_1631;
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
  int16_t tmp[32];
  #pragma HLS ARRAY_PARTITION variable=tmp dim=1 complete

  // for all bins of interest do
  find_u_bin: for (int u_bin = u_bin_min; u_bin < u_bin_max; u_bin++) {
    int u_bin_buffer = u_bin % 7;
    find_col: for (int col_idx = m_buffer_num[u_bin_buffer][bin_class][v_bin_min]; col_idx < m_buffer_num[u_bin_buffer][bin_class][v_bin_max]; col_idx++) {
      //#pragma HLS UNROLL factor=parallel
      Feature_Point target = m_buffer[u_bin_buffer][bin_class][col_idx];
      if (target.u>=u_min && target.u<=u_max && target.v>=v_min && target.v<=v_max) {
        psum = 0;
        calc: for (int i = 0; i < 32; i++) {
          #pragma HLS UNROLL  factor=32
          ap_uint<8> a = origin.d.range((i+1)*8-1, 8*i);
          ap_uint<8> b = target.d.range((i+1)*8-1, 8*i);
          tmp[i] = ABS(a, b);
        }
        // adder tree
        psum_03 = tmp[0] + tmp[1] + tmp[2] + tmp[3];
        psum_47 = tmp[4] + tmp[5] + tmp[6] + tmp[7];
        psum_811 = tmp[8] + tmp[9] + tmp[10] + tmp[11];
        psum_1215 = tmp[12] + tmp[13] + tmp[14] + tmp[15];
        psum_1619 = tmp[16] + tmp[17] + tmp[18] + tmp[19];
        psum_2023 = tmp[20] + tmp[21] + tmp[22] + tmp[23];
        psum_2427 = tmp[24] + tmp[25] + tmp[26] + tmp[27];
        psum_2831 = tmp[28] + tmp[29] + tmp[30] + tmp[31];

        psum_015 = psum_03 + psum_47 + psum_811 + psum_1215;
        psum_1631 = psum_1619 + psum_2023 + psum_2427 + psum_2831;

        psum = psum_015 + psum_1631;

        // calc: for (int i = 0; i < 32; i++) {
        //   #pragma HLS UNROLL  factor=32
        //   psum += (int16_t) ABS(origin.d[i], target.d[i]);
        // }

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


void myMatching (int32_t m1p[MAX_FEATURE_ARRAY_SIZE],int32_t m1c[MAX_FEATURE_ARRAY_SIZE], int32_t n1p[BIN_NUM],int32_t n1c[BIN_NUM],Matcher::p_match p_matched[POINT_L], int32_t *p_matched_num, int32_t iter) {

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem0 port = m1p max_widen_bitwidth=128 depth = 100000

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem1 port = n1p max_widen_bitwidth=64 depth = 100000

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem0 port = m1c max_widen_bitwidth=128 depth = 100000

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem1 port = n1c max_widen_bitwidth=64 depth = 100000

// todo: optimize the p_match sturct => int32_t
#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 8 num_read_outstanding = \
    1 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem2 port = p_matched depth = 100000


  // cout << "[Debug]--enter matching" << endl;
  // cout << "[Debug]--iter " << iter << endl;
  if (iter==0) {
    *p_matched_num = 0;
    return;
  }
  int32_t step_size = 12;
  Feature_Point mc_buffer[7][4][COL_BIN_FEATURE_MAX];
  int32_t       mc_buffer_num[7][4][V_BIN_NUM+1];
  Feature_Point mp_buffer[7][4][COL_BIN_FEATURE_MAX];
  int32_t       mp_buffer_num[7][4][V_BIN_NUM+1];
  int32_t       col_matching_cnt[U_BIN_NUM][4];
  Matching_cand mc_matching[U_BIN_NUM][4][COL_BIN_FEATURE_MAX];
  Matching_cand mp_matching[U_BIN_NUM][4][COL_BIN_FEATURE_MAX];
  static int _p_matched_num;
  #pragma HLS bind_storage variable=mc_buffer type=RAM_1P impl=uram
  #pragma HLS bind_storage variable=mp_buffer type=RAM_1P impl=uram
  #pragma HLS bind_storage variable=mc_matching type=RAM_1P impl=uram
  #pragma HLS bind_storage variable=mp_matching type=RAM_1P impl=uram
//#pragma HLS ARRAY_PARTITION variable=mc_buffer dim=1 type=complete
//#pragma HLS ARRAY_PARTITION variable=mc_buffer dim=2 type=complete
//#pragma HLS ARRAY_PARTITION variable=mp_buffer dim=1 type=complete
//#pragma HLS ARRAY_PARTITION variable=mp_buffer dim=2 type=complete
//#pragma HLS ARRAY_PARTITION variable=mc_buffer_num dim=1 type=complete
//#pragma HLS ARRAY_PARTITION variable=mc_buffer_num dim=2 type=complete
//#pragma HLS ARRAY_PARTITION variable=mp_buffer_num dim=1 type=complete
//#pragma HLS ARRAY_PARTITION variable=mp_buffer_num dim=2 type=complete

  // Matching_cand end;
  // end.u = -1;

  static bool M[IMG_H][IMG_W];
  for (int i=0; i<IMG_H; i++) {
    for (int j=0; j<IMG_W; j++) {
      #pragma HLS UNROLL factor=2
      M[i][j] = 0;
    }
  }
  /////////////////////////////////////////////////////
  fetch_col_bin(m1p, m1c, n1p, n1c, mc_buffer[0], mc_buffer_num[0], mp_buffer[0], mp_buffer_num[0], 0);
  fetch_col_bin(m1p, m1c, n1p, n1c, mc_buffer[1], mc_buffer_num[1], mp_buffer[1], mp_buffer_num[1], 1);
  fetch_col_bin(m1p, m1c, n1p, n1c, mc_buffer[2], mc_buffer_num[2], mp_buffer[2], mp_buffer_num[2], 2);
  // cout << "[Debug]--matching: n1p " <<n1p[0] <<endl;
  // cout << "[Debug]--matching: n1c " <<n1c[0] <<endl;
  // cout << "[Debug]--matching: fetch" << endl;
  iter: for (int i=0; i < U_BIN_NUM; i++) {
    // cout <<"[Debug]--iter: " << i << endl;
    // fetch
    int write_u_bin = (i+3) % 7;
    if (i < U_BIN_NUM-4) { 
      fetch_col_bin(m1p, m1c, n1p, n1c, mc_buffer[write_u_bin], mc_buffer_num[write_u_bin], mp_buffer[write_u_bin], mp_buffer_num[write_u_bin], i+3);
    }
    // compute
    int u_buffer_idx = i % 7;

    iter_class: for (int c=0; c<4; c++) {
      
//	#pragma HLS UNROLL factor=4

      // current matching
      int v_buffer_idx = 0;

      cur_iter_col: for (int col_idx = 0; col_idx < mc_buffer_num[u_buffer_idx][c][V_BIN_NUM]; col_idx++) {
        if (col_idx >= mc_buffer_num[u_buffer_idx][c][v_buffer_idx]) {
          v_buffer_idx += 1;
        }
        Feature_Point origin = mc_buffer[u_buffer_idx][c][col_idx];
        find_match(origin, i, v_buffer_idx, col_idx, mp_buffer, mp_buffer_num, mc_matching);        
      }
      // place end
      col_matching_cnt[i][c] = mc_buffer_num[u_buffer_idx][c][V_BIN_NUM];
      // mc_matching[i][c][mc_buffer_num[u_buffer_idx][c][V_BIN_NUM]] = end;

      // previous matching
      v_buffer_idx = 0;
      prev_iter_col: for (int col_idx = 0; col_idx < mp_buffer_num[u_buffer_idx][c][V_BIN_NUM]; col_idx++) {
        if (col_idx >= mp_buffer_num[u_buffer_idx][c][v_buffer_idx]) {
          v_buffer_idx += 1;
        }
        Feature_Point origin = mp_buffer[u_buffer_idx][c][col_idx];
        find_match(origin, i, v_buffer_idx, col_idx, mc_buffer, mc_buffer_num, mp_matching);        
      }
      // mp_matching[i][c][mp_buffer_num[u_buffer_idx][c][V_BIN_NUM]] = end;
    }
  }

  // check cycle
  _p_matched_num = 0;
  check_cycle_u: for (int u = 0; u < U_BIN_NUM; u++) {
	  check_cycle_c:for (int c = 0; c < 4; c++) {
		  check_cycle_col:for (int col_idx = 0; col_idx < col_matching_cnt[u][c]; col_idx++) {
        Matching_cand cand_c = mc_matching[u][c][col_idx];
        Matching_cand cand_p = mp_matching[cand_c.u_bin][c][cand_c.idx];
        if ((cand_p.u_bin == u) && (cand_p.idx == col_idx)) {
          // matched!
          // todo: the "_p_matched_num" has dependenct
          // #pragma HLS dependence variable=M type=inter direction=RAW false
          // #pragma HLS dependence variable=p_matched type=inter false
          if (M[cand_p.v][cand_p.u]==0) {
            p_matched[_p_matched_num] = Matcher::p_match(cand_c.u,cand_c.v,-1,-1,-1,-1,cand_p.u,cand_p.v,-1,-1,-1,-1);
            _p_matched_num += 1;
            M[cand_p.v][cand_p.u]= 1;
          }
        }
      } 
    }
  }

  // cout << "[Debug]--matching: p_matched_num " << *p_matched_num << endl;
  if (_p_matched_num < 5) {
    *p_matched_num = 0;
  }
  else {
    *p_matched_num = _p_matched_num;
  }  
}


}
