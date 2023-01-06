; ModuleID = 'C:/Users/User/Documents/HLS/LabB/FFT/HLS/2_Skeleton_Restructured/hls_restructured/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_fft_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %X_R, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %X_I, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %OUT_R, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %OUT_I) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %X_R_copy = bitcast i8* %malloccall to [1024 x float]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %X_I_copy = bitcast i8* %malloccall1 to [1024 x float]*
  %malloccall2 = tail call i8* @malloc(i64 4096)
  %OUT_R_copy = bitcast i8* %malloccall2 to [1024 x float]*
  %malloccall3 = tail call i8* @malloc(i64 4096)
  %OUT_I_copy = bitcast i8* %malloccall3 to [1024 x float]*
  %0 = bitcast float* %X_R to [1024 x float]*
  %1 = bitcast float* %X_I to [1024 x float]*
  %2 = bitcast float* %OUT_R to [1024 x float]*
  %3 = bitcast float* %OUT_I to [1024 x float]*
  call fastcc void @copy_in([1024 x float]* nonnull %0, [1024 x float]* %X_R_copy, [1024 x float]* nonnull %1, [1024 x float]* %X_I_copy, [1024 x float]* nonnull %2, [1024 x float]* %OUT_R_copy, [1024 x float]* nonnull %3, [1024 x float]* %OUT_I_copy)
  %4 = getelementptr inbounds [1024 x float], [1024 x float]* %X_R_copy, i32 0, i32 0
  %5 = getelementptr inbounds [1024 x float], [1024 x float]* %X_I_copy, i32 0, i32 0
  %6 = getelementptr inbounds [1024 x float], [1024 x float]* %OUT_R_copy, i32 0, i32 0
  %7 = getelementptr inbounds [1024 x float], [1024 x float]* %OUT_I_copy, i32 0, i32 0
  call void @apatb_fft_hw(float* %4, float* %5, float* %6, float* %7)
  call void @copy_back([1024 x float]* %0, [1024 x float]* %X_R_copy, [1024 x float]* %1, [1024 x float]* %X_I_copy, [1024 x float]* %2, [1024 x float]* %OUT_R_copy, [1024 x float]* %3, [1024 x float]* %OUT_I_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1024 x float]* noalias readonly, [1024 x float]* noalias, [1024 x float]* noalias readonly, [1024 x float]* noalias, [1024 x float]* noalias readonly, [1024 x float]* noalias, [1024 x float]* noalias readonly, [1024 x float]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %1, [1024 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %3, [1024 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %5, [1024 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %7, [1024 x float]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* noalias, [1024 x float]* noalias readonly) unnamed_addr #2 {
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

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1024 x float]* noalias, [1024 x float]* noalias readonly, [1024 x float]* noalias, [1024 x float]* noalias readonly, [1024 x float]* noalias, [1024 x float]* noalias readonly, [1024 x float]* noalias, [1024 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %0, [1024 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %2, [1024 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %4, [1024 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %6, [1024 x float]* %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_fft_hw(float*, float*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1024 x float]* noalias, [1024 x float]* noalias readonly, [1024 x float]* noalias, [1024 x float]* noalias readonly, [1024 x float]* noalias, [1024 x float]* noalias readonly, [1024 x float]* noalias, [1024 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %4, [1024 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %6, [1024 x float]* %7)
  ret void
}

define void @fft_hw_stub_wrapper(float*, float*, float*, float*) #4 {
entry:
  %4 = bitcast float* %0 to [1024 x float]*
  %5 = bitcast float* %1 to [1024 x float]*
  %6 = bitcast float* %2 to [1024 x float]*
  %7 = bitcast float* %3 to [1024 x float]*
  call void @copy_out([1024 x float]* null, [1024 x float]* %4, [1024 x float]* null, [1024 x float]* %5, [1024 x float]* null, [1024 x float]* %6, [1024 x float]* null, [1024 x float]* %7)
  %8 = bitcast [1024 x float]* %4 to float*
  %9 = bitcast [1024 x float]* %5 to float*
  %10 = bitcast [1024 x float]* %6 to float*
  %11 = bitcast [1024 x float]* %7 to float*
  call void @fft_hw_stub(float* %8, float* %9, float* %10, float* %11)
  call void @copy_in([1024 x float]* null, [1024 x float]* %4, [1024 x float]* null, [1024 x float]* %5, [1024 x float]* null, [1024 x float]* %6, [1024 x float]* null, [1024 x float]* %7)
  ret void
}

declare void @fft_hw_stub(float*, float*, float*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
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
