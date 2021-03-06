// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _KeccakWidth1600_Spon_7_HH_
#define _KeccakWidth1600_Spon_7_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeccakP1600_Permute_s.h"

namespace ap_rtl {

struct KeccakWidth1600_Spon_7 : public sc_module {
    // Port declarations 17
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > instance_state_address0;
    sc_out< sc_logic > instance_state_ce0;
    sc_out< sc_logic > instance_state_we0;
    sc_out< sc_lv<8> > instance_state_d0;
    sc_in< sc_lv<8> > instance_state_q0;
    sc_in< sc_lv<32> > instance_byteIOIndex_read;
    sc_out< sc_lv<9> > data_0_address0;
    sc_out< sc_logic > data_0_ce0;
    sc_in< sc_lv<8> > data_0_q0;
    sc_in< sc_lv<1> > data_offset1;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    KeccakWidth1600_Spon_7(sc_module_name name);
    SC_HAS_PROCESS(KeccakWidth1600_Spon_7);

    ~KeccakWidth1600_Spon_7();

    sc_trace_file* mVcdFile;

    KeccakP1600_Permute_s* grp_KeccakP1600_Permute_s_fu_190;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<10> > select_ln212_fu_215_p3;
    sc_signal< sc_lv<10> > select_ln212_reg_516;
    sc_signal< sc_lv<34> > i_14_load_reg_522;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln195_fu_252_p2;
    sc_signal< sc_lv<1> > icmp_ln195_reg_530;
    sc_signal< sc_lv<1> > icmp_ln194_fu_246_p2;
    sc_signal< sc_lv<1> > icmp_ln195_1_fu_268_p2;
    sc_signal< sc_lv<1> > icmp_ln195_1_reg_534;
    sc_signal< sc_lv<64> > zext_ln206_fu_280_p1;
    sc_signal< sc_lv<6> > partialBlock_fu_288_p2;
    sc_signal< sc_lv<6> > partialBlock_reg_543;
    sc_signal< sc_lv<8> > loop_38_fu_321_p2;
    sc_signal< sc_lv<8> > loop_38_reg_554;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln211_fu_315_p2;
    sc_signal< sc_lv<8> > instance_state_addr_3_reg_564;
    sc_signal< sc_lv<64> > j_4_fu_370_p2;
    sc_signal< sc_lv<64> > j_4_reg_569;
    sc_signal< sc_lv<64> > add_ln214_fu_376_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_190_ap_ready;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_190_ap_done;
    sc_signal< sc_lv<32> > select_ln224_fu_403_p3;
    sc_signal< sc_lv<32> > select_ln224_reg_579;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<64> > zext_ln229_fu_411_p1;
    sc_signal< sc_lv<64> > zext_ln229_reg_585;
    sc_signal< sc_lv<34> > i_fu_419_p2;
    sc_signal< sc_lv<34> > i_reg_591;
    sc_signal< sc_lv<32> > loop_fu_429_p2;
    sc_signal< sc_lv<32> > loop_reg_599;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln231_fu_424_p2;
    sc_signal< sc_lv<8> > instance_state_addr_reg_609;
    sc_signal< sc_lv<1> > icmp_ln237_fu_479_p2;
    sc_signal< sc_lv<1> > icmp_ln237_reg_614;
    sc_signal< sc_lv<64> > p_2_rec_fu_494_p2;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< bool > ap_predicate_op117_call_state10;
    sc_signal< bool > ap_block_state10_on_subcall_done;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_190_ap_start;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_190_ap_idle;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_190_state_address0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_190_state_ce0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_190_state_we0;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_190_state_d0;
    sc_signal< sc_lv<64> > p_01_rec_reg_122;
    sc_signal< sc_lv<64> > j_0_reg_134;
    sc_signal< sc_lv<64> > p_1_rec_reg_144;
    sc_signal< sc_lv<8> > offset_assign_7_reg_156;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln206_fu_294_p2;
    sc_signal< sc_lv<32> > loop_1_reg_167;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > ap_phi_mux_p_1_rec_pn_phi_fu_181_p6;
    sc_signal< sc_lv<64> > p_1_rec_pn_reg_178;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_190_ap_start_reg;
    sc_signal< sc_lv<64> > sext_ln212_fu_365_p1;
    sc_signal< sc_lv<64> > zext_ln212_fu_327_p1;
    sc_signal< sc_lv<64> > sext_ln232_fu_458_p1;
    sc_signal< sc_lv<64> > zext_ln149_fu_469_p1;
    sc_signal< sc_lv<34> > i_14_fu_60;
    sc_signal< sc_lv<34> > sub_ln216_fu_304_p2;
    sc_signal< sc_lv<32> > instance_byteIOIndex_fu_64;
    sc_signal< sc_lv<32> > add_ln236_fu_474_p2;
    sc_signal< sc_lv<8> > grp_fu_208_p2;
    sc_signal< sc_lv<29> > tmp_fu_236_p4;
    sc_signal< sc_lv<30> > trunc_ln195_fu_258_p1;
    sc_signal< sc_lv<30> > add_ln195_fu_262_p2;
    sc_signal< sc_lv<34> > j_fu_274_p2;
    sc_signal< sc_lv<6> > trunc_ln223_fu_284_p1;
    sc_signal< sc_lv<34> > trunc_ln216_fu_300_p1;
    sc_signal< sc_lv<9> > zext_ln212_3_fu_332_p1;
    sc_signal< sc_lv<9> > trunc_ln206_fu_336_p1;
    sc_signal< sc_lv<9> > trunc_ln194_3_fu_346_p1;
    sc_signal< sc_lv<9> > add_ln212_fu_340_p2;
    sc_signal< sc_lv<9> > add_ln212_1_fu_350_p2;
    sc_signal< sc_lv<10> > zext_ln212_4_fu_356_p1;
    sc_signal< sc_lv<10> > add_ln212_2_fu_360_p2;
    sc_signal< sc_lv<32> > zext_ln223_fu_382_p1;
    sc_signal< sc_lv<32> > add_ln224_fu_385_p2;
    sc_signal< sc_lv<1> > icmp_ln224_fu_391_p2;
    sc_signal< sc_lv<32> > partialBlock_3_fu_397_p2;
    sc_signal< sc_lv<34> > zext_ln229_3_fu_415_p1;
    sc_signal< sc_lv<9> > trunc_ln232_fu_435_p1;
    sc_signal< sc_lv<9> > trunc_ln194_fu_439_p1;
    sc_signal< sc_lv<9> > add_ln232_fu_443_p2;
    sc_signal< sc_lv<10> > zext_ln232_fu_449_p1;
    sc_signal< sc_lv<10> > add_ln232_3_fu_453_p2;
    sc_signal< sc_lv<32> > add_ln232_4_fu_463_p2;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const bool ap_const_boolean_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<34> ap_const_lv34_0;
    static const sc_lv<10> ap_const_lv10_A6;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<29> ap_const_lv29_0;
    static const sc_lv<30> ap_const_lv30_A8;
    static const sc_lv<30> ap_const_lv30_20;
    static const sc_lv<34> ap_const_lv34_20;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<64> ap_const_lv64_A8;
    static const sc_lv<8> ap_const_lv8_A8;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<64> ap_const_lv64_FFFFFFFFFFFFFF58;
    static const sc_lv<32> ap_const_lv32_A8;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln195_fu_262_p2();
    void thread_add_ln212_1_fu_350_p2();
    void thread_add_ln212_2_fu_360_p2();
    void thread_add_ln212_fu_340_p2();
    void thread_add_ln214_fu_376_p2();
    void thread_add_ln224_fu_385_p2();
    void thread_add_ln232_3_fu_453_p2();
    void thread_add_ln232_4_fu_463_p2();
    void thread_add_ln232_fu_443_p2();
    void thread_add_ln236_fu_474_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state10_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_p_1_rec_pn_phi_fu_181_p6();
    void thread_ap_predicate_op117_call_state10();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_data_0_address0();
    void thread_data_0_ce0();
    void thread_grp_KeccakP1600_Permute_s_fu_190_ap_start();
    void thread_grp_fu_208_p2();
    void thread_i_fu_419_p2();
    void thread_icmp_ln194_fu_246_p2();
    void thread_icmp_ln195_1_fu_268_p2();
    void thread_icmp_ln195_fu_252_p2();
    void thread_icmp_ln206_fu_294_p2();
    void thread_icmp_ln211_fu_315_p2();
    void thread_icmp_ln224_fu_391_p2();
    void thread_icmp_ln231_fu_424_p2();
    void thread_icmp_ln237_fu_479_p2();
    void thread_instance_state_address0();
    void thread_instance_state_ce0();
    void thread_instance_state_d0();
    void thread_instance_state_we0();
    void thread_j_4_fu_370_p2();
    void thread_j_fu_274_p2();
    void thread_loop_38_fu_321_p2();
    void thread_loop_fu_429_p2();
    void thread_p_2_rec_fu_494_p2();
    void thread_partialBlock_3_fu_397_p2();
    void thread_partialBlock_fu_288_p2();
    void thread_select_ln212_fu_215_p3();
    void thread_select_ln224_fu_403_p3();
    void thread_sext_ln212_fu_365_p1();
    void thread_sext_ln232_fu_458_p1();
    void thread_sub_ln216_fu_304_p2();
    void thread_tmp_fu_236_p4();
    void thread_trunc_ln194_3_fu_346_p1();
    void thread_trunc_ln194_fu_439_p1();
    void thread_trunc_ln195_fu_258_p1();
    void thread_trunc_ln206_fu_336_p1();
    void thread_trunc_ln216_fu_300_p1();
    void thread_trunc_ln223_fu_284_p1();
    void thread_trunc_ln232_fu_435_p1();
    void thread_zext_ln149_fu_469_p1();
    void thread_zext_ln206_fu_280_p1();
    void thread_zext_ln212_3_fu_332_p1();
    void thread_zext_ln212_4_fu_356_p1();
    void thread_zext_ln212_fu_327_p1();
    void thread_zext_ln223_fu_382_p1();
    void thread_zext_ln229_3_fu_415_p1();
    void thread_zext_ln229_fu_411_p1();
    void thread_zext_ln232_fu_449_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
