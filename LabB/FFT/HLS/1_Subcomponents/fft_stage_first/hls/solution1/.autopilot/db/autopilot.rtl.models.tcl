set SynModuleInfo {
  {SRCNAME fft_stage_first MODELNAME fft_stage_first RTLNAME fft_stage_first IS_TOP 1
    SUBMODULES {
      {MODELNAME fft_stage_first_fsub_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_stage_first_fsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_stage_first_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_stage_first_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_stage_first_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME fft_stage_first_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fft_stage_first_flow_control_loop_pipe RTLNAME fft_stage_first_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fft_stage_first_flow_control_loop_pipe_U}
    }
  }
}
