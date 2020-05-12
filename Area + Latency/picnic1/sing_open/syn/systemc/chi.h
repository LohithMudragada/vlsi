// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _chi_HH_
#define _chi_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "theta_D.h"

namespace ap_rtl {

struct chi : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_in< sc_lv<64> > A_q0;
    sc_out< sc_lv<5> > A_address1;
    sc_out< sc_logic > A_ce1;
    sc_out< sc_logic > A_we1;
    sc_out< sc_lv<64> > A_d1;
    sc_in< sc_lv<64> > A_q1;


    // Module declarations
    chi(sc_module_name name);
    SC_HAS_PROCESS(chi);

    ~chi();

    sc_trace_file* mVcdFile;

    theta_D* C_U;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > y_fu_139_p2;
    sc_signal< sc_lv<3> > y_reg_317;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<5> > add_ln374_1_fu_157_p2;
    sc_signal< sc_lv<5> > add_ln374_1_reg_322;
    sc_signal< sc_lv<1> > icmp_ln372_fu_133_p2;
    sc_signal< sc_lv<3> > x_fu_169_p2;
    sc_signal< sc_lv<3> > x_reg_333;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln373_fu_163_p2;
    sc_signal< sc_lv<64> > A_load_reg_345;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > x_8_fu_290_p2;
    sc_signal< sc_lv<3> > x_8_reg_363;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > icmp_ln375_fu_284_p2;
    sc_signal< sc_lv<5> > add_ln376_fu_305_p2;
    sc_signal< sc_lv<5> > add_ln376_reg_373;
    sc_signal< sc_lv<3> > C_address0;
    sc_signal< sc_logic > C_ce0;
    sc_signal< sc_logic > C_we0;
    sc_signal< sc_lv<64> > C_d0;
    sc_signal< sc_lv<64> > C_q0;
    sc_signal< sc_lv<3> > y_0_reg_99;
    sc_signal< sc_lv<3> > x_0_reg_110;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > x_1_reg_122;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<64> > zext_ln374_fu_184_p1;
    sc_signal< sc_lv<64> > zext_ln374_1_fu_216_p1;
    sc_signal< sc_lv<64> > zext_ln374_2_fu_256_p1;
    sc_signal< sc_lv<64> > zext_ln374_3_fu_279_p1;
    sc_signal< sc_lv<64> > zext_ln376_fu_296_p1;
    sc_signal< sc_lv<64> > zext_ln376_1_fu_310_p1;
    sc_signal< sc_lv<5> > zext_ln374_4_fu_145_p1;
    sc_signal< sc_lv<5> > shl_ln_fu_149_p3;
    sc_signal< sc_lv<5> > zext_ln374_5_fu_175_p1;
    sc_signal< sc_lv<5> > add_ln374_fu_179_p2;
    sc_signal< sc_lv<1> > icmp_ln374_fu_189_p2;
    sc_signal< sc_lv<3> > xor_ln374_2_fu_194_p2;
    sc_signal< sc_lv<3> > select_ln374_fu_200_p3;
    sc_signal< sc_lv<5> > zext_ln374_6_fu_207_p1;
    sc_signal< sc_lv<5> > add_ln374_2_fu_211_p2;
    sc_signal< sc_lv<3> > add_ln374_3_fu_221_p2;
    sc_signal< sc_lv<1> > icmp_ln374_1_fu_227_p2;
    sc_signal< sc_lv<3> > add_ln374_6_fu_233_p2;
    sc_signal< sc_lv<3> > select_ln374_1_fu_239_p3;
    sc_signal< sc_lv<5> > zext_ln374_7_fu_247_p1;
    sc_signal< sc_lv<5> > add_ln374_4_fu_251_p2;
    sc_signal< sc_lv<64> > xor_ln374_fu_261_p2;
    sc_signal< sc_lv<64> > and_ln374_fu_267_p2;
    sc_signal< sc_lv<5> > zext_ln376_2_fu_301_p1;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<64> ap_const_lv64_FFFFFFFFFFFFFFFF;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_address1();
    void thread_A_ce0();
    void thread_A_ce1();
    void thread_A_d1();
    void thread_A_we1();
    void thread_C_address0();
    void thread_C_ce0();
    void thread_C_d0();
    void thread_C_we0();
    void thread_add_ln374_1_fu_157_p2();
    void thread_add_ln374_2_fu_211_p2();
    void thread_add_ln374_3_fu_221_p2();
    void thread_add_ln374_4_fu_251_p2();
    void thread_add_ln374_6_fu_233_p2();
    void thread_add_ln374_fu_179_p2();
    void thread_add_ln376_fu_305_p2();
    void thread_and_ln374_fu_267_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_icmp_ln372_fu_133_p2();
    void thread_icmp_ln373_fu_163_p2();
    void thread_icmp_ln374_1_fu_227_p2();
    void thread_icmp_ln374_fu_189_p2();
    void thread_icmp_ln375_fu_284_p2();
    void thread_select_ln374_1_fu_239_p3();
    void thread_select_ln374_fu_200_p3();
    void thread_shl_ln_fu_149_p3();
    void thread_x_8_fu_290_p2();
    void thread_x_fu_169_p2();
    void thread_xor_ln374_2_fu_194_p2();
    void thread_xor_ln374_fu_261_p2();
    void thread_y_fu_139_p2();
    void thread_zext_ln374_1_fu_216_p1();
    void thread_zext_ln374_2_fu_256_p1();
    void thread_zext_ln374_3_fu_279_p1();
    void thread_zext_ln374_4_fu_145_p1();
    void thread_zext_ln374_5_fu_175_p1();
    void thread_zext_ln374_6_fu_207_p1();
    void thread_zext_ln374_7_fu_247_p1();
    void thread_zext_ln374_fu_184_p1();
    void thread_zext_ln376_1_fu_310_p1();
    void thread_zext_ln376_2_fu_301_p1();
    void thread_zext_ln376_fu_296_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
