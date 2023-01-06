; ModuleID = '/mnt/HLSNAS/03.jkrvGE/r10525034/LabA/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/03-dataflow_debug_and_optimization/reference_files/dataflow/proj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_diamond_ir(i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100" %vecIn, i8* noalias nocapture nonnull "fpga.decayed.dim.hint"="100" %vecOut) local_unnamed_addr #0 {
entry:
  %vecIn_copy = alloca [100 x i8], align 512
  %vecOut_copy = alloca [100 x i8], align 512
  %0 = bitcast i8* %vecIn to [100 x i8]*
  %1 = bitcast i8* %vecOut to [100 x i8]*
  call fastcc void @copy_in([100 x i8]* nonnull %0, [100 x i8]* nonnull align 512 %vecIn_copy, [100 x i8]* nonnull %1, [100 x i8]* nonnull align 512 %vecOut_copy)
  %2 = getelementptr inbounds [100 x i8], [100 x i8]* %vecIn_copy, i32 0, i32 0
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %vecOut_copy, i32 0, i32 0
  call void @apatb_diamond_hw(i8* %2, i8* %3)
  call void @copy_back([100 x i8]* %0, [100 x i8]* %vecIn_copy, [100 x i8]* %1, [100 x i8]* %vecOut_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([100 x i8]* noalias readonly, [100 x i8]* noalias align 512, [100 x i8]* noalias readonly, [100 x i8]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100i8([100 x i8]* align 512 %1, [100 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a100i8([100 x i8]* align 512 %3, [100 x i8]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a100i8([100 x i8]* noalias align 512, [100 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [100 x i8]* %0, null
  %3 = icmp eq [100 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x i8], [100 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [100 x i8], [100 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 100
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([100 x i8]* noalias, [100 x i8]* noalias readonly align 512, [100 x i8]* noalias, [100 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100i8([100 x i8]* %0, [100 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a100i8([100 x i8]* %2, [100 x i8]* align 512 %3)
  ret void
}

declare void @apatb_diamond_hw(i8*, i8*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([100 x i8]* noalias, [100 x i8]* noalias readonly align 512, [100 x i8]* noalias, [100 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100i8([100 x i8]* %2, [100 x i8]* align 512 %3)
  ret void
}

define void @diamond_hw_stub_wrapper(i8*, i8*) #4 {
entry:
  %2 = bitcast i8* %0 to [100 x i8]*
  %3 = bitcast i8* %1 to [100 x i8]*
  call void @copy_out([100 x i8]* null, [100 x i8]* %2, [100 x i8]* null, [100 x i8]* %3)
  %4 = bitcast [100 x i8]* %2 to i8*
  %5 = bitcast [100 x i8]* %3 to i8*
  call void @diamond_hw_stub(i8* %4, i8* %5)
  call void @copy_in([100 x i8]* null, [100 x i8]* %2, [100 x i8]* null, [100 x i8]* %3)
  ret void
}

declare void @diamond_hw_stub(i8*, i8*)

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
