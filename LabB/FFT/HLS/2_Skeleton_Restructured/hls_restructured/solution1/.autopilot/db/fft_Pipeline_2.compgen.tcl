# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6 \
    name X_I_i \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename X_I_i \
    op interface \
    ports { X_I_i_address0 { O 10 vector } X_I_i_ce0 { O 1 bit } X_I_i_we0 { O 1 bit } X_I_i_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_I_i'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name input_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_0 \
    op interface \
    ports { m_axi_input_0_AWVALID { O 1 bit } m_axi_input_0_AWREADY { I 1 bit } m_axi_input_0_AWADDR { O 64 vector } m_axi_input_0_AWID { O 1 vector } m_axi_input_0_AWLEN { O 32 vector } m_axi_input_0_AWSIZE { O 3 vector } m_axi_input_0_AWBURST { O 2 vector } m_axi_input_0_AWLOCK { O 2 vector } m_axi_input_0_AWCACHE { O 4 vector } m_axi_input_0_AWPROT { O 3 vector } m_axi_input_0_AWQOS { O 4 vector } m_axi_input_0_AWREGION { O 4 vector } m_axi_input_0_AWUSER { O 1 vector } m_axi_input_0_WVALID { O 1 bit } m_axi_input_0_WREADY { I 1 bit } m_axi_input_0_WDATA { O 32 vector } m_axi_input_0_WSTRB { O 4 vector } m_axi_input_0_WLAST { O 1 bit } m_axi_input_0_WID { O 1 vector } m_axi_input_0_WUSER { O 1 vector } m_axi_input_0_ARVALID { O 1 bit } m_axi_input_0_ARREADY { I 1 bit } m_axi_input_0_ARADDR { O 64 vector } m_axi_input_0_ARID { O 1 vector } m_axi_input_0_ARLEN { O 32 vector } m_axi_input_0_ARSIZE { O 3 vector } m_axi_input_0_ARBURST { O 2 vector } m_axi_input_0_ARLOCK { O 2 vector } m_axi_input_0_ARCACHE { O 4 vector } m_axi_input_0_ARPROT { O 3 vector } m_axi_input_0_ARQOS { O 4 vector } m_axi_input_0_ARREGION { O 4 vector } m_axi_input_0_ARUSER { O 1 vector } m_axi_input_0_RVALID { I 1 bit } m_axi_input_0_RREADY { O 1 bit } m_axi_input_0_RDATA { I 32 vector } m_axi_input_0_RLAST { I 1 bit } m_axi_input_0_RID { I 1 vector } m_axi_input_0_RFIFONUM { I 9 vector } m_axi_input_0_RUSER { I 1 vector } m_axi_input_0_RRESP { I 2 vector } m_axi_input_0_BVALID { I 1 bit } m_axi_input_0_BREADY { O 1 bit } m_axi_input_0_BRESP { I 2 vector } m_axi_input_0_BID { I 1 vector } m_axi_input_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name sext_ln34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln34 \
    op interface \
    ports { sext_ln34 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName fft_flow_control_loop_pipe_sequential_init_U
set CompName fft_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix fft_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


