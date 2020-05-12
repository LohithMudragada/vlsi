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
    sc_signal< sc_lv<3> > x_3_fu_190_p2;
    sc_signal< sc_lv<3> > x_3_reg_438;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<3> > C_addr_reg_443;
    sc_signal< sc_lv<1> > icmp_ln336_fu_184_p2;
    sc_signal< sc_lv<4> > zext_ln339_1_fu_201_p1;
    sc_signal< sc_lv<4> > zext_ln339_1_reg_448;
    sc_signal< sc_lv<3> > y_fu_211_p2;
    sc_signal< sc_lv<3> > y_reg_456;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln338_fu_205_p2;
    sc_signal< sc_lv<3> > x_fu_266_p2;
    sc_signal< sc_lv<3> > x_reg_469;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln341_fu_260_p2;
    sc_signal< sc_lv<3> > x_4_fu_370_p2;
    sc_signal< sc_lv<3> > x_4_reg_487;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > icmp_ln343_fu_364_p2;
    sc_signal< sc_lv<64> > D_q0;
    sc_signal< sc_lv<64> > D_load_reg_497;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<4> > zext_ln345_2_fu_381_p1;
    sc_signal< sc_lv<4> > zext_ln345_2_reg_502;
    sc_signal< sc_lv<3> > y_2_fu_391_p2;
    sc_signal< sc_lv<3> > y_2_reg_510;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<5> > A_addr_1_reg_515;
    sc_signal< sc_lv<1> > icmp_ln344_fu_385_p2;
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
    sc_signal< sc_lv<3> > x_0_reg_127;
    sc_signal< sc_lv<3> > y_0_reg_138;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > x_1_reg_149;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > x_2_reg_161;
    sc_signal< sc_lv<3> > y_1_reg_173;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<64> > zext_ln337_fu_196_p1;
    sc_signal< sc_lv<64> > zext_ln339_fu_244_p1;
    sc_signal< sc_lv<64> > zext_ln342_fu_292_p1;
    sc_signal< sc_lv<64> > zext_ln342_1_fu_327_p1;
    sc_signal< sc_lv<64> > zext_ln342_2_fu_359_p1;
    sc_signal< sc_lv<64> > zext_ln345_fu_376_p1;
    sc_signal< sc_lv<64> > zext_ln345_1_fu_424_p1;
    sc_signal< sc_lv<64> > xor_ln339_fu_249_p2;
    sc_signal< sc_lv<4> > zext_ln339_2_fu_217_p1;
    sc_signal< sc_lv<4> > add_ln339_1_fu_229_p2;
    sc_signal< sc_lv<5> > shl_ln_fu_221_p3;
    sc_signal< sc_lv<5> > zext_ln339_3_fu_234_p1;
    sc_signal< sc_lv<5> > add_ln339_fu_238_p2;
    sc_signal< sc_lv<1> > icmp_ln342_fu_272_p2;
    sc_signal< sc_lv<3> > xor_ln342_1_fu_278_p2;
    sc_signal< sc_lv<3> > select_ln342_fu_284_p3;
    sc_signal< sc_lv<4> > zext_ln341_fu_256_p1;
    sc_signal< sc_lv<4> > add_ln342_1_fu_297_p2;
    sc_signal< sc_lv<3> > add_ln342_2_fu_309_p2;
    sc_signal< sc_lv<1> > icmp_ln342_1_fu_303_p2;
    sc_signal< sc_lv<4> > sext_ln342_fu_315_p1;
    sc_signal< sc_lv<4> > select_ln342_1_fu_319_p3;
    sc_signal< sc_lv<63> > trunc_ln342_fu_332_p1;
    sc_signal< sc_lv<1> > tmp_31_fu_336_p3;
    sc_signal< sc_lv<64> > or_ln_fu_344_p3;
    sc_signal< sc_lv<4> > zext_ln345_3_fu_397_p1;
    sc_signal< sc_lv<4> > add_ln345_1_fu_409_p2;
    sc_signal< sc_lv<5> > shl_ln2_fu_401_p3;
    sc_signal< sc_lv<5> > zext_ln345_4_fu_414_p1;
    sc_signal< sc_lv<5> > add_ln345_fu_418_p2;
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
    void thread_add_ln339_1_fu_229_p2();
    void thread_add_ln339_fu_238_p2();
    void thread_add_ln342_1_fu_297_p2();
    void thread_add_ln342_2_fu_309_p2();
    void thread_add_ln345_1_fu_409_p2();
    void thread_add_ln345_fu_418_p2();
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
    void thread_icmp_ln336_fu_184_p2();
    void thread_icmp_ln338_fu_205_p2();
    void thread_icmp_ln341_fu_260_p2();
    void thread_icmp_ln342_1_fu_303_p2();
    void thread_icmp_ln342_fu_272_p2();
    void thread_icmp_ln343_fu_364_p2();
    void thread_icmp_ln344_fu_385_p2();
    void thread_or_ln_fu_344_p3();
    void thread_select_ln342_1_fu_319_p3();
    void thread_select_ln342_fu_284_p3();
    void thread_sext_ln342_fu_315_p1();
    void thread_shl_ln2_fu_401_p3();
    void thread_shl_ln_fu_221_p3();
    void thread_tmp_31_fu_336_p3();
    void thread_trunc_ln342_fu_332_p1();
    void thread_x_3_fu_190_p2();
    void thread_x_4_fu_370_p2();
    void thread_x_fu_266_p2();
    void thread_xor_ln339_fu_249_p2();
    void thread_xor_ln342_1_fu_278_p2();
    void thread_y_2_fu_391_p2();
    void thread_y_fu_211_p2();
    void thread_zext_ln337_fu_196_p1();
    void thread_zext_ln339_1_fu_201_p1();
    void thread_zext_ln339_2_fu_217_p1();
    void thread_zext_ln339_3_fu_234_p1();
    void thread_zext_ln339_fu_244_p1();
    void thread_zext_ln341_fu_256_p1();
    void thread_zext_ln342_1_fu_327_p1();
    void thread_zext_ln342_2_fu_359_p1();
    void thread_zext_ln342_fu_292_p1();
    void thread_zext_ln345_1_fu_424_p1();
    void thread_zext_ln345_2_fu_381_p1();
    void thread_zext_ln345_3_fu_397_p1();
    void thread_zext_ln345_4_fu_414_p1();
    void thread_zext_ln345_fu_376_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif