// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mpc_AND_verify_2_HH_
#define _mpc_AND_verify_2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "crypto_sign_open_hbi.h"

namespace ap_rtl {

struct mpc_AND_verify_2 : public sc_module {
    // Port declarations 30
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > in1_0_read;
    sc_in< sc_lv<8> > in1_1_read;
    sc_in< sc_lv<8> > in2_0_read;
    sc_in< sc_lv<8> > in2_1_read;
    sc_out< sc_lv<9> > rand_0_tape_address0;
    sc_out< sc_logic > rand_0_tape_ce0;
    sc_in< sc_lv<8> > rand_0_tape_q0;
    sc_out< sc_lv<9> > rand_0_tape_address1;
    sc_out< sc_logic > rand_0_tape_ce1;
    sc_in< sc_lv<8> > rand_0_tape_q1;
    sc_in< sc_lv<32> > rand_0_pos_read;
    sc_out< sc_lv<15> > view1_communicatedBi_address0;
    sc_out< sc_logic > view1_communicatedBi_ce0;
    sc_out< sc_logic > view1_communicatedBi_we0;
    sc_out< sc_lv<8> > view1_communicatedBi_d0;
    sc_in< sc_lv<8> > view1_communicatedBi_q0;
    sc_in< sc_lv<8> > view1_communicatedBits_offset;
    sc_out< sc_lv<15> > view2_communicatedBi_address0;
    sc_out< sc_logic > view2_communicatedBi_ce0;
    sc_in< sc_lv<8> > view2_communicatedBi_q0;
    sc_in< sc_lv<8> > view2_communicatedBits_offset;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<8> > ap_return_1;
    sc_out< sc_lv<8> > ap_return_2;


    // Module declarations
    mpc_AND_verify_2(sc_module_name name);
    SC_HAS_PROCESS(mpc_AND_verify_2);

    ~mpc_AND_verify_2();

    sc_trace_file* mVcdFile;

    crypto_sign_open_hbi<1,1,8,8,16,16>* crypto_sign_open_hbi_U74;
    crypto_sign_open_hbi<1,1,8,8,16,16>* crypto_sign_open_hbi_U75;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<16> > zext_ln54_cast1_reg_372;
    sc_signal< sc_lv<3> > trunc_ln54_fu_193_p1;
    sc_signal< sc_lv<3> > trunc_ln54_reg_388;
    sc_signal< sc_lv<15> > view1_communicatedBi_2_reg_393;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > zext_ln54_11_fu_218_p1;
    sc_signal< sc_lv<8> > zext_ln54_11_reg_403;
    sc_signal< sc_lv<8> > xor_ln752_3_fu_282_p2;
    sc_signal< sc_lv<8> > xor_ln752_3_reg_410;
    sc_signal< sc_lv<64> > zext_ln54_fu_157_p1;
    sc_signal< sc_lv<64> > sext_ln54_fu_188_p1;
    sc_signal< sc_lv<64> > sext_ln66_fu_205_p1;
    sc_signal< sc_lv<64> > sext_ln54_1_fu_209_p1;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<29> > lshr_ln_fu_147_p4;
    sc_signal< sc_lv<10> > zext_ln54_cast_fu_172_p4;
    sc_signal< sc_lv<10> > add_ln54_fu_182_p2;
    sc_signal< sc_lv<16> > grp_fu_359_p3;
    sc_signal< sc_lv<16> > grp_fu_351_p3;
    sc_signal< sc_lv<3> > xor_ln54_fu_213_p2;
    sc_signal< sc_lv<8> > lshr_ln54_fu_222_p2;
    sc_signal< sc_lv<8> > lshr_ln54_6_fu_232_p2;
    sc_signal< sc_lv<1> > trunc_ln752_fu_238_p1;
    sc_signal< sc_lv<1> > trunc_ln52_fu_228_p1;
    sc_signal< sc_lv<1> > xor_ln752_fu_260_p2;
    sc_signal< sc_lv<8> > and_ln752_fu_242_p2;
    sc_signal< sc_lv<8> > and_ln752_1_fu_248_p2;
    sc_signal< sc_lv<8> > zext_ln752_fu_266_p1;
    sc_signal< sc_lv<8> > and_ln752_2_fu_254_p2;
    sc_signal< sc_lv<8> > xor_ln752_2_fu_276_p2;
    sc_signal< sc_lv<8> > xor_ln752_1_fu_270_p2;
    sc_signal< sc_lv<8> > shl_ln66_fu_288_p2;
    sc_signal< sc_lv<8> > xor_ln66_fu_293_p2;
    sc_signal< sc_lv<8> > and_ln66_fu_303_p2;
    sc_signal< sc_lv<8> > shl_ln66_6_fu_299_p2;
    sc_signal< sc_lv<8> > lshr_ln54_7_fu_316_p2;
    sc_signal< sc_lv<1> > trunc_ln54_7_fu_321_p1;
    sc_signal< sc_lv<32> > add_ln756_fu_329_p2;
    sc_signal< sc_lv<8> > zext_ln54_12_fu_325_p1;
    sc_signal< sc_lv<8> > grp_fu_351_p0;
    sc_signal< sc_lv<8> > grp_fu_351_p1;
    sc_signal< sc_lv<8> > grp_fu_359_p0;
    sc_signal< sc_lv<8> > grp_fu_359_p1;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<8> > ap_return_1_preg;
    sc_signal< sc_lv<8> > ap_return_2_preg;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_lv<16> > grp_fu_351_p10;
    sc_signal< sc_lv<16> > grp_fu_359_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<10> ap_const_lv10_A6;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<16> ap_const_lv16_4B;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln54_fu_182_p2();
    void thread_add_ln756_fu_329_p2();
    void thread_and_ln66_fu_303_p2();
    void thread_and_ln752_1_fu_248_p2();
    void thread_and_ln752_2_fu_254_p2();
    void thread_and_ln752_fu_242_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_grp_fu_351_p0();
    void thread_grp_fu_351_p1();
    void thread_grp_fu_351_p10();
    void thread_grp_fu_359_p0();
    void thread_grp_fu_359_p1();
    void thread_grp_fu_359_p10();
    void thread_lshr_ln54_6_fu_232_p2();
    void thread_lshr_ln54_7_fu_316_p2();
    void thread_lshr_ln54_fu_222_p2();
    void thread_lshr_ln_fu_147_p4();
    void thread_rand_0_tape_address0();
    void thread_rand_0_tape_address1();
    void thread_rand_0_tape_ce0();
    void thread_rand_0_tape_ce1();
    void thread_sext_ln54_1_fu_209_p1();
    void thread_sext_ln54_fu_188_p1();
    void thread_sext_ln66_fu_205_p1();
    void thread_shl_ln66_6_fu_299_p2();
    void thread_shl_ln66_fu_288_p2();
    void thread_trunc_ln52_fu_228_p1();
    void thread_trunc_ln54_7_fu_321_p1();
    void thread_trunc_ln54_fu_193_p1();
    void thread_trunc_ln752_fu_238_p1();
    void thread_view1_communicatedBi_address0();
    void thread_view1_communicatedBi_ce0();
    void thread_view1_communicatedBi_d0();
    void thread_view1_communicatedBi_we0();
    void thread_view2_communicatedBi_address0();
    void thread_view2_communicatedBi_ce0();
    void thread_xor_ln54_fu_213_p2();
    void thread_xor_ln66_fu_293_p2();
    void thread_xor_ln752_1_fu_270_p2();
    void thread_xor_ln752_2_fu_276_p2();
    void thread_xor_ln752_3_fu_282_p2();
    void thread_xor_ln752_fu_260_p2();
    void thread_zext_ln54_11_fu_218_p1();
    void thread_zext_ln54_12_fu_325_p1();
    void thread_zext_ln54_cast_fu_172_p4();
    void thread_zext_ln54_fu_157_p1();
    void thread_zext_ln752_fu_266_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
