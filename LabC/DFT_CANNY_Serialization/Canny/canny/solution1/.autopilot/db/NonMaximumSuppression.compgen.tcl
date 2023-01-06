# This script segment is generated automatically by AutoPilot

set name canny_mul_32s_32s_32_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {dsp} LATENCY 4 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_NonMaximumSuppression_LineBuff_mag_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_NonMaximumSuppression_LineBuff_tan_y_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


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
    id 107 \
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
    id 101 \
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
    id 102 \
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
    id 103 \
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
    id 104 \
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
    id 105 \
    name upperThresh \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_upperThresh \
    op interface \
    ports { upperThresh_dout { I 32 vector } upperThresh_num_data_valid { I 3 vector } upperThresh_fifo_cap { I 3 vector } upperThresh_empty_n { I 1 bit } upperThresh_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name lowerThresh \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lowerThresh \
    op interface \
    ports { lowerThresh_dout { I 32 vector } lowerThresh_num_data_valid { I 3 vector } lowerThresh_fifo_cap { I 3 vector } lowerThresh_empty_n { I 1 bit } lowerThresh_read { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


