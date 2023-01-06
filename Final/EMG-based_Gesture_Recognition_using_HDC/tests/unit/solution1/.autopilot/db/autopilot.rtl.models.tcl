set SynModuleInfo {
  {SRCNAME hdc_maxi_Pipeline_VITIS_LOOP_15_1 MODELNAME hdc_maxi_Pipeline_VITIS_LOOP_15_1 RTLNAME hdc_maxi_hdc_maxi_Pipeline_VITIS_LOOP_15_1
    SUBMODULES {
      {MODELNAME hdc_maxi_mux_42_8192_1_1 RTLNAME hdc_maxi_mux_42_8192_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hdc_maxi_flow_control_loop_pipe_sequential_init RTLNAME hdc_maxi_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME hdc_maxi_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3 MODELNAME hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3 RTLNAME hdc_maxi_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3
    SUBMODULES {
      {MODELNAME hdc_maxi_mac_muladd_3ns_8ns_8ns_11_4_1 RTLNAME hdc_maxi_mac_muladd_3ns_8ns_8ns_11_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hdc_maxi_Pipeline_VITIS_LOOP_40_5 MODELNAME hdc_maxi_Pipeline_VITIS_LOOP_40_5 RTLNAME hdc_maxi_hdc_maxi_Pipeline_VITIS_LOOP_40_5}
  {SRCNAME hdc_maxi_Pipeline_VITIS_LOOP_51_8 MODELNAME hdc_maxi_Pipeline_VITIS_LOOP_51_8 RTLNAME hdc_maxi_hdc_maxi_Pipeline_VITIS_LOOP_51_8}
  {SRCNAME hdc_maxi_Pipeline_VITIS_LOOP_68_9_VITIS_LOOP_70_10 MODELNAME hdc_maxi_Pipeline_VITIS_LOOP_68_9_VITIS_LOOP_70_10 RTLNAME hdc_maxi_hdc_maxi_Pipeline_VITIS_LOOP_68_9_VITIS_LOOP_70_10
    SUBMODULES {
      {MODELNAME hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1 RTLNAME hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hdc_maxi MODELNAME hdc_maxi RTLNAME hdc_maxi IS_TOP 1
    SUBMODULES {
      {MODELNAME hdc_maxi_AM_RAM_AUTO_1R1W RTLNAME hdc_maxi_AM_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdc_maxi_ngram_RAM_AUTO_1R1W RTLNAME hdc_maxi_ngram_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdc_maxi_test_data_d_RAM_AUTO_1R1W RTLNAME hdc_maxi_test_data_d_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdc_maxi_control_s_axi RTLNAME hdc_maxi_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME hdc_maxi_regslice_both RTLNAME hdc_maxi_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME hdc_maxi_regslice_both_U}
    }
  }
}
