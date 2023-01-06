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
    id 85 \
    name LineBuff_mag \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename LineBuff_mag \
    op interface \
    ports { LineBuff_mag_address0 { O 7 vector } LineBuff_mag_ce0 { O 1 bit } LineBuff_mag_we0 { O 1 bit } LineBuff_mag_d0 { O 90 vector } LineBuff_mag_address1 { O 7 vector } LineBuff_mag_ce1 { O 1 bit } LineBuff_mag_q1 { I 90 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LineBuff_mag'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 86 \
    name LineBuff_tan_y \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename LineBuff_tan_y \
    op interface \
    ports { LineBuff_tan_y_address0 { O 7 vector } LineBuff_tan_y_ce0 { O 1 bit } LineBuff_tan_y_we0 { O 1 bit } LineBuff_tan_y_d0 { O 96 vector } LineBuff_tan_y_address1 { O 7 vector } LineBuff_tan_y_ce1 { O 1 bit } LineBuff_tan_y_q1 { I 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LineBuff_tan_y'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 87 \
    name LineBuff_tan_x_225 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename LineBuff_tan_x_225 \
    op interface \
    ports { LineBuff_tan_x_225_address0 { O 7 vector } LineBuff_tan_x_225_ce0 { O 1 bit } LineBuff_tan_x_225_we0 { O 1 bit } LineBuff_tan_x_225_d0 { O 96 vector } LineBuff_tan_x_225_address1 { O 7 vector } LineBuff_tan_x_225_ce1 { O 1 bit } LineBuff_tan_x_225_q1 { I 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LineBuff_tan_x_225'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 88 \
    name LineBuff_tan_x_675 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename LineBuff_tan_x_675 \
    op interface \
    ports { LineBuff_tan_x_675_address0 { O 7 vector } LineBuff_tan_x_675_ce0 { O 1 bit } LineBuff_tan_x_675_we0 { O 1 bit } LineBuff_tan_x_675_d0 { O 96 vector } LineBuff_tan_x_675_address1 { O 7 vector } LineBuff_tan_x_675_ce1 { O 1 bit } LineBuff_tan_x_675_q1 { I 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LineBuff_tan_x_675'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 95 \
    name dst \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst \
    op interface \
    ports { dst_address0 { O 14 vector } dst_ce0 { O 1 bit } dst_we0 { O 1 bit } dst_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name magnitude \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_magnitude \
    op interface \
    ports { magnitude_dout { I 26 vector } magnitude_num_data_valid { I 15 vector } magnitude_fifo_cap { I 15 vector } magnitude_empty_n { I 1 bit } magnitude_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name tangent_y \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tangent_y \
    op interface \
    ports { tangent_y_dout { I 32 vector } tangent_y_num_data_valid { I 15 vector } tangent_y_fifo_cap { I 15 vector } tangent_y_empty_n { I 1 bit } tangent_y_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name tangent_x_225 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tangent_x_225 \
    op interface \
    ports { tangent_x_225_dout { I 32 vector } tangent_x_225_num_data_valid { I 15 vector } tangent_x_225_fifo_cap { I 15 vector } tangent_x_225_empty_n { I 1 bit } tangent_x_225_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name tangent_x_675 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tangent_x_675 \
    op interface \
    ports { tangent_x_675_dout { I 32 vector } tangent_x_675_num_data_valid { I 15 vector } tangent_x_675_fifo_cap { I 15 vector } tangent_x_675_empty_n { I 1 bit } tangent_x_675_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name upperThresh_scale \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_upperThresh_scale \
    op interface \
    ports { upperThresh_scale { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name lowerThresh_scale \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lowerThresh_scale \
    op interface \
    ports { lowerThresh_scale { I 32 vector } } \
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
set InstName canny_flow_control_loop_pipe_sequential_init_U
set CompName canny_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix canny_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


