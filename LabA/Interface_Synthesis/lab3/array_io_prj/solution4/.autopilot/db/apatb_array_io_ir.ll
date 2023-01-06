; ModuleID = 'C:/Users/User/Documents/HLS/LabA/lab3/array_io_prj/solution4/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_array_io_ir(i16* noalias nocapture nonnull "fpga.decayed.dim.hint"="32" %d_o, i16* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32" %d_i) local_unnamed_addr #0 {
entry:
  %d_o_copy_0 = alloca i16, align 512
  %d_o_copy_1 = alloca i16, align 512
  %d_o_copy_2 = alloca i16, align 512
  %d_o_copy_3 = alloca i16, align 512
  %d_o_copy_4 = alloca i16, align 512
  %d_o_copy_5 = alloca i16, align 512
  %d_o_copy_6 = alloca i16, align 512
  %d_o_copy_7 = alloca i16, align 512
  %d_o_copy_8 = alloca i16, align 512
  %d_o_copy_9 = alloca i16, align 512
  %d_o_copy_10 = alloca i16, align 512
  %d_o_copy_11 = alloca i16, align 512
  %d_o_copy_12 = alloca i16, align 512
  %d_o_copy_13 = alloca i16, align 512
  %d_o_copy_14 = alloca i16, align 512
  %d_o_copy_15 = alloca i16, align 512
  %d_o_copy_16 = alloca i16, align 512
  %d_o_copy_17 = alloca i16, align 512
  %d_o_copy_18 = alloca i16, align 512
  %d_o_copy_19 = alloca i16, align 512
  %d_o_copy_20 = alloca i16, align 512
  %d_o_copy_21 = alloca i16, align 512
  %d_o_copy_22 = alloca i16, align 512
  %d_o_copy_23 = alloca i16, align 512
  %d_o_copy_24 = alloca i16, align 512
  %d_o_copy_25 = alloca i16, align 512
  %d_o_copy_26 = alloca i16, align 512
  %d_o_copy_27 = alloca i16, align 512
  %d_o_copy_28 = alloca i16, align 512
  %d_o_copy_29 = alloca i16, align 512
  %d_o_copy_30 = alloca i16, align 512
  %d_o_copy_31 = alloca i16, align 512
  %d_i_copy_0 = alloca i16, align 512
  %d_i_copy_1 = alloca i16, align 512
  %d_i_copy_2 = alloca i16, align 512
  %d_i_copy_3 = alloca i16, align 512
  %d_i_copy_4 = alloca i16, align 512
  %d_i_copy_5 = alloca i16, align 512
  %d_i_copy_6 = alloca i16, align 512
  %d_i_copy_7 = alloca i16, align 512
  %d_i_copy_8 = alloca i16, align 512
  %d_i_copy_9 = alloca i16, align 512
  %d_i_copy_10 = alloca i16, align 512
  %d_i_copy_11 = alloca i16, align 512
  %d_i_copy_12 = alloca i16, align 512
  %d_i_copy_13 = alloca i16, align 512
  %d_i_copy_14 = alloca i16, align 512
  %d_i_copy_15 = alloca i16, align 512
  %d_i_copy_16 = alloca i16, align 512
  %d_i_copy_17 = alloca i16, align 512
  %d_i_copy_18 = alloca i16, align 512
  %d_i_copy_19 = alloca i16, align 512
  %d_i_copy_20 = alloca i16, align 512
  %d_i_copy_21 = alloca i16, align 512
  %d_i_copy_22 = alloca i16, align 512
  %d_i_copy_23 = alloca i16, align 512
  %d_i_copy_24 = alloca i16, align 512
  %d_i_copy_25 = alloca i16, align 512
  %d_i_copy_26 = alloca i16, align 512
  %d_i_copy_27 = alloca i16, align 512
  %d_i_copy_28 = alloca i16, align 512
  %d_i_copy_29 = alloca i16, align 512
  %d_i_copy_30 = alloca i16, align 512
  %d_i_copy_31 = alloca i16, align 512
  %0 = bitcast i16* %d_o to [32 x i16]*
  %1 = bitcast i16* %d_i to [32 x i16]*
  call void @copy_in([32 x i16]* nonnull %0, i16* nonnull align 512 %d_o_copy_0, i16* nonnull align 512 %d_o_copy_1, i16* nonnull align 512 %d_o_copy_2, i16* nonnull align 512 %d_o_copy_3, i16* nonnull align 512 %d_o_copy_4, i16* nonnull align 512 %d_o_copy_5, i16* nonnull align 512 %d_o_copy_6, i16* nonnull align 512 %d_o_copy_7, i16* nonnull align 512 %d_o_copy_8, i16* nonnull align 512 %d_o_copy_9, i16* nonnull align 512 %d_o_copy_10, i16* nonnull align 512 %d_o_copy_11, i16* nonnull align 512 %d_o_copy_12, i16* nonnull align 512 %d_o_copy_13, i16* nonnull align 512 %d_o_copy_14, i16* nonnull align 512 %d_o_copy_15, i16* nonnull align 512 %d_o_copy_16, i16* nonnull align 512 %d_o_copy_17, i16* nonnull align 512 %d_o_copy_18, i16* nonnull align 512 %d_o_copy_19, i16* nonnull align 512 %d_o_copy_20, i16* nonnull align 512 %d_o_copy_21, i16* nonnull align 512 %d_o_copy_22, i16* nonnull align 512 %d_o_copy_23, i16* nonnull align 512 %d_o_copy_24, i16* nonnull align 512 %d_o_copy_25, i16* nonnull align 512 %d_o_copy_26, i16* nonnull align 512 %d_o_copy_27, i16* nonnull align 512 %d_o_copy_28, i16* nonnull align 512 %d_o_copy_29, i16* nonnull align 512 %d_o_copy_30, i16* nonnull align 512 %d_o_copy_31, [32 x i16]* nonnull %1, i16* nonnull align 512 %d_i_copy_0, i16* nonnull align 512 %d_i_copy_1, i16* nonnull align 512 %d_i_copy_2, i16* nonnull align 512 %d_i_copy_3, i16* nonnull align 512 %d_i_copy_4, i16* nonnull align 512 %d_i_copy_5, i16* nonnull align 512 %d_i_copy_6, i16* nonnull align 512 %d_i_copy_7, i16* nonnull align 512 %d_i_copy_8, i16* nonnull align 512 %d_i_copy_9, i16* nonnull align 512 %d_i_copy_10, i16* nonnull align 512 %d_i_copy_11, i16* nonnull align 512 %d_i_copy_12, i16* nonnull align 512 %d_i_copy_13, i16* nonnull align 512 %d_i_copy_14, i16* nonnull align 512 %d_i_copy_15, i16* nonnull align 512 %d_i_copy_16, i16* nonnull align 512 %d_i_copy_17, i16* nonnull align 512 %d_i_copy_18, i16* nonnull align 512 %d_i_copy_19, i16* nonnull align 512 %d_i_copy_20, i16* nonnull align 512 %d_i_copy_21, i16* nonnull align 512 %d_i_copy_22, i16* nonnull align 512 %d_i_copy_23, i16* nonnull align 512 %d_i_copy_24, i16* nonnull align 512 %d_i_copy_25, i16* nonnull align 512 %d_i_copy_26, i16* nonnull align 512 %d_i_copy_27, i16* nonnull align 512 %d_i_copy_28, i16* nonnull align 512 %d_i_copy_29, i16* nonnull align 512 %d_i_copy_30, i16* nonnull align 512 %d_i_copy_31)
  call void @apatb_array_io_hw(i16* %d_o_copy_0, i16* %d_o_copy_1, i16* %d_o_copy_2, i16* %d_o_copy_3, i16* %d_o_copy_4, i16* %d_o_copy_5, i16* %d_o_copy_6, i16* %d_o_copy_7, i16* %d_o_copy_8, i16* %d_o_copy_9, i16* %d_o_copy_10, i16* %d_o_copy_11, i16* %d_o_copy_12, i16* %d_o_copy_13, i16* %d_o_copy_14, i16* %d_o_copy_15, i16* %d_o_copy_16, i16* %d_o_copy_17, i16* %d_o_copy_18, i16* %d_o_copy_19, i16* %d_o_copy_20, i16* %d_o_copy_21, i16* %d_o_copy_22, i16* %d_o_copy_23, i16* %d_o_copy_24, i16* %d_o_copy_25, i16* %d_o_copy_26, i16* %d_o_copy_27, i16* %d_o_copy_28, i16* %d_o_copy_29, i16* %d_o_copy_30, i16* %d_o_copy_31, i16* %d_i_copy_0, i16* %d_i_copy_1, i16* %d_i_copy_2, i16* %d_i_copy_3, i16* %d_i_copy_4, i16* %d_i_copy_5, i16* %d_i_copy_6, i16* %d_i_copy_7, i16* %d_i_copy_8, i16* %d_i_copy_9, i16* %d_i_copy_10, i16* %d_i_copy_11, i16* %d_i_copy_12, i16* %d_i_copy_13, i16* %d_i_copy_14, i16* %d_i_copy_15, i16* %d_i_copy_16, i16* %d_i_copy_17, i16* %d_i_copy_18, i16* %d_i_copy_19, i16* %d_i_copy_20, i16* %d_i_copy_21, i16* %d_i_copy_22, i16* %d_i_copy_23, i16* %d_i_copy_24, i16* %d_i_copy_25, i16* %d_i_copy_26, i16* %d_i_copy_27, i16* %d_i_copy_28, i16* %d_i_copy_29, i16* %d_i_copy_30, i16* %d_i_copy_31)
  call void @copy_back([32 x i16]* %0, i16* %d_o_copy_0, i16* %d_o_copy_1, i16* %d_o_copy_2, i16* %d_o_copy_3, i16* %d_o_copy_4, i16* %d_o_copy_5, i16* %d_o_copy_6, i16* %d_o_copy_7, i16* %d_o_copy_8, i16* %d_o_copy_9, i16* %d_o_copy_10, i16* %d_o_copy_11, i16* %d_o_copy_12, i16* %d_o_copy_13, i16* %d_o_copy_14, i16* %d_o_copy_15, i16* %d_o_copy_16, i16* %d_o_copy_17, i16* %d_o_copy_18, i16* %d_o_copy_19, i16* %d_o_copy_20, i16* %d_o_copy_21, i16* %d_o_copy_22, i16* %d_o_copy_23, i16* %d_o_copy_24, i16* %d_o_copy_25, i16* %d_o_copy_26, i16* %d_o_copy_27, i16* %d_o_copy_28, i16* %d_o_copy_29, i16* %d_o_copy_30, i16* %d_o_copy_31, [32 x i16]* %1, i16* %d_i_copy_0, i16* %d_i_copy_1, i16* %d_i_copy_2, i16* %d_i_copy_3, i16* %d_i_copy_4, i16* %d_i_copy_5, i16* %d_i_copy_6, i16* %d_i_copy_7, i16* %d_i_copy_8, i16* %d_i_copy_9, i16* %d_i_copy_10, i16* %d_i_copy_11, i16* %d_i_copy_12, i16* %d_i_copy_13, i16* %d_i_copy_14, i16* %d_i_copy_15, i16* %d_i_copy_16, i16* %d_i_copy_17, i16* %d_i_copy_18, i16* %d_i_copy_19, i16* %d_i_copy_20, i16* %d_i_copy_21, i16* %d_i_copy_22, i16* %d_i_copy_23, i16* %d_i_copy_24, i16* %d_i_copy_25, i16* %d_i_copy_26, i16* %d_i_copy_27, i16* %d_i_copy_28, i16* %d_i_copy_29, i16* %d_i_copy_30, i16* %d_i_copy_31)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.3.4(i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_8, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_9, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_10, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_11, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_12, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_13, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_14, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_15, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_16, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_17, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_18, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_19, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_20, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_21, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_22, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_23, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_24, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_25, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_26, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_27, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_28, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_29, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_30, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_31, [32 x i16]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq i16* %_0, null
  %2 = icmp eq [32 x i16]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %4 = load i16, i16* %src.addr, align 2
  %5 = trunc i64 %for.loop.idx1 to i5
  switch i5 %5, label %dst.addr.case.31 [
    i5 0, label %dst.addr.case.0
    i5 1, label %dst.addr.case.1
    i5 2, label %dst.addr.case.2
    i5 3, label %dst.addr.case.3
    i5 4, label %dst.addr.case.4
    i5 5, label %dst.addr.case.5
    i5 6, label %dst.addr.case.6
    i5 7, label %dst.addr.case.7
    i5 8, label %dst.addr.case.8
    i5 9, label %dst.addr.case.9
    i5 10, label %dst.addr.case.10
    i5 11, label %dst.addr.case.11
    i5 12, label %dst.addr.case.12
    i5 13, label %dst.addr.case.13
    i5 14, label %dst.addr.case.14
    i5 15, label %dst.addr.case.15
    i5 -16, label %dst.addr.case.16
    i5 -15, label %dst.addr.case.17
    i5 -14, label %dst.addr.case.18
    i5 -13, label %dst.addr.case.19
    i5 -12, label %dst.addr.case.20
    i5 -11, label %dst.addr.case.21
    i5 -10, label %dst.addr.case.22
    i5 -9, label %dst.addr.case.23
    i5 -8, label %dst.addr.case.24
    i5 -7, label %dst.addr.case.25
    i5 -6, label %dst.addr.case.26
    i5 -5, label %dst.addr.case.27
    i5 -4, label %dst.addr.case.28
    i5 -3, label %dst.addr.case.29
    i5 -2, label %dst.addr.case.30
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i16 %4, i16* %_0, align 512
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i16 %4, i16* %_1, align 512
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store i16 %4, i16* %_2, align 512
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store i16 %4, i16* %_3, align 512
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  store i16 %4, i16* %_4, align 512
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  store i16 %4, i16* %_5, align 512
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store i16 %4, i16* %_6, align 512
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store i16 %4, i16* %_7, align 512
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  store i16 %4, i16* %_8, align 512
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  store i16 %4, i16* %_9, align 512
  br label %dst.addr.exit

dst.addr.case.10:                                 ; preds = %for.loop
  store i16 %4, i16* %_10, align 512
  br label %dst.addr.exit

dst.addr.case.11:                                 ; preds = %for.loop
  store i16 %4, i16* %_11, align 512
  br label %dst.addr.exit

dst.addr.case.12:                                 ; preds = %for.loop
  store i16 %4, i16* %_12, align 512
  br label %dst.addr.exit

dst.addr.case.13:                                 ; preds = %for.loop
  store i16 %4, i16* %_13, align 512
  br label %dst.addr.exit

dst.addr.case.14:                                 ; preds = %for.loop
  store i16 %4, i16* %_14, align 512
  br label %dst.addr.exit

dst.addr.case.15:                                 ; preds = %for.loop
  store i16 %4, i16* %_15, align 512
  br label %dst.addr.exit

dst.addr.case.16:                                 ; preds = %for.loop
  store i16 %4, i16* %_16, align 512
  br label %dst.addr.exit

dst.addr.case.17:                                 ; preds = %for.loop
  store i16 %4, i16* %_17, align 512
  br label %dst.addr.exit

dst.addr.case.18:                                 ; preds = %for.loop
  store i16 %4, i16* %_18, align 512
  br label %dst.addr.exit

dst.addr.case.19:                                 ; preds = %for.loop
  store i16 %4, i16* %_19, align 512
  br label %dst.addr.exit

dst.addr.case.20:                                 ; preds = %for.loop
  store i16 %4, i16* %_20, align 512
  br label %dst.addr.exit

dst.addr.case.21:                                 ; preds = %for.loop
  store i16 %4, i16* %_21, align 512
  br label %dst.addr.exit

dst.addr.case.22:                                 ; preds = %for.loop
  store i16 %4, i16* %_22, align 512
  br label %dst.addr.exit

dst.addr.case.23:                                 ; preds = %for.loop
  store i16 %4, i16* %_23, align 512
  br label %dst.addr.exit

dst.addr.case.24:                                 ; preds = %for.loop
  store i16 %4, i16* %_24, align 512
  br label %dst.addr.exit

dst.addr.case.25:                                 ; preds = %for.loop
  store i16 %4, i16* %_25, align 512
  br label %dst.addr.exit

dst.addr.case.26:                                 ; preds = %for.loop
  store i16 %4, i16* %_26, align 512
  br label %dst.addr.exit

dst.addr.case.27:                                 ; preds = %for.loop
  store i16 %4, i16* %_27, align 512
  br label %dst.addr.exit

dst.addr.case.28:                                 ; preds = %for.loop
  store i16 %4, i16* %_28, align 512
  br label %dst.addr.exit

dst.addr.case.29:                                 ; preds = %for.loop
  store i16 %4, i16* %_29, align 512
  br label %dst.addr.exit

dst.addr.case.30:                                 ; preds = %for.loop
  store i16 %4, i16* %_30, align 512
  br label %dst.addr.exit

dst.addr.case.31:                                 ; preds = %for.loop
  store i16 %4, i16* %_31, align 512
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.31, %dst.addr.case.30, %dst.addr.case.29, %dst.addr.case.28, %dst.addr.case.27, %dst.addr.case.26, %dst.addr.case.25, %dst.addr.case.24, %dst.addr.case.23, %dst.addr.case.22, %dst.addr.case.21, %dst.addr.case.20, %dst.addr.case.19, %dst.addr.case.18, %dst.addr.case.17, %dst.addr.case.16, %dst.addr.case.15, %dst.addr.case.14, %dst.addr.case.13, %dst.addr.case.12, %dst.addr.case.11, %dst.addr.case.10, %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([32 x i16]* noalias readonly "orig.arg.no"="0", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_16, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_17, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_18, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_19, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_20, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_21, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_22, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_23, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_24, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_25, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_26, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_27, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_28, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_29, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_30, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_31, [32 x i16]* noalias readonly "orig.arg.no"="2", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_110, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_211, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_312, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_413, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_514, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_615, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_716, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_817, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_918, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1019, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1120, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1221, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1322, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1423, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1524, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1625, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1726, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1827, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1928, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2029, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2130, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2231, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2332, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2433, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2534, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2635, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2736, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2837, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2938, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3039, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3140) #2 {
entry:
  call void @onebyonecpy_hls.p0a32i16.3.4(i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, i16* align 512 %_3, i16* align 512 %_4, i16* align 512 %_5, i16* align 512 %_6, i16* align 512 %_7, i16* align 512 %_8, i16* align 512 %_9, i16* align 512 %_10, i16* align 512 %_11, i16* align 512 %_12, i16* align 512 %_13, i16* align 512 %_14, i16* align 512 %_15, i16* align 512 %_16, i16* align 512 %_17, i16* align 512 %_18, i16* align 512 %_19, i16* align 512 %_20, i16* align 512 %_21, i16* align 512 %_22, i16* align 512 %_23, i16* align 512 %_24, i16* align 512 %_25, i16* align 512 %_26, i16* align 512 %_27, i16* align 512 %_28, i16* align 512 %_29, i16* align 512 %_30, i16* align 512 %_31, [32 x i16]* %0)
  call void @onebyonecpy_hls.p0a32i16.3.4(i16* align 512 %_01, i16* align 512 %_110, i16* align 512 %_211, i16* align 512 %_312, i16* align 512 %_413, i16* align 512 %_514, i16* align 512 %_615, i16* align 512 %_716, i16* align 512 %_817, i16* align 512 %_918, i16* align 512 %_1019, i16* align 512 %_1120, i16* align 512 %_1221, i16* align 512 %_1322, i16* align 512 %_1423, i16* align 512 %_1524, i16* align 512 %_1625, i16* align 512 %_1726, i16* align 512 %_1827, i16* align 512 %_1928, i16* align 512 %_2029, i16* align 512 %_2130, i16* align 512 %_2231, i16* align 512 %_2332, i16* align 512 %_2433, i16* align 512 %_2534, i16* align 512 %_2635, i16* align 512 %_2736, i16* align 512 %_2837, i16* align 512 %_2938, i16* align 512 %_3039, i16* align 512 %_3140, [32 x i16]* %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_16, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_17, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_18, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_19, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_20, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_21, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_22, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_23, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_24, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_25, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_26, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_27, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_28, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_29, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_30, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_31) #1 {
entry:
  %1 = icmp eq [32 x i16]* %0, null
  %2 = icmp eq i16* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %4 = trunc i64 %for.loop.idx1 to i5
  switch i5 %4, label %src.addr.case.31 [
    i5 0, label %src.addr.case.0
    i5 1, label %src.addr.case.1
    i5 2, label %src.addr.case.2
    i5 3, label %src.addr.case.3
    i5 4, label %src.addr.case.4
    i5 5, label %src.addr.case.5
    i5 6, label %src.addr.case.6
    i5 7, label %src.addr.case.7
    i5 8, label %src.addr.case.8
    i5 9, label %src.addr.case.9
    i5 10, label %src.addr.case.10
    i5 11, label %src.addr.case.11
    i5 12, label %src.addr.case.12
    i5 13, label %src.addr.case.13
    i5 14, label %src.addr.case.14
    i5 15, label %src.addr.case.15
    i5 -16, label %src.addr.case.16
    i5 -15, label %src.addr.case.17
    i5 -14, label %src.addr.case.18
    i5 -13, label %src.addr.case.19
    i5 -12, label %src.addr.case.20
    i5 -11, label %src.addr.case.21
    i5 -10, label %src.addr.case.22
    i5 -9, label %src.addr.case.23
    i5 -8, label %src.addr.case.24
    i5 -7, label %src.addr.case.25
    i5 -6, label %src.addr.case.26
    i5 -5, label %src.addr.case.27
    i5 -4, label %src.addr.case.28
    i5 -3, label %src.addr.case.29
    i5 -2, label %src.addr.case.30
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i16, i16* %_0, align 512
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_110 = load i16, i16* %_1, align 512
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_211 = load i16, i16* %_2, align 512
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_312 = load i16, i16* %_3, align 512
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %_413 = load i16, i16* %_4, align 512
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %_514 = load i16, i16* %_5, align 512
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_615 = load i16, i16* %_6, align 512
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_716 = load i16, i16* %_7, align 512
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  %_817 = load i16, i16* %_8, align 512
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  %_918 = load i16, i16* %_9, align 512
  br label %src.addr.exit

src.addr.case.10:                                 ; preds = %for.loop
  %_1019 = load i16, i16* %_10, align 512
  br label %src.addr.exit

src.addr.case.11:                                 ; preds = %for.loop
  %_1120 = load i16, i16* %_11, align 512
  br label %src.addr.exit

src.addr.case.12:                                 ; preds = %for.loop
  %_1221 = load i16, i16* %_12, align 512
  br label %src.addr.exit

src.addr.case.13:                                 ; preds = %for.loop
  %_1322 = load i16, i16* %_13, align 512
  br label %src.addr.exit

src.addr.case.14:                                 ; preds = %for.loop
  %_1423 = load i16, i16* %_14, align 512
  br label %src.addr.exit

src.addr.case.15:                                 ; preds = %for.loop
  %_1524 = load i16, i16* %_15, align 512
  br label %src.addr.exit

src.addr.case.16:                                 ; preds = %for.loop
  %_1625 = load i16, i16* %_16, align 512
  br label %src.addr.exit

src.addr.case.17:                                 ; preds = %for.loop
  %_1726 = load i16, i16* %_17, align 512
  br label %src.addr.exit

src.addr.case.18:                                 ; preds = %for.loop
  %_1827 = load i16, i16* %_18, align 512
  br label %src.addr.exit

src.addr.case.19:                                 ; preds = %for.loop
  %_1928 = load i16, i16* %_19, align 512
  br label %src.addr.exit

src.addr.case.20:                                 ; preds = %for.loop
  %_2029 = load i16, i16* %_20, align 512
  br label %src.addr.exit

src.addr.case.21:                                 ; preds = %for.loop
  %_2130 = load i16, i16* %_21, align 512
  br label %src.addr.exit

src.addr.case.22:                                 ; preds = %for.loop
  %_2231 = load i16, i16* %_22, align 512
  br label %src.addr.exit

src.addr.case.23:                                 ; preds = %for.loop
  %_2332 = load i16, i16* %_23, align 512
  br label %src.addr.exit

src.addr.case.24:                                 ; preds = %for.loop
  %_2433 = load i16, i16* %_24, align 512
  br label %src.addr.exit

src.addr.case.25:                                 ; preds = %for.loop
  %_2534 = load i16, i16* %_25, align 512
  br label %src.addr.exit

src.addr.case.26:                                 ; preds = %for.loop
  %_2635 = load i16, i16* %_26, align 512
  br label %src.addr.exit

src.addr.case.27:                                 ; preds = %for.loop
  %_2736 = load i16, i16* %_27, align 512
  br label %src.addr.exit

src.addr.case.28:                                 ; preds = %for.loop
  %_2837 = load i16, i16* %_28, align 512
  br label %src.addr.exit

src.addr.case.29:                                 ; preds = %for.loop
  %_2938 = load i16, i16* %_29, align 512
  br label %src.addr.exit

src.addr.case.30:                                 ; preds = %for.loop
  %_3039 = load i16, i16* %_30, align 512
  br label %src.addr.exit

src.addr.case.31:                                 ; preds = %for.loop
  %_3140 = load i16, i16* %_31, align 512
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.31, %src.addr.case.30, %src.addr.case.29, %src.addr.case.28, %src.addr.case.27, %src.addr.case.26, %src.addr.case.25, %src.addr.case.24, %src.addr.case.23, %src.addr.case.22, %src.addr.case.21, %src.addr.case.20, %src.addr.case.19, %src.addr.case.18, %src.addr.case.17, %src.addr.case.16, %src.addr.case.15, %src.addr.case.14, %src.addr.case.13, %src.addr.case.12, %src.addr.case.11, %src.addr.case.10, %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %5 = phi i16 [ %_01, %src.addr.case.0 ], [ %_110, %src.addr.case.1 ], [ %_211, %src.addr.case.2 ], [ %_312, %src.addr.case.3 ], [ %_413, %src.addr.case.4 ], [ %_514, %src.addr.case.5 ], [ %_615, %src.addr.case.6 ], [ %_716, %src.addr.case.7 ], [ %_817, %src.addr.case.8 ], [ %_918, %src.addr.case.9 ], [ %_1019, %src.addr.case.10 ], [ %_1120, %src.addr.case.11 ], [ %_1221, %src.addr.case.12 ], [ %_1322, %src.addr.case.13 ], [ %_1423, %src.addr.case.14 ], [ %_1524, %src.addr.case.15 ], [ %_1625, %src.addr.case.16 ], [ %_1726, %src.addr.case.17 ], [ %_1827, %src.addr.case.18 ], [ %_1928, %src.addr.case.19 ], [ %_2029, %src.addr.case.20 ], [ %_2130, %src.addr.case.21 ], [ %_2231, %src.addr.case.22 ], [ %_2332, %src.addr.case.23 ], [ %_2433, %src.addr.case.24 ], [ %_2534, %src.addr.case.25 ], [ %_2635, %src.addr.case.26 ], [ %_2736, %src.addr.case.27 ], [ %_2837, %src.addr.case.28 ], [ %_2938, %src.addr.case.29 ], [ %_3039, %src.addr.case.30 ], [ %_3140, %src.addr.case.31 ]
  store i16 %5, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([32 x i16]* noalias "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_16, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_17, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_18, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_19, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_20, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_21, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_22, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_23, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_24, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_25, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_26, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_27, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_28, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_29, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_30, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_31, [32 x i16]* noalias "orig.arg.no"="2", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_110, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_211, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_312, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_413, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_514, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_615, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_716, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_817, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_918, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1019, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1120, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1221, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1322, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1423, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1524, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1625, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1726, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1827, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1928, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2029, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2130, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2231, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2332, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2433, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2534, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2635, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2736, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2837, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2938, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3039, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3140) #3 {
entry:
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %0, i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, i16* align 512 %_3, i16* align 512 %_4, i16* align 512 %_5, i16* align 512 %_6, i16* align 512 %_7, i16* align 512 %_8, i16* align 512 %_9, i16* align 512 %_10, i16* align 512 %_11, i16* align 512 %_12, i16* align 512 %_13, i16* align 512 %_14, i16* align 512 %_15, i16* align 512 %_16, i16* align 512 %_17, i16* align 512 %_18, i16* align 512 %_19, i16* align 512 %_20, i16* align 512 %_21, i16* align 512 %_22, i16* align 512 %_23, i16* align 512 %_24, i16* align 512 %_25, i16* align 512 %_26, i16* align 512 %_27, i16* align 512 %_28, i16* align 512 %_29, i16* align 512 %_30, i16* align 512 %_31)
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %1, i16* align 512 %_01, i16* align 512 %_110, i16* align 512 %_211, i16* align 512 %_312, i16* align 512 %_413, i16* align 512 %_514, i16* align 512 %_615, i16* align 512 %_716, i16* align 512 %_817, i16* align 512 %_918, i16* align 512 %_1019, i16* align 512 %_1120, i16* align 512 %_1221, i16* align 512 %_1322, i16* align 512 %_1423, i16* align 512 %_1524, i16* align 512 %_1625, i16* align 512 %_1726, i16* align 512 %_1827, i16* align 512 %_1928, i16* align 512 %_2029, i16* align 512 %_2130, i16* align 512 %_2231, i16* align 512 %_2332, i16* align 512 %_2433, i16* align 512 %_2534, i16* align 512 %_2635, i16* align 512 %_2736, i16* align 512 %_2837, i16* align 512 %_2938, i16* align 512 %_3039, i16* align 512 %_3140)
  ret void
}

declare void @apatb_array_io_hw(i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([32 x i16]* noalias "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_16, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_17, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_18, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_19, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_20, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_21, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_22, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_23, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_24, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_25, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_26, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_27, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_28, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_29, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_30, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_31, [32 x i16]* noalias "orig.arg.no"="2", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_110, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_211, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_312, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_413, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_514, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_615, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_716, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_817, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_918, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1019, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1120, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1221, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1322, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1423, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1524, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1625, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1726, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1827, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1928, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2029, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2130, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2231, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2332, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2433, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2534, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2635, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2736, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2837, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2938, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3039, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3140) #3 {
entry:
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %0, i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, i16* align 512 %_3, i16* align 512 %_4, i16* align 512 %_5, i16* align 512 %_6, i16* align 512 %_7, i16* align 512 %_8, i16* align 512 %_9, i16* align 512 %_10, i16* align 512 %_11, i16* align 512 %_12, i16* align 512 %_13, i16* align 512 %_14, i16* align 512 %_15, i16* align 512 %_16, i16* align 512 %_17, i16* align 512 %_18, i16* align 512 %_19, i16* align 512 %_20, i16* align 512 %_21, i16* align 512 %_22, i16* align 512 %_23, i16* align 512 %_24, i16* align 512 %_25, i16* align 512 %_26, i16* align 512 %_27, i16* align 512 %_28, i16* align 512 %_29, i16* align 512 %_30, i16* align 512 %_31)
  ret void
}

define void @array_io_hw_stub_wrapper(i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*) #4 {
entry:
  %64 = alloca [32 x i16]
  %65 = alloca [32 x i16]
  call void @copy_out([32 x i16]* %64, i16* %0, i16* %1, i16* %2, i16* %3, i16* %4, i16* %5, i16* %6, i16* %7, i16* %8, i16* %9, i16* %10, i16* %11, i16* %12, i16* %13, i16* %14, i16* %15, i16* %16, i16* %17, i16* %18, i16* %19, i16* %20, i16* %21, i16* %22, i16* %23, i16* %24, i16* %25, i16* %26, i16* %27, i16* %28, i16* %29, i16* %30, i16* %31, [32 x i16]* %65, i16* %32, i16* %33, i16* %34, i16* %35, i16* %36, i16* %37, i16* %38, i16* %39, i16* %40, i16* %41, i16* %42, i16* %43, i16* %44, i16* %45, i16* %46, i16* %47, i16* %48, i16* %49, i16* %50, i16* %51, i16* %52, i16* %53, i16* %54, i16* %55, i16* %56, i16* %57, i16* %58, i16* %59, i16* %60, i16* %61, i16* %62, i16* %63)
  %66 = bitcast [32 x i16]* %64 to i16*
  %67 = bitcast [32 x i16]* %65 to i16*
  call void @array_io_hw_stub(i16* %66, i16* %67)
  call void @copy_in([32 x i16]* %64, i16* %0, i16* %1, i16* %2, i16* %3, i16* %4, i16* %5, i16* %6, i16* %7, i16* %8, i16* %9, i16* %10, i16* %11, i16* %12, i16* %13, i16* %14, i16* %15, i16* %16, i16* %17, i16* %18, i16* %19, i16* %20, i16* %21, i16* %22, i16* %23, i16* %24, i16* %25, i16* %26, i16* %27, i16* %28, i16* %29, i16* %30, i16* %31, [32 x i16]* %65, i16* %32, i16* %33, i16* %34, i16* %35, i16* %36, i16* %37, i16* %38, i16* %39, i16* %40, i16* %41, i16* %42, i16* %43, i16* %44, i16* %45, i16* %46, i16* %47, i16* %48, i16* %49, i16* %50, i16* %51, i16* %52, i16* %53, i16* %54, i16* %55, i16* %56, i16* %57, i16* %58, i16* %59, i16* %60, i16* %61, i16* %62, i16* %63)
  ret void
}

declare void @array_io_hw_stub(i16*, i16*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
