<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="baseline" top="fir">
  <files>
    <file name="../../input.dat" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../out.gold.dat" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../fir_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="fir.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    <file name="fir.cpp" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
  </files>
  <solutions>
    <solution name="if_remove_pipeline" status="inactive"/>
    <solution name="if_remove" status="inactive"/>
    <solution name="baseline" status="inactive"/>
    <solution name="baseline_pipeline" status="inactive"/>
    <solution name="loop_fission" status="inactive"/>
    <solution name="loop_unrolling_TDL2" status="inactive"/>
    <solution name="loop_unrolling_TDL2_arraypartition" status="inactive"/>
    <solution name="loop_unrolling_TDL3" status="inactive"/>
    <solution name="loop_unrolling_TDL3_arraypartition" status="inactive"/>
    <solution name="loop_unrolling_MAC4" status="inactive"/>
    <solution name="loop_unrolling_MAC2" status="inactive"/>
    <solution name="loop_fusion_pipeline" status="active"/>
    <solution name="loop_fusion_pipeline_bitwidth" status="inactive"/>
    <solution name="loop_fusion_pipeline_bitwidth_array_partition" status="inactive"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation>
    <SimFlow name="csim"/>
  </Simulation>
</project>
