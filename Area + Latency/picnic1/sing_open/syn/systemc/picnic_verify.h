// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _picnic_verify_HH_
#define _picnic_verify_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "verify.h"
#include "deserializeSignature.h"
#include "picnic_verify_sigFfa.h"
#include "picnic_verify_sigHfu.h"
#include "picnic_verify_sigIfE.h"
#include "picnic_verify_sigJfO.h"
#include "verify_challenge_vdy.h"
#include "verify_hash.h"
#include "picnic_verify_temp.h"

namespace ap_rtl {

struct picnic_verify : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<4> > pk_0_params_read;
    sc_out< sc_lv<5> > pk_0_plaintext_address0;
    sc_out< sc_logic > pk_0_plaintext_ce0;
    sc_in< sc_lv<8> > pk_0_plaintext_q0;
    sc_out< sc_lv<5> > pk_0_plaintext_address1;
    sc_out< sc_logic > pk_0_plaintext_ce1;
    sc_in< sc_lv<8> > pk_0_plaintext_q1;
    sc_out< sc_lv<5> > pk_0_ciphertext_address0;
    sc_out< sc_logic > pk_0_ciphertext_ce0;
    sc_in< sc_lv<8> > pk_0_ciphertext_q0;
    sc_out< sc_lv<5> > pk_0_ciphertext_address1;
    sc_out< sc_logic > pk_0_ciphertext_ce1;
    sc_in< sc_lv<8> > pk_0_ciphertext_q1;
    sc_out< sc_lv<16> > message_address0;
    sc_out< sc_logic > message_ce0;
    sc_in< sc_lv<8> > message_q0;
    sc_out< sc_lv<16> > message_address1;
    sc_out< sc_logic > message_ce1;
    sc_in< sc_lv<8> > message_q1;
    sc_in< sc_lv<64> > message_len;
    sc_in< sc_lv<64> > signature_offset;
    sc_in< sc_lv<32> > signature_len;
    sc_out< sc_lv<14> > viewOutputs_address0;
    sc_out< sc_logic > viewOutputs_ce0;
    sc_out< sc_logic > viewOutputs_we0;
    sc_out< sc_lv<32> > viewOutputs_d0;
    sc_in< sc_lv<32> > viewOutputs_q0;
    sc_out< sc_lv<1> > ap_return;


    // Module declarations
    picnic_verify(sc_module_name name);
    SC_HAS_PROCESS(picnic_verify);

    ~picnic_verify();

    sc_trace_file* mVcdFile;

    picnic_verify_sigFfa* sig_0_proofs_seed1_U;
    picnic_verify_sigFfa* sig_0_proofs_seed2_U;
    picnic_verify_sigHfu* sig_0_proofs_inputS_U;
    picnic_verify_sigIfE* sig_0_proofs_commun_U;
    picnic_verify_sigJfO* sig_0_proofs_view3C_U;
    verify_challenge_vdy* sig_0_challengeBits_U;
    verify_hash* sig_0_salt_U;
    picnic_verify_temp* temp_U;
    picnic_verify_temp* temp2_U;
    verify* grp_verify_fu_336;
    deserializeSignature* grp_deserializeSignature_fu_364;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<2> > paramset_transform_fu_500_p3;
    sc_signal< sc_lv<2> > paramset_transform_reg_669;
    sc_signal< sc_lv<7> > paramset_UnruhGWitho_fu_515_p3;
    sc_signal< sc_lv<7> > paramset_UnruhGWitho_reg_674;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_ap_ready;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_ap_done;
    sc_signal< sc_lv<3> > add_ln465_fu_524_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<3> > add_ln465_1_fu_541_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_fu_558_p3;
    sc_signal< sc_lv<5> > trunc_ln466_fu_572_p1;
    sc_signal< sc_lv<5> > trunc_ln466_reg_711;
    sc_signal< sc_lv<3> > trunc_ln467_1_reg_722;
    sc_signal< sc_lv<6> > loop_fu_598_p2;
    sc_signal< sc_lv<6> > loop_reg_737;
    sc_signal< sc_lv<8> > pk_0_ciphertext_loa_reg_742;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > pk_0_ciphertext_loa_1_reg_747;
    sc_signal< sc_lv<8> > pk_0_plaintext_load_reg_762;
    sc_signal< sc_lv<8> > pk_0_plaintext_load_1_reg_767;
    sc_signal< sc_lv<1> > icmp_ln474_fu_653_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > grp_verify_fu_336_ap_ready;
    sc_signal< sc_logic > grp_verify_fu_336_ap_done;
    sc_signal< sc_lv<12> > sig_0_proofs_seed1_address0;
    sc_signal< sc_logic > sig_0_proofs_seed1_ce0;
    sc_signal< sc_logic > sig_0_proofs_seed1_we0;
    sc_signal< sc_lv<8> > sig_0_proofs_seed1_q0;
    sc_signal< sc_lv<12> > sig_0_proofs_seed2_address0;
    sc_signal< sc_logic > sig_0_proofs_seed2_ce0;
    sc_signal< sc_logic > sig_0_proofs_seed2_we0;
    sc_signal< sc_lv<8> > sig_0_proofs_seed2_q0;
    sc_signal< sc_lv<10> > sig_0_proofs_inputS_address0;
    sc_signal< sc_logic > sig_0_proofs_inputS_ce0;
    sc_signal< sc_logic > sig_0_proofs_inputS_we0;
    sc_signal< sc_lv<32> > sig_0_proofs_inputS_q0;
    sc_signal< sc_lv<15> > sig_0_proofs_commun_address0;
    sc_signal< sc_logic > sig_0_proofs_commun_ce0;
    sc_signal< sc_logic > sig_0_proofs_commun_we0;
    sc_signal< sc_lv<8> > sig_0_proofs_commun_q0;
    sc_signal< sc_lv<13> > sig_0_proofs_view3C_address0;
    sc_signal< sc_logic > sig_0_proofs_view3C_ce0;
    sc_signal< sc_logic > sig_0_proofs_view3C_we0;
    sc_signal< sc_lv<8> > sig_0_proofs_view3C_q0;
    sc_signal< sc_lv<6> > sig_0_challengeBits_address0;
    sc_signal< sc_logic > sig_0_challengeBits_ce0;
    sc_signal< sc_logic > sig_0_challengeBits_we0;
    sc_signal< sc_lv<8> > sig_0_challengeBits_q0;
    sc_signal< sc_lv<5> > sig_0_salt_address0;
    sc_signal< sc_logic > sig_0_salt_ce0;
    sc_signal< sc_logic > sig_0_salt_we0;
    sc_signal< sc_lv<8> > sig_0_salt_q0;
    sc_signal< sc_lv<3> > temp_address0;
    sc_signal< sc_logic > temp_ce0;
    sc_signal< sc_logic > temp_we0;
    sc_signal< sc_lv<32> > temp_d0;
    sc_signal< sc_lv<32> > temp_q0;
    sc_signal< sc_lv<3> > temp2_address0;
    sc_signal< sc_logic > temp2_ce0;
    sc_signal< sc_logic > temp2_we0;
    sc_signal< sc_lv<32> > temp2_d0;
    sc_signal< sc_lv<32> > temp2_q0;
    sc_signal< sc_logic > grp_verify_fu_336_ap_start;
    sc_signal< sc_logic > grp_verify_fu_336_ap_idle;
    sc_signal< sc_lv<12> > grp_verify_fu_336_sig_0_proofs_seed1_address0;
    sc_signal< sc_logic > grp_verify_fu_336_sig_0_proofs_seed1_ce0;
    sc_signal< sc_lv<12> > grp_verify_fu_336_sig_0_proofs_seed2_address0;
    sc_signal< sc_logic > grp_verify_fu_336_sig_0_proofs_seed2_ce0;
    sc_signal< sc_lv<10> > grp_verify_fu_336_sig_0_proofs_inputS_address0;
    sc_signal< sc_logic > grp_verify_fu_336_sig_0_proofs_inputS_ce0;
    sc_signal< sc_lv<15> > grp_verify_fu_336_sig_0_proofs_commun_address0;
    sc_signal< sc_logic > grp_verify_fu_336_sig_0_proofs_commun_ce0;
    sc_signal< sc_lv<13> > grp_verify_fu_336_sig_0_proofs_view3C_address0;
    sc_signal< sc_logic > grp_verify_fu_336_sig_0_proofs_view3C_ce0;
    sc_signal< sc_lv<6> > grp_verify_fu_336_sig_0_challengeBits_address0;
    sc_signal< sc_logic > grp_verify_fu_336_sig_0_challengeBits_ce0;
    sc_signal< sc_lv<5> > grp_verify_fu_336_sig_0_salt_address0;
    sc_signal< sc_logic > grp_verify_fu_336_sig_0_salt_ce0;
    sc_signal< sc_lv<3> > grp_verify_fu_336_pubKey_address0;
    sc_signal< sc_logic > grp_verify_fu_336_pubKey_ce0;
    sc_signal< sc_lv<3> > grp_verify_fu_336_plaintext_address0;
    sc_signal< sc_logic > grp_verify_fu_336_plaintext_ce0;
    sc_signal< sc_lv<16> > grp_verify_fu_336_message_address0;
    sc_signal< sc_logic > grp_verify_fu_336_message_ce0;
    sc_signal< sc_lv<14> > grp_verify_fu_336_viewOutputs_address0;
    sc_signal< sc_logic > grp_verify_fu_336_viewOutputs_ce0;
    sc_signal< sc_logic > grp_verify_fu_336_viewOutputs_we0;
    sc_signal< sc_lv<32> > grp_verify_fu_336_viewOutputs_d0;
    sc_signal< sc_lv<32> > grp_verify_fu_336_ap_return;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_ap_start;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_ap_idle;
    sc_signal< sc_lv<12> > grp_deserializeSignature_fu_364_sig_0_proofs_seed1_address0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_proofs_seed1_ce0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_proofs_seed1_we0;
    sc_signal< sc_lv<8> > grp_deserializeSignature_fu_364_sig_0_proofs_seed1_d0;
    sc_signal< sc_lv<12> > grp_deserializeSignature_fu_364_sig_0_proofs_seed2_address0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_proofs_seed2_ce0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_proofs_seed2_we0;
    sc_signal< sc_lv<8> > grp_deserializeSignature_fu_364_sig_0_proofs_seed2_d0;
    sc_signal< sc_lv<10> > grp_deserializeSignature_fu_364_sig_0_proofs_inputS_address0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_proofs_inputS_ce0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_proofs_inputS_we0;
    sc_signal< sc_lv<32> > grp_deserializeSignature_fu_364_sig_0_proofs_inputS_d0;
    sc_signal< sc_lv<15> > grp_deserializeSignature_fu_364_sig_0_proofs_commun_address0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_proofs_commun_ce0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_proofs_commun_we0;
    sc_signal< sc_lv<8> > grp_deserializeSignature_fu_364_sig_0_proofs_commun_d0;
    sc_signal< sc_lv<13> > grp_deserializeSignature_fu_364_sig_0_proofs_view3C_address0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_proofs_view3C_ce0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_proofs_view3C_we0;
    sc_signal< sc_lv<8> > grp_deserializeSignature_fu_364_sig_0_proofs_view3C_d0;
    sc_signal< sc_lv<6> > grp_deserializeSignature_fu_364_sig_0_challengeBits_address0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_challengeBits_ce0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_challengeBits_we0;
    sc_signal< sc_lv<8> > grp_deserializeSignature_fu_364_sig_0_challengeBits_d0;
    sc_signal< sc_lv<5> > grp_deserializeSignature_fu_364_sig_0_salt_address0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_salt_ce0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sig_0_salt_we0;
    sc_signal< sc_lv<8> > grp_deserializeSignature_fu_364_sig_0_salt_d0;
    sc_signal< sc_lv<16> > grp_deserializeSignature_fu_364_sigBytes_address0;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sigBytes_ce0;
    sc_signal< sc_lv<16> > grp_deserializeSignature_fu_364_sigBytes_address1;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_sigBytes_ce1;
    sc_signal< sc_lv<1> > grp_deserializeSignature_fu_364_ap_return;
    sc_signal< sc_lv<3> > phi_ln465_reg_292;
    sc_signal< sc_lv<1> > icmp_ln465_fu_535_p2;
    sc_signal< sc_lv<3> > phi_ln465_1_reg_303;
    sc_signal< sc_lv<1> > icmp_ln465_1_fu_552_p2;
    sc_signal< sc_lv<6> > loop_0_reg_314;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > UnifiedRetVal_reg_325;
    sc_signal< sc_logic > grp_verify_fu_336_ap_start_reg;
    sc_signal< sc_logic > grp_deserializeSignature_fu_364_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln465_fu_530_p1;
    sc_signal< sc_lv<64> > zext_ln465_1_fu_547_p1;
    sc_signal< sc_lv<64> > zext_ln467_fu_566_p1;
    sc_signal< sc_lv<64> > zext_ln467_1_fu_582_p1;
    sc_signal< sc_lv<64> > zext_ln467_2_fu_609_p1;
    sc_signal< sc_lv<64> > zext_ln467_3_fu_620_p1;
    sc_signal< sc_lv<64> > zext_ln467_4_fu_637_p1;
    sc_signal< sc_lv<32> > or_ln467_5_fu_626_p5;
    sc_signal< sc_lv<32> > or_ln468_2_fu_642_p5;
    sc_signal< sc_lv<1> > icmp_ln33_1_fu_396_p2;
    sc_signal< sc_lv<1> > icmp_ln33_2_fu_402_p2;
    sc_signal< sc_lv<1> > or_ln33_fu_408_p2;
    sc_signal< sc_lv<1> > icmp_ln33_fu_390_p2;
    sc_signal< sc_lv<1> > icmp_ln33_4_fu_426_p2;
    sc_signal< sc_lv<1> > icmp_ln33_5_fu_432_p2;
    sc_signal< sc_lv<1> > or_ln33_2_fu_456_p2;
    sc_signal< sc_lv<1> > icmp_ln33_3_fu_420_p2;
    sc_signal< sc_lv<1> > icmp_ln33_7_fu_444_p2;
    sc_signal< sc_lv<1> > icmp_ln33_8_fu_450_p2;
    sc_signal< sc_lv<1> > or_ln33_4_fu_468_p2;
    sc_signal< sc_lv<1> > icmp_ln33_6_fu_438_p2;
    sc_signal< sc_lv<1> > or_ln33_5_fu_474_p2;
    sc_signal< sc_lv<1> > or_ln33_3_fu_462_p2;
    sc_signal< sc_lv<1> > or_ln33_6_fu_480_p2;
    sc_signal< sc_lv<1> > or_ln33_1_fu_414_p2;
    sc_signal< sc_lv<1> > or_ln33_7_fu_494_p2;
    sc_signal< sc_lv<2> > select_ln33_fu_486_p3;
    sc_signal< sc_lv<1> > icmp_ln157_fu_509_p2;
    sc_signal< sc_lv<5> > or_ln467_fu_576_p2;
    sc_signal< sc_lv<5> > or_ln467_1_fu_604_p2;
    sc_signal< sc_lv<5> > or_ln467_2_fu_615_p2;
    sc_signal< sc_lv<1> > ap_return_preg;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<7> ap_const_lv7_5B;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<6> ap_const_lv6_4;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_3;
    static const sc_lv<32> ap_const_lv32_8;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln465_1_fu_541_p2();
    void thread_add_ln465_fu_524_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_grp_deserializeSignature_fu_364_ap_start();
    void thread_grp_verify_fu_336_ap_start();
    void thread_icmp_ln157_fu_509_p2();
    void thread_icmp_ln33_1_fu_396_p2();
    void thread_icmp_ln33_2_fu_402_p2();
    void thread_icmp_ln33_3_fu_420_p2();
    void thread_icmp_ln33_4_fu_426_p2();
    void thread_icmp_ln33_5_fu_432_p2();
    void thread_icmp_ln33_6_fu_438_p2();
    void thread_icmp_ln33_7_fu_444_p2();
    void thread_icmp_ln33_8_fu_450_p2();
    void thread_icmp_ln33_fu_390_p2();
    void thread_icmp_ln465_1_fu_552_p2();
    void thread_icmp_ln465_fu_535_p2();
    void thread_icmp_ln474_fu_653_p2();
    void thread_loop_fu_598_p2();
    void thread_message_address0();
    void thread_message_address1();
    void thread_message_ce0();
    void thread_message_ce1();
    void thread_or_ln33_1_fu_414_p2();
    void thread_or_ln33_2_fu_456_p2();
    void thread_or_ln33_3_fu_462_p2();
    void thread_or_ln33_4_fu_468_p2();
    void thread_or_ln33_5_fu_474_p2();
    void thread_or_ln33_6_fu_480_p2();
    void thread_or_ln33_7_fu_494_p2();
    void thread_or_ln33_fu_408_p2();
    void thread_or_ln467_1_fu_604_p2();
    void thread_or_ln467_2_fu_615_p2();
    void thread_or_ln467_5_fu_626_p5();
    void thread_or_ln467_fu_576_p2();
    void thread_or_ln468_2_fu_642_p5();
    void thread_paramset_UnruhGWitho_fu_515_p3();
    void thread_paramset_transform_fu_500_p3();
    void thread_pk_0_ciphertext_address0();
    void thread_pk_0_ciphertext_address1();
    void thread_pk_0_ciphertext_ce0();
    void thread_pk_0_ciphertext_ce1();
    void thread_pk_0_plaintext_address0();
    void thread_pk_0_plaintext_address1();
    void thread_pk_0_plaintext_ce0();
    void thread_pk_0_plaintext_ce1();
    void thread_select_ln33_fu_486_p3();
    void thread_sig_0_challengeBits_address0();
    void thread_sig_0_challengeBits_ce0();
    void thread_sig_0_challengeBits_we0();
    void thread_sig_0_proofs_commun_address0();
    void thread_sig_0_proofs_commun_ce0();
    void thread_sig_0_proofs_commun_we0();
    void thread_sig_0_proofs_inputS_address0();
    void thread_sig_0_proofs_inputS_ce0();
    void thread_sig_0_proofs_inputS_we0();
    void thread_sig_0_proofs_seed1_address0();
    void thread_sig_0_proofs_seed1_ce0();
    void thread_sig_0_proofs_seed1_we0();
    void thread_sig_0_proofs_seed2_address0();
    void thread_sig_0_proofs_seed2_ce0();
    void thread_sig_0_proofs_seed2_we0();
    void thread_sig_0_proofs_view3C_address0();
    void thread_sig_0_proofs_view3C_ce0();
    void thread_sig_0_proofs_view3C_we0();
    void thread_sig_0_salt_address0();
    void thread_sig_0_salt_ce0();
    void thread_sig_0_salt_we0();
    void thread_temp2_address0();
    void thread_temp2_ce0();
    void thread_temp2_d0();
    void thread_temp2_we0();
    void thread_temp_address0();
    void thread_temp_ce0();
    void thread_temp_d0();
    void thread_temp_we0();
    void thread_tmp_fu_558_p3();
    void thread_trunc_ln466_fu_572_p1();
    void thread_viewOutputs_address0();
    void thread_viewOutputs_ce0();
    void thread_viewOutputs_d0();
    void thread_viewOutputs_we0();
    void thread_zext_ln465_1_fu_547_p1();
    void thread_zext_ln465_fu_530_p1();
    void thread_zext_ln467_1_fu_582_p1();
    void thread_zext_ln467_2_fu_609_p1();
    void thread_zext_ln467_3_fu_620_p1();
    void thread_zext_ln467_4_fu_637_p1();
    void thread_zext_ln467_fu_566_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
