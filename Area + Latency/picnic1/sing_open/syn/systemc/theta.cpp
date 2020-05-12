// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "theta.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic theta::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic theta::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<10> theta::ap_ST_fsm_state1 = "1";
const sc_lv<10> theta::ap_ST_fsm_state2 = "10";
const sc_lv<10> theta::ap_ST_fsm_state3 = "100";
const sc_lv<10> theta::ap_ST_fsm_state4 = "1000";
const sc_lv<10> theta::ap_ST_fsm_state5 = "10000";
const sc_lv<10> theta::ap_ST_fsm_state6 = "100000";
const sc_lv<10> theta::ap_ST_fsm_state7 = "1000000";
const sc_lv<10> theta::ap_ST_fsm_state8 = "10000000";
const sc_lv<10> theta::ap_ST_fsm_state9 = "100000000";
const sc_lv<10> theta::ap_ST_fsm_state10 = "1000000000";
const sc_lv<32> theta::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> theta::ap_const_lv32_1 = "1";
const sc_lv<1> theta::ap_const_lv1_0 = "0";
const sc_lv<32> theta::ap_const_lv32_2 = "10";
const sc_lv<32> theta::ap_const_lv32_4 = "100";
const sc_lv<32> theta::ap_const_lv32_6 = "110";
const sc_lv<32> theta::ap_const_lv32_7 = "111";
const sc_lv<32> theta::ap_const_lv32_8 = "1000";
const sc_lv<3> theta::ap_const_lv3_0 = "000";
const sc_lv<1> theta::ap_const_lv1_1 = "1";
const sc_lv<32> theta::ap_const_lv32_3 = "11";
const sc_lv<32> theta::ap_const_lv32_5 = "101";
const sc_lv<32> theta::ap_const_lv32_9 = "1001";
const sc_lv<64> theta::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<3> theta::ap_const_lv3_5 = "101";
const sc_lv<3> theta::ap_const_lv3_1 = "1";
const sc_lv<2> theta::ap_const_lv2_0 = "00";
const sc_lv<3> theta::ap_const_lv3_4 = "100";
const sc_lv<4> theta::ap_const_lv4_4 = "100";
const sc_lv<4> theta::ap_const_lv4_5 = "101";
const sc_lv<3> theta::ap_const_lv3_7 = "111";
const sc_lv<32> theta::ap_const_lv32_3F = "111111";
const bool theta::ap_const_boolean_1 = true;

theta::theta(sc_module_name name) : sc_module(name), mVcdFile(0) {
    C_U = new theta_C("C_U");
    C_U->clk(ap_clk);
    C_U->reset(ap_rst);
    C_U->address0(C_address0);
    C_U->ce0(C_ce0);
    C_U->we0(C_we0);
    C_U->d0(C_d0);
    C_U->q0(C_q0);
    C_U->address1(C_address1);
    C_U->ce1(C_ce1);
    C_U->q1(C_q1);
    D_U = new theta_D("D_U");
    D_U->clk(ap_clk);
    D_U->reset(ap_rst);
    D_U->address0(D_address0);
    D_U->ce0(D_ce0);
    D_U->we0(D_we0);
    D_U->d0(D_d0);
    D_U->q0(D_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_A_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( A_addr_1_reg_515 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( zext_ln339_fu_244_p1 );
    sensitive << ( zext_ln345_1_fu_424_p1 );

    SC_METHOD(thread_A_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_A_d0);
    sensitive << ( A_q0 );
    sensitive << ( D_load_reg_497 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_A_we0);
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_C_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( C_addr_reg_443 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln337_fu_196_p1 );
    sensitive << ( zext_ln342_fu_292_p1 );

    SC_METHOD(thread_C_address1);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln342_1_fu_327_p1 );

    SC_METHOD(thread_C_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_C_ce1);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_C_d0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( xor_ln339_fu_249_p2 );

    SC_METHOD(thread_C_we0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln336_fu_184_p2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_D_address0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( zext_ln342_2_fu_359_p1 );
    sensitive << ( zext_ln345_fu_376_p1 );

    SC_METHOD(thread_D_ce0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_D_d0);
    sensitive << ( C_q1 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( or_ln_fu_344_p3 );

    SC_METHOD(thread_D_we0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_add_ln339_1_fu_229_p2);
    sensitive << ( zext_ln339_1_reg_448 );
    sensitive << ( zext_ln339_2_fu_217_p1 );

    SC_METHOD(thread_add_ln339_fu_238_p2);
    sensitive << ( shl_ln_fu_221_p3 );
    sensitive << ( zext_ln339_3_fu_234_p1 );

    SC_METHOD(thread_add_ln342_1_fu_297_p2);
    sensitive << ( zext_ln341_fu_256_p1 );

    SC_METHOD(thread_add_ln342_2_fu_309_p2);
    sensitive << ( x_1_reg_149 );

    SC_METHOD(thread_add_ln345_1_fu_409_p2);
    sensitive << ( zext_ln345_2_reg_502 );
    sensitive << ( zext_ln345_3_fu_397_p1 );

    SC_METHOD(thread_add_ln345_fu_418_p2);
    sensitive << ( shl_ln2_fu_401_p3 );
    sensitive << ( zext_ln345_4_fu_414_p1 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln343_fu_364_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln343_fu_364_p2 );

    SC_METHOD(thread_icmp_ln336_fu_184_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( x_0_reg_127 );

    SC_METHOD(thread_icmp_ln338_fu_205_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( y_0_reg_138 );

    SC_METHOD(thread_icmp_ln341_fu_260_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( x_1_reg_149 );

    SC_METHOD(thread_icmp_ln342_1_fu_303_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( icmp_ln341_fu_260_p2 );
    sensitive << ( add_ln342_1_fu_297_p2 );

    SC_METHOD(thread_icmp_ln342_fu_272_p2);
    sensitive << ( x_fu_266_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( icmp_ln341_fu_260_p2 );

    SC_METHOD(thread_icmp_ln343_fu_364_p2);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( x_2_reg_161 );

    SC_METHOD(thread_icmp_ln344_fu_385_p2);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( y_1_reg_173 );

    SC_METHOD(thread_or_ln_fu_344_p3);
    sensitive << ( trunc_ln342_fu_332_p1 );
    sensitive << ( tmp_31_fu_336_p3 );

    SC_METHOD(thread_select_ln342_1_fu_319_p3);
    sensitive << ( add_ln342_1_fu_297_p2 );
    sensitive << ( icmp_ln342_1_fu_303_p2 );
    sensitive << ( sext_ln342_fu_315_p1 );

    SC_METHOD(thread_select_ln342_fu_284_p3);
    sensitive << ( x_fu_266_p2 );
    sensitive << ( icmp_ln342_fu_272_p2 );
    sensitive << ( xor_ln342_1_fu_278_p2 );

    SC_METHOD(thread_sext_ln342_fu_315_p1);
    sensitive << ( add_ln342_2_fu_309_p2 );

    SC_METHOD(thread_shl_ln2_fu_401_p3);
    sensitive << ( y_1_reg_173 );

    SC_METHOD(thread_shl_ln_fu_221_p3);
    sensitive << ( y_0_reg_138 );

    SC_METHOD(thread_tmp_31_fu_336_p3);
    sensitive << ( C_q0 );

    SC_METHOD(thread_trunc_ln342_fu_332_p1);
    sensitive << ( C_q0 );

    SC_METHOD(thread_x_3_fu_190_p2);
    sensitive << ( x_0_reg_127 );

    SC_METHOD(thread_x_4_fu_370_p2);
    sensitive << ( x_2_reg_161 );

    SC_METHOD(thread_x_fu_266_p2);
    sensitive << ( x_1_reg_149 );

    SC_METHOD(thread_xor_ln339_fu_249_p2);
    sensitive << ( A_q0 );
    sensitive << ( C_q0 );

    SC_METHOD(thread_xor_ln342_1_fu_278_p2);
    sensitive << ( x_1_reg_149 );

    SC_METHOD(thread_y_2_fu_391_p2);
    sensitive << ( y_1_reg_173 );

    SC_METHOD(thread_y_fu_211_p2);
    sensitive << ( y_0_reg_138 );

    SC_METHOD(thread_zext_ln337_fu_196_p1);
    sensitive << ( x_0_reg_127 );

    SC_METHOD(thread_zext_ln339_1_fu_201_p1);
    sensitive << ( x_0_reg_127 );

    SC_METHOD(thread_zext_ln339_2_fu_217_p1);
    sensitive << ( y_0_reg_138 );

    SC_METHOD(thread_zext_ln339_3_fu_234_p1);
    sensitive << ( add_ln339_1_fu_229_p2 );

    SC_METHOD(thread_zext_ln339_fu_244_p1);
    sensitive << ( add_ln339_fu_238_p2 );

    SC_METHOD(thread_zext_ln341_fu_256_p1);
    sensitive << ( x_1_reg_149 );

    SC_METHOD(thread_zext_ln342_1_fu_327_p1);
    sensitive << ( select_ln342_1_fu_319_p3 );

    SC_METHOD(thread_zext_ln342_2_fu_359_p1);
    sensitive << ( x_1_reg_149 );

    SC_METHOD(thread_zext_ln342_fu_292_p1);
    sensitive << ( select_ln342_fu_284_p3 );

    SC_METHOD(thread_zext_ln345_1_fu_424_p1);
    sensitive << ( add_ln345_fu_418_p2 );

    SC_METHOD(thread_zext_ln345_2_fu_381_p1);
    sensitive << ( x_2_reg_161 );

    SC_METHOD(thread_zext_ln345_3_fu_397_p1);
    sensitive << ( y_1_reg_173 );

    SC_METHOD(thread_zext_ln345_4_fu_414_p1);
    sensitive << ( add_ln345_1_fu_409_p2 );

    SC_METHOD(thread_zext_ln345_fu_376_p1);
    sensitive << ( x_2_reg_161 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln336_fu_184_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln338_fu_205_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( icmp_ln341_fu_260_p2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln343_fu_364_p2 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( icmp_ln344_fu_385_p2 );

    ap_CS_fsm = "0000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "theta_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, A_address0, "(port)A_address0");
    sc_trace(mVcdFile, A_ce0, "(port)A_ce0");
    sc_trace(mVcdFile, A_we0, "(port)A_we0");
    sc_trace(mVcdFile, A_d0, "(port)A_d0");
    sc_trace(mVcdFile, A_q0, "(port)A_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, x_3_fu_190_p2, "x_3_fu_190_p2");
    sc_trace(mVcdFile, x_3_reg_438, "x_3_reg_438");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, C_addr_reg_443, "C_addr_reg_443");
    sc_trace(mVcdFile, icmp_ln336_fu_184_p2, "icmp_ln336_fu_184_p2");
    sc_trace(mVcdFile, zext_ln339_1_fu_201_p1, "zext_ln339_1_fu_201_p1");
    sc_trace(mVcdFile, zext_ln339_1_reg_448, "zext_ln339_1_reg_448");
    sc_trace(mVcdFile, y_fu_211_p2, "y_fu_211_p2");
    sc_trace(mVcdFile, y_reg_456, "y_reg_456");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, icmp_ln338_fu_205_p2, "icmp_ln338_fu_205_p2");
    sc_trace(mVcdFile, x_fu_266_p2, "x_fu_266_p2");
    sc_trace(mVcdFile, x_reg_469, "x_reg_469");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, icmp_ln341_fu_260_p2, "icmp_ln341_fu_260_p2");
    sc_trace(mVcdFile, x_4_fu_370_p2, "x_4_fu_370_p2");
    sc_trace(mVcdFile, x_4_reg_487, "x_4_reg_487");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, icmp_ln343_fu_364_p2, "icmp_ln343_fu_364_p2");
    sc_trace(mVcdFile, D_q0, "D_q0");
    sc_trace(mVcdFile, D_load_reg_497, "D_load_reg_497");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, zext_ln345_2_fu_381_p1, "zext_ln345_2_fu_381_p1");
    sc_trace(mVcdFile, zext_ln345_2_reg_502, "zext_ln345_2_reg_502");
    sc_trace(mVcdFile, y_2_fu_391_p2, "y_2_fu_391_p2");
    sc_trace(mVcdFile, y_2_reg_510, "y_2_reg_510");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, A_addr_1_reg_515, "A_addr_1_reg_515");
    sc_trace(mVcdFile, icmp_ln344_fu_385_p2, "icmp_ln344_fu_385_p2");
    sc_trace(mVcdFile, C_address0, "C_address0");
    sc_trace(mVcdFile, C_ce0, "C_ce0");
    sc_trace(mVcdFile, C_we0, "C_we0");
    sc_trace(mVcdFile, C_d0, "C_d0");
    sc_trace(mVcdFile, C_q0, "C_q0");
    sc_trace(mVcdFile, C_address1, "C_address1");
    sc_trace(mVcdFile, C_ce1, "C_ce1");
    sc_trace(mVcdFile, C_q1, "C_q1");
    sc_trace(mVcdFile, D_address0, "D_address0");
    sc_trace(mVcdFile, D_ce0, "D_ce0");
    sc_trace(mVcdFile, D_we0, "D_we0");
    sc_trace(mVcdFile, D_d0, "D_d0");
    sc_trace(mVcdFile, x_0_reg_127, "x_0_reg_127");
    sc_trace(mVcdFile, y_0_reg_138, "y_0_reg_138");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, x_1_reg_149, "x_1_reg_149");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, x_2_reg_161, "x_2_reg_161");
    sc_trace(mVcdFile, y_1_reg_173, "y_1_reg_173");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, zext_ln337_fu_196_p1, "zext_ln337_fu_196_p1");
    sc_trace(mVcdFile, zext_ln339_fu_244_p1, "zext_ln339_fu_244_p1");
    sc_trace(mVcdFile, zext_ln342_fu_292_p1, "zext_ln342_fu_292_p1");
    sc_trace(mVcdFile, zext_ln342_1_fu_327_p1, "zext_ln342_1_fu_327_p1");
    sc_trace(mVcdFile, zext_ln342_2_fu_359_p1, "zext_ln342_2_fu_359_p1");
    sc_trace(mVcdFile, zext_ln345_fu_376_p1, "zext_ln345_fu_376_p1");
    sc_trace(mVcdFile, zext_ln345_1_fu_424_p1, "zext_ln345_1_fu_424_p1");
    sc_trace(mVcdFile, xor_ln339_fu_249_p2, "xor_ln339_fu_249_p2");
    sc_trace(mVcdFile, zext_ln339_2_fu_217_p1, "zext_ln339_2_fu_217_p1");
    sc_trace(mVcdFile, add_ln339_1_fu_229_p2, "add_ln339_1_fu_229_p2");
    sc_trace(mVcdFile, shl_ln_fu_221_p3, "shl_ln_fu_221_p3");
    sc_trace(mVcdFile, zext_ln339_3_fu_234_p1, "zext_ln339_3_fu_234_p1");
    sc_trace(mVcdFile, add_ln339_fu_238_p2, "add_ln339_fu_238_p2");
    sc_trace(mVcdFile, icmp_ln342_fu_272_p2, "icmp_ln342_fu_272_p2");
    sc_trace(mVcdFile, xor_ln342_1_fu_278_p2, "xor_ln342_1_fu_278_p2");
    sc_trace(mVcdFile, select_ln342_fu_284_p3, "select_ln342_fu_284_p3");
    sc_trace(mVcdFile, zext_ln341_fu_256_p1, "zext_ln341_fu_256_p1");
    sc_trace(mVcdFile, add_ln342_1_fu_297_p2, "add_ln342_1_fu_297_p2");
    sc_trace(mVcdFile, add_ln342_2_fu_309_p2, "add_ln342_2_fu_309_p2");
    sc_trace(mVcdFile, icmp_ln342_1_fu_303_p2, "icmp_ln342_1_fu_303_p2");
    sc_trace(mVcdFile, sext_ln342_fu_315_p1, "sext_ln342_fu_315_p1");
    sc_trace(mVcdFile, select_ln342_1_fu_319_p3, "select_ln342_1_fu_319_p3");
    sc_trace(mVcdFile, trunc_ln342_fu_332_p1, "trunc_ln342_fu_332_p1");
    sc_trace(mVcdFile, tmp_31_fu_336_p3, "tmp_31_fu_336_p3");
    sc_trace(mVcdFile, or_ln_fu_344_p3, "or_ln_fu_344_p3");
    sc_trace(mVcdFile, zext_ln345_3_fu_397_p1, "zext_ln345_3_fu_397_p1");
    sc_trace(mVcdFile, add_ln345_1_fu_409_p2, "add_ln345_1_fu_409_p2");
    sc_trace(mVcdFile, shl_ln2_fu_401_p3, "shl_ln2_fu_401_p3");
    sc_trace(mVcdFile, zext_ln345_4_fu_414_p1, "zext_ln345_4_fu_414_p1");
    sc_trace(mVcdFile, add_ln345_fu_418_p2, "add_ln345_fu_418_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

theta::~theta() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete C_U;
    delete D_U;
}

void theta::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln338_fu_205_p2.read(), ap_const_lv1_1))) {
        x_0_reg_127 = x_3_reg_438.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        x_0_reg_127 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln336_fu_184_p2.read(), ap_const_lv1_1))) {
        x_1_reg_149 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        x_1_reg_149 = x_reg_469.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(icmp_ln341_fu_260_p2.read(), ap_const_lv1_1))) {
        x_2_reg_161 = ap_const_lv3_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
                esl_seteq<1,1,1>(icmp_ln344_fu_385_p2.read(), ap_const_lv1_1))) {
        x_2_reg_161 = x_4_reg_487.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        y_0_reg_138 = y_reg_456.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln336_fu_184_p2.read(), ap_const_lv1_0))) {
        y_0_reg_138 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        y_1_reg_173 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        y_1_reg_173 = y_2_reg_510.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln344_fu_385_p2.read()))) {
        A_addr_1_reg_515 =  (sc_lv<5>) (zext_ln345_1_fu_424_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln336_fu_184_p2.read(), ap_const_lv1_0))) {
        C_addr_reg_443 =  (sc_lv<3>) (zext_ln337_fu_196_p1.read());
        zext_ln339_1_reg_448 = zext_ln339_1_fu_201_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        D_load_reg_497 = D_q0.read();
        zext_ln345_2_reg_502 = zext_ln345_2_fu_381_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        x_3_reg_438 = x_3_fu_190_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        x_4_reg_487 = x_4_fu_370_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        x_reg_469 = x_fu_266_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        y_2_reg_510 = y_2_fu_391_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        y_reg_456 = y_fu_211_p2.read();
    }
}

void theta::thread_A_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        A_address0 = A_addr_1_reg_515.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        A_address0 =  (sc_lv<5>) (zext_ln345_1_fu_424_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_address0 =  (sc_lv<5>) (zext_ln339_fu_244_p1.read());
    } else {
        A_address0 = "XXXXX";
    }
}

void theta::thread_A_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()))) {
        A_ce0 = ap_const_logic_1;
    } else {
        A_ce0 = ap_const_logic_0;
    }
}

void theta::thread_A_d0() {
    A_d0 = (A_q0.read() ^ D_load_reg_497.read());
}

void theta::thread_A_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        A_we0 = ap_const_logic_1;
    } else {
        A_we0 = ap_const_logic_0;
    }
}

void theta::thread_C_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        C_address0 =  (sc_lv<3>) (zext_ln342_fu_292_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        C_address0 = C_addr_reg_443.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        C_address0 =  (sc_lv<3>) (zext_ln337_fu_196_p1.read());
    } else {
        C_address0 =  (sc_lv<3>) ("XXX");
    }
}

void theta::thread_C_address1() {
    C_address1 =  (sc_lv<3>) (zext_ln342_1_fu_327_p1.read());
}

void theta::thread_C_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        C_ce0 = ap_const_logic_1;
    } else {
        C_ce0 = ap_const_logic_0;
    }
}

void theta::thread_C_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        C_ce1 = ap_const_logic_1;
    } else {
        C_ce1 = ap_const_logic_0;
    }
}

void theta::thread_C_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        C_d0 = xor_ln339_fu_249_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        C_d0 = ap_const_lv64_0;
    } else {
        C_d0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void theta::thread_C_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln336_fu_184_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        C_we0 = ap_const_logic_1;
    } else {
        C_we0 = ap_const_logic_0;
    }
}

void theta::thread_D_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        D_address0 =  (sc_lv<3>) (zext_ln345_fu_376_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        D_address0 =  (sc_lv<3>) (zext_ln342_2_fu_359_p1.read());
    } else {
        D_address0 =  (sc_lv<3>) ("XXX");
    }
}

void theta::thread_D_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        D_ce0 = ap_const_logic_1;
    } else {
        D_ce0 = ap_const_logic_0;
    }
}

void theta::thread_D_d0() {
    D_d0 = (C_q1.read() ^ or_ln_fu_344_p3.read());
}

void theta::thread_D_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        D_we0 = ap_const_logic_1;
    } else {
        D_we0 = ap_const_logic_0;
    }
}

void theta::thread_add_ln339_1_fu_229_p2() {
    add_ln339_1_fu_229_p2 = (!zext_ln339_1_reg_448.read().is_01() || !zext_ln339_2_fu_217_p1.read().is_01())? sc_lv<4>(): (sc_biguint<4>(zext_ln339_1_reg_448.read()) + sc_biguint<4>(zext_ln339_2_fu_217_p1.read()));
}

void theta::thread_add_ln339_fu_238_p2() {
    add_ln339_fu_238_p2 = (!shl_ln_fu_221_p3.read().is_01() || !zext_ln339_3_fu_234_p1.read().is_01())? sc_lv<5>(): (sc_biguint<5>(shl_ln_fu_221_p3.read()) + sc_biguint<5>(zext_ln339_3_fu_234_p1.read()));
}

void theta::thread_add_ln342_1_fu_297_p2() {
    add_ln342_1_fu_297_p2 = (!ap_const_lv4_4.is_01() || !zext_ln341_fu_256_p1.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_4) + sc_biguint<4>(zext_ln341_fu_256_p1.read()));
}

void theta::thread_add_ln342_2_fu_309_p2() {
    add_ln342_2_fu_309_p2 = (!ap_const_lv3_7.is_01() || !x_1_reg_149.read().is_01())? sc_lv<3>(): (sc_bigint<3>(ap_const_lv3_7) + sc_biguint<3>(x_1_reg_149.read()));
}

void theta::thread_add_ln345_1_fu_409_p2() {
    add_ln345_1_fu_409_p2 = (!zext_ln345_2_reg_502.read().is_01() || !zext_ln345_3_fu_397_p1.read().is_01())? sc_lv<4>(): (sc_biguint<4>(zext_ln345_2_reg_502.read()) + sc_biguint<4>(zext_ln345_3_fu_397_p1.read()));
}

void theta::thread_add_ln345_fu_418_p2() {
    add_ln345_fu_418_p2 = (!shl_ln2_fu_401_p3.read().is_01() || !zext_ln345_4_fu_414_p1.read().is_01())? sc_lv<5>(): (sc_biguint<5>(shl_ln2_fu_401_p3.read()) + sc_biguint<5>(zext_ln345_4_fu_414_p1.read()));
}

void theta::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void theta::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void theta::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void theta::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void theta::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void theta::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void theta::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void theta::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void theta::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void theta::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void theta::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
          esl_seteq<1,1,1>(icmp_ln343_fu_364_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void theta::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void theta::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(icmp_ln343_fu_364_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void theta::thread_icmp_ln336_fu_184_p2() {
    icmp_ln336_fu_184_p2 = (!x_0_reg_127.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(x_0_reg_127.read() == ap_const_lv3_5);
}

void theta::thread_icmp_ln338_fu_205_p2() {
    icmp_ln338_fu_205_p2 = (!y_0_reg_138.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(y_0_reg_138.read() == ap_const_lv3_5);
}

void theta::thread_icmp_ln341_fu_260_p2() {
    icmp_ln341_fu_260_p2 = (!x_1_reg_149.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(x_1_reg_149.read() == ap_const_lv3_5);
}

void theta::thread_icmp_ln342_1_fu_303_p2() {
    icmp_ln342_1_fu_303_p2 = (!add_ln342_1_fu_297_p2.read().is_01() || !ap_const_lv4_5.is_01())? sc_lv<1>(): (sc_biguint<4>(add_ln342_1_fu_297_p2.read()) < sc_biguint<4>(ap_const_lv4_5));
}

void theta::thread_icmp_ln342_fu_272_p2() {
    icmp_ln342_fu_272_p2 = (!x_fu_266_p2.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): (sc_biguint<3>(x_fu_266_p2.read()) < sc_biguint<3>(ap_const_lv3_5));
}

void theta::thread_icmp_ln343_fu_364_p2() {
    icmp_ln343_fu_364_p2 = (!x_2_reg_161.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(x_2_reg_161.read() == ap_const_lv3_5);
}

void theta::thread_icmp_ln344_fu_385_p2() {
    icmp_ln344_fu_385_p2 = (!y_1_reg_173.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(y_1_reg_173.read() == ap_const_lv3_5);
}

void theta::thread_or_ln_fu_344_p3() {
    or_ln_fu_344_p3 = esl_concat<63,1>(trunc_ln342_fu_332_p1.read(), tmp_31_fu_336_p3.read());
}

void theta::thread_select_ln342_1_fu_319_p3() {
    select_ln342_1_fu_319_p3 = (!icmp_ln342_1_fu_303_p2.read()[0].is_01())? sc_lv<4>(): ((icmp_ln342_1_fu_303_p2.read()[0].to_bool())? add_ln342_1_fu_297_p2.read(): sext_ln342_fu_315_p1.read());
}

void theta::thread_select_ln342_fu_284_p3() {
    select_ln342_fu_284_p3 = (!icmp_ln342_fu_272_p2.read()[0].is_01())? sc_lv<3>(): ((icmp_ln342_fu_272_p2.read()[0].to_bool())? x_fu_266_p2.read(): xor_ln342_1_fu_278_p2.read());
}

void theta::thread_sext_ln342_fu_315_p1() {
    sext_ln342_fu_315_p1 = esl_sext<4,3>(add_ln342_2_fu_309_p2.read());
}

void theta::thread_shl_ln2_fu_401_p3() {
    shl_ln2_fu_401_p3 = esl_concat<3,2>(y_1_reg_173.read(), ap_const_lv2_0);
}

void theta::thread_shl_ln_fu_221_p3() {
    shl_ln_fu_221_p3 = esl_concat<3,2>(y_0_reg_138.read(), ap_const_lv2_0);
}

void theta::thread_tmp_31_fu_336_p3() {
    tmp_31_fu_336_p3 = C_q0.read().range(63, 63);
}

void theta::thread_trunc_ln342_fu_332_p1() {
    trunc_ln342_fu_332_p1 = C_q0.read().range(63-1, 0);
}

void theta::thread_x_3_fu_190_p2() {
    x_3_fu_190_p2 = (!x_0_reg_127.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(x_0_reg_127.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void theta::thread_x_4_fu_370_p2() {
    x_4_fu_370_p2 = (!x_2_reg_161.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(x_2_reg_161.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void theta::thread_x_fu_266_p2() {
    x_fu_266_p2 = (!x_1_reg_149.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(x_1_reg_149.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void theta::thread_xor_ln339_fu_249_p2() {
    xor_ln339_fu_249_p2 = (C_q0.read() ^ A_q0.read());
}

void theta::thread_xor_ln342_1_fu_278_p2() {
    xor_ln342_1_fu_278_p2 = (x_1_reg_149.read() ^ ap_const_lv3_4);
}

void theta::thread_y_2_fu_391_p2() {
    y_2_fu_391_p2 = (!y_1_reg_173.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(y_1_reg_173.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void theta::thread_y_fu_211_p2() {
    y_fu_211_p2 = (!y_0_reg_138.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(y_0_reg_138.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void theta::thread_zext_ln337_fu_196_p1() {
    zext_ln337_fu_196_p1 = esl_zext<64,3>(x_0_reg_127.read());
}

void theta::thread_zext_ln339_1_fu_201_p1() {
    zext_ln339_1_fu_201_p1 = esl_zext<4,3>(x_0_reg_127.read());
}

void theta::thread_zext_ln339_2_fu_217_p1() {
    zext_ln339_2_fu_217_p1 = esl_zext<4,3>(y_0_reg_138.read());
}

void theta::thread_zext_ln339_3_fu_234_p1() {
    zext_ln339_3_fu_234_p1 = esl_zext<5,4>(add_ln339_1_fu_229_p2.read());
}

void theta::thread_zext_ln339_fu_244_p1() {
    zext_ln339_fu_244_p1 = esl_zext<64,5>(add_ln339_fu_238_p2.read());
}

void theta::thread_zext_ln341_fu_256_p1() {
    zext_ln341_fu_256_p1 = esl_zext<4,3>(x_1_reg_149.read());
}

void theta::thread_zext_ln342_1_fu_327_p1() {
    zext_ln342_1_fu_327_p1 = esl_zext<64,4>(select_ln342_1_fu_319_p3.read());
}

void theta::thread_zext_ln342_2_fu_359_p1() {
    zext_ln342_2_fu_359_p1 = esl_zext<64,3>(x_1_reg_149.read());
}

void theta::thread_zext_ln342_fu_292_p1() {
    zext_ln342_fu_292_p1 = esl_zext<64,3>(select_ln342_fu_284_p3.read());
}

void theta::thread_zext_ln345_1_fu_424_p1() {
    zext_ln345_1_fu_424_p1 = esl_zext<64,5>(add_ln345_fu_418_p2.read());
}

void theta::thread_zext_ln345_2_fu_381_p1() {
    zext_ln345_2_fu_381_p1 = esl_zext<4,3>(x_2_reg_161.read());
}

void theta::thread_zext_ln345_3_fu_397_p1() {
    zext_ln345_3_fu_397_p1 = esl_zext<4,3>(y_1_reg_173.read());
}

void theta::thread_zext_ln345_4_fu_414_p1() {
    zext_ln345_4_fu_414_p1 = esl_zext<5,4>(add_ln345_1_fu_409_p2.read());
}

void theta::thread_zext_ln345_fu_376_p1() {
    zext_ln345_fu_376_p1 = esl_zext<64,3>(x_2_reg_161.read());
}

void theta::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln336_fu_184_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln338_fu_205_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(icmp_ln341_fu_260_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state7;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 64 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(icmp_ln343_fu_364_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state8;
            }
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && esl_seteq<1,1,1>(icmp_ln344_fu_385_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state7;
            } else {
                ap_NS_fsm = ap_ST_fsm_state10;
            }
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<10>) ("XXXXXXXXXX");
            break;
    }
}

}
