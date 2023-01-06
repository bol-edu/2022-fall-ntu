# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name it \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_it \
    op interface \
    ports { it_dout { I 32 vector } it_empty_n { I 1 bit } it_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name Arows_V_a_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Arows_V_a_0 \
    op interface \
    ports { Arows_V_a_0_dout { I 32 vector } Arows_V_a_0_empty_n { I 1 bit } Arows_V_a_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name Arows_V_a_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Arows_V_a_1 \
    op interface \
    ports { Arows_V_a_1_dout { I 32 vector } Arows_V_a_1_empty_n { I 1 bit } Arows_V_a_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name Arows_V_a_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Arows_V_a_2 \
    op interface \
    ports { Arows_V_a_2_dout { I 32 vector } Arows_V_a_2_empty_n { I 1 bit } Arows_V_a_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name Arows_V_a_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Arows_V_a_3 \
    op interface \
    ports { Arows_V_a_3_dout { I 32 vector } Arows_V_a_3_empty_n { I 1 bit } Arows_V_a_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name A_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_A_0 \
    op interface \
    ports { A_0_din { O 32 vector } A_0_full_n { I 1 bit } A_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name A_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_A_1 \
    op interface \
    ports { A_1_din { O 32 vector } A_1_full_n { I 1 bit } A_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name A_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_A_2 \
    op interface \
    ports { A_2_din { O 32 vector } A_2_full_n { I 1 bit } A_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name A_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_A_3 \
    op interface \
    ports { A_3_din { O 32 vector } A_3_full_n { I 1 bit } A_3_write { O 1 bit } } \
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


