; ModuleID = 'C:/Users/User/Documents/HLS/LabC/DFT/dft/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_dft_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %X_R, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %X_I, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %OUT_R, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %OUT_I) local_unnamed_addr #1 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %X_R_copy = bitcast i8* %malloccall to [1024 x float]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %X_I_copy = bitcast i8* %malloccall1 to [1024 x float]*
  %malloccall2_0 = call i8* @malloc(i64 1024)
  %malloccall2_1 = call i8* @malloc(i64 1024)
  %malloccall2_2 = call i8* @malloc(i64 1024)
  %malloccall2_3 = call i8* @malloc(i64 1024)
  %OUT_R_copy_0 = bitcast i8* %malloccall2_0 to [256 x float]*
  %OUT_R_copy_1 = bitcast i8* %malloccall2_1 to [256 x float]*
  %OUT_R_copy_2 = bitcast i8* %malloccall2_2 to [256 x float]*
  %OUT_R_copy_3 = bitcast i8* %malloccall2_3 to [256 x float]*
  %malloccall3_0 = call i8* @malloc(i64 1024)
  %malloccall3_1 = call i8* @malloc(i64 1024)
  %malloccall3_2 = call i8* @malloc(i64 1024)
  %malloccall3_3 = call i8* @malloc(i64 1024)
  %OUT_I_copy_0 = bitcast i8* %malloccall3_0 to [256 x float]*
  %OUT_I_copy_1 = bitcast i8* %malloccall3_1 to [256 x float]*
  %OUT_I_copy_2 = bitcast i8* %malloccall3_2 to [256 x float]*
  %OUT_I_copy_3 = bitcast i8* %malloccall3_3 to [256 x float]*
  %0 = bitcast float* %X_R to [1024 x float]*
  %1 = bitcast float* %X_I to [1024 x float]*
  %2 = bitcast float* %OUT_R to [1024 x float]*
  %3 = bitcast float* %OUT_I to [1024 x float]*
  call void @copy_in([1024 x float]* nonnull %0, [1024 x float]* %X_R_copy, [1024 x float]* nonnull %1, [1024 x float]* %X_I_copy, [1024 x float]* nonnull %2, [256 x float]* %OUT_R_copy_0, [256 x float]* %OUT_R_copy_1, [256 x float]* %OUT_R_copy_2, [256 x float]* %OUT_R_copy_3, [1024 x float]* nonnull %3, [256 x float]* %OUT_I_copy_0, [256 x float]* %OUT_I_copy_1, [256 x float]* %OUT_I_copy_2, [256 x float]* %OUT_I_copy_3)
  %4 = getelementptr inbounds [1024 x float], [1024 x float]* %X_R_copy, i32 0, i32 0
  %5 = getelementptr inbounds [1024 x float], [1024 x float]* %X_I_copy, i32 0, i32 0
  %_0 = getelementptr [256 x float], [256 x float]* %OUT_R_copy_0, i32 0, i32 0
  %_1 = getelementptr [256 x float], [256 x float]* %OUT_R_copy_1, i32 0, i32 0
  %_2 = getelementptr [256 x float], [256 x float]* %OUT_R_copy_2, i32 0, i32 0
  %_3 = getelementptr [256 x float], [256 x float]* %OUT_R_copy_3, i32 0, i32 0
  %_04 = getelementptr [256 x float], [256 x float]* %OUT_I_copy_0, i32 0, i32 0
  %_15 = getelementptr [256 x float], [256 x float]* %OUT_I_copy_1, i32 0, i32 0
  %_26 = getelementptr [256 x float], [256 x float]* %OUT_I_copy_2, i32 0, i32 0
  %_37 = getelementptr [256 x float], [256 x float]* %OUT_I_copy_3, i32 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_04, i32 0, i32 1, i32 0, i1 false) ], !dbg !25
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_15, i32 0, i32 1, i32 0, i1 false) ], !dbg !25
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_26, i32 0, i32 1, i32 0, i1 false) ], !dbg !25
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_37, i32 0, i32 1, i32 0, i1 false) ], !dbg !25
  call void @apatb_dft_hw(float* %4, float* %5, [256 x float]* %OUT_R_copy_0, [256 x float]* %OUT_R_copy_1, [256 x float]* %OUT_R_copy_2, [256 x float]* %OUT_R_copy_3, [256 x float]* %OUT_I_copy_0, [256 x float]* %OUT_I_copy_1, [256 x float]* %OUT_I_copy_2, [256 x float]* %OUT_I_copy_3)
  call void @copy_back([1024 x float]* %0, [1024 x float]* %X_R_copy, [1024 x float]* %1, [1024 x float]* %X_I_copy, [1024 x float]* %2, [256 x float]* %OUT_R_copy_0, [256 x float]* %OUT_R_copy_1, [256 x float]* %OUT_R_copy_2, [256 x float]* %OUT_R_copy_3, [1024 x float]* %3, [256 x float]* %OUT_I_copy_0, [256 x float]* %OUT_I_copy_1, [256 x float]* %OUT_I_copy_2, [256 x float]* %OUT_I_copy_3)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2_0)
  call void @free(i8* %malloccall2_1)
  call void @free(i8* %malloccall2_2)
  call void @free(i8* %malloccall2_3)
  call void @free(i8* %malloccall3_0)
  call void @free(i8* %malloccall3_1)
  call void @free(i8* %malloccall3_2)
  call void @free(i8* %malloccall3_3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x float]* %0, null
  %3 = icmp eq [1024 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x float], [1024 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1024 x float], [1024 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a1024f32.3.4([256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [256 x float]* %_0, null
  %2 = icmp eq [1024 x float]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 4
  %5 = udiv i64 %for.loop.idx1, 4
  %dst.addr_0 = getelementptr [256 x float], [256 x float]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [256 x float], [256 x float]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [256 x float], [256 x float]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [256 x float], [256 x float]* %_3, i64 0, i64 %5
  %src.addr = getelementptr [1024 x float], [1024 x float]* %0, i64 0, i64 %for.loop.idx1
  %6 = load float, float* %src.addr, align 4
  %7 = trunc i64 %4 to i2
  switch i2 %7, label %dst.addr.case.3 [
    i2 0, label %dst.addr.case.0
    i2 1, label %dst.addr.case.1
    i2 -2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_1, align 4
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_2, align 4
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_3, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([1024 x float]* noalias readonly "orig.arg.no"="0", [1024 x float]* noalias "orig.arg.no"="1", [1024 x float]* noalias readonly "orig.arg.no"="2", [1024 x float]* noalias "orig.arg.no"="3", [1024 x float]* noalias readonly "orig.arg.no"="4", [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_0, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_2, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_3, [1024 x float]* noalias readonly "orig.arg.no"="6", [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_01, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_12, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_23, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_34) #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %1, [1024 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %3, [1024 x float]* %2)
  call void @onebyonecpy_hls.p0a1024f32.3.4([256 x float]* %_0, [256 x float]* %_1, [256 x float]* %_2, [256 x float]* %_3, [1024 x float]* %4)
  call void @onebyonecpy_hls.p0a1024f32.3.4([256 x float]* %_01, [256 x float]* %_12, [256 x float]* %_23, [256 x float]* %_34, [1024 x float]* %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #2 {
entry:
  %1 = icmp eq [1024 x float]* %0, null
  %2 = icmp eq [256 x float]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [1024 x float], [1024 x float]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 4
  %5 = udiv i64 %for.loop.idx1, 4
  %src.addr_0 = getelementptr [256 x float], [256 x float]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [256 x float], [256 x float]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [256 x float], [256 x float]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [256 x float], [256 x float]* %_3, i64 0, i64 %5
  %6 = trunc i64 %4 to i2
  switch i2 %6, label %src.addr.case.3 [
    i2 0, label %src.addr.case.0
    i2 1, label %src.addr.case.1
    i2 -2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load float, float* %src.addr_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load float, float* %src.addr_1, align 4
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_23 = load float, float* %src.addr_2, align 4
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_34 = load float, float* %src.addr_3, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %7 = phi float [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ]
  store float %7, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([1024 x float]* noalias "orig.arg.no"="0", [1024 x float]* noalias readonly "orig.arg.no"="1", [1024 x float]* noalias "orig.arg.no"="2", [1024 x float]* noalias readonly "orig.arg.no"="3", [1024 x float]* noalias "orig.arg.no"="4", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_0, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_2, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_3, [1024 x float]* noalias "orig.arg.no"="6", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_01, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_12, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_23, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_34) #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %0, [1024 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %2, [1024 x float]* %3)
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %4, [256 x float]* %_0, [256 x float]* %_1, [256 x float]* %_2, [256 x float]* %_3)
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %5, [256 x float]* %_01, [256 x float]* %_12, [256 x float]* %_23, [256 x float]* %_34)
  ret void
}

declare void @apatb_dft_hw(float*, float*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([1024 x float]* noalias "orig.arg.no"="0", [1024 x float]* noalias readonly "orig.arg.no"="1", [1024 x float]* noalias "orig.arg.no"="2", [1024 x float]* noalias readonly "orig.arg.no"="3", [1024 x float]* noalias "orig.arg.no"="4", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_0, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_2, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_3, [1024 x float]* noalias "orig.arg.no"="6", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_01, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_12, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_23, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_34) #4 {
entry:
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %4, [256 x float]* %_0, [256 x float]* %_1, [256 x float]* %_2, [256 x float]* %_3)
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %5, [256 x float]* %_01, [256 x float]* %_12, [256 x float]* %_23, [256 x float]* %_34)
  ret void
}

define void @dft_hw_stub_wrapper(float*, float*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %10 = bitcast i8* %malloccall to [1024 x float]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %11 = bitcast i8* %malloccall1 to [1024 x float]*
  %12 = bitcast float* %0 to [1024 x float]*
  %13 = bitcast float* %1 to [1024 x float]*
  call void @copy_out([1024 x float]* null, [1024 x float]* %12, [1024 x float]* null, [1024 x float]* %13, [1024 x float]* %10, [256 x float]* %2, [256 x float]* %3, [256 x float]* %4, [256 x float]* %5, [1024 x float]* %11, [256 x float]* %6, [256 x float]* %7, [256 x float]* %8, [256 x float]* %9)
  %14 = bitcast [1024 x float]* %12 to float*
  %15 = bitcast [1024 x float]* %13 to float*
  %16 = bitcast [1024 x float]* %10 to float*
  %17 = bitcast [1024 x float]* %11 to float*
  call void @dft_hw_stub(float* %14, float* %15, float* %16, float* %17)
  call void @copy_in([1024 x float]* null, [1024 x float]* %12, [1024 x float]* null, [1024 x float]* %13, [1024 x float]* %10, [256 x float]* %2, [256 x float]* %3, [256 x float]* %4, [256 x float]* %5, [1024 x float]* %11, [256 x float]* %6, [256 x float]* %7, [256 x float]* %8, [256 x float]* %9)
  ret void
}

declare void @dft_hw_stub(float*, float*, float*, float*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
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
!5 = !DILocation(line: 32, column: 9, scope: !6)
!6 = distinct !DISubprogram(name: "dft", linkageName: "_Z3dftPfS_S_S_", scope: !7, file: !7, line: 18, type: !8, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !4)
!7 = !DIFile(filename: "fft.cpp", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS\5CLabC\5CDFT")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTYPE", file: !12, line: 4, baseType: !13)
!12 = !DIFile(filename: "./fft.h", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS\5CLabC\5CDFT")
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !15, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !16)
!15 = !DIFile(filename: "C:/Users/User/Documents/HLS/LabC/DFT/dft/solution1/.autopilot/db\5Cfft.pp.0.cpp", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS\5CLabC\5CDFT")
!16 = !{!17, !23}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "W_real", linkageName: "_ZL6W_real", scope: !14, file: !12, line: 17, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 16384, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!21 = !{!22}
!22 = !DISubrange(count: 512)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "W_imag", linkageName: "_ZL6W_imag", scope: !14, file: !12, line: 80, type: !19, isLocal: true, isDefinition: true)
!25 = !DILocation(line: 33, column: 9, scope: !6)
