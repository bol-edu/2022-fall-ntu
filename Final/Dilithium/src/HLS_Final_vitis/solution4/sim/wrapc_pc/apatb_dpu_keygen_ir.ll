; ModuleID = 'C:/Users/user/Desktop/HLS/HLS_final_vitis/solution4/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define i32 @apatb_dpu_keygen_ir(i8* noalias nonnull "fpga.decayed.dim.hint"="1952" %pk, i8* noalias nonnull "fpga.decayed.dim.hint"="4016" %sk, i8* noalias nocapture nonnull "fpga.decayed.dim.hint"="96" %seedbuf) local_unnamed_addr #0 {
entry:
  %pk_copy = alloca [1952 x i8], align 512
  %malloccall = tail call i8* @malloc(i64 4016)
  %sk_copy = bitcast i8* %malloccall to [4016 x i8]*
  %seedbuf_copy = alloca [96 x i8], align 512
  %0 = bitcast i8* %pk to [1952 x i8]*
  %1 = bitcast i8* %sk to [4016 x i8]*
  %2 = bitcast i8* %seedbuf to [96 x i8]*
  call fastcc void @copy_in([1952 x i8]* nonnull %0, [1952 x i8]* nonnull align 512 %pk_copy, [4016 x i8]* nonnull %1, [4016 x i8]* %sk_copy, [96 x i8]* nonnull %2, [96 x i8]* nonnull align 512 %seedbuf_copy)
  %3 = getelementptr inbounds [1952 x i8], [1952 x i8]* %pk_copy, i32 0, i32 0
  %4 = getelementptr inbounds [96 x i8], [96 x i8]* %seedbuf_copy, i32 0, i32 0
  %5 = call i32 @apatb_dpu_keygen_hw(i8* %3, i8* %malloccall, i8* %4)
  call void @copy_back([1952 x i8]* %0, [1952 x i8]* %pk_copy, [4016 x i8]* %1, [4016 x i8]* %sk_copy, [96 x i8]* %2, [96 x i8]* %seedbuf_copy)
  tail call void @free(i8* %malloccall)
  ret i32 %5
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1952 x i8]* noalias readonly, [1952 x i8]* noalias align 512, [4016 x i8]* noalias readonly, [4016 x i8]* noalias, [96 x i8]* noalias readonly, [96 x i8]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1952i8([1952 x i8]* align 512 %1, [1952 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a4016i8([4016 x i8]* %3, [4016 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0a96i8([96 x i8]* align 512 %5, [96 x i8]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1952i8([1952 x i8]* noalias align 512, [1952 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1952 x i8]* %0, null
  %3 = icmp eq [1952 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1952 x i8], [1952 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1952 x i8], [1952 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1952
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4016i8([4016 x i8]* noalias, [4016 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4016 x i8]* %0, null
  %3 = icmp eq [4016 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4016 x i8], [4016 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [4016 x i8], [4016 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4016
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a96i8([96 x i8]* noalias align 512, [96 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [96 x i8]* %0, null
  %3 = icmp eq [96 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [96 x i8], [96 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [96 x i8], [96 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 96
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1952 x i8]* noalias, [1952 x i8]* noalias readonly align 512, [4016 x i8]* noalias, [4016 x i8]* noalias readonly, [96 x i8]* noalias, [96 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1952i8([1952 x i8]* %0, [1952 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a4016i8([4016 x i8]* %2, [4016 x i8]* %3)
  call fastcc void @onebyonecpy_hls.p0a96i8([96 x i8]* %4, [96 x i8]* align 512 %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare i32 @apatb_dpu_keygen_hw(i8*, i8*, i8*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1952 x i8]* noalias, [1952 x i8]* noalias readonly align 512, [4016 x i8]* noalias, [4016 x i8]* noalias readonly, [96 x i8]* noalias, [96 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1952i8([1952 x i8]* %0, [1952 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a4016i8([4016 x i8]* %2, [4016 x i8]* %3)
  call fastcc void @onebyonecpy_hls.p0a96i8([96 x i8]* %4, [96 x i8]* align 512 %5)
  ret void
}

define i32 @dpu_keygen_hw_stub_wrapper(i8*, i8*, i8*) #4 {
entry:
  %3 = bitcast i8* %0 to [1952 x i8]*
  %4 = bitcast i8* %1 to [4016 x i8]*
  %5 = bitcast i8* %2 to [96 x i8]*
  call void @copy_out([1952 x i8]* null, [1952 x i8]* %3, [4016 x i8]* null, [4016 x i8]* %4, [96 x i8]* null, [96 x i8]* %5)
  %6 = bitcast [1952 x i8]* %3 to i8*
  %7 = bitcast [4016 x i8]* %4 to i8*
  %8 = bitcast [96 x i8]* %5 to i8*
  %9 = call i32 @dpu_keygen_hw_stub(i8* %6, i8* %7, i8* %8)
  call void @copy_in([1952 x i8]* null, [1952 x i8]* %3, [4016 x i8]* null, [4016 x i8]* %4, [96 x i8]* null, [96 x i8]* %5)
  ret i32 %9
}

declare i32 @dpu_keygen_hw_stub(i8*, i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
