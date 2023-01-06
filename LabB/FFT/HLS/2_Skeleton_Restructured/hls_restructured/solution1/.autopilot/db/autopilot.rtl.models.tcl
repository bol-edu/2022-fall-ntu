set SynModuleInfo {
  {SRCNAME fft_Pipeline_1 MODELNAME fft_Pipeline_1 RTLNAME fft_fft_Pipeline_1
    SUBMODULES {
      {MODELNAME fft_flow_control_loop_pipe_sequential_init RTLNAME fft_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fft_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fft_Pipeline_2 MODELNAME fft_Pipeline_2 RTLNAME fft_fft_Pipeline_2}
  {SRCNAME fft_exec_Pipeline_All_Loop MODELNAME fft_exec_Pipeline_All_Loop RTLNAME fft_fft_exec_Pipeline_All_Loop}
  {SRCNAME fft_exec_Pipeline_DFT_Loop MODELNAME fft_exec_Pipeline_DFT_Loop RTLNAME fft_fft_exec_Pipeline_DFT_Loop}
  {SRCNAME fft_exec_Pipeline_DFT_Loop9 MODELNAME fft_exec_Pipeline_DFT_Loop9 RTLNAME fft_fft_exec_Pipeline_DFT_Loop9}
  {SRCNAME fft_exec_Pipeline_DFT_Loop10 MODELNAME fft_exec_Pipeline_DFT_Loop10 RTLNAME fft_fft_exec_Pipeline_DFT_Loop10}
  {SRCNAME fft_exec_Pipeline_DFT_Loop11 MODELNAME fft_exec_Pipeline_DFT_Loop11 RTLNAME fft_fft_exec_Pipeline_DFT_Loop11}
  {SRCNAME fft_exec_Pipeline_DFT_Loop12 MODELNAME fft_exec_Pipeline_DFT_Loop12 RTLNAME fft_fft_exec_Pipeline_DFT_Loop12}
  {SRCNAME fft_exec_Pipeline_DFT_Loop13 MODELNAME fft_exec_Pipeline_DFT_Loop13 RTLNAME fft_fft_exec_Pipeline_DFT_Loop13}
  {SRCNAME fft_exec_Pipeline_DFT_Loop14 MODELNAME fft_exec_Pipeline_DFT_Loop14 RTLNAME fft_fft_exec_Pipeline_DFT_Loop14}
  {SRCNAME fft_exec_Pipeline_DFT_Loop15 MODELNAME fft_exec_Pipeline_DFT_Loop15 RTLNAME fft_fft_exec_Pipeline_DFT_Loop15}
  {SRCNAME fft_exec_Pipeline_DFT_Loop16 MODELNAME fft_exec_Pipeline_DFT_Loop16 RTLNAME fft_fft_exec_Pipeline_DFT_Loop16}
  {SRCNAME fft_exec_Pipeline_DFT_Loop17 MODELNAME fft_exec_Pipeline_DFT_Loop17 RTLNAME fft_fft_exec_Pipeline_DFT_Loop17}
  {SRCNAME fft_exec MODELNAME fft_exec RTLNAME fft_fft_exec
    SUBMODULES {
      {MODELNAME fft_fsub_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_fsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME fft_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fft_fft_exec_W_real_ROM_AUTO_1R RTLNAME fft_fft_exec_W_real_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_fft_exec_W_imag_ROM_AUTO_1R RTLNAME fft_fft_exec_W_imag_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_fft_exec_Stage0_R_RAM_AUTO_1R1W RTLNAME fft_fft_exec_Stage0_R_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_fft_exec_Stage1_R_RAM_AUTO_1R1W RTLNAME fft_fft_exec_Stage1_R_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_Pipeline_3 MODELNAME fft_Pipeline_3 RTLNAME fft_fft_Pipeline_3
    SUBMODULES {
      {MODELNAME fft_mux_42_32_1_1 RTLNAME fft_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_Pipeline_4 MODELNAME fft_Pipeline_4 RTLNAME fft_fft_Pipeline_4}
  {SRCNAME fft MODELNAME fft RTLNAME fft IS_TOP 1
    SUBMODULES {
      {MODELNAME fft_X_R_i_RAM_AUTO_1R1W RTLNAME fft_X_R_i_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_OUT_R_o_0_RAM_AUTO_1R1W RTLNAME fft_OUT_R_o_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_input_1_m_axi RTLNAME fft_input_1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME fft_input_0_m_axi RTLNAME fft_input_0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME fft_output_1_m_axi RTLNAME fft_output_1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME fft_output_0_m_axi RTLNAME fft_output_0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME fft_control_s_axi RTLNAME fft_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
