set SynModuleInfo {
  {SRCNAME fast_accel_Pipeline_Compute_Loop MODELNAME fast_accel_Pipeline_Compute_Loop RTLNAME fast_accel_fast_accel_Pipeline_Compute_Loop
    SUBMODULES {
      {MODELNAME fast_accel_mac_muladd_15s_10s_7ns_15_4_1 RTLNAME fast_accel_mac_muladd_15s_10s_7ns_15_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fast_accel_mac_muladd_7ns_15s_7ns_15_4_1 RTLNAME fast_accel_mac_muladd_7ns_15s_7ns_15_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fast_accel_flow_control_loop_pipe_sequential_init RTLNAME fast_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fast_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fast_accel MODELNAME fast_accel RTLNAME fast_accel IS_TOP 1}
}
