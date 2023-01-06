set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME canny_entry_proc}
  {SRCNAME MergeFilter MODELNAME MergeFilter RTLNAME canny_MergeFilter
    SUBMODULES {
      {MODELNAME canny_mul_8ns_8s_16_3_1 RTLNAME canny_mul_8ns_8s_16_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_mul_8ns_10ns_17_3_1 RTLNAME canny_mul_8ns_10ns_17_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_mul_8ns_10s_18_3_1 RTLNAME canny_mul_8ns_10s_18_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_mul_8ns_8ns_15_3_1 RTLNAME canny_mul_8ns_8ns_15_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_7ns_16ns_16_4_1 RTLNAME canny_mac_muladd_8ns_7ns_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_9ns_17ns_18_4_1 RTLNAME canny_mac_muladd_8ns_9ns_17ns_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_8s_16s_17_4_1 RTLNAME canny_mac_muladd_8ns_8s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_7ns_17ns_17_4_1 RTLNAME canny_mac_muladd_8ns_7ns_17ns_17_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_9ns_18ns_19_4_1 RTLNAME canny_mac_muladd_8ns_9ns_18ns_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_10s_18s_19_4_1 RTLNAME canny_mac_muladd_8ns_10s_18s_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mul_mul_8ns_11s_19_4_1 RTLNAME canny_mul_mul_8ns_11s_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_9ns_18ns_18_4_1 RTLNAME canny_mac_muladd_8ns_9ns_18ns_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_7ns_17ns_18_4_1 RTLNAME canny_mac_muladd_8ns_7ns_17ns_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_10ns_19ns_20_4_1 RTLNAME canny_mac_muladd_8ns_10ns_19ns_20_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_7ns_15ns_16_4_1 RTLNAME canny_mac_muladd_8ns_7ns_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_10s_19s_19_4_1 RTLNAME canny_mac_muladd_8ns_10s_19s_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_11s_19s_20_4_1 RTLNAME canny_mac_muladd_8ns_11s_19s_20_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_10ns_18s_19_4_1 RTLNAME canny_mac_muladd_8ns_10ns_18s_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_10s_17s_19_4_1 RTLNAME canny_mac_muladd_8ns_10s_17s_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_10s_18ns_19_4_1 RTLNAME canny_mac_muladd_8ns_10s_18ns_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_7ns_16ns_17_4_1 RTLNAME canny_mac_muladd_8ns_7ns_16ns_17_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_8ns_9ns_17s_18_4_1 RTLNAME canny_mac_muladd_8ns_9ns_17s_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_MergeFilter_LineBuff_RAM_AUTO_1R1W RTLNAME canny_MergeFilter_LineBuff_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_flow_control_loop_pipe RTLNAME canny_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME canny_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME ConvertXY MODELNAME ConvertXY RTLNAME canny_ConvertXY
    SUBMODULES {
      {MODELNAME canny_mul_mul_13s_13s_26_4_1 RTLNAME canny_mul_mul_13s_13s_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mul_mul_20s_13s_32_4_1 RTLNAME canny_mul_mul_20s_13s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mac_muladd_13s_13s_26s_26_4_1 RTLNAME canny_mac_muladd_13s_13s_26s_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mul_mul_26s_6ns_32_4_1 RTLNAME canny_mul_mul_26s_6ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME canny_mul_mul_26s_9ns_32_4_1 RTLNAME canny_mul_mul_26s_9ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1 MODELNAME NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1 RTLNAME canny_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1
    SUBMODULES {
      {MODELNAME canny_flow_control_loop_pipe_sequential_init RTLNAME canny_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME canny_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME NonMaximumSuppression MODELNAME NonMaximumSuppression RTLNAME canny_NonMaximumSuppression
    SUBMODULES {
      {MODELNAME canny_mul_32s_32s_32_5_1 RTLNAME canny_mul_32s_32s_32_5_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME canny_NonMaximumSuppression_LineBuff_mag_RAM_AUTO_1R1W RTLNAME canny_NonMaximumSuppression_LineBuff_mag_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_NonMaximumSuppression_LineBuff_tan_y_RAM_AUTO_1R1W RTLNAME canny_NonMaximumSuppression_LineBuff_tan_y_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME canny MODELNAME canny RTLNAME canny IS_TOP 1
    SUBMODULES {
      {MODELNAME canny_fifo_w32_d4_S RTLNAME canny_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME upperThresh_c_U}
      {MODELNAME canny_fifo_w32_d4_S RTLNAME canny_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME lowerThresh_c_U}
      {MODELNAME canny_fifo_w13_d16384_A RTLNAME canny_fifo_w13_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_sobel_V_U}
      {MODELNAME canny_fifo_w13_d16384_A RTLNAME canny_fifo_w13_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME y_sobel_V_U}
      {MODELNAME canny_fifo_w20_d21846_A RTLNAME canny_fifo_w20_d21846_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME y_sobel_7_V_U}
      {MODELNAME canny_fifo_w26_d16384_A RTLNAME canny_fifo_w26_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME magnitude_V_U}
      {MODELNAME canny_fifo_w32_d16384_A RTLNAME canny_fifo_w32_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME tangent_y_V_U}
      {MODELNAME canny_fifo_w32_d16384_A RTLNAME canny_fifo_w32_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME tangent_x_225_V_U}
      {MODELNAME canny_fifo_w32_d16384_A RTLNAME canny_fifo_w32_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME tangent_x_675_V_U}
      {MODELNAME canny_start_for_NonMaximumSuppression_U0 RTLNAME canny_start_for_NonMaximumSuppression_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_NonMaximumSuppression_U0_U}
      {MODELNAME canny_start_for_ConvertXY_U0 RTLNAME canny_start_for_ConvertXY_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ConvertXY_U0_U}
    }
  }
}
