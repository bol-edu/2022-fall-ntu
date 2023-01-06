; ModuleID = 'C:/Users/kevin/Desktop/AAHLS_Final_Project_deploy/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>" = type { %"struct.hls::axis<ap_int<32>, 1, 1, 1>" }
%"struct.hls::axis<ap_int<32>, 1, 1, 1>" = type { %"struct.ap_int<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_hdc_maxi_ir(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias nonnull %test_data, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias nonnull %test_label_out, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias nonnull %IM, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias nonnull %AM_out) local_unnamed_addr #0 {
entry:
  %test_data_copy.data = alloca i32
  %test_data_copy.keep = alloca i4
  %test_data_copy.strb = alloca i4
  %test_data_copy.user = alloca i1
  %test_data_copy.last = alloca i1
  %test_data_copy.id = alloca i1
  %test_data_copy.dest = alloca i1
  %test_label_out_copy.data = alloca i32
  %test_label_out_copy.keep = alloca i4
  %test_label_out_copy.strb = alloca i4
  %test_label_out_copy.user = alloca i1
  %test_label_out_copy.last = alloca i1
  %test_label_out_copy.id = alloca i1
  %test_label_out_copy.dest = alloca i1
  %IM_copy.data = alloca i32
  %IM_copy.keep = alloca i4
  %IM_copy.strb = alloca i4
  %IM_copy.user = alloca i1
  %IM_copy.last = alloca i1
  %IM_copy.id = alloca i1
  %IM_copy.dest = alloca i1
  %AM_out_copy.data = alloca i32
  %AM_out_copy.keep = alloca i4
  %AM_out_copy.strb = alloca i4
  %AM_out_copy.user = alloca i1
  %AM_out_copy.last = alloca i1
  %AM_out_copy.id = alloca i1
  %AM_out_copy.dest = alloca i1
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* nonnull %test_data, i32* %test_data_copy.data, i4* %test_data_copy.keep, i4* %test_data_copy.strb, i1* %test_data_copy.user, i1* %test_data_copy.last, i1* %test_data_copy.id, i1* %test_data_copy.dest, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* nonnull %test_label_out, i32* %test_label_out_copy.data, i4* %test_label_out_copy.keep, i4* %test_label_out_copy.strb, i1* %test_label_out_copy.user, i1* %test_label_out_copy.last, i1* %test_label_out_copy.id, i1* %test_label_out_copy.dest, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* nonnull %IM, i32* %IM_copy.data, i4* %IM_copy.keep, i4* %IM_copy.strb, i1* %IM_copy.user, i1* %IM_copy.last, i1* %IM_copy.id, i1* %IM_copy.dest, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* nonnull %AM_out, i32* %AM_out_copy.data, i4* %AM_out_copy.keep, i4* %AM_out_copy.strb, i1* %AM_out_copy.user, i1* %AM_out_copy.last, i1* %AM_out_copy.id, i1* %AM_out_copy.dest)
  call void @apatb_hdc_maxi_hw(i32* %test_data_copy.data, i4* %test_data_copy.keep, i4* %test_data_copy.strb, i1* %test_data_copy.user, i1* %test_data_copy.last, i1* %test_data_copy.id, i1* %test_data_copy.dest, i32* %test_label_out_copy.data, i4* %test_label_out_copy.keep, i4* %test_label_out_copy.strb, i1* %test_label_out_copy.user, i1* %test_label_out_copy.last, i1* %test_label_out_copy.id, i1* %test_label_out_copy.dest, i32* %IM_copy.data, i4* %IM_copy.keep, i4* %IM_copy.strb, i1* %IM_copy.user, i1* %IM_copy.last, i1* %IM_copy.id, i1* %IM_copy.dest, i32* %AM_out_copy.data, i4* %AM_out_copy.keep, i4* %AM_out_copy.strb, i1* %AM_out_copy.user, i1* %AM_out_copy.last, i1* %AM_out_copy.id, i1* %AM_out_copy.dest)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %test_data, i32* %test_data_copy.data, i4* %test_data_copy.keep, i4* %test_data_copy.strb, i1* %test_data_copy.user, i1* %test_data_copy.last, i1* %test_data_copy.id, i1* %test_data_copy.dest, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %test_label_out, i32* %test_label_out_copy.data, i4* %test_label_out_copy.keep, i4* %test_label_out_copy.strb, i1* %test_label_out_copy.user, i1* %test_label_out_copy.last, i1* %test_label_out_copy.id, i1* %test_label_out_copy.dest, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %IM, i32* %IM_copy.data, i4* %IM_copy.keep, i4* %IM_copy.strb, i1* %IM_copy.user, i1* %IM_copy.last, i1* %IM_copy.id, i1* %IM_copy.dest, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %AM_out, i32* %AM_out_copy.data, i4* %AM_out_copy.keep, i4* %AM_out_copy.strb, i1* %AM_out_copy.user, i1* %AM_out_copy.last, i1* %AM_out_copy.id, i1* %AM_out_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.0" %_V_data_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.1" %_V_keep_V3, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.3" %_V_user_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.4" %_V_last_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.5" %_V_id_V7, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.6" %_V_dest_V8, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.0" %_V_data_V18, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.1" %_V_keep_V29, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.2" %_V_strb_V310, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.3" %_V_user_V411, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.4" %_V_last_V512, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.5" %_V_id_V613, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.6" %_V_dest_V714) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>.12"(i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>.12"(i32* %_V_data_V1, i4* %_V_keep_V2, i4* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>.12"(i32* %_V_data_V2, i4* %_V_keep_V3, i4* %_V_strb_V4, i1* %_V_user_V5, i1* %_V_last_V6, i1* %_V_id_V7, i1* %_V_dest_V8, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>.12"(i32* %_V_data_V18, i4* %_V_keep_V29, i4* %_V_strb_V310, i1* %_V_user_V411, i1* %_V_last_V512, i1* %_V_id_V613, i1* %_V_dest_V714, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %3)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.0" %_V_data_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.1" %_V_keep_V3, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.3" %_V_user_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.4" %_V_last_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.5" %_V_id_V7, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.6" %_V_dest_V8, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.0" %_V_data_V18, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.1" %_V_keep_V29, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.2" %_V_strb_V310, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.3" %_V_user_V411, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.4" %_V_last_V512, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.5" %_V_id_V613, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.6" %_V_dest_V714) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32* %_V_data_V1, i4* %_V_keep_V2, i4* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %2, i32* %_V_data_V2, i4* %_V_keep_V3, i4* %_V_strb_V4, i1* %_V_user_V5, i1* %_V_last_V6, i1* %_V_id_V7, i1* %_V_dest_V8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %3, i32* %_V_data_V18, i4* %_V_keep_V29, i4* %_V_strb_V310, i1* %_V_user_V411, i1* %_V_last_V512, i1* %_V_id_V613, i1* %_V_dest_V714)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>.7"(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* nonnull align 512 %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>.7"(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i32* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_4(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i32* %2 to i8*
  %12 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %11, i8* %12)
  %13 = load volatile i32, i32* %2
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %15 = bitcast %"struct.ap_int<32>"* %14 to i32*
  store i32 %13, i32* %15
  %16 = bitcast i4* %4 to i8*
  %17 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i4* %4 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i4
  %21 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %22 = bitcast %"struct.ap_uint<4>"* %21 to i4*
  store i4 %20, i4* %22
  %23 = bitcast i4* %3 to i8*
  %24 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i4* %3 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i4
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %29 = bitcast %"struct.ap_uint<4>"* %28 to i4*
  store i4 %27, i4* %29
  %30 = bitcast i1* %8 to i8*
  %31 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %30, i8* %31)
  %32 = bitcast i1* %8 to i8*
  %33 = load i8, i8* %32
  %34 = trunc i8 %33 to i1
  %35 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %36 = bitcast %"struct.ap_uint<1>"* %35 to i1*
  store i1 %34, i1* %36
  %37 = bitcast i1* %7 to i8*
  %38 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %37, i8* %38)
  %39 = bitcast i1* %7 to i8*
  %40 = load i8, i8* %39
  %41 = trunc i8 %40 to i1
  %42 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %43 = bitcast %"struct.ap_uint<1>"* %42 to i1*
  store i1 %41, i1* %43
  %44 = bitcast i1* %6 to i8*
  %45 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %44, i8* %45)
  %46 = bitcast i1* %6 to i8*
  %47 = load i8, i8* %46
  %48 = trunc i8 %47 to i1
  %49 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %50 = bitcast %"struct.ap_uint<1>"* %49 to i1*
  store i1 %48, i1* %50
  %51 = bitcast i1* %5 to i8*
  %52 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %51, i8* %52)
  %53 = bitcast i1* %5 to i8*
  %54 = load i8, i8* %53
  %55 = trunc i8 %54 to i1
  %56 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %57 = bitcast %"struct.ap_uint<1>"* %56 to i1*
  store i1 %55, i1* %57
  %58 = bitcast %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1 to i8*
  %59 = bitcast %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %58, i8* %59)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>.12"(i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>.15"(i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>.15"(i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>" %7, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_int<32>"* %8 to i32*
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<4>"* %12 to i4*
  %14 = bitcast i4* %13 to i8*
  %15 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<4>"* %16 to i4*
  %18 = bitcast i4* %17 to i8*
  %19 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %"struct.ap_uint<1>"* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  %30 = bitcast i1* %29 to i8*
  %31 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %30, i8* %31)
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  %34 = bitcast i1* %33 to i8*
  %35 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %34, i8* %35)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_hdc_maxi_hw(i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32*, i4*, i4*, i1*, i1*, i1*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.0" %_V_data_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.1" %_V_keep_V3, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.3" %_V_user_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.4" %_V_last_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.5" %_V_id_V7, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="17.6" %_V_dest_V8, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.0" %_V_data_V18, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.1" %_V_keep_V29, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.2" %_V_strb_V310, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.3" %_V_user_V411, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.4" %_V_last_V512, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.5" %_V_id_V613, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.6" %_V_dest_V714) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %1, i32* %_V_data_V1, i4* %_V_keep_V2, i4* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %2, i32* %_V_data_V2, i4* %_V_keep_V3, i4* %_V_strb_V4, i1* %_V_user_V5, i1* %_V_last_V6, i1* %_V_id_V7, i1* %_V_dest_V8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %3, i32* %_V_data_V18, i4* %_V_keep_V29, i4* %_V_strb_V310, i1* %_V_user_V411, i1* %_V_last_V512, i1* %_V_id_V613, i1* %_V_dest_V714)
  ret void
}

define void @hdc_maxi_hw_stub_wrapper(i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32*, i4*, i4*, i1*, i1*, i1*, i1*) #5 {
entry:
  %28 = alloca %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"
  %29 = alloca %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"
  %30 = alloca %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"
  %31 = alloca %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %28, i32* %0, i4* %1, i4* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %29, i32* %7, i4* %8, i4* %9, i1* %10, i1* %11, i1* %12, i1* %13, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %30, i32* %14, i4* %15, i4* %16, i1* %17, i1* %18, i1* %19, i1* %20, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %31, i32* %21, i4* %22, i4* %23, i1* %24, i1* %25, i1* %26, i1* %27)
  call void @hdc_maxi_hw_stub(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %28, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %29, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %30, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %31)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %28, i32* %0, i4* %1, i4* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %29, i32* %7, i4* %8, i4* %9, i1* %10, i1* %11, i1* %12, i1* %13, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %30, i32* %14, i4* %15, i4* %16, i1* %17, i1* %18, i1* %19, i1* %20, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"* %31, i32* %21, i4* %22, i4* %23, i1* %24, i1* %25, i1* %26, i1* %27)
  ret void
}

declare void @hdc_maxi_hw_stub(%"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"*, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"*, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"*, %"class.hls::stream<hls::axis<ap_int<32>, 1, 1, 1>, 0>"*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
