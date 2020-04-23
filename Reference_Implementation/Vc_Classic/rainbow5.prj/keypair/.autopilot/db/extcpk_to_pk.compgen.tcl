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
    id 221 \
    name pk_pk \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pk_pk \
    op interface \
    ports { pk_pk_address0 { O 21 vector } pk_pk_ce0 { O 1 bit } pk_pk_we0 { O 1 bit } pk_pk_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pk_pk'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 222 \
    name cpk_l1_Q1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l1_Q1 \
    op interface \
    ports { cpk_l1_Q1_address0 { O 18 vector } cpk_l1_Q1_ce0 { O 1 bit } cpk_l1_Q1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l1_Q1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 223 \
    name cpk_l1_Q2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l1_Q2 \
    op interface \
    ports { cpk_l1_Q2_address0 { O 18 vector } cpk_l1_Q2_ce0 { O 1 bit } cpk_l1_Q2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l1_Q2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 224 \
    name cpk_l1_Q3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l1_Q3 \
    op interface \
    ports { cpk_l1_Q3_address0 { O 18 vector } cpk_l1_Q3_ce0 { O 1 bit } cpk_l1_Q3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l1_Q3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name cpk_l1_Q5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l1_Q5 \
    op interface \
    ports { cpk_l1_Q5_address0 { O 16 vector } cpk_l1_Q5_ce0 { O 1 bit } cpk_l1_Q5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l1_Q5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 226 \
    name cpk_l1_Q6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l1_Q6 \
    op interface \
    ports { cpk_l1_Q6_address0 { O 17 vector } cpk_l1_Q6_ce0 { O 1 bit } cpk_l1_Q6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l1_Q6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name cpk_l1_Q9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l1_Q9 \
    op interface \
    ports { cpk_l1_Q9_address0 { O 16 vector } cpk_l1_Q9_ce0 { O 1 bit } cpk_l1_Q9_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l1_Q9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 228 \
    name cpk_l2_Q1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l2_Q1 \
    op interface \
    ports { cpk_l2_Q1_address0 { O 18 vector } cpk_l2_Q1_ce0 { O 1 bit } cpk_l2_Q1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l2_Q1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 229 \
    name cpk_l2_Q2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l2_Q2 \
    op interface \
    ports { cpk_l2_Q2_address0 { O 18 vector } cpk_l2_Q2_ce0 { O 1 bit } cpk_l2_Q2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l2_Q2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 230 \
    name cpk_l2_Q3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l2_Q3 \
    op interface \
    ports { cpk_l2_Q3_address0 { O 18 vector } cpk_l2_Q3_ce0 { O 1 bit } cpk_l2_Q3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l2_Q3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 231 \
    name cpk_l2_Q5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l2_Q5 \
    op interface \
    ports { cpk_l2_Q5_address0 { O 16 vector } cpk_l2_Q5_ce0 { O 1 bit } cpk_l2_Q5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l2_Q5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 232 \
    name cpk_l2_Q6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l2_Q6 \
    op interface \
    ports { cpk_l2_Q6_address0 { O 17 vector } cpk_l2_Q6_ce0 { O 1 bit } cpk_l2_Q6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l2_Q6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 233 \
    name cpk_l2_Q9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cpk_l2_Q9 \
    op interface \
    ports { cpk_l2_Q9_address0 { O 16 vector } cpk_l2_Q9_ce0 { O 1 bit } cpk_l2_Q9_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cpk_l2_Q9'"
}
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


