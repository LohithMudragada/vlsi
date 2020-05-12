// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _theta_HH_
#define _theta_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "theta_C.h"
#include "theta_D.h"

namespace ap_rtl {

struct theta : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_out< sc_logic > A_we0;
    sc_out< sc_lv<64> > A_d0;
    sc_in< sc_lv<64> > A_q0;


    // Module declarations
    theta(sc_module_name name);
    SC_HAS_PROCESS(theta);

    ~theta();

    sc_trace_file* mVcdFile;

    theta_C* C_U;
    theta_D* D_U;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > x_3_fu_176_p2;
    sc_signal< sc_lv<3> > x_3_reg_424;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<3> > C_addr_reg_429;
    sc_signal< sc_lv<1> > icmp_ln336_fu_170_p2;
    sc_signal< sc_lv<4> > zext_ln339_1_fu_187_p1;
    sc_signal< sc_lv<4> > zext_ln339_1_reg_434;
    sc_signal< sc_lv<3> > y_fu_197_p2;
    sc_signal< sc_lv<3> > y_reg_442;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln338_fu_191_p2;
    sc_signal< sc_lv<3> > x_fu_252_p2;
    sc_signal< sc_lv<3> > x_reg_455;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln341_fu_246_p2;
    sc_signal< sc_lv<3> > x_4_fu_356_p2;
    sc_signal< sc_lv<3> > x_4_reg_473;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > icmp_ln343_fu_350_p2;
    sc_signal< sc_lv<64> > D_q0;
    sc_signal< sc_lv<64> > D_load_reg_483;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<4> > zext_ln345_2_fu_367_p1;
    sc_signal< sc_lv<4> > zext_ln345_2_reg_488;
    sc_signal< sc_lv<3> > y_2_fu_377_p2;
    sc_signal< sc_lv<3> > y_2_reg_496;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<5> > A_addr_1_reg_501;
    sc_signal< sc_lv<1> > icmp_ln344_fu_371_p2;
    sc_signal< sc_lv<3> > C_address0;
    sc_signal< sc_logic > C_ce0;
    sc_signal< sc_logic > C_we0;
    sc_signal< sc_lv<64> > C_d0;
    sc_signal< sc_lv<64> > C_q0;
    sc_signal< sc_lv<3> > C_address1;
    sc_signal< sc_logic > C_ce1;
    sc_signal< sc_lv<64> > C_q1;
    sc_signal< sc_lv<3> > D_address0;
    sc_signal< sc_logic > D_ce0;
    sc_signal< sc_logic > D_we0;
    sc_signal< sc_lv<64> > D_d0;
    sc_signal< sc_lv<3> > x_0_reg_113;
    sc_signal< sc_lv<3> > y_0_reg_124;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > x_1_reg_135;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > x_2_reg_147;
    sc_signal< sc_lv<3> > y_1_reg_159;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<64> > zext_ln337_fu_182_p1;
    sc_signal< sc_lv<64> > zext_ln339_fu_230_p1;
    sc_signal< sc_lv<64> > zext_ln342_fu_278_p1;
    sc_signal< sc_lv<64> > zext_ln342_1_fu_313_p1;
    sc_signal< sc_lv<64> > zext_ln342_2_fu_345_p1;
    sc_signal< sc_lv<64> > zext_ln345_fu_362_p1;
    sc_signal< sc_lv<64> > zext_ln345_1_fu_410_p1;
    sc_signal< sc_lv<64> > xor_ln339_fu_235_p2;
    sc_signal< sc_lv<4> > zext_ln339_2_fu_203_p1;
    sc_signal< sc_lv<4> > add_ln339_1_fu_215_p2;
    sc_signal< sc_lv<5> > shl_ln_fu_207_p3;
    sc_signal< sc_lv<5> > zext_ln339_3_fu_220_p1;
    sc_signal< sc_lv<5> > add_ln339_fu_224_p2;
    sc_signal< sc_lv<1> > icmp_ln342_fu_258_p2;
    sc_signal< sc_lv<3> > xor_ln342_1_fu_264_p2;
    sc_signal< sc_lv<3> > select_ln342_fu_270_p3;
    sc_signal< sc_lv<4> > zext_ln341_fu_242_p1;
    sc_signal< sc_lv<4> > add_ln342_1_fu_283_p2;
    sc_signal< sc_lv<3> > add_ln342_2_fu_295_p2;
    sc_signal< sc_lv<1> > icmp_ln342_1_fu_289_p2;
    sc_signal< sc_lv<4> > sext_ln342_fu_301_p1;
    sc_signal< sc_lv<4> > select_ln342_1_fu_305_p3;
    sc_signal< sc_lv<63> > trunc_ln342_fu_318_p1;
    sc_signal< sc_lv<1> > tmp_fu_322_p3;
    sc_signal< sc_lv<64> > or_ln_fu_330_p3;
    sc_signal< sc_lv<4> > zext_ln345_3_fu_383_p1;
    sc_signal< sc_lv<4> > add_ln345_1_fu_395_p2;
    sc_signal< sc_lv<5> > shl_ln2_fu_387_p3;
    sc_signal< sc_lv<5> > zext_ln345_4_fu_400_p1;
    sc_signal< sc_lv<5> > add_ln345_fu_404_p2;
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
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<32> ap_const_lv32_3F;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_ce0();
    void thread_A_d0();
    void thread_A_we0();
    void thread_C_address0();
    void thread_C_address1();
    void thread_C_ce0();
    void thread_C_ce1();
    void thread_C_d0();
    void thread_C_we0();
    void thread_D_address0();
    void thread_D_ce0();
    void thread_D_d0();
    void thread_D_we0();
    void thread_add_ln339_1_fu_215_p2();
    void thread_add_ln339_fu_224_p2();
    void thread_add_ln342_1_fu_283_p2();
    void thread_add_ln342_2_fu_295_p2();
    void thread_add_ln345_1_fu_395_p2();
    void thread_add_ln345_fu_404_p2();
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
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_icmp_ln336_fu_170_p2();
    void thread_icmp_ln338_fu_191_p2();
    void thread_icmp_ln341_fu_246_p2();
    void thread_icmp_ln342_1_fu_289_p2();
    void thread_icmp_ln342_fu_258_p2();
    void thread_icmp_ln343_fu_350_p2();
    void thread_icmp_ln344_fu_371_p2();
    void thread_or_ln_fu_330_p3();
    void thread_select_ln342_1_fu_305_p3();
    void thread_select_ln342_fu_270_p3();
    void thread_sext_ln342_fu_301_p1();
    void thread_shl_ln2_fu_387_p3();
    void thread_shl_ln_fu_207_p3();
    void thread_tmp_fu_322_p3();
    void thread_trunc_ln342_fu_318_p1();
    void thread_x_3_fu_176_p2();
    void thread_x_4_fu_356_p2();
    void thread_x_fu_252_p2();
    void thread_xor_ln339_fu_235_p2();
    void thread_xor_ln342_1_fu_264_p2();
    void thread_y_2_fu_377_p2();
    void thread_y_fu_197_p2();
    void thread_zext_ln337_fu_182_p1();
    void thread_zext_ln339_1_fu_187_p1();
    void thread_zext_ln339_2_fu_203_p1();
    void thread_zext_ln339_3_fu_220_p1();
    void thread_zext_ln339_fu_230_p1();
    void thread_zext_ln341_fu_242_p1();
    void thread_zext_ln342_1_fu_313_p1();
    void thread_zext_ln342_2_fu_345_p1();
    void thread_zext_ln342_fu_278_p1();
    void thread_zext_ln345_1_fu_410_p1();
    void thread_zext_ln345_2_fu_367_p1();
    void thread_zext_ln345_3_fu_383_p1();
    void thread_zext_ln345_4_fu_400_p1();
    void thread_zext_ln345_fu_362_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
