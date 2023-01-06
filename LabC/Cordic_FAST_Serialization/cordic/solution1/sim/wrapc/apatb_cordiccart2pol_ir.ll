; ModuleID = 'C:/Users/Alan/Desktop/hls_workspace/lab/labC/cordic_v5/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<15, 3, true, AP_RND_MIN_INF, AP_WRAP, 0>" }
%"struct.ap_fixed_base<15, 3, true, AP_RND_MIN_INF, AP_WRAP, 0>" = type { %"struct.ssdm_int<15, true>" }
%"struct.ssdm_int<15, true>" = type { i15 }

; Function Attrs: argmemonly noinline
define void @apatb_cordiccart2pol_ir(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* nocapture readonly %x, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* nocapture readonly %y, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* noalias nocapture nonnull %r, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* noalias nocapture nonnull %theta) local_unnamed_addr #0 {
entry:
  %r_copy = alloca i15, align 512
  %theta_copy = alloca i15, align 512
  call fastcc void @copy_in(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* nonnull %r, i15* nonnull align 512 %r_copy, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* nonnull %theta, i15* nonnull align 512 %theta_copy)
  call void @apatb_cordiccart2pol_hw(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %x, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %y, i15* %r_copy, i15* %theta_copy)
  call void @copy_back(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %r, i15* %r_copy, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %theta, i15* %theta_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* noalias readonly, i15* noalias align 512, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* noalias readonly, i15* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>.20"(i15* align 512 %1, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>.20"(i15* align 512 %3, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* noalias, i15* noalias readonly align 512, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* noalias, i15* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %0, i15* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %2, i15* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* noalias, i15* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %0, null
  %3 = icmp eq i15* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>", %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i15* %1 to i16*
  %6 = load i16, i16* %5
  %7 = trunc i16 %6 to i15
  store i15 %7, i15* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>.20"(i15* noalias align 512, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i15* %0, null
  %3 = icmp eq %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>", %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i15* %.0.0.04 to i16*
  %6 = load i16, i16* %5
  %7 = trunc i16 %6 to i15
  store i15 %7, i15* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_cordiccart2pol_hw(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"*, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"*, i15*, i15*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* noalias, i15* noalias readonly align 512, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* noalias, i15* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %0, i15* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %2, i15* align 512 %3)
  ret void
}

define void @cordiccart2pol_hw_stub_wrapper(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"*, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"*, i15*, i15*) #4 {
entry:
  %4 = alloca %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"
  %5 = alloca %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"
  call void @copy_out(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %4, i15* %2, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %5, i15* %3)
  call void @cordiccart2pol_hw_stub(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %0, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %1, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %4, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %5)
  call void @copy_in(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %4, i15* %2, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"* %5, i15* %3)
  ret void
}

declare void @cordiccart2pol_hw_stub(%"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"*, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"*, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"*, %"struct.ap_fixed<15, 3, AP_RND_MIN_INF, AP_WRAP, 0>"*)

attributes #0 = { argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
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
