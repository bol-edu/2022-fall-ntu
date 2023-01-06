
set TopModule "dut"
set ClockPeriod 6.3
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 1
set ResetVariableFlag 0
set ResetRegisterNum 3
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix dut_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg400:-1
set SourceFiles {sc {} c ../../top.cpp}
set SourceFlags {sc {} c -I./.}
set DirectiveFile C:/Users/User/Documents/HLS/LabC/serialization/serialization.prj/solution1/solution1.directive
set TBFiles {verilog {../../data/fix.arrow ../../data/fix.obj ../../data/fix_data.arrow ../../data/mix.arrow ../../data/mix.obj ../../data/mix_data.arrow ../../test.cpp ../../data/var.arrow ../../data/var.obj ../../data/var_data.arrow} bc {../../data/fix.arrow ../../data/fix.obj ../../data/fix_data.arrow ../../data/mix.arrow ../../data/mix.obj ../../data/mix_data.arrow ../../test.cpp ../../data/var.arrow ../../data/var.obj ../../data/var_data.arrow} sc {../../data/fix.arrow ../../data/fix.obj ../../data/fix_data.arrow ../../data/mix.arrow ../../data/mix.obj ../../data/mix_data.arrow ../../test.cpp ../../data/var.arrow ../../data/var.obj ../../data/var_data.arrow} vhdl {../../data/fix.arrow ../../data/fix.obj ../../data/fix_data.arrow ../../data/mix.arrow ../../data/mix.obj ../../data/mix_data.arrow ../../test.cpp ../../data/var.arrow ../../data/var.obj ../../data/var_data.arrow} c {} cas {../../data/fix.arrow ../../data/fix.obj ../../data/fix_data.arrow ../../data/mix.arrow ../../data/mix.obj ../../data/mix_data.arrow ../../test.cpp ../../data/var.arrow ../../data/var.obj ../../data/var_data.arrow}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
