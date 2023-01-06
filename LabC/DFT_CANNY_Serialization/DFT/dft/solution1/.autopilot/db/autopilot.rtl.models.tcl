set SynModuleInfo {
  {SRCNAME dft_Pipeline_All_Loop MODELNAME dft_Pipeline_All_Loop RTLNAME dft_dft_Pipeline_All_Loop
    SUBMODULES {
      {MODELNAME dft_flow_control_loop_pipe_sequential_init RTLNAME dft_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dft_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dft_Pipeline_DFT_Loop MODELNAME dft_Pipeline_DFT_Loop RTLNAME dft_dft_Pipeline_DFT_Loop}
  {SRCNAME dft_Pipeline_DFT_Loop1 MODELNAME dft_Pipeline_DFT_Loop1 RTLNAME dft_dft_Pipeline_DFT_Loop1}
  {SRCNAME dft_Pipeline_DFT_Loop2 MODELNAME dft_Pipeline_DFT_Loop2 RTLNAME dft_dft_Pipeline_DFT_Loop2}
  {SRCNAME dft_Pipeline_DFT_Loop3 MODELNAME dft_Pipeline_DFT_Loop3 RTLNAME dft_dft_Pipeline_DFT_Loop3}
  {SRCNAME dft_Pipeline_DFT_Loop4 MODELNAME dft_Pipeline_DFT_Loop4 RTLNAME dft_dft_Pipeline_DFT_Loop4}
  {SRCNAME dft_Pipeline_DFT_Loop5 MODELNAME dft_Pipeline_DFT_Loop5 RTLNAME dft_dft_Pipeline_DFT_Loop5}
  {SRCNAME dft_Pipeline_DFT_Loop6 MODELNAME dft_Pipeline_DFT_Loop6 RTLNAME dft_dft_Pipeline_DFT_Loop6}
  {SRCNAME dft_Pipeline_DFT_Loop7 MODELNAME dft_Pipeline_DFT_Loop7 RTLNAME dft_dft_Pipeline_DFT_Loop7}
  {SRCNAME dft_Pipeline_DFT_Loop8 MODELNAME dft_Pipeline_DFT_Loop8 RTLNAME dft_dft_Pipeline_DFT_Loop8}
  {SRCNAME dft_Pipeline_DFT_Loop9 MODELNAME dft_Pipeline_DFT_Loop9 RTLNAME dft_dft_Pipeline_DFT_Loop9}
  {SRCNAME dft MODELNAME dft RTLNAME dft IS_TOP 1
    SUBMODULES {
      {MODELNAME dft_fsub_32ns_32ns_32_13_no_dsp_1 RTLNAME dft_fsub_32ns_32ns_32_13_no_dsp_1 BINDTYPE op TYPE fsub IMPL fabric LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME dft_fadd_32ns_32ns_32_13_no_dsp_1 RTLNAME dft_fadd_32ns_32ns_32_13_no_dsp_1 BINDTYPE op TYPE fadd IMPL fabric LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME dft_faddfsub_32ns_32ns_32_13_no_dsp_1 RTLNAME dft_faddfsub_32ns_32ns_32_13_no_dsp_1 BINDTYPE op TYPE fadd IMPL fabric LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME dft_faddfsub_32ns_32ns_32_13_no_dsp_1 RTLNAME dft_faddfsub_32ns_32ns_32_13_no_dsp_1 BINDTYPE op TYPE fsub IMPL fabric LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME dft_fmul_32ns_32ns_32_8_max_dsp_1 RTLNAME dft_fmul_32ns_32ns_32_8_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME dft_W_real_ROM_AUTO_1R RTLNAME dft_W_real_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_W_imag_ROM_AUTO_1R RTLNAME dft_W_imag_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_buf0_R_RAM_AUTO_1R1W RTLNAME dft_buf0_R_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_control_s_axi RTLNAME dft_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME dft_regslice_both RTLNAME dft_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME dft_regslice_both_U}
    }
  }
}
