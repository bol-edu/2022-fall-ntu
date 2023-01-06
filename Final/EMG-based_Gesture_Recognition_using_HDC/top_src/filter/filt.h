#ifndef __FILT_H__
#define __FILT_H__

#include <ap_axi_sdata.h>
#include <hls_stream.h>

#define	N           5
#define Period      100
#define Windowsize  500

// assign b2_tap to be tap+1 to reduce complexity
#define b2_tap 21

typedef ap_fixed<22, 16, AP_RND_MIN_INF> data_t;  // <total_bits#, int_bits#>
void filt(int data_counter, int &in_loc, int &in_loc_last, int &out_loc, data_t data_in[b2_tap][64], ap_int<4> data_out[N*64], bool reset);

#endif
