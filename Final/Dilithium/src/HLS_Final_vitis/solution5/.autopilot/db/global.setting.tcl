
set TopModule "dpu_keygen"
set ClockPeriod 10
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
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix dpu_keygen_
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
set TargetInfo xcvu11p:-flga2577:-1-e
set SourceFiles {sc {} c {../../HLS_Final_vitis_src/wrapper.cpp ../../HLS_Final_vitis_src/spu.cpp ../../HLS_Final_vitis_src/dpu.cpp}}
set SourceFlags {sc {} c {{} {} {}}}
set DirectiveFile C:/Users/user/Desktop/HLS/HLS_final_vitis/solution5/solution5.directive
set TBFiles {verilog {../../HLS_Final_vitis_src/test_dilithium.cpp ../../HLS_Final_vitis_src/clean/symmetric.h ../../HLS_Final_vitis_src/clean/symmetric-shake.cpp ../../HLS_Final_vitis_src/clean/symmetric-aes.cpp ../../HLS_Final_vitis_src/clean/sign.h ../../HLS_Final_vitis_src/clean/sign.cpp ../../HLS_Final_vitis_src/clean/rounding.h ../../HLS_Final_vitis_src/clean/rounding.cpp ../../HLS_Final_vitis_src/clean/reduce.h ../../HLS_Final_vitis_src/clean/reduce.cpp ../../HLS_Final_vitis_src/clean/randombytes.h ../../HLS_Final_vitis_src/clean/randombytes.cpp ../../HLS_Final_vitis_src/clean/polyvec.h ../../HLS_Final_vitis_src/clean/polyvec.cpp ../../HLS_Final_vitis_src/clean/poly.h ../../HLS_Final_vitis_src/clean/poly.cpp ../../HLS_Final_vitis_src/clean/params.h ../../HLS_Final_vitis_src/clean/packing.h ../../HLS_Final_vitis_src/clean/packing.cpp ../../HLS_Final_vitis_src/clean/ntt.h ../../HLS_Final_vitis_src/clean/ntt.cpp ../../HLS_Final_vitis_src/clean/fips202.h ../../HLS_Final_vitis_src/clean/fips202.cpp ../../HLS_Final_vitis_src/clean/config.h ../../HLS_Final_vitis_src/clean/api.h ../../HLS_Final_vitis_src/clean/aes256ctr.h ../../HLS_Final_vitis_src/clean/aes256ctr.cpp} bc {../../HLS_Final_vitis_src/test_dilithium.cpp ../../HLS_Final_vitis_src/clean/symmetric.h ../../HLS_Final_vitis_src/clean/symmetric-shake.cpp ../../HLS_Final_vitis_src/clean/symmetric-aes.cpp ../../HLS_Final_vitis_src/clean/sign.h ../../HLS_Final_vitis_src/clean/sign.cpp ../../HLS_Final_vitis_src/clean/rounding.h ../../HLS_Final_vitis_src/clean/rounding.cpp ../../HLS_Final_vitis_src/clean/reduce.h ../../HLS_Final_vitis_src/clean/reduce.cpp ../../HLS_Final_vitis_src/clean/randombytes.h ../../HLS_Final_vitis_src/clean/randombytes.cpp ../../HLS_Final_vitis_src/clean/polyvec.h ../../HLS_Final_vitis_src/clean/polyvec.cpp ../../HLS_Final_vitis_src/clean/poly.h ../../HLS_Final_vitis_src/clean/poly.cpp ../../HLS_Final_vitis_src/clean/params.h ../../HLS_Final_vitis_src/clean/packing.h ../../HLS_Final_vitis_src/clean/packing.cpp ../../HLS_Final_vitis_src/clean/ntt.h ../../HLS_Final_vitis_src/clean/ntt.cpp ../../HLS_Final_vitis_src/clean/fips202.h ../../HLS_Final_vitis_src/clean/fips202.cpp ../../HLS_Final_vitis_src/clean/config.h ../../HLS_Final_vitis_src/clean/api.h ../../HLS_Final_vitis_src/clean/aes256ctr.h ../../HLS_Final_vitis_src/clean/aes256ctr.cpp} vhdl {../../HLS_Final_vitis_src/test_dilithium.cpp ../../HLS_Final_vitis_src/clean/symmetric.h ../../HLS_Final_vitis_src/clean/symmetric-shake.cpp ../../HLS_Final_vitis_src/clean/symmetric-aes.cpp ../../HLS_Final_vitis_src/clean/sign.h ../../HLS_Final_vitis_src/clean/sign.cpp ../../HLS_Final_vitis_src/clean/rounding.h ../../HLS_Final_vitis_src/clean/rounding.cpp ../../HLS_Final_vitis_src/clean/reduce.h ../../HLS_Final_vitis_src/clean/reduce.cpp ../../HLS_Final_vitis_src/clean/randombytes.h ../../HLS_Final_vitis_src/clean/randombytes.cpp ../../HLS_Final_vitis_src/clean/polyvec.h ../../HLS_Final_vitis_src/clean/polyvec.cpp ../../HLS_Final_vitis_src/clean/poly.h ../../HLS_Final_vitis_src/clean/poly.cpp ../../HLS_Final_vitis_src/clean/params.h ../../HLS_Final_vitis_src/clean/packing.h ../../HLS_Final_vitis_src/clean/packing.cpp ../../HLS_Final_vitis_src/clean/ntt.h ../../HLS_Final_vitis_src/clean/ntt.cpp ../../HLS_Final_vitis_src/clean/fips202.h ../../HLS_Final_vitis_src/clean/fips202.cpp ../../HLS_Final_vitis_src/clean/config.h ../../HLS_Final_vitis_src/clean/api.h ../../HLS_Final_vitis_src/clean/aes256ctr.h ../../HLS_Final_vitis_src/clean/aes256ctr.cpp} sc {../../HLS_Final_vitis_src/test_dilithium.cpp ../../HLS_Final_vitis_src/clean/symmetric.h ../../HLS_Final_vitis_src/clean/symmetric-shake.cpp ../../HLS_Final_vitis_src/clean/symmetric-aes.cpp ../../HLS_Final_vitis_src/clean/sign.h ../../HLS_Final_vitis_src/clean/sign.cpp ../../HLS_Final_vitis_src/clean/rounding.h ../../HLS_Final_vitis_src/clean/rounding.cpp ../../HLS_Final_vitis_src/clean/reduce.h ../../HLS_Final_vitis_src/clean/reduce.cpp ../../HLS_Final_vitis_src/clean/randombytes.h ../../HLS_Final_vitis_src/clean/randombytes.cpp ../../HLS_Final_vitis_src/clean/polyvec.h ../../HLS_Final_vitis_src/clean/polyvec.cpp ../../HLS_Final_vitis_src/clean/poly.h ../../HLS_Final_vitis_src/clean/poly.cpp ../../HLS_Final_vitis_src/clean/params.h ../../HLS_Final_vitis_src/clean/packing.h ../../HLS_Final_vitis_src/clean/packing.cpp ../../HLS_Final_vitis_src/clean/ntt.h ../../HLS_Final_vitis_src/clean/ntt.cpp ../../HLS_Final_vitis_src/clean/fips202.h ../../HLS_Final_vitis_src/clean/fips202.cpp ../../HLS_Final_vitis_src/clean/config.h ../../HLS_Final_vitis_src/clean/api.h ../../HLS_Final_vitis_src/clean/aes256ctr.h ../../HLS_Final_vitis_src/clean/aes256ctr.cpp} cas {../../HLS_Final_vitis_src/test_dilithium.cpp ../../HLS_Final_vitis_src/clean/symmetric.h ../../HLS_Final_vitis_src/clean/symmetric-shake.cpp ../../HLS_Final_vitis_src/clean/symmetric-aes.cpp ../../HLS_Final_vitis_src/clean/sign.h ../../HLS_Final_vitis_src/clean/sign.cpp ../../HLS_Final_vitis_src/clean/rounding.h ../../HLS_Final_vitis_src/clean/rounding.cpp ../../HLS_Final_vitis_src/clean/reduce.h ../../HLS_Final_vitis_src/clean/reduce.cpp ../../HLS_Final_vitis_src/clean/randombytes.h ../../HLS_Final_vitis_src/clean/randombytes.cpp ../../HLS_Final_vitis_src/clean/polyvec.h ../../HLS_Final_vitis_src/clean/polyvec.cpp ../../HLS_Final_vitis_src/clean/poly.h ../../HLS_Final_vitis_src/clean/poly.cpp ../../HLS_Final_vitis_src/clean/params.h ../../HLS_Final_vitis_src/clean/packing.h ../../HLS_Final_vitis_src/clean/packing.cpp ../../HLS_Final_vitis_src/clean/ntt.h ../../HLS_Final_vitis_src/clean/ntt.cpp ../../HLS_Final_vitis_src/clean/fips202.h ../../HLS_Final_vitis_src/clean/fips202.cpp ../../HLS_Final_vitis_src/clean/config.h ../../HLS_Final_vitis_src/clean/api.h ../../HLS_Final_vitis_src/clean/aes256ctr.h ../../HLS_Final_vitis_src/clean/aes256ctr.cpp} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution5.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0
