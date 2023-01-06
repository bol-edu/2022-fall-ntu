; ModuleID = 'C:/Users/User/Documents/HLS/LabA/lab3/array_io_prj/solution3/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_array_io_ir(i16* noalias nocapture nonnull "fpga.decayed.dim.hint"="32" %d_o, i16* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32" %d_i) local_unnamed_addr #1 {
entry:
  %d_o_copy_0 = alloca [16 x i16], align 512
  %d_o_copy_1 = alloca [16 x i16], align 512
  %d_i_copy_0 = alloca [16 x i16], align 512
  %d_i_copy_1 = alloca [16 x i16], align 512
  %0 = bitcast i16* %d_o to [32 x i16]*
  %1 = bitcast i16* %d_i to [32 x i16]*
  call void @copy_in([32 x i16]* nonnull %0, [16 x i16]* nonnull align 512 %d_o_copy_0, [16 x i16]* nonnull align 512 %d_o_copy_1, [32 x i16]* nonnull %1, [16 x i16]* nonnull align 512 %d_i_copy_0, [16 x i16]* nonnull align 512 %d_i_copy_1)
  %d_o_copy.gep_0 = getelementptr [16 x i16], [16 x i16]* %d_o_copy_0, i64 0, i32 0
  %d_o_copy.gep_1 = getelementptr [16 x i16], [16 x i16]* %d_o_copy_1, i64 0, i32 0
  %d_i_copy.gep_0 = getelementptr [16 x i16], [16 x i16]* %d_i_copy_0, i64 0, i32 0
  %d_i_copy.gep_1 = getelementptr [16 x i16], [16 x i16]* %d_i_copy_1, i64 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_o_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_o_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_i_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !28
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_i_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !28
  call void @apatb_array_io_hw([16 x i16]* %d_o_copy_0, [16 x i16]* %d_o_copy_1, [16 x i16]* %d_i_copy_0, [16 x i16]* %d_i_copy_1)
  call void @copy_back([32 x i16]* %0, [16 x i16]* %d_o_copy_0, [16 x i16]* %d_o_copy_1, [32 x i16]* %1, [16 x i16]* %d_i_copy_0, [16 x i16]* %d_i_copy_1)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #2

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.3.4([16 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [16 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [32 x i16]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [16 x i16]* %_0, null
  %2 = icmp eq [32 x i16]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 2
  %5 = udiv i64 %for.loop.idx1, 2
  %dst.addr_0 = getelementptr [16 x i16], [16 x i16]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [16 x i16], [16 x i16]* %_1, i64 0, i64 %5
  %src.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %6 = load i16, i16* %src.addr, align 2
  %7 = trunc i64 %4 to i1
  %cond = icmp eq i1 %7, false
  br i1 %cond, label %dst.addr.case.0, label %dst.addr.case.1

dst.addr.case.0:                                  ; preds = %for.loop
  store i16 %6, i16* %dst.addr_0, align 2
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.assume(i1 %7)
  store i16 %6, i16* %dst.addr_1, align 2
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([32 x i16]* noalias readonly "orig.arg.no"="0", [16 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [16 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [32 x i16]* noalias readonly "orig.arg.no"="2", [16 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [16 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12) #4 {
entry:
  call void @onebyonecpy_hls.p0a32i16.3.4([16 x i16]* align 512 %_0, [16 x i16]* align 512 %_1, [32 x i16]* %0)
  call void @onebyonecpy_hls.p0a32i16.3.4([16 x i16]* align 512 %_01, [16 x i16]* align 512 %_12, [32 x i16]* %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1) #3 {
entry:
  %1 = icmp eq [32 x i16]* %0, null
  %2 = icmp eq [16 x i16]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 2
  %5 = udiv i64 %for.loop.idx1, 2
  %src.addr_0 = getelementptr [16 x i16], [16 x i16]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [16 x i16], [16 x i16]* %_1, i64 0, i64 %5
  %6 = trunc i64 %4 to i1
  %cond = icmp eq i1 %6, false
  br i1 %cond, label %src.addr.case.0, label %src.addr.case.1

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i16, i16* %src.addr_0, align 2
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.assume(i1 %6)
  %_12 = load i16, i16* %src.addr_1, align 2
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.1, %src.addr.case.0
  %7 = phi i16 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ]
  store i16 %7, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([32 x i16]* noalias "orig.arg.no"="0", [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [32 x i16]* noalias "orig.arg.no"="2", [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12) #5 {
entry:
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %0, [16 x i16]* align 512 %_0, [16 x i16]* align 512 %_1)
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %1, [16 x i16]* align 512 %_01, [16 x i16]* align 512 %_12)
  ret void
}

declare void @apatb_array_io_hw([16 x i16]*, [16 x i16]*, [16 x i16]*, [16 x i16]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([32 x i16]* noalias "orig.arg.no"="0", [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [32 x i16]* noalias "orig.arg.no"="2", [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12) #5 {
entry:
  call void @onebyonecpy_hls.p0a32i16.9.10([32 x i16]* %0, [16 x i16]* align 512 %_0, [16 x i16]* align 512 %_1)
  ret void
}

define void @array_io_hw_stub_wrapper([16 x i16]*, [16 x i16]*, [16 x i16]*, [16 x i16]*) #6 {
entry:
  %4 = alloca [32 x i16]
  %5 = alloca [32 x i16]
  call void @copy_out([32 x i16]* %4, [16 x i16]* %0, [16 x i16]* %1, [32 x i16]* %5, [16 x i16]* %2, [16 x i16]* %3)
  %6 = bitcast [32 x i16]* %4 to i16*
  %7 = bitcast [32 x i16]* %5 to i16*
  call void @array_io_hw_stub(i16* %6, i16* %7)
  call void @copy_in([32 x i16]* %4, [16 x i16]* %0, [16 x i16]* %1, [32 x i16]* %5, [16 x i16]* %2, [16 x i16]* %3)
  ret void
}

declare void @array_io_hw_stub(i16*, i16*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 10, column: 9, scope: !6)
!6 = !DILexicalBlockFile(scope: !8, file: !7, discriminator: 0)
!7 = !DIFile(filename: "C:/Users/User/Documents/HLS/LabA/lab3/array_io_prj/solution3/directives.tcl", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS\5CLabA\5Clab3")
!8 = distinct !DISubprogram(name: "array_io", scope: !9, file: !9, line: 57, type: !10, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !18, variables: !4)
!9 = !DIFile(filename: "array_io.c", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS\5CLabA\5Clab3")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !16}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "dout_t", file: !14, line: 52, baseType: !15)
!14 = !DIFile(filename: "./array_io.h", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS\5CLabA\5Clab3")
!15 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_t", file: !14, line: 51, baseType: !15)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !20)
!19 = !DIFile(filename: "C:/Users/User/Documents/HLS/LabA/lab3/array_io_prj/solution3/.autopilot/db\5Carray_io.pp.0.c", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS\5CLabA\5Clab3")
!20 = !{!21}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "acc", scope: !8, file: !9, line: 61, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, elements: !26)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "dacc_t", file: !14, line: 53, baseType: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{!27}
!27 = !DISubrange(count: 8)
!28 = !DILocation(line: 11, column: 9, scope: !6)
