#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_test_data_V_data_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_data_V.dat"
#define AUTOTB_TVOUT_test_data_V_data_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_data_V_data_V.dat"
#define AUTOTB_TVIN_test_data_V_keep_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_keep_V.dat"
#define AUTOTB_TVOUT_test_data_V_keep_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_data_V_keep_V.dat"
#define AUTOTB_TVIN_test_data_V_strb_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_strb_V.dat"
#define AUTOTB_TVOUT_test_data_V_strb_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_data_V_strb_V.dat"
#define AUTOTB_TVIN_test_data_V_user_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_user_V.dat"
#define AUTOTB_TVOUT_test_data_V_user_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_data_V_user_V.dat"
#define AUTOTB_TVIN_test_data_V_last_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_last_V.dat"
#define AUTOTB_TVOUT_test_data_V_last_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_data_V_last_V.dat"
#define AUTOTB_TVIN_test_data_V_id_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_id_V.dat"
#define AUTOTB_TVOUT_test_data_V_id_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_data_V_id_V.dat"
#define AUTOTB_TVIN_test_data_V_dest_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_dest_V.dat"
#define AUTOTB_TVOUT_test_data_V_dest_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_data_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_test_data_V_data_V "../tv/stream_size/stream_size_in_test_data_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_test_data_V_data_V "../tv/stream_size/stream_ingress_status_test_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_test_data_V_keep_V "../tv/stream_size/stream_size_in_test_data_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_test_data_V_keep_V "../tv/stream_size/stream_ingress_status_test_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_test_data_V_strb_V "../tv/stream_size/stream_size_in_test_data_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_test_data_V_strb_V "../tv/stream_size/stream_ingress_status_test_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_test_data_V_user_V "../tv/stream_size/stream_size_in_test_data_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_test_data_V_user_V "../tv/stream_size/stream_ingress_status_test_data_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_test_data_V_last_V "../tv/stream_size/stream_size_in_test_data_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_test_data_V_last_V "../tv/stream_size/stream_ingress_status_test_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_test_data_V_id_V "../tv/stream_size/stream_size_in_test_data_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_test_data_V_id_V "../tv/stream_size/stream_ingress_status_test_data_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_test_data_V_dest_V "../tv/stream_size/stream_size_in_test_data_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_test_data_V_dest_V "../tv/stream_size/stream_ingress_status_test_data_V_dest_V.dat"
#define AUTOTB_TVIN_test_label_out_V_data_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_label_out_V_data_V.dat"
#define AUTOTB_TVOUT_test_label_out_V_data_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_label_out_V_data_V.dat"
#define AUTOTB_TVIN_test_label_out_V_keep_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_label_out_V_keep_V.dat"
#define AUTOTB_TVOUT_test_label_out_V_keep_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_label_out_V_keep_V.dat"
#define AUTOTB_TVIN_test_label_out_V_strb_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_label_out_V_strb_V.dat"
#define AUTOTB_TVOUT_test_label_out_V_strb_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_label_out_V_strb_V.dat"
#define AUTOTB_TVIN_test_label_out_V_user_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_label_out_V_user_V.dat"
#define AUTOTB_TVOUT_test_label_out_V_user_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_label_out_V_user_V.dat"
#define AUTOTB_TVIN_test_label_out_V_last_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_label_out_V_last_V.dat"
#define AUTOTB_TVOUT_test_label_out_V_last_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_label_out_V_last_V.dat"
#define AUTOTB_TVIN_test_label_out_V_id_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_label_out_V_id_V.dat"
#define AUTOTB_TVOUT_test_label_out_V_id_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_label_out_V_id_V.dat"
#define AUTOTB_TVIN_test_label_out_V_dest_V "../tv/cdatafile/c.hdc_maxi.autotvin_test_label_out_V_dest_V.dat"
#define AUTOTB_TVOUT_test_label_out_V_dest_V "../tv/cdatafile/c.hdc_maxi.autotvout_test_label_out_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_test_label_out_V_data_V "../tv/stream_size/stream_size_out_test_label_out_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_data_V "../tv/stream_size/stream_egress_status_test_label_out_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_test_label_out_V_keep_V "../tv/stream_size/stream_size_out_test_label_out_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_keep_V "../tv/stream_size/stream_egress_status_test_label_out_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_test_label_out_V_strb_V "../tv/stream_size/stream_size_out_test_label_out_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_strb_V "../tv/stream_size/stream_egress_status_test_label_out_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_test_label_out_V_user_V "../tv/stream_size/stream_size_out_test_label_out_V_user_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_user_V "../tv/stream_size/stream_egress_status_test_label_out_V_user_V.dat"
#define WRAPC_STREAM_SIZE_OUT_test_label_out_V_last_V "../tv/stream_size/stream_size_out_test_label_out_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_last_V "../tv/stream_size/stream_egress_status_test_label_out_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_test_label_out_V_id_V "../tv/stream_size/stream_size_out_test_label_out_V_id_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_id_V "../tv/stream_size/stream_egress_status_test_label_out_V_id_V.dat"
#define WRAPC_STREAM_SIZE_OUT_test_label_out_V_dest_V "../tv/stream_size/stream_size_out_test_label_out_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_dest_V "../tv/stream_size/stream_egress_status_test_label_out_V_dest_V.dat"
#define AUTOTB_TVIN_IM_V_data_V "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_data_V.dat"
#define AUTOTB_TVOUT_IM_V_data_V "../tv/cdatafile/c.hdc_maxi.autotvout_IM_V_data_V.dat"
#define AUTOTB_TVIN_IM_V_keep_V "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_keep_V.dat"
#define AUTOTB_TVOUT_IM_V_keep_V "../tv/cdatafile/c.hdc_maxi.autotvout_IM_V_keep_V.dat"
#define AUTOTB_TVIN_IM_V_strb_V "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_strb_V.dat"
#define AUTOTB_TVOUT_IM_V_strb_V "../tv/cdatafile/c.hdc_maxi.autotvout_IM_V_strb_V.dat"
#define AUTOTB_TVIN_IM_V_user_V "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_user_V.dat"
#define AUTOTB_TVOUT_IM_V_user_V "../tv/cdatafile/c.hdc_maxi.autotvout_IM_V_user_V.dat"
#define AUTOTB_TVIN_IM_V_last_V "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_last_V.dat"
#define AUTOTB_TVOUT_IM_V_last_V "../tv/cdatafile/c.hdc_maxi.autotvout_IM_V_last_V.dat"
#define AUTOTB_TVIN_IM_V_id_V "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_id_V.dat"
#define AUTOTB_TVOUT_IM_V_id_V "../tv/cdatafile/c.hdc_maxi.autotvout_IM_V_id_V.dat"
#define AUTOTB_TVIN_IM_V_dest_V "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_dest_V.dat"
#define AUTOTB_TVOUT_IM_V_dest_V "../tv/cdatafile/c.hdc_maxi.autotvout_IM_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_IM_V_data_V "../tv/stream_size/stream_size_in_IM_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_IM_V_data_V "../tv/stream_size/stream_ingress_status_IM_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_IM_V_keep_V "../tv/stream_size/stream_size_in_IM_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_IM_V_keep_V "../tv/stream_size/stream_ingress_status_IM_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_IM_V_strb_V "../tv/stream_size/stream_size_in_IM_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_IM_V_strb_V "../tv/stream_size/stream_ingress_status_IM_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_IM_V_user_V "../tv/stream_size/stream_size_in_IM_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_IM_V_user_V "../tv/stream_size/stream_ingress_status_IM_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_IM_V_last_V "../tv/stream_size/stream_size_in_IM_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_IM_V_last_V "../tv/stream_size/stream_ingress_status_IM_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_IM_V_id_V "../tv/stream_size/stream_size_in_IM_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_IM_V_id_V "../tv/stream_size/stream_ingress_status_IM_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_IM_V_dest_V "../tv/stream_size/stream_size_in_IM_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_IM_V_dest_V "../tv/stream_size/stream_ingress_status_IM_V_dest_V.dat"
#define AUTOTB_TVIN_AM_out_V_data_V "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_data_V.dat"
#define AUTOTB_TVOUT_AM_out_V_data_V "../tv/cdatafile/c.hdc_maxi.autotvout_AM_out_V_data_V.dat"
#define AUTOTB_TVIN_AM_out_V_keep_V "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_keep_V.dat"
#define AUTOTB_TVOUT_AM_out_V_keep_V "../tv/cdatafile/c.hdc_maxi.autotvout_AM_out_V_keep_V.dat"
#define AUTOTB_TVIN_AM_out_V_strb_V "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_strb_V.dat"
#define AUTOTB_TVOUT_AM_out_V_strb_V "../tv/cdatafile/c.hdc_maxi.autotvout_AM_out_V_strb_V.dat"
#define AUTOTB_TVIN_AM_out_V_user_V "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_user_V.dat"
#define AUTOTB_TVOUT_AM_out_V_user_V "../tv/cdatafile/c.hdc_maxi.autotvout_AM_out_V_user_V.dat"
#define AUTOTB_TVIN_AM_out_V_last_V "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_last_V.dat"
#define AUTOTB_TVOUT_AM_out_V_last_V "../tv/cdatafile/c.hdc_maxi.autotvout_AM_out_V_last_V.dat"
#define AUTOTB_TVIN_AM_out_V_id_V "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_id_V.dat"
#define AUTOTB_TVOUT_AM_out_V_id_V "../tv/cdatafile/c.hdc_maxi.autotvout_AM_out_V_id_V.dat"
#define AUTOTB_TVIN_AM_out_V_dest_V "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_dest_V.dat"
#define AUTOTB_TVOUT_AM_out_V_dest_V "../tv/cdatafile/c.hdc_maxi.autotvout_AM_out_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_AM_out_V_data_V "../tv/stream_size/stream_size_in_AM_out_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_AM_out_V_data_V "../tv/stream_size/stream_ingress_status_AM_out_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_AM_out_V_keep_V "../tv/stream_size/stream_size_in_AM_out_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_AM_out_V_keep_V "../tv/stream_size/stream_ingress_status_AM_out_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_AM_out_V_strb_V "../tv/stream_size/stream_size_in_AM_out_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_AM_out_V_strb_V "../tv/stream_size/stream_ingress_status_AM_out_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_AM_out_V_user_V "../tv/stream_size/stream_size_in_AM_out_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_AM_out_V_user_V "../tv/stream_size/stream_ingress_status_AM_out_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_AM_out_V_last_V "../tv/stream_size/stream_size_in_AM_out_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_AM_out_V_last_V "../tv/stream_size/stream_ingress_status_AM_out_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_AM_out_V_id_V "../tv/stream_size/stream_size_in_AM_out_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_AM_out_V_id_V "../tv/stream_size/stream_ingress_status_AM_out_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_AM_out_V_dest_V "../tv/stream_size/stream_size_in_AM_out_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_AM_out_V_dest_V "../tv/stream_size/stream_ingress_status_AM_out_V_dest_V.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_test_data_V_data_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_test_data_V_keep_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_test_data_V_strb_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_test_data_V_user_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_data_V_user_V.dat"
#define AUTOTB_TVOUT_PC_test_data_V_last_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_data_V_last_V.dat"
#define AUTOTB_TVOUT_PC_test_data_V_id_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_data_V_id_V.dat"
#define AUTOTB_TVOUT_PC_test_data_V_dest_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_data_V_dest_V.dat"
#define AUTOTB_TVOUT_PC_test_label_out_V_data_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_data_V.dat"
#define AUTOTB_TVOUT_PC_test_label_out_V_keep_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_test_label_out_V_strb_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_test_label_out_V_user_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_user_V.dat"
#define AUTOTB_TVOUT_PC_test_label_out_V_last_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_last_V.dat"
#define AUTOTB_TVOUT_PC_test_label_out_V_id_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_id_V.dat"
#define AUTOTB_TVOUT_PC_test_label_out_V_dest_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_dest_V.dat"
#define AUTOTB_TVOUT_PC_IM_V_data_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_IM_V_data_V.dat"
#define AUTOTB_TVOUT_PC_IM_V_keep_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_IM_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_IM_V_strb_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_IM_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_IM_V_user_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_IM_V_user_V.dat"
#define AUTOTB_TVOUT_PC_IM_V_last_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_IM_V_last_V.dat"
#define AUTOTB_TVOUT_PC_IM_V_id_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_IM_V_id_V.dat"
#define AUTOTB_TVOUT_PC_IM_V_dest_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_IM_V_dest_V.dat"
#define AUTOTB_TVOUT_PC_AM_out_V_data_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_AM_out_V_data_V.dat"
#define AUTOTB_TVOUT_PC_AM_out_V_keep_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_AM_out_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_AM_out_V_strb_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_AM_out_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_AM_out_V_user_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_AM_out_V_user_V.dat"
#define AUTOTB_TVOUT_PC_AM_out_V_last_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_AM_out_V_last_V.dat"
#define AUTOTB_TVOUT_PC_AM_out_V_id_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_AM_out_V_id_V.dat"
#define AUTOTB_TVOUT_PC_AM_out_V_dest_V "../tv/rtldatafile/rtl.hdc_maxi.autotvout_AM_out_V_dest_V.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  test_data_V_data_V_depth = 0;
  test_data_V_keep_V_depth = 0;
  test_data_V_strb_V_depth = 0;
  test_data_V_user_V_depth = 0;
  test_data_V_last_V_depth = 0;
  test_data_V_id_V_depth = 0;
  test_data_V_dest_V_depth = 0;
  test_label_out_V_data_V_depth = 0;
  test_label_out_V_keep_V_depth = 0;
  test_label_out_V_strb_V_depth = 0;
  test_label_out_V_user_V_depth = 0;
  test_label_out_V_last_V_depth = 0;
  test_label_out_V_id_V_depth = 0;
  test_label_out_V_dest_V_depth = 0;
  IM_V_data_V_depth = 0;
  IM_V_keep_V_depth = 0;
  IM_V_strb_V_depth = 0;
  IM_V_user_V_depth = 0;
  IM_V_last_V_depth = 0;
  IM_V_id_V_depth = 0;
  IM_V_dest_V_depth = 0;
  AM_out_V_data_V_depth = 0;
  AM_out_V_keep_V_depth = 0;
  AM_out_V_strb_V_depth = 0;
  AM_out_V_user_V_depth = 0;
  AM_out_V_last_V_depth = 0;
  AM_out_V_id_V_depth = 0;
  AM_out_V_dest_V_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{test_data_V_data_V " << test_data_V_data_V_depth << "}\n";
  total_list << "{test_data_V_keep_V " << test_data_V_keep_V_depth << "}\n";
  total_list << "{test_data_V_strb_V " << test_data_V_strb_V_depth << "}\n";
  total_list << "{test_data_V_user_V " << test_data_V_user_V_depth << "}\n";
  total_list << "{test_data_V_last_V " << test_data_V_last_V_depth << "}\n";
  total_list << "{test_data_V_id_V " << test_data_V_id_V_depth << "}\n";
  total_list << "{test_data_V_dest_V " << test_data_V_dest_V_depth << "}\n";
  total_list << "{test_label_out_V_data_V " << test_label_out_V_data_V_depth << "}\n";
  total_list << "{test_label_out_V_keep_V " << test_label_out_V_keep_V_depth << "}\n";
  total_list << "{test_label_out_V_strb_V " << test_label_out_V_strb_V_depth << "}\n";
  total_list << "{test_label_out_V_user_V " << test_label_out_V_user_V_depth << "}\n";
  total_list << "{test_label_out_V_last_V " << test_label_out_V_last_V_depth << "}\n";
  total_list << "{test_label_out_V_id_V " << test_label_out_V_id_V_depth << "}\n";
  total_list << "{test_label_out_V_dest_V " << test_label_out_V_dest_V_depth << "}\n";
  total_list << "{IM_V_data_V " << IM_V_data_V_depth << "}\n";
  total_list << "{IM_V_keep_V " << IM_V_keep_V_depth << "}\n";
  total_list << "{IM_V_strb_V " << IM_V_strb_V_depth << "}\n";
  total_list << "{IM_V_user_V " << IM_V_user_V_depth << "}\n";
  total_list << "{IM_V_last_V " << IM_V_last_V_depth << "}\n";
  total_list << "{IM_V_id_V " << IM_V_id_V_depth << "}\n";
  total_list << "{IM_V_dest_V " << IM_V_dest_V_depth << "}\n";
  total_list << "{AM_out_V_data_V " << AM_out_V_data_V_depth << "}\n";
  total_list << "{AM_out_V_keep_V " << AM_out_V_keep_V_depth << "}\n";
  total_list << "{AM_out_V_strb_V " << AM_out_V_strb_V_depth << "}\n";
  total_list << "{AM_out_V_user_V " << AM_out_V_user_V_depth << "}\n";
  total_list << "{AM_out_V_last_V " << AM_out_V_last_V_depth << "}\n";
  total_list << "{AM_out_V_id_V " << AM_out_V_id_V_depth << "}\n";
  total_list << "{AM_out_V_dest_V " << AM_out_V_dest_V_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int test_data_V_data_V_depth;
    int test_data_V_keep_V_depth;
    int test_data_V_strb_V_depth;
    int test_data_V_user_V_depth;
    int test_data_V_last_V_depth;
    int test_data_V_id_V_depth;
    int test_data_V_dest_V_depth;
    int test_label_out_V_data_V_depth;
    int test_label_out_V_keep_V_depth;
    int test_label_out_V_strb_V_depth;
    int test_label_out_V_user_V_depth;
    int test_label_out_V_last_V_depth;
    int test_label_out_V_id_V_depth;
    int test_label_out_V_dest_V_depth;
    int IM_V_data_V_depth;
    int IM_V_keep_V_depth;
    int IM_V_strb_V_depth;
    int IM_V_user_V_depth;
    int IM_V_last_V_depth;
    int IM_V_id_V_depth;
    int IM_V_dest_V_depth;
    int AM_out_V_data_V_depth;
    int AM_out_V_keep_V_depth;
    int AM_out_V_strb_V_depth;
    int AM_out_V_user_V_depth;
    int AM_out_V_last_V_depth;
    int AM_out_V_id_V_depth;
    int AM_out_V_dest_V_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


extern "C" void hdc_maxi_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_hdc_maxi_hw(volatile void * __xlx_apatb_param_test_data_V_data_V, volatile void * __xlx_apatb_param_test_data_V_keep_V, volatile void * __xlx_apatb_param_test_data_V_strb_V, volatile void * __xlx_apatb_param_test_data_V_user_V, volatile void * __xlx_apatb_param_test_data_V_last_V, volatile void * __xlx_apatb_param_test_data_V_id_V, volatile void * __xlx_apatb_param_test_data_V_dest_V, volatile void * __xlx_apatb_param_test_label_out_V_data_V, volatile void * __xlx_apatb_param_test_label_out_V_keep_V, volatile void * __xlx_apatb_param_test_label_out_V_strb_V, volatile void * __xlx_apatb_param_test_label_out_V_user_V, volatile void * __xlx_apatb_param_test_label_out_V_last_V, volatile void * __xlx_apatb_param_test_label_out_V_id_V, volatile void * __xlx_apatb_param_test_label_out_V_dest_V, volatile void * __xlx_apatb_param_IM_V_data_V, volatile void * __xlx_apatb_param_IM_V_keep_V, volatile void * __xlx_apatb_param_IM_V_strb_V, volatile void * __xlx_apatb_param_IM_V_user_V, volatile void * __xlx_apatb_param_IM_V_last_V, volatile void * __xlx_apatb_param_IM_V_id_V, volatile void * __xlx_apatb_param_IM_V_dest_V, volatile void * __xlx_apatb_param_AM_out_V_data_V, volatile void * __xlx_apatb_param_AM_out_V_keep_V, volatile void * __xlx_apatb_param_AM_out_V_strb_V, volatile void * __xlx_apatb_param_AM_out_V_user_V, volatile void * __xlx_apatb_param_AM_out_V_last_V, volatile void * __xlx_apatb_param_AM_out_V_id_V, volatile void * __xlx_apatb_param_AM_out_V_dest_V) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_test_data_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_test_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_test_data_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_test_data_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_test_data_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_test_data_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_test_data_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_test_data_V_user_V)->read();
((hls::stream<char>*)__xlx_apatb_param_test_data_V_last_V)->read();
((hls::stream<char>*)__xlx_apatb_param_test_data_V_id_V)->read();
((hls::stream<char>*)__xlx_apatb_param_test_data_V_dest_V)->read();
}
{unsigned xlx_stream_test_label_out_size = 0;

          std::vector<sc_bv<32> > test_label_out_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_test_label_out_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > test_label_out_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              test_label_out_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "test_label_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_test_label_out_size=test_label_out_V_data_V_pc_buffer.size();
test_label_out_V_data_V_pc_buffer_Copy=test_label_out_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > test_label_out_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_test_label_out_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > test_label_out_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              test_label_out_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "test_label_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_test_label_out_size=test_label_out_V_keep_V_pc_buffer.size();
test_label_out_V_keep_V_pc_buffer_Copy=test_label_out_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > test_label_out_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_test_label_out_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > test_label_out_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              test_label_out_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "test_label_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_test_label_out_size=test_label_out_V_strb_V_pc_buffer.size();
test_label_out_V_strb_V_pc_buffer_Copy=test_label_out_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > test_label_out_V_user_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_test_label_out_V_user_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > test_label_out_V_user_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              test_label_out_V_user_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "test_label_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_test_label_out_size=test_label_out_V_user_V_pc_buffer.size();
test_label_out_V_user_V_pc_buffer_Copy=test_label_out_V_user_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > test_label_out_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_test_label_out_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > test_label_out_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              test_label_out_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "test_label_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_test_label_out_size=test_label_out_V_last_V_pc_buffer.size();
test_label_out_V_last_V_pc_buffer_Copy=test_label_out_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > test_label_out_V_id_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_test_label_out_V_id_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > test_label_out_V_id_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              test_label_out_V_id_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "test_label_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_test_label_out_size=test_label_out_V_id_V_pc_buffer.size();
test_label_out_V_id_V_pc_buffer_Copy=test_label_out_V_id_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > test_label_out_V_dest_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_test_label_out_V_dest_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > test_label_out_V_dest_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              test_label_out_V_dest_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "test_label_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_test_label_out_size=test_label_out_V_dest_V_pc_buffer.size();
test_label_out_V_dest_V_pc_buffer_Copy=test_label_out_V_dest_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_test_label_out_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = test_label_out_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_test_label_out_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = test_label_out_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = test_label_out_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_user;
((char*)&xlx_stream_elt_user)[0] = test_label_out_V_user_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_user_V)->write(xlx_stream_elt_user);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = test_label_out_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_last_V)->write(xlx_stream_elt_last);
char xlx_stream_elt_id;
((char*)&xlx_stream_elt_id)[0] = test_label_out_V_id_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_id_V)->write(xlx_stream_elt_id);
char xlx_stream_elt_dest;
((char*)&xlx_stream_elt_dest)[0] = test_label_out_V_dest_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_dest_V)->write(xlx_stream_elt_dest);
}}
long __xlx_apatb_param_IM_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_IM_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_IM_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_IM_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_IM_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_IM_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_IM_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_IM_V_user_V)->read();
((hls::stream<char>*)__xlx_apatb_param_IM_V_last_V)->read();
((hls::stream<char>*)__xlx_apatb_param_IM_V_id_V)->read();
((hls::stream<char>*)__xlx_apatb_param_IM_V_dest_V)->read();
}
long __xlx_apatb_param_AM_out_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_AM_out_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_AM_out_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_AM_out_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_AM_out_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_AM_out_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_AM_out_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_AM_out_V_user_V)->read();
((hls::stream<char>*)__xlx_apatb_param_AM_out_V_last_V)->read();
((hls::stream<char>*)__xlx_apatb_param_AM_out_V_id_V)->read();
((hls::stream<char>*)__xlx_apatb_param_AM_out_V_dest_V)->read();
}

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_test_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_test_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_test_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_test_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_test_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_test_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_test_data_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_test_data_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_test_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_test_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_test_data_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_test_data_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_test_data_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_test_data_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_test_label_out_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_test_label_out_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_test_label_out_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_test_label_out_V_user_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_test_label_out_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_test_label_out_V_id_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_test_label_out_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_test_label_out_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_IM_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_IM_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_IM_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_IM_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_IM_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_IM_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_IM_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_IM_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_IM_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_IM_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_IM_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_IM_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_IM_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_IM_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_AM_out_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_AM_out_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_AM_out_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_AM_out_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_AM_out_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_AM_out_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_AM_out_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_dest_V);
CodeState = DUMP_INPUTS;
// data
std::vector<int> __xlx_apatb_param_test_data_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_test_data_V_data_V)->empty())
    __xlx_apatb_param_test_data_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_test_data_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_data_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_test_data_V_data_V)->write(__xlx_apatb_param_test_data_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_test_data_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_test_data_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_test_data_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_data_V_keep_V)->empty())
    __xlx_apatb_param_test_data_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_data_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_data_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_data_V_keep_V)->write(__xlx_apatb_param_test_data_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_test_data_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_data_V_strb_V)->empty())
    __xlx_apatb_param_test_data_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_data_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_data_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_data_V_strb_V)->write(__xlx_apatb_param_test_data_V_strb_V_stream_buf[i]);
  }
// user
std::vector<char> __xlx_apatb_param_test_data_V_user_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_data_V_user_V)->empty())
    __xlx_apatb_param_test_data_V_user_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_data_V_user_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_data_V_user_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_data_V_user_V)->write(__xlx_apatb_param_test_data_V_user_V_stream_buf[i]);
  }
// last
std::vector<char> __xlx_apatb_param_test_data_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_data_V_last_V)->empty())
    __xlx_apatb_param_test_data_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_data_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_data_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_data_V_last_V)->write(__xlx_apatb_param_test_data_V_last_V_stream_buf[i]);
  }
// id
std::vector<char> __xlx_apatb_param_test_data_V_id_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_data_V_id_V)->empty())
    __xlx_apatb_param_test_data_V_id_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_data_V_id_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_data_V_id_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_data_V_id_V)->write(__xlx_apatb_param_test_data_V_id_V_stream_buf[i]);
  }
// dest
std::vector<char> __xlx_apatb_param_test_data_V_dest_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_data_V_dest_V)->empty())
    __xlx_apatb_param_test_data_V_dest_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_data_V_dest_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_data_V_dest_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_data_V_dest_V)->write(__xlx_apatb_param_test_data_V_dest_V_stream_buf[i]);
  }
// data
std::vector<int> __xlx_apatb_param_test_label_out_V_data_V_stream_buf;
long __xlx_apatb_param_test_label_out_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_test_label_out_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_test_label_out_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_test_label_out_V_strb_V_stream_buf;
// user
std::vector<char> __xlx_apatb_param_test_label_out_V_user_V_stream_buf;
// last
std::vector<char> __xlx_apatb_param_test_label_out_V_last_V_stream_buf;
// id
std::vector<char> __xlx_apatb_param_test_label_out_V_id_V_stream_buf;
// dest
std::vector<char> __xlx_apatb_param_test_label_out_V_dest_V_stream_buf;
// data
std::vector<int> __xlx_apatb_param_IM_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_IM_V_data_V)->empty())
    __xlx_apatb_param_IM_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_IM_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_IM_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_IM_V_data_V)->write(__xlx_apatb_param_IM_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_IM_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_IM_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_IM_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_IM_V_keep_V)->empty())
    __xlx_apatb_param_IM_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_IM_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_IM_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_IM_V_keep_V)->write(__xlx_apatb_param_IM_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_IM_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_IM_V_strb_V)->empty())
    __xlx_apatb_param_IM_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_IM_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_IM_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_IM_V_strb_V)->write(__xlx_apatb_param_IM_V_strb_V_stream_buf[i]);
  }
// user
std::vector<char> __xlx_apatb_param_IM_V_user_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_IM_V_user_V)->empty())
    __xlx_apatb_param_IM_V_user_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_IM_V_user_V)->read());
  for (int i = 0; i < __xlx_apatb_param_IM_V_user_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_IM_V_user_V)->write(__xlx_apatb_param_IM_V_user_V_stream_buf[i]);
  }
// last
std::vector<char> __xlx_apatb_param_IM_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_IM_V_last_V)->empty())
    __xlx_apatb_param_IM_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_IM_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_IM_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_IM_V_last_V)->write(__xlx_apatb_param_IM_V_last_V_stream_buf[i]);
  }
// id
std::vector<char> __xlx_apatb_param_IM_V_id_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_IM_V_id_V)->empty())
    __xlx_apatb_param_IM_V_id_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_IM_V_id_V)->read());
  for (int i = 0; i < __xlx_apatb_param_IM_V_id_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_IM_V_id_V)->write(__xlx_apatb_param_IM_V_id_V_stream_buf[i]);
  }
// dest
std::vector<char> __xlx_apatb_param_IM_V_dest_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_IM_V_dest_V)->empty())
    __xlx_apatb_param_IM_V_dest_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_IM_V_dest_V)->read());
  for (int i = 0; i < __xlx_apatb_param_IM_V_dest_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_IM_V_dest_V)->write(__xlx_apatb_param_IM_V_dest_V_stream_buf[i]);
  }
// data
std::vector<int> __xlx_apatb_param_AM_out_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_AM_out_V_data_V)->empty())
    __xlx_apatb_param_AM_out_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_AM_out_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_AM_out_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_AM_out_V_data_V)->write(__xlx_apatb_param_AM_out_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_AM_out_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_AM_out_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_AM_out_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_AM_out_V_keep_V)->empty())
    __xlx_apatb_param_AM_out_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_AM_out_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_AM_out_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_AM_out_V_keep_V)->write(__xlx_apatb_param_AM_out_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_AM_out_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_AM_out_V_strb_V)->empty())
    __xlx_apatb_param_AM_out_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_AM_out_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_AM_out_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_AM_out_V_strb_V)->write(__xlx_apatb_param_AM_out_V_strb_V_stream_buf[i]);
  }
// user
std::vector<char> __xlx_apatb_param_AM_out_V_user_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_AM_out_V_user_V)->empty())
    __xlx_apatb_param_AM_out_V_user_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_AM_out_V_user_V)->read());
  for (int i = 0; i < __xlx_apatb_param_AM_out_V_user_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_AM_out_V_user_V)->write(__xlx_apatb_param_AM_out_V_user_V_stream_buf[i]);
  }
// last
std::vector<char> __xlx_apatb_param_AM_out_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_AM_out_V_last_V)->empty())
    __xlx_apatb_param_AM_out_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_AM_out_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_AM_out_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_AM_out_V_last_V)->write(__xlx_apatb_param_AM_out_V_last_V_stream_buf[i]);
  }
// id
std::vector<char> __xlx_apatb_param_AM_out_V_id_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_AM_out_V_id_V)->empty())
    __xlx_apatb_param_AM_out_V_id_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_AM_out_V_id_V)->read());
  for (int i = 0; i < __xlx_apatb_param_AM_out_V_id_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_AM_out_V_id_V)->write(__xlx_apatb_param_AM_out_V_id_V_stream_buf[i]);
  }
// dest
std::vector<char> __xlx_apatb_param_AM_out_V_dest_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_AM_out_V_dest_V)->empty())
    __xlx_apatb_param_AM_out_V_dest_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_AM_out_V_dest_V)->read());
  for (int i = 0; i < __xlx_apatb_param_AM_out_V_dest_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_AM_out_V_dest_V)->write(__xlx_apatb_param_AM_out_V_dest_V_stream_buf[i]);
  }
CodeState = CALL_C_DUT;
hdc_maxi_hw_stub_wrapper(__xlx_apatb_param_test_data_V_data_V, __xlx_apatb_param_test_data_V_keep_V, __xlx_apatb_param_test_data_V_strb_V, __xlx_apatb_param_test_data_V_user_V, __xlx_apatb_param_test_data_V_last_V, __xlx_apatb_param_test_data_V_id_V, __xlx_apatb_param_test_data_V_dest_V, __xlx_apatb_param_test_label_out_V_data_V, __xlx_apatb_param_test_label_out_V_keep_V, __xlx_apatb_param_test_label_out_V_strb_V, __xlx_apatb_param_test_label_out_V_user_V, __xlx_apatb_param_test_label_out_V_last_V, __xlx_apatb_param_test_label_out_V_id_V, __xlx_apatb_param_test_label_out_V_dest_V, __xlx_apatb_param_IM_V_data_V, __xlx_apatb_param_IM_V_keep_V, __xlx_apatb_param_IM_V_strb_V, __xlx_apatb_param_IM_V_user_V, __xlx_apatb_param_IM_V_last_V, __xlx_apatb_param_IM_V_id_V, __xlx_apatb_param_IM_V_dest_V, __xlx_apatb_param_AM_out_V_data_V, __xlx_apatb_param_AM_out_V_keep_V, __xlx_apatb_param_AM_out_V_strb_V, __xlx_apatb_param_AM_out_V_user_V, __xlx_apatb_param_AM_out_V_last_V, __xlx_apatb_param_AM_out_V_id_V, __xlx_apatb_param_AM_out_V_dest_V);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_test_data_stream_buf_final_size = __xlx_apatb_param_test_data_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_test_data_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_test_data_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_test_data_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_test_data_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_test_data_V_user_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_test_data_V_last_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_test_data_V_id_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_test_data_V_dest_V, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_test_data_stream_buf_final_size; ++i) {
  std::string s;
s = formatData((unsigned char*)(__xlx_apatb_param_test_data_V_data_V_stream_buf.data()+i), 32);
aesl_fh.write(AUTOTB_TVIN_test_data_V_data_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_data_V_keep_V_stream_buf.data()+i), 4);
aesl_fh.write(AUTOTB_TVIN_test_data_V_keep_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_data_V_strb_V_stream_buf.data()+i), 4);
aesl_fh.write(AUTOTB_TVIN_test_data_V_strb_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_data_V_user_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_test_data_V_user_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_data_V_last_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_test_data_V_last_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_data_V_id_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_test_data_V_id_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_data_V_dest_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_test_data_V_dest_V, s);
}
tcl_file.set_num(__xlx_apatb_param_test_data_stream_buf_final_size, &tcl_file.test_data_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_test_data_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_data_stream_buf_final_size, &tcl_file.test_data_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_test_data_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_data_stream_buf_final_size, &tcl_file.test_data_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_test_data_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_data_stream_buf_final_size, &tcl_file.test_data_V_user_V_depth);
aesl_fh.write(AUTOTB_TVIN_test_data_V_user_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_data_stream_buf_final_size, &tcl_file.test_data_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_test_data_V_last_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_data_stream_buf_final_size, &tcl_file.test_data_V_id_V_depth);
aesl_fh.write(AUTOTB_TVIN_test_data_V_id_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_data_stream_buf_final_size, &tcl_file.test_data_V_dest_V_depth);
aesl_fh.write(AUTOTB_TVIN_test_data_V_dest_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_test_data_stream_buf_final_size > 0) {
  long test_data_V_data_V_stream_ingress_size = __xlx_apatb_param_test_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_test_data_stream_buf_final_size; j != e; j++) {
    test_data_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long test_data_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_test_data_stream_buf_final_size > 0) {
  long test_data_V_keep_V_stream_ingress_size = __xlx_apatb_param_test_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_test_data_stream_buf_final_size; j != e; j++) {
    test_data_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long test_data_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_test_data_stream_buf_final_size > 0) {
  long test_data_V_strb_V_stream_ingress_size = __xlx_apatb_param_test_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_test_data_stream_buf_final_size; j != e; j++) {
    test_data_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long test_data_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_user_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_test_data_stream_buf_final_size > 0) {
  long test_data_V_user_V_stream_ingress_size = __xlx_apatb_param_test_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_test_data_stream_buf_final_size; j != e; j++) {
    test_data_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long test_data_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_user_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_user_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_test_data_stream_buf_final_size > 0) {
  long test_data_V_last_V_stream_ingress_size = __xlx_apatb_param_test_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_test_data_stream_buf_final_size; j != e; j++) {
    test_data_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long test_data_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_last_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_id_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_test_data_stream_buf_final_size > 0) {
  long test_data_V_id_V_stream_ingress_size = __xlx_apatb_param_test_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_test_data_stream_buf_final_size; j != e; j++) {
    test_data_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long test_data_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_id_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_id_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_dest_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_test_data_stream_buf_final_size > 0) {
  long test_data_V_dest_V_stream_ingress_size = __xlx_apatb_param_test_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_test_data_stream_buf_final_size; j != e; j++) {
    test_data_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long test_data_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", test_data_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_dest_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_test_data_V_dest_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_user_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_user_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_user_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_id_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_id_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_id_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_dest_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_dest_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_test_data_V_dest_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_test_label_out_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_test_label_out_V_data_V)->size() - __xlx_apatb_param_test_label_out_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_test_label_out_V_data_V)->empty())
    __xlx_apatb_param_test_label_out_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_test_label_out_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_label_out_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_test_label_out_V_data_V)->write(__xlx_apatb_param_test_label_out_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_keep_V)->empty())
    __xlx_apatb_param_test_label_out_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_label_out_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_keep_V)->write(__xlx_apatb_param_test_label_out_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_strb_V)->empty())
    __xlx_apatb_param_test_label_out_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_label_out_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_strb_V)->write(__xlx_apatb_param_test_label_out_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_user_V)->empty())
    __xlx_apatb_param_test_label_out_V_user_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_user_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_label_out_V_user_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_user_V)->write(__xlx_apatb_param_test_label_out_V_user_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_last_V)->empty())
    __xlx_apatb_param_test_label_out_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_label_out_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_last_V)->write(__xlx_apatb_param_test_label_out_V_last_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_id_V)->empty())
    __xlx_apatb_param_test_label_out_V_id_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_id_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_label_out_V_id_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_id_V)->write(__xlx_apatb_param_test_label_out_V_id_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_dest_V)->empty())
    __xlx_apatb_param_test_label_out_V_dest_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_dest_V)->read());
  for (int i = 0; i < __xlx_apatb_param_test_label_out_V_dest_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_dest_V)->write(__xlx_apatb_param_test_label_out_V_dest_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_user_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_last_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_id_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_dest_V, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_test_label_out_stream_buf_final_size; ++i) {
  std::string s;
s = formatData((unsigned char*)(__xlx_apatb_param_test_label_out_V_data_V_stream_buf.data()+__xlx_apatb_param_test_label_out_stream_buf_size+i), 32);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_data_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_label_out_V_keep_V_stream_buf.data()+__xlx_apatb_param_test_label_out_stream_buf_size+i), 4);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_keep_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_label_out_V_strb_V_stream_buf.data()+__xlx_apatb_param_test_label_out_stream_buf_size+i), 4);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_strb_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_label_out_V_user_V_stream_buf.data()+__xlx_apatb_param_test_label_out_stream_buf_size+i), 1);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_user_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_label_out_V_last_V_stream_buf.data()+__xlx_apatb_param_test_label_out_stream_buf_size+i), 1);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_last_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_label_out_V_id_V_stream_buf.data()+__xlx_apatb_param_test_label_out_stream_buf_size+i), 1);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_id_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_test_label_out_V_dest_V_stream_buf.data()+__xlx_apatb_param_test_label_out_stream_buf_size+i), 1);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_dest_V, s);
}
tcl_file.set_num(__xlx_apatb_param_test_label_out_stream_buf_final_size, &tcl_file.test_label_out_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_label_out_stream_buf_final_size, &tcl_file.test_label_out_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_label_out_stream_buf_final_size, &tcl_file.test_label_out_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_label_out_stream_buf_final_size, &tcl_file.test_label_out_V_user_V_depth);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_user_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_label_out_stream_buf_final_size, &tcl_file.test_label_out_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_last_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_label_out_stream_buf_final_size, &tcl_file.test_label_out_V_id_V_depth);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_id_V, end_str());
tcl_file.set_num(__xlx_apatb_param_test_label_out_stream_buf_final_size, &tcl_file.test_label_out_V_dest_V_depth);
aesl_fh.write(AUTOTB_TVOUT_test_label_out_V_dest_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_label_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_label_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_label_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_user_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_label_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_user_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_user_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_label_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_id_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_label_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_id_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_id_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_dest_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_test_label_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_dest_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_test_label_out_V_dest_V, end_str());
}
long __xlx_apatb_param_IM_stream_buf_final_size = __xlx_apatb_param_IM_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_IM_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_IM_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_IM_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_IM_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_IM_V_user_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_IM_V_last_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_IM_V_id_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_IM_V_dest_V, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_IM_stream_buf_final_size; ++i) {
  std::string s;
s = formatData((unsigned char*)(__xlx_apatb_param_IM_V_data_V_stream_buf.data()+i), 32);
aesl_fh.write(AUTOTB_TVIN_IM_V_data_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_IM_V_keep_V_stream_buf.data()+i), 4);
aesl_fh.write(AUTOTB_TVIN_IM_V_keep_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_IM_V_strb_V_stream_buf.data()+i), 4);
aesl_fh.write(AUTOTB_TVIN_IM_V_strb_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_IM_V_user_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_IM_V_user_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_IM_V_last_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_IM_V_last_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_IM_V_id_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_IM_V_id_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_IM_V_dest_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_IM_V_dest_V, s);
}
tcl_file.set_num(__xlx_apatb_param_IM_stream_buf_final_size, &tcl_file.IM_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_IM_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_IM_stream_buf_final_size, &tcl_file.IM_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_IM_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_IM_stream_buf_final_size, &tcl_file.IM_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_IM_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_IM_stream_buf_final_size, &tcl_file.IM_V_user_V_depth);
aesl_fh.write(AUTOTB_TVIN_IM_V_user_V, end_str());
tcl_file.set_num(__xlx_apatb_param_IM_stream_buf_final_size, &tcl_file.IM_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_IM_V_last_V, end_str());
tcl_file.set_num(__xlx_apatb_param_IM_stream_buf_final_size, &tcl_file.IM_V_id_V_depth);
aesl_fh.write(AUTOTB_TVIN_IM_V_id_V, end_str());
tcl_file.set_num(__xlx_apatb_param_IM_stream_buf_final_size, &tcl_file.IM_V_dest_V_depth);
aesl_fh.write(AUTOTB_TVIN_IM_V_dest_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_IM_stream_buf_final_size > 0) {
  long IM_V_data_V_stream_ingress_size = __xlx_apatb_param_IM_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_IM_stream_buf_final_size; j != e; j++) {
    IM_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long IM_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_IM_stream_buf_final_size > 0) {
  long IM_V_keep_V_stream_ingress_size = __xlx_apatb_param_IM_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_IM_stream_buf_final_size; j != e; j++) {
    IM_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long IM_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_IM_stream_buf_final_size > 0) {
  long IM_V_strb_V_stream_ingress_size = __xlx_apatb_param_IM_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_IM_stream_buf_final_size; j != e; j++) {
    IM_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long IM_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_user_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_IM_stream_buf_final_size > 0) {
  long IM_V_user_V_stream_ingress_size = __xlx_apatb_param_IM_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_IM_stream_buf_final_size; j != e; j++) {
    IM_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long IM_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_user_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_user_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_IM_stream_buf_final_size > 0) {
  long IM_V_last_V_stream_ingress_size = __xlx_apatb_param_IM_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_IM_stream_buf_final_size; j != e; j++) {
    IM_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long IM_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_last_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_id_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_IM_stream_buf_final_size > 0) {
  long IM_V_id_V_stream_ingress_size = __xlx_apatb_param_IM_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_IM_stream_buf_final_size; j != e; j++) {
    IM_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long IM_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_id_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_id_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_dest_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_IM_stream_buf_final_size > 0) {
  long IM_V_dest_V_stream_ingress_size = __xlx_apatb_param_IM_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_IM_stream_buf_final_size; j != e; j++) {
    IM_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long IM_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", IM_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_dest_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_IM_V_dest_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_IM_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_IM_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_IM_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_user_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_IM_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_user_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_user_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_IM_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_id_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_IM_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_id_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_id_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_dest_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_IM_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_dest_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_IM_V_dest_V, end_str());
}
long __xlx_apatb_param_AM_out_stream_buf_final_size = __xlx_apatb_param_AM_out_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_AM_out_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_AM_out_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_AM_out_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_AM_out_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_AM_out_V_user_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_AM_out_V_last_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_AM_out_V_id_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_AM_out_V_dest_V, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_AM_out_stream_buf_final_size; ++i) {
  std::string s;
s = formatData((unsigned char*)(__xlx_apatb_param_AM_out_V_data_V_stream_buf.data()+i), 32);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_data_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_AM_out_V_keep_V_stream_buf.data()+i), 4);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_keep_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_AM_out_V_strb_V_stream_buf.data()+i), 4);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_strb_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_AM_out_V_user_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_user_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_AM_out_V_last_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_last_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_AM_out_V_id_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_id_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_AM_out_V_dest_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_dest_V, s);
}
tcl_file.set_num(__xlx_apatb_param_AM_out_stream_buf_final_size, &tcl_file.AM_out_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_AM_out_stream_buf_final_size, &tcl_file.AM_out_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_AM_out_stream_buf_final_size, &tcl_file.AM_out_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_AM_out_stream_buf_final_size, &tcl_file.AM_out_V_user_V_depth);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_user_V, end_str());
tcl_file.set_num(__xlx_apatb_param_AM_out_stream_buf_final_size, &tcl_file.AM_out_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_last_V, end_str());
tcl_file.set_num(__xlx_apatb_param_AM_out_stream_buf_final_size, &tcl_file.AM_out_V_id_V_depth);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_id_V, end_str());
tcl_file.set_num(__xlx_apatb_param_AM_out_stream_buf_final_size, &tcl_file.AM_out_V_dest_V_depth);
aesl_fh.write(AUTOTB_TVIN_AM_out_V_dest_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_AM_out_stream_buf_final_size > 0) {
  long AM_out_V_data_V_stream_ingress_size = __xlx_apatb_param_AM_out_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_AM_out_stream_buf_final_size; j != e; j++) {
    AM_out_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long AM_out_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_AM_out_stream_buf_final_size > 0) {
  long AM_out_V_keep_V_stream_ingress_size = __xlx_apatb_param_AM_out_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_AM_out_stream_buf_final_size; j != e; j++) {
    AM_out_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long AM_out_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_AM_out_stream_buf_final_size > 0) {
  long AM_out_V_strb_V_stream_ingress_size = __xlx_apatb_param_AM_out_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_AM_out_stream_buf_final_size; j != e; j++) {
    AM_out_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long AM_out_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_user_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_AM_out_stream_buf_final_size > 0) {
  long AM_out_V_user_V_stream_ingress_size = __xlx_apatb_param_AM_out_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_AM_out_stream_buf_final_size; j != e; j++) {
    AM_out_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long AM_out_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_user_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_user_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_AM_out_stream_buf_final_size > 0) {
  long AM_out_V_last_V_stream_ingress_size = __xlx_apatb_param_AM_out_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_AM_out_stream_buf_final_size; j != e; j++) {
    AM_out_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long AM_out_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_last_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_id_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_AM_out_stream_buf_final_size > 0) {
  long AM_out_V_id_V_stream_ingress_size = __xlx_apatb_param_AM_out_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_AM_out_stream_buf_final_size; j != e; j++) {
    AM_out_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long AM_out_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_id_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_id_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_dest_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_AM_out_stream_buf_final_size > 0) {
  long AM_out_V_dest_V_stream_ingress_size = __xlx_apatb_param_AM_out_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_AM_out_stream_buf_final_size; j != e; j++) {
    AM_out_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long AM_out_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", AM_out_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_dest_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_AM_out_V_dest_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_AM_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_AM_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_AM_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_user_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_AM_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_user_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_user_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_AM_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_id_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_AM_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_id_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_id_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_dest_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_AM_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_dest_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_AM_out_V_dest_V, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
