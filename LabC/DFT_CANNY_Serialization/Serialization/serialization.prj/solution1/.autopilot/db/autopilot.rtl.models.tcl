set SynModuleInfo {
  {SRCNAME dut_Pipeline_OBJ_LOOP MODELNAME dut_Pipeline_OBJ_LOOP RTLNAME dut_dut_Pipeline_OBJ_LOOP
    SUBMODULES {
      {MODELNAME dut_flow_control_loop_pipe_sequential_init RTLNAME dut_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dut_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mergeBuffer_Pipeline_1 MODELNAME mergeBuffer_Pipeline_1 RTLNAME dut_mergeBuffer_Pipeline_1
    SUBMODULES {
      {MODELNAME dut_mux_83_8_1_1 RTLNAME dut_mux_83_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mergeBuffer_Pipeline_2 MODELNAME mergeBuffer_Pipeline_2 RTLNAME dut_mergeBuffer_Pipeline_2}
  {SRCNAME mergeBuffer_Pipeline_3 MODELNAME mergeBuffer_Pipeline_3 RTLNAME dut_mergeBuffer_Pipeline_3}
  {SRCNAME mergeBuffer_Pipeline_4 MODELNAME mergeBuffer_Pipeline_4 RTLNAME dut_mergeBuffer_Pipeline_4}
  {SRCNAME mergeBuffer_Pipeline_5 MODELNAME mergeBuffer_Pipeline_5 RTLNAME dut_mergeBuffer_Pipeline_5}
  {SRCNAME mergeBuffer_Pipeline_6 MODELNAME mergeBuffer_Pipeline_6 RTLNAME dut_mergeBuffer_Pipeline_6}
  {SRCNAME mergeBuffer_Pipeline_7 MODELNAME mergeBuffer_Pipeline_7 RTLNAME dut_mergeBuffer_Pipeline_7}
  {SRCNAME mergeBuffer_Pipeline_8 MODELNAME mergeBuffer_Pipeline_8 RTLNAME dut_mergeBuffer_Pipeline_8}
  {SRCNAME mergeBuffer_Pipeline_9 MODELNAME mergeBuffer_Pipeline_9 RTLNAME dut_mergeBuffer_Pipeline_9}
  {SRCNAME mergeBuffer_Pipeline_10 MODELNAME mergeBuffer_Pipeline_10 RTLNAME dut_mergeBuffer_Pipeline_10}
  {SRCNAME mergeBuffer_Pipeline_11 MODELNAME mergeBuffer_Pipeline_11 RTLNAME dut_mergeBuffer_Pipeline_11}
  {SRCNAME mergeBuffer_Pipeline_12 MODELNAME mergeBuffer_Pipeline_12 RTLNAME dut_mergeBuffer_Pipeline_12}
  {SRCNAME mergeBuffer MODELNAME mergeBuffer RTLNAME dut_mergeBuffer}
  {SRCNAME dut MODELNAME dut RTLNAME dut IS_TOP 1
    SUBMODULES {
      {MODELNAME dut_srem_33ns_5ns_33_37_seq_1 RTLNAME dut_srem_33ns_5ns_33_37_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 36 ALLOW_PRAGMA 1}
      {MODELNAME dut_dst_buf0_RAM_AUTO_1R1W RTLNAME dut_dst_buf0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_val_buf0_RAM_AUTO_1R1W RTLNAME dut_val_buf0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_control_s_axi RTLNAME dut_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME dut_regslice_both RTLNAME dut_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME dut_regslice_both_U}
    }
  }
}
