set SynModuleInfo {
  {SRCNAME dut_Pipeline_1 MODELNAME dut_Pipeline_1 RTLNAME dut_dut_Pipeline_1
    SUBMODULES {
      {MODELNAME dut_flow_control_loop_pipe_sequential_init RTLNAME dut_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dut_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dut_Pipeline_2 MODELNAME dut_Pipeline_2 RTLNAME dut_dut_Pipeline_2}
  {SRCNAME dut_Pipeline_3 MODELNAME dut_Pipeline_3 RTLNAME dut_dut_Pipeline_3}
  {SRCNAME dut_Pipeline_4 MODELNAME dut_Pipeline_4 RTLNAME dut_dut_Pipeline_4}
  {SRCNAME dut_Pipeline_5 MODELNAME dut_Pipeline_5 RTLNAME dut_dut_Pipeline_5}
  {SRCNAME dut_Pipeline_6 MODELNAME dut_Pipeline_6 RTLNAME dut_dut_Pipeline_6}
  {SRCNAME dut_Pipeline_7 MODELNAME dut_Pipeline_7 RTLNAME dut_dut_Pipeline_7}
  {SRCNAME dut_Pipeline_8 MODELNAME dut_Pipeline_8 RTLNAME dut_dut_Pipeline_8}
  {SRCNAME dut_Pipeline_VITIS_LOOP_37_1 MODELNAME dut_Pipeline_VITIS_LOOP_37_1 RTLNAME dut_dut_Pipeline_VITIS_LOOP_37_1
    SUBMODULES {
      {MODELNAME dut_add_64ns_64ns_64_2_1 RTLNAME dut_add_64ns_64ns_64_2_1 BINDTYPE op TYPE add IMPL fabric LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dut_Pipeline_VITIS_LOOP_125_3 MODELNAME dut_Pipeline_VITIS_LOOP_125_3 RTLNAME dut_dut_Pipeline_VITIS_LOOP_125_3
    SUBMODULES {
      {MODELNAME dut_mux_42_8_1_1 RTLNAME dut_mux_42_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dut MODELNAME dut RTLNAME dut IS_TOP 1
    SUBMODULES {
      {MODELNAME dut_int_1_RAM_AUTO_1R1W RTLNAME dut_int_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_string_pos_1_RAM_AUTO_1R1W RTLNAME dut_string_pos_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_string_1_RAM_AUTO_1R1W RTLNAME dut_string_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_string_2_RAM_AUTO_1R1W RTLNAME dut_string_2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_gmem_m_axi RTLNAME dut_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME dut_control_s_axi RTLNAME dut_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
