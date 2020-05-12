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
    id 1 \
    name sig_0_proofs_seed1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename sig_0_proofs_seed1 \
    op interface \
    ports { sig_0_proofs_seed1_address0 { O 12 vector } sig_0_proofs_seed1_ce0 { O 1 bit } sig_0_proofs_seed1_we0 { O 1 bit } sig_0_proofs_seed1_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sig_0_proofs_seed1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2 \
    name sig_0_proofs_seed2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename sig_0_proofs_seed2 \
    op interface \
    ports { sig_0_proofs_seed2_address0 { O 12 vector } sig_0_proofs_seed2_ce0 { O 1 bit } sig_0_proofs_seed2_we0 { O 1 bit } sig_0_proofs_seed2_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sig_0_proofs_seed2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3 \
    name sig_0_proofs_inputS \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename sig_0_proofs_inputS \
    op interface \
    ports { sig_0_proofs_inputS_address0 { O 10 vector } sig_0_proofs_inputS_ce0 { O 1 bit } sig_0_proofs_inputS_we0 { O 1 bit } sig_0_proofs_inputS_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sig_0_proofs_inputS'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4 \
    name sig_0_proofs_commun \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename sig_0_proofs_commun \
    op interface \
    ports { sig_0_proofs_commun_address0 { O 15 vector } sig_0_proofs_commun_ce0 { O 1 bit } sig_0_proofs_commun_we0 { O 1 bit } sig_0_proofs_commun_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sig_0_proofs_commun'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5 \
    name sig_0_proofs_view3C \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename sig_0_proofs_view3C \
    op interface \
    ports { sig_0_proofs_view3C_address0 { O 13 vector } sig_0_proofs_view3C_ce0 { O 1 bit } sig_0_proofs_view3C_we0 { O 1 bit } sig_0_proofs_view3C_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sig_0_proofs_view3C'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6 \
    name sig_0_challengeBits \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename sig_0_challengeBits \
    op interface \
    ports { sig_0_challengeBits_address0 { O 6 vector } sig_0_challengeBits_ce0 { O 1 bit } sig_0_challengeBits_we0 { O 1 bit } sig_0_challengeBits_d0 { O 8 vector } sig_0_challengeBits_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sig_0_challengeBits'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7 \
    name sig_0_salt \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename sig_0_salt \
    op interface \
    ports { sig_0_salt_address0 { O 5 vector } sig_0_salt_ce0 { O 1 bit } sig_0_salt_we0 { O 1 bit } sig_0_salt_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sig_0_salt'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8 \
    name sigBytes \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename sigBytes \
    op interface \
    ports { sigBytes_address0 { O 16 vector } sigBytes_ce0 { O 1 bit } sigBytes_q0 { I 8 vector } sigBytes_address1 { O 16 vector } sigBytes_ce1 { O 1 bit } sigBytes_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sigBytes'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name sigBytes_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sigBytes_offset \
    op interface \
    ports { sigBytes_offset { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name sigBytesLen \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sigBytesLen \
    op interface \
    ports { sigBytesLen { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name params_UnruhGWithout \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_params_UnruhGWithout \
    op interface \
    ports { params_UnruhGWithout { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name params_transform_rea \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_params_transform_rea \
    op interface \
    ports { params_transform_rea { I 2 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


