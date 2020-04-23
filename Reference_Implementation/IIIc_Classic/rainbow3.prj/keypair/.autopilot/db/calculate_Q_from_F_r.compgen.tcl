# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 151
set hasByteEnable 0
set MemName calculate_Q_from_pcA
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 8
set AddrRange 46688
set AddrWd 16
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.772
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
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
    id 152 \
    name Qs_l1_Q1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Qs_l1_Q1 \
    op interface \
    ports { Qs_l1_Q1_address0 { O 17 vector } Qs_l1_Q1_ce0 { O 1 bit } Qs_l1_Q1_we0 { O 1 bit } Qs_l1_Q1_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l1_Q1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name Qs_l1_Q2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Qs_l1_Q2 \
    op interface \
    ports { Qs_l1_Q2_address0 { O 17 vector } Qs_l1_Q2_ce0 { O 1 bit } Qs_l1_Q2_we0 { O 1 bit } Qs_l1_Q2_d0 { O 8 vector } Qs_l1_Q2_q0 { I 8 vector } Qs_l1_Q2_address1 { O 17 vector } Qs_l1_Q2_ce1 { O 1 bit } Qs_l1_Q2_we1 { O 1 bit } Qs_l1_Q2_d1 { O 8 vector } Qs_l1_Q2_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l1_Q2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name Qs_l1_Q3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Qs_l1_Q3 \
    op interface \
    ports { Qs_l1_Q3_address0 { O 17 vector } Qs_l1_Q3_ce0 { O 1 bit } Qs_l1_Q3_we0 { O 1 bit } Qs_l1_Q3_d0 { O 8 vector } Qs_l1_Q3_q0 { I 8 vector } Qs_l1_Q3_address1 { O 17 vector } Qs_l1_Q3_ce1 { O 1 bit } Qs_l1_Q3_we1 { O 1 bit } Qs_l1_Q3_d1 { O 8 vector } Qs_l1_Q3_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l1_Q3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name Qs_l1_Q5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Qs_l1_Q5 \
    op interface \
    ports { Qs_l1_Q5_address0 { O 15 vector } Qs_l1_Q5_ce0 { O 1 bit } Qs_l1_Q5_we0 { O 1 bit } Qs_l1_Q5_d0 { O 8 vector } Qs_l1_Q5_q0 { I 8 vector } Qs_l1_Q5_address1 { O 15 vector } Qs_l1_Q5_ce1 { O 1 bit } Qs_l1_Q5_we1 { O 1 bit } Qs_l1_Q5_d1 { O 8 vector } Qs_l1_Q5_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l1_Q5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name Qs_l1_Q6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Qs_l1_Q6 \
    op interface \
    ports { Qs_l1_Q6_address0 { O 16 vector } Qs_l1_Q6_ce0 { O 1 bit } Qs_l1_Q6_we0 { O 1 bit } Qs_l1_Q6_d0 { O 8 vector } Qs_l1_Q6_q0 { I 8 vector } Qs_l1_Q6_address1 { O 16 vector } Qs_l1_Q6_ce1 { O 1 bit } Qs_l1_Q6_we1 { O 1 bit } Qs_l1_Q6_d1 { O 8 vector } Qs_l1_Q6_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l1_Q6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name Qs_l1_Q9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Qs_l1_Q9 \
    op interface \
    ports { Qs_l1_Q9_address0 { O 15 vector } Qs_l1_Q9_ce0 { O 1 bit } Qs_l1_Q9_we0 { O 1 bit } Qs_l1_Q9_d0 { O 8 vector } Qs_l1_Q9_q0 { I 8 vector } Qs_l1_Q9_address1 { O 15 vector } Qs_l1_Q9_ce1 { O 1 bit } Qs_l1_Q9_we1 { O 1 bit } Qs_l1_Q9_d1 { O 8 vector } Qs_l1_Q9_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l1_Q9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name Qs_l2_Q1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Qs_l2_Q1 \
    op interface \
    ports { Qs_l2_Q1_address0 { O 17 vector } Qs_l2_Q1_ce0 { O 1 bit } Qs_l2_Q1_we0 { O 1 bit } Qs_l2_Q1_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l2_Q1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name Qs_l2_Q2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Qs_l2_Q2 \
    op interface \
    ports { Qs_l2_Q2_address0 { O 17 vector } Qs_l2_Q2_ce0 { O 1 bit } Qs_l2_Q2_we0 { O 1 bit } Qs_l2_Q2_d0 { O 8 vector } Qs_l2_Q2_q0 { I 8 vector } Qs_l2_Q2_address1 { O 17 vector } Qs_l2_Q2_ce1 { O 1 bit } Qs_l2_Q2_we1 { O 1 bit } Qs_l2_Q2_d1 { O 8 vector } Qs_l2_Q2_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l2_Q2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name Qs_l2_Q3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Qs_l2_Q3 \
    op interface \
    ports { Qs_l2_Q3_address0 { O 17 vector } Qs_l2_Q3_ce0 { O 1 bit } Qs_l2_Q3_we0 { O 1 bit } Qs_l2_Q3_d0 { O 8 vector } Qs_l2_Q3_q0 { I 8 vector } Qs_l2_Q3_address1 { O 17 vector } Qs_l2_Q3_ce1 { O 1 bit } Qs_l2_Q3_we1 { O 1 bit } Qs_l2_Q3_d1 { O 8 vector } Qs_l2_Q3_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l2_Q3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name Qs_l2_Q5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Qs_l2_Q5 \
    op interface \
    ports { Qs_l2_Q5_address0 { O 15 vector } Qs_l2_Q5_ce0 { O 1 bit } Qs_l2_Q5_we0 { O 1 bit } Qs_l2_Q5_d0 { O 8 vector } Qs_l2_Q5_q0 { I 8 vector } Qs_l2_Q5_address1 { O 15 vector } Qs_l2_Q5_ce1 { O 1 bit } Qs_l2_Q5_we1 { O 1 bit } Qs_l2_Q5_d1 { O 8 vector } Qs_l2_Q5_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l2_Q5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name Qs_l2_Q6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Qs_l2_Q6 \
    op interface \
    ports { Qs_l2_Q6_address0 { O 16 vector } Qs_l2_Q6_ce0 { O 1 bit } Qs_l2_Q6_we0 { O 1 bit } Qs_l2_Q6_d0 { O 8 vector } Qs_l2_Q6_q0 { I 8 vector } Qs_l2_Q6_address1 { O 16 vector } Qs_l2_Q6_ce1 { O 1 bit } Qs_l2_Q6_we1 { O 1 bit } Qs_l2_Q6_d1 { O 8 vector } Qs_l2_Q6_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l2_Q6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name Qs_l2_Q9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Qs_l2_Q9 \
    op interface \
    ports { Qs_l2_Q9_address0 { O 15 vector } Qs_l2_Q9_ce0 { O 1 bit } Qs_l2_Q9_we0 { O 1 bit } Qs_l2_Q9_d0 { O 8 vector } Qs_l2_Q9_q0 { I 8 vector } Qs_l2_Q9_address1 { O 15 vector } Qs_l2_Q9_ce1 { O 1 bit } Qs_l2_Q9_we1 { O 1 bit } Qs_l2_Q9_d1 { O 8 vector } Qs_l2_Q9_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Qs_l2_Q9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name Fs_l1_F1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Fs_l1_F1 \
    op interface \
    ports { Fs_l1_F1_address0 { O 17 vector } Fs_l1_F1_ce0 { O 1 bit } Fs_l1_F1_q0 { I 8 vector } Fs_l1_F1_address1 { O 17 vector } Fs_l1_F1_ce1 { O 1 bit } Fs_l1_F1_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Fs_l1_F1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name Fs_l1_F2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Fs_l1_F2 \
    op interface \
    ports { Fs_l1_F2_address0 { O 17 vector } Fs_l1_F2_ce0 { O 1 bit } Fs_l1_F2_q0 { I 8 vector } Fs_l1_F2_address1 { O 17 vector } Fs_l1_F2_ce1 { O 1 bit } Fs_l1_F2_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Fs_l1_F2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name Fs_l2_F1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Fs_l2_F1 \
    op interface \
    ports { Fs_l2_F1_address0 { O 17 vector } Fs_l2_F1_ce0 { O 1 bit } Fs_l2_F1_q0 { I 8 vector } Fs_l2_F1_address1 { O 17 vector } Fs_l2_F1_ce1 { O 1 bit } Fs_l2_F1_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Fs_l2_F1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name Fs_l2_F2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Fs_l2_F2 \
    op interface \
    ports { Fs_l2_F2_address0 { O 17 vector } Fs_l2_F2_ce0 { O 1 bit } Fs_l2_F2_q0 { I 8 vector } Fs_l2_F2_address1 { O 17 vector } Fs_l2_F2_ce1 { O 1 bit } Fs_l2_F2_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Fs_l2_F2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name Fs_l2_F3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Fs_l2_F3 \
    op interface \
    ports { Fs_l2_F3_address0 { O 17 vector } Fs_l2_F3_ce0 { O 1 bit } Fs_l2_F3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Fs_l2_F3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name Fs_l2_F5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Fs_l2_F5 \
    op interface \
    ports { Fs_l2_F5_address0 { O 15 vector } Fs_l2_F5_ce0 { O 1 bit } Fs_l2_F5_q0 { I 8 vector } Fs_l2_F5_address1 { O 15 vector } Fs_l2_F5_ce1 { O 1 bit } Fs_l2_F5_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Fs_l2_F5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name Fs_l2_F6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Fs_l2_F6 \
    op interface \
    ports { Fs_l2_F6_address0 { O 16 vector } Fs_l2_F6_ce0 { O 1 bit } Fs_l2_F6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Fs_l2_F6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name Ts_t1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Ts_t1 \
    op interface \
    ports { Ts_t1_address0 { O 12 vector } Ts_t1_ce0 { O 1 bit } Ts_t1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ts_t1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name Ts_t4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Ts_t4 \
    op interface \
    ports { Ts_t4_address0 { O 12 vector } Ts_t4_ce0 { O 1 bit } Ts_t4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ts_t4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name Ts_t3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Ts_t3 \
    op interface \
    ports { Ts_t3_address0 { O 11 vector } Ts_t3_ce0 { O 1 bit } Ts_t3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ts_t3'"
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


