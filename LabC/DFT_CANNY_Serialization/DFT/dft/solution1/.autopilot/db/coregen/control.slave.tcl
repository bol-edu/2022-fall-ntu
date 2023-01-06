dict set slaves control {ports {OUT_R_0 {type o_ap_memory width 32} OUT_I_0 {type o_ap_memory width 32} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_continue {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {OUT_R_0 {width 32} OUT_I_0 {width 32}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode COR
