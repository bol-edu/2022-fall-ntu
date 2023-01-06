# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 256 \
    name dst \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { dst_TDATA { O 8 vector } dst_TVALID { O 1 bit } dst_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 257 \
    name buf0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf0_0 \
    op interface \
    ports { buf0_0_address0 { O 10 vector } buf0_0_ce0 { O 1 bit } buf0_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name buf0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf0_1 \
    op interface \
    ports { buf0_1_address0 { O 10 vector } buf0_1_ce0 { O 1 bit } buf0_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name buf0_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf0_2 \
    op interface \
    ports { buf0_2_address0 { O 10 vector } buf0_2_ce0 { O 1 bit } buf0_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name buf0_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf0_3 \
    op interface \
    ports { buf0_3_address0 { O 10 vector } buf0_3_ce0 { O 1 bit } buf0_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 261 \
    name buf0_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf0_4 \
    op interface \
    ports { buf0_4_address0 { O 10 vector } buf0_4_ce0 { O 1 bit } buf0_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf0_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 262 \
    name buf0_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf0_5 \
    op interface \
    ports { buf0_5_address0 { O 10 vector } buf0_5_ce0 { O 1 bit } buf0_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf0_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name buf0_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf0_6 \
    op interface \
    ports { buf0_6_address0 { O 10 vector } buf0_6_ce0 { O 1 bit } buf0_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf0_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 264 \
    name buf0_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf0_7 \
    op interface \
    ports { buf0_7_address0 { O 10 vector } buf0_7_ce0 { O 1 bit } buf0_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf0_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 266 \
    name val_buf0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf0_0 \
    op interface \
    ports { val_buf0_0_address0 { O 12 vector } val_buf0_0_ce0 { O 1 bit } val_buf0_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name val_buf0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf0_1 \
    op interface \
    ports { val_buf0_1_address0 { O 12 vector } val_buf0_1_ce0 { O 1 bit } val_buf0_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 268 \
    name val_buf0_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf0_2 \
    op interface \
    ports { val_buf0_2_address0 { O 12 vector } val_buf0_2_ce0 { O 1 bit } val_buf0_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name val_buf0_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf0_3 \
    op interface \
    ports { val_buf0_3_address0 { O 12 vector } val_buf0_3_ce0 { O 1 bit } val_buf0_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 270 \
    name val_buf0_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf0_4 \
    op interface \
    ports { val_buf0_4_address0 { O 12 vector } val_buf0_4_ce0 { O 1 bit } val_buf0_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf0_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 271 \
    name val_buf0_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf0_5 \
    op interface \
    ports { val_buf0_5_address0 { O 12 vector } val_buf0_5_ce0 { O 1 bit } val_buf0_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf0_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 272 \
    name val_buf0_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf0_6 \
    op interface \
    ports { val_buf0_6_address0 { O 12 vector } val_buf0_6_ce0 { O 1 bit } val_buf0_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf0_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name val_buf0_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf0_7 \
    op interface \
    ports { val_buf0_7_address0 { O 12 vector } val_buf0_7_ce0 { O 1 bit } val_buf0_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf0_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name buf1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf1_0 \
    op interface \
    ports { buf1_0_address0 { O 10 vector } buf1_0_ce0 { O 1 bit } buf1_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 276 \
    name buf1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf1_1 \
    op interface \
    ports { buf1_1_address0 { O 10 vector } buf1_1_ce0 { O 1 bit } buf1_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 277 \
    name buf1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf1_2 \
    op interface \
    ports { buf1_2_address0 { O 10 vector } buf1_2_ce0 { O 1 bit } buf1_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 278 \
    name buf1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf1_3 \
    op interface \
    ports { buf1_3_address0 { O 10 vector } buf1_3_ce0 { O 1 bit } buf1_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 279 \
    name buf1_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf1_4 \
    op interface \
    ports { buf1_4_address0 { O 10 vector } buf1_4_ce0 { O 1 bit } buf1_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 280 \
    name buf1_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf1_5 \
    op interface \
    ports { buf1_5_address0 { O 10 vector } buf1_5_ce0 { O 1 bit } buf1_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 281 \
    name buf1_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf1_6 \
    op interface \
    ports { buf1_6_address0 { O 10 vector } buf1_6_ce0 { O 1 bit } buf1_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 282 \
    name buf1_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf1_7 \
    op interface \
    ports { buf1_7_address0 { O 10 vector } buf1_7_ce0 { O 1 bit } buf1_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 284 \
    name val_buf1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf1_0 \
    op interface \
    ports { val_buf1_0_address0 { O 12 vector } val_buf1_0_ce0 { O 1 bit } val_buf1_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 285 \
    name val_buf1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf1_1 \
    op interface \
    ports { val_buf1_1_address0 { O 12 vector } val_buf1_1_ce0 { O 1 bit } val_buf1_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 286 \
    name val_buf1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf1_2 \
    op interface \
    ports { val_buf1_2_address0 { O 12 vector } val_buf1_2_ce0 { O 1 bit } val_buf1_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 287 \
    name val_buf1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf1_3 \
    op interface \
    ports { val_buf1_3_address0 { O 12 vector } val_buf1_3_ce0 { O 1 bit } val_buf1_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 288 \
    name val_buf1_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf1_4 \
    op interface \
    ports { val_buf1_4_address0 { O 12 vector } val_buf1_4_ce0 { O 1 bit } val_buf1_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 289 \
    name val_buf1_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf1_5 \
    op interface \
    ports { val_buf1_5_address0 { O 12 vector } val_buf1_5_ce0 { O 1 bit } val_buf1_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 290 \
    name val_buf1_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf1_6 \
    op interface \
    ports { val_buf1_6_address0 { O 12 vector } val_buf1_6_ce0 { O 1 bit } val_buf1_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 291 \
    name val_buf1_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf1_7 \
    op interface \
    ports { val_buf1_7_address0 { O 12 vector } val_buf1_7_ce0 { O 1 bit } val_buf1_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 293 \
    name buf2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf2_0 \
    op interface \
    ports { buf2_0_address0 { O 10 vector } buf2_0_ce0 { O 1 bit } buf2_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 294 \
    name buf2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf2_1 \
    op interface \
    ports { buf2_1_address0 { O 10 vector } buf2_1_ce0 { O 1 bit } buf2_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 295 \
    name buf2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf2_2 \
    op interface \
    ports { buf2_2_address0 { O 10 vector } buf2_2_ce0 { O 1 bit } buf2_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 296 \
    name buf2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf2_3 \
    op interface \
    ports { buf2_3_address0 { O 10 vector } buf2_3_ce0 { O 1 bit } buf2_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 297 \
    name buf2_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf2_4 \
    op interface \
    ports { buf2_4_address0 { O 10 vector } buf2_4_ce0 { O 1 bit } buf2_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf2_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 298 \
    name buf2_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf2_5 \
    op interface \
    ports { buf2_5_address0 { O 10 vector } buf2_5_ce0 { O 1 bit } buf2_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf2_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 299 \
    name buf2_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf2_6 \
    op interface \
    ports { buf2_6_address0 { O 10 vector } buf2_6_ce0 { O 1 bit } buf2_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf2_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 300 \
    name buf2_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf2_7 \
    op interface \
    ports { buf2_7_address0 { O 10 vector } buf2_7_ce0 { O 1 bit } buf2_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf2_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 302 \
    name val_buf2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf2_0 \
    op interface \
    ports { val_buf2_0_address0 { O 12 vector } val_buf2_0_ce0 { O 1 bit } val_buf2_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 303 \
    name val_buf2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf2_1 \
    op interface \
    ports { val_buf2_1_address0 { O 12 vector } val_buf2_1_ce0 { O 1 bit } val_buf2_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 304 \
    name val_buf2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf2_2 \
    op interface \
    ports { val_buf2_2_address0 { O 12 vector } val_buf2_2_ce0 { O 1 bit } val_buf2_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 305 \
    name val_buf2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf2_3 \
    op interface \
    ports { val_buf2_3_address0 { O 12 vector } val_buf2_3_ce0 { O 1 bit } val_buf2_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 306 \
    name val_buf2_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf2_4 \
    op interface \
    ports { val_buf2_4_address0 { O 12 vector } val_buf2_4_ce0 { O 1 bit } val_buf2_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf2_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 307 \
    name val_buf2_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf2_5 \
    op interface \
    ports { val_buf2_5_address0 { O 12 vector } val_buf2_5_ce0 { O 1 bit } val_buf2_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf2_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 308 \
    name val_buf2_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf2_6 \
    op interface \
    ports { val_buf2_6_address0 { O 12 vector } val_buf2_6_ce0 { O 1 bit } val_buf2_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf2_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 309 \
    name val_buf2_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf2_7 \
    op interface \
    ports { val_buf2_7_address0 { O 12 vector } val_buf2_7_ce0 { O 1 bit } val_buf2_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf2_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 311 \
    name buf3_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf3_0 \
    op interface \
    ports { buf3_0_address0 { O 10 vector } buf3_0_ce0 { O 1 bit } buf3_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 312 \
    name buf3_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf3_1 \
    op interface \
    ports { buf3_1_address0 { O 10 vector } buf3_1_ce0 { O 1 bit } buf3_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 313 \
    name buf3_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf3_2 \
    op interface \
    ports { buf3_2_address0 { O 10 vector } buf3_2_ce0 { O 1 bit } buf3_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 314 \
    name buf3_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf3_3 \
    op interface \
    ports { buf3_3_address0 { O 10 vector } buf3_3_ce0 { O 1 bit } buf3_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 315 \
    name buf3_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf3_4 \
    op interface \
    ports { buf3_4_address0 { O 10 vector } buf3_4_ce0 { O 1 bit } buf3_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf3_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 316 \
    name buf3_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf3_5 \
    op interface \
    ports { buf3_5_address0 { O 10 vector } buf3_5_ce0 { O 1 bit } buf3_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf3_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 317 \
    name buf3_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf3_6 \
    op interface \
    ports { buf3_6_address0 { O 10 vector } buf3_6_ce0 { O 1 bit } buf3_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf3_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 318 \
    name buf3_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf3_7 \
    op interface \
    ports { buf3_7_address0 { O 10 vector } buf3_7_ce0 { O 1 bit } buf3_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf3_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 320 \
    name val_buf3_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf3_0 \
    op interface \
    ports { val_buf3_0_address0 { O 12 vector } val_buf3_0_ce0 { O 1 bit } val_buf3_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 321 \
    name val_buf3_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf3_1 \
    op interface \
    ports { val_buf3_1_address0 { O 12 vector } val_buf3_1_ce0 { O 1 bit } val_buf3_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 322 \
    name val_buf3_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf3_2 \
    op interface \
    ports { val_buf3_2_address0 { O 12 vector } val_buf3_2_ce0 { O 1 bit } val_buf3_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 323 \
    name val_buf3_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf3_3 \
    op interface \
    ports { val_buf3_3_address0 { O 12 vector } val_buf3_3_ce0 { O 1 bit } val_buf3_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 324 \
    name val_buf3_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf3_4 \
    op interface \
    ports { val_buf3_4_address0 { O 12 vector } val_buf3_4_ce0 { O 1 bit } val_buf3_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf3_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 325 \
    name val_buf3_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf3_5 \
    op interface \
    ports { val_buf3_5_address0 { O 12 vector } val_buf3_5_ce0 { O 1 bit } val_buf3_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf3_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 326 \
    name val_buf3_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf3_6 \
    op interface \
    ports { val_buf3_6_address0 { O 12 vector } val_buf3_6_ce0 { O 1 bit } val_buf3_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf3_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 327 \
    name val_buf3_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf3_7 \
    op interface \
    ports { val_buf3_7_address0 { O 12 vector } val_buf3_7_ce0 { O 1 bit } val_buf3_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf3_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 329 \
    name buf4_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf4_0 \
    op interface \
    ports { buf4_0_address0 { O 10 vector } buf4_0_ce0 { O 1 bit } buf4_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 330 \
    name buf4_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf4_1 \
    op interface \
    ports { buf4_1_address0 { O 10 vector } buf4_1_ce0 { O 1 bit } buf4_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 331 \
    name buf4_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf4_2 \
    op interface \
    ports { buf4_2_address0 { O 10 vector } buf4_2_ce0 { O 1 bit } buf4_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf4_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 332 \
    name buf4_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf4_3 \
    op interface \
    ports { buf4_3_address0 { O 10 vector } buf4_3_ce0 { O 1 bit } buf4_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf4_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 333 \
    name buf4_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf4_4 \
    op interface \
    ports { buf4_4_address0 { O 10 vector } buf4_4_ce0 { O 1 bit } buf4_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf4_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 334 \
    name buf4_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf4_5 \
    op interface \
    ports { buf4_5_address0 { O 10 vector } buf4_5_ce0 { O 1 bit } buf4_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf4_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 335 \
    name buf4_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf4_6 \
    op interface \
    ports { buf4_6_address0 { O 10 vector } buf4_6_ce0 { O 1 bit } buf4_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf4_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 336 \
    name buf4_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf4_7 \
    op interface \
    ports { buf4_7_address0 { O 10 vector } buf4_7_ce0 { O 1 bit } buf4_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf4_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 338 \
    name val_buf4_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf4_0 \
    op interface \
    ports { val_buf4_0_address0 { O 12 vector } val_buf4_0_ce0 { O 1 bit } val_buf4_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 339 \
    name val_buf4_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf4_1 \
    op interface \
    ports { val_buf4_1_address0 { O 12 vector } val_buf4_1_ce0 { O 1 bit } val_buf4_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 340 \
    name val_buf4_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf4_2 \
    op interface \
    ports { val_buf4_2_address0 { O 12 vector } val_buf4_2_ce0 { O 1 bit } val_buf4_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf4_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 341 \
    name val_buf4_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf4_3 \
    op interface \
    ports { val_buf4_3_address0 { O 12 vector } val_buf4_3_ce0 { O 1 bit } val_buf4_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf4_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 342 \
    name val_buf4_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf4_4 \
    op interface \
    ports { val_buf4_4_address0 { O 12 vector } val_buf4_4_ce0 { O 1 bit } val_buf4_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf4_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 343 \
    name val_buf4_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf4_5 \
    op interface \
    ports { val_buf4_5_address0 { O 12 vector } val_buf4_5_ce0 { O 1 bit } val_buf4_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf4_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 344 \
    name val_buf4_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf4_6 \
    op interface \
    ports { val_buf4_6_address0 { O 12 vector } val_buf4_6_ce0 { O 1 bit } val_buf4_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf4_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 345 \
    name val_buf4_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf4_7 \
    op interface \
    ports { val_buf4_7_address0 { O 12 vector } val_buf4_7_ce0 { O 1 bit } val_buf4_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf4_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 347 \
    name buf5_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf5_0 \
    op interface \
    ports { buf5_0_address0 { O 10 vector } buf5_0_ce0 { O 1 bit } buf5_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 348 \
    name buf5_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf5_1 \
    op interface \
    ports { buf5_1_address0 { O 10 vector } buf5_1_ce0 { O 1 bit } buf5_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 349 \
    name buf5_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf5_2 \
    op interface \
    ports { buf5_2_address0 { O 10 vector } buf5_2_ce0 { O 1 bit } buf5_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf5_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 350 \
    name buf5_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf5_3 \
    op interface \
    ports { buf5_3_address0 { O 10 vector } buf5_3_ce0 { O 1 bit } buf5_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf5_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 351 \
    name buf5_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf5_4 \
    op interface \
    ports { buf5_4_address0 { O 10 vector } buf5_4_ce0 { O 1 bit } buf5_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf5_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 352 \
    name buf5_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf5_5 \
    op interface \
    ports { buf5_5_address0 { O 10 vector } buf5_5_ce0 { O 1 bit } buf5_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf5_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 353 \
    name buf5_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf5_6 \
    op interface \
    ports { buf5_6_address0 { O 10 vector } buf5_6_ce0 { O 1 bit } buf5_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf5_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 354 \
    name buf5_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buf5_7 \
    op interface \
    ports { buf5_7_address0 { O 10 vector } buf5_7_ce0 { O 1 bit } buf5_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf5_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 356 \
    name val_buf5_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf5_0 \
    op interface \
    ports { val_buf5_0_address0 { O 12 vector } val_buf5_0_ce0 { O 1 bit } val_buf5_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 357 \
    name val_buf5_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf5_1 \
    op interface \
    ports { val_buf5_1_address0 { O 12 vector } val_buf5_1_ce0 { O 1 bit } val_buf5_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 358 \
    name val_buf5_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf5_2 \
    op interface \
    ports { val_buf5_2_address0 { O 12 vector } val_buf5_2_ce0 { O 1 bit } val_buf5_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf5_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 359 \
    name val_buf5_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf5_3 \
    op interface \
    ports { val_buf5_3_address0 { O 12 vector } val_buf5_3_ce0 { O 1 bit } val_buf5_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf5_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 360 \
    name val_buf5_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf5_4 \
    op interface \
    ports { val_buf5_4_address0 { O 12 vector } val_buf5_4_ce0 { O 1 bit } val_buf5_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf5_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 361 \
    name val_buf5_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf5_5 \
    op interface \
    ports { val_buf5_5_address0 { O 12 vector } val_buf5_5_ce0 { O 1 bit } val_buf5_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf5_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 362 \
    name val_buf5_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf5_6 \
    op interface \
    ports { val_buf5_6_address0 { O 12 vector } val_buf5_6_ce0 { O 1 bit } val_buf5_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf5_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 363 \
    name val_buf5_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename val_buf5_7 \
    op interface \
    ports { val_buf5_7_address0 { O 12 vector } val_buf5_7_ce0 { O 1 bit } val_buf5_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'val_buf5_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name size0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size0 \
    op interface \
    ports { size0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name val_size0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_val_size0 \
    op interface \
    ports { val_size0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name size1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size1 \
    op interface \
    ports { size1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name val_size1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_val_size1 \
    op interface \
    ports { val_size1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name size2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size2 \
    op interface \
    ports { size2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name val_size2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_val_size2 \
    op interface \
    ports { val_size2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name size3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size3 \
    op interface \
    ports { size3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name val_size3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_val_size3 \
    op interface \
    ports { val_size3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name size4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size4 \
    op interface \
    ports { size4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name val_size4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_val_size4 \
    op interface \
    ports { val_size4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name size5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size5 \
    op interface \
    ports { size5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name val_size5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_val_size5 \
    op interface \
    ports { val_size5 { I 16 vector } } \
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


