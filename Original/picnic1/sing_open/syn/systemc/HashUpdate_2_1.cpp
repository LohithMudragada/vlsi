// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "HashUpdate_2_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic HashUpdate_2_1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic HashUpdate_2_1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> HashUpdate_2_1::ap_ST_fsm_state1 = "1";
const sc_lv<6> HashUpdate_2_1::ap_ST_fsm_state2 = "10";
const sc_lv<6> HashUpdate_2_1::ap_ST_fsm_state3 = "100";
const sc_lv<6> HashUpdate_2_1::ap_ST_fsm_state4 = "1000";
const sc_lv<6> HashUpdate_2_1::ap_ST_fsm_state5 = "10000";
const sc_lv<6> HashUpdate_2_1::ap_ST_fsm_state6 = "100000";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_1 = "1";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_2 = "10";
const sc_lv<1> HashUpdate_2_1::ap_const_lv1_0 = "0";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_3 = "11";
const sc_lv<7> HashUpdate_2_1::ap_const_lv7_0 = "0000000";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_4 = "100";
const sc_lv<5> HashUpdate_2_1::ap_const_lv5_0 = "00000";
const sc_lv<1> HashUpdate_2_1::ap_const_lv1_1 = "1";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_5 = "101";
const sc_lv<8> HashUpdate_2_1::ap_const_lv8_0 = "00000000";
const sc_lv<7> HashUpdate_2_1::ap_const_lv7_1 = "1";
const sc_lv<7> HashUpdate_2_1::ap_const_lv7_4A = "1001010";
const sc_lv<5> HashUpdate_2_1::ap_const_lv5_4 = "100";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_8 = "1000";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_F = "1111";
const sc_lv<4> HashUpdate_2_1::ap_const_lv4_1 = "1";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_10 = "10000";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_17 = "10111";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_18 = "11000";
const sc_lv<32> HashUpdate_2_1::ap_const_lv32_1F = "11111";
const sc_lv<4> HashUpdate_2_1::ap_const_lv4_2 = "10";
const sc_lv<4> HashUpdate_2_1::ap_const_lv4_3 = "11";
const bool HashUpdate_2_1::ap_const_boolean_1 = true;

HashUpdate_2_1::HashUpdate_2_1(sc_module_name name) : sc_module(name), mVcdFile(0) {
    temp_U = new HashUpdate_2_1_temp("temp_U");
    temp_U->clk(ap_clk);
    temp_U->reset(ap_rst);
    temp_U->address0(temp_address0);
    temp_U->ce0(temp_ce0);
    temp_U->we0(temp_we0);
    temp_U->d0(temp_d0);
    temp_U->q0(temp_q0);
    temp_U->address1(temp_address1);
    temp_U->ce1(temp_ce1);
    temp_U->we1(temp_we1);
    temp_U->d1(temp_d1);
    grp_KeccakWidth1600_Spon_9_fu_174 = new KeccakWidth1600_Spon_9("grp_KeccakWidth1600_Spon_9_fu_174");
    grp_KeccakWidth1600_Spon_9_fu_174->ap_clk(ap_clk);
    grp_KeccakWidth1600_Spon_9_fu_174->ap_rst(ap_rst);
    grp_KeccakWidth1600_Spon_9_fu_174->ap_start(grp_KeccakWidth1600_Spon_9_fu_174_ap_start);
    grp_KeccakWidth1600_Spon_9_fu_174->ap_done(grp_KeccakWidth1600_Spon_9_fu_174_ap_done);
    grp_KeccakWidth1600_Spon_9_fu_174->ap_idle(grp_KeccakWidth1600_Spon_9_fu_174_ap_idle);
    grp_KeccakWidth1600_Spon_9_fu_174->ap_ready(grp_KeccakWidth1600_Spon_9_fu_174_ap_ready);
    grp_KeccakWidth1600_Spon_9_fu_174->instance_state_address0(grp_KeccakWidth1600_Spon_9_fu_174_instance_state_address0);
    grp_KeccakWidth1600_Spon_9_fu_174->instance_state_ce0(grp_KeccakWidth1600_Spon_9_fu_174_instance_state_ce0);
    grp_KeccakWidth1600_Spon_9_fu_174->instance_state_we0(grp_KeccakWidth1600_Spon_9_fu_174_instance_state_we0);
    grp_KeccakWidth1600_Spon_9_fu_174->instance_state_d0(grp_KeccakWidth1600_Spon_9_fu_174_instance_state_d0);
    grp_KeccakWidth1600_Spon_9_fu_174->instance_state_q0(ctx_sponge_state_q0);
    grp_KeccakWidth1600_Spon_9_fu_174->instance_byteIOIndex_read(ctx_sponge_byteIOInd);
    grp_KeccakWidth1600_Spon_9_fu_174->data_address0(grp_KeccakWidth1600_Spon_9_fu_174_data_address0);
    grp_KeccakWidth1600_Spon_9_fu_174->data_ce0(grp_KeccakWidth1600_Spon_9_fu_174_data_ce0);
    grp_KeccakWidth1600_Spon_9_fu_174->data_q0(temp_q0);
    grp_KeccakWidth1600_Spon_9_fu_174->ap_return(grp_KeccakWidth1600_Spon_9_fu_174_ap_return);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln34_fu_186_p2);
    sensitive << ( phi_ln34_reg_152 );

    SC_METHOD(thread_ap_CS_fsm_state1);
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

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_ap_done );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_ap_done );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_return);
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_ap_done );
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_ap_return );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_return_preg );

    SC_METHOD(thread_ctx_sponge_state_address0);
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_instance_state_address0 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ctx_sponge_state_ce0);
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_instance_state_ce0 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ctx_sponge_state_d0);
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_instance_state_d0 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ctx_sponge_state_we0);
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_instance_state_we0 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_data_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln38_fu_232_p1 );

    SC_METHOD(thread_data_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_grp_KeccakWidth1600_Spon_9_fu_174_ap_start);
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_ap_start_reg );

    SC_METHOD(thread_icmp_ln34_fu_197_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( phi_ln34_reg_152 );

    SC_METHOD(thread_loop_fu_241_p2);
    sensitive << ( loop_0_reg_163 );

    SC_METHOD(thread_or_ln41_fu_263_p2);
    sensitive << ( trunc_ln37_reg_344 );

    SC_METHOD(thread_or_ln43_fu_293_p2);
    sensitive << ( trunc_ln37_reg_344 );

    SC_METHOD(thread_or_ln45_fu_303_p2);
    sensitive << ( trunc_ln37_reg_344 );

    SC_METHOD(thread_temp_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln37_reg_331 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_data_address0 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( zext_ln34_fu_192_p1 );
    sensitive << ( zext_ln45_fu_308_p1 );

    SC_METHOD(thread_temp_address1);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln41_fu_268_p1 );
    sensitive << ( zext_ln43_fu_298_p1 );

    SC_METHOD(thread_temp_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_data_ce0 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_temp_ce1);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_temp_d0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( trunc_ln3_reg_361 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( trunc_ln39_fu_247_p1 );

    SC_METHOD(thread_temp_d1);
    sensitive << ( data_q0 );
    sensitive << ( trunc_ln2_reg_356 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_temp_we0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_temp_we1);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_tmp_52_fu_207_p3);
    sensitive << ( loop_0_reg_163 );

    SC_METHOD(thread_tmp_fu_225_p3);
    sensitive << ( data_offset );
    sensitive << ( trunc_ln_fu_215_p4 );

    SC_METHOD(thread_trunc_ln37_fu_237_p1);
    sensitive << ( loop_0_reg_163 );

    SC_METHOD(thread_trunc_ln39_fu_247_p1);
    sensitive << ( data_q0 );

    SC_METHOD(thread_trunc_ln_fu_215_p4);
    sensitive << ( loop_0_reg_163 );

    SC_METHOD(thread_zext_ln34_fu_192_p1);
    sensitive << ( phi_ln34_reg_152 );

    SC_METHOD(thread_zext_ln37_fu_203_p1);
    sensitive << ( loop_0_reg_163 );

    SC_METHOD(thread_zext_ln38_fu_232_p1);
    sensitive << ( tmp_fu_225_p3 );

    SC_METHOD(thread_zext_ln41_fu_268_p1);
    sensitive << ( or_ln41_fu_263_p2 );

    SC_METHOD(thread_zext_ln43_fu_298_p1);
    sensitive << ( or_ln43_fu_293_p2 );

    SC_METHOD(thread_zext_ln45_fu_308_p1);
    sensitive << ( or_ln45_fu_303_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_52_fu_207_p3 );
    sensitive << ( grp_KeccakWidth1600_Spon_9_fu_174_ap_done );
    sensitive << ( icmp_ln34_fu_197_p2 );
    sensitive << ( ap_CS_fsm_state6 );

    ap_CS_fsm = "000001";
    grp_KeccakWidth1600_Spon_9_fu_174_ap_start_reg = SC_LOGIC_0;
    ap_return_preg = "00000000000000000000000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "HashUpdate_2_1_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, ctx_sponge_state_address0, "(port)ctx_sponge_state_address0");
    sc_trace(mVcdFile, ctx_sponge_state_ce0, "(port)ctx_sponge_state_ce0");
    sc_trace(mVcdFile, ctx_sponge_state_we0, "(port)ctx_sponge_state_we0");
    sc_trace(mVcdFile, ctx_sponge_state_d0, "(port)ctx_sponge_state_d0");
    sc_trace(mVcdFile, ctx_sponge_state_q0, "(port)ctx_sponge_state_q0");
    sc_trace(mVcdFile, ctx_sponge_byteIOInd, "(port)ctx_sponge_byteIOInd");
    sc_trace(mVcdFile, data_address0, "(port)data_address0");
    sc_trace(mVcdFile, data_ce0, "(port)data_ce0");
    sc_trace(mVcdFile, data_q0, "(port)data_q0");
    sc_trace(mVcdFile, data_offset, "(port)data_offset");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, add_ln34_fu_186_p2, "add_ln34_fu_186_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, zext_ln37_fu_203_p1, "zext_ln37_fu_203_p1");
    sc_trace(mVcdFile, zext_ln37_reg_331, "zext_ln37_reg_331");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_52_fu_207_p3, "tmp_52_fu_207_p3");
    sc_trace(mVcdFile, trunc_ln37_fu_237_p1, "trunc_ln37_fu_237_p1");
    sc_trace(mVcdFile, trunc_ln37_reg_344, "trunc_ln37_reg_344");
    sc_trace(mVcdFile, loop_fu_241_p2, "loop_fu_241_p2");
    sc_trace(mVcdFile, loop_reg_351, "loop_reg_351");
    sc_trace(mVcdFile, trunc_ln2_reg_356, "trunc_ln2_reg_356");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, trunc_ln3_reg_361, "trunc_ln3_reg_361");
    sc_trace(mVcdFile, temp_address0, "temp_address0");
    sc_trace(mVcdFile, temp_ce0, "temp_ce0");
    sc_trace(mVcdFile, temp_we0, "temp_we0");
    sc_trace(mVcdFile, temp_d0, "temp_d0");
    sc_trace(mVcdFile, temp_q0, "temp_q0");
    sc_trace(mVcdFile, temp_address1, "temp_address1");
    sc_trace(mVcdFile, temp_ce1, "temp_ce1");
    sc_trace(mVcdFile, temp_we1, "temp_we1");
    sc_trace(mVcdFile, temp_d1, "temp_d1");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_ap_start, "grp_KeccakWidth1600_Spon_9_fu_174_ap_start");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_ap_done, "grp_KeccakWidth1600_Spon_9_fu_174_ap_done");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_ap_idle, "grp_KeccakWidth1600_Spon_9_fu_174_ap_idle");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_ap_ready, "grp_KeccakWidth1600_Spon_9_fu_174_ap_ready");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_instance_state_address0, "grp_KeccakWidth1600_Spon_9_fu_174_instance_state_address0");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_instance_state_ce0, "grp_KeccakWidth1600_Spon_9_fu_174_instance_state_ce0");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_instance_state_we0, "grp_KeccakWidth1600_Spon_9_fu_174_instance_state_we0");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_instance_state_d0, "grp_KeccakWidth1600_Spon_9_fu_174_instance_state_d0");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_data_address0, "grp_KeccakWidth1600_Spon_9_fu_174_data_address0");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_data_ce0, "grp_KeccakWidth1600_Spon_9_fu_174_data_ce0");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_ap_return, "grp_KeccakWidth1600_Spon_9_fu_174_ap_return");
    sc_trace(mVcdFile, phi_ln34_reg_152, "phi_ln34_reg_152");
    sc_trace(mVcdFile, icmp_ln34_fu_197_p2, "icmp_ln34_fu_197_p2");
    sc_trace(mVcdFile, loop_0_reg_163, "loop_0_reg_163");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, grp_KeccakWidth1600_Spon_9_fu_174_ap_start_reg, "grp_KeccakWidth1600_Spon_9_fu_174_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, zext_ln34_fu_192_p1, "zext_ln34_fu_192_p1");
    sc_trace(mVcdFile, zext_ln38_fu_232_p1, "zext_ln38_fu_232_p1");
    sc_trace(mVcdFile, zext_ln41_fu_268_p1, "zext_ln41_fu_268_p1");
    sc_trace(mVcdFile, zext_ln43_fu_298_p1, "zext_ln43_fu_298_p1");
    sc_trace(mVcdFile, zext_ln45_fu_308_p1, "zext_ln45_fu_308_p1");
    sc_trace(mVcdFile, trunc_ln39_fu_247_p1, "trunc_ln39_fu_247_p1");
    sc_trace(mVcdFile, trunc_ln_fu_215_p4, "trunc_ln_fu_215_p4");
    sc_trace(mVcdFile, tmp_fu_225_p3, "tmp_fu_225_p3");
    sc_trace(mVcdFile, or_ln41_fu_263_p2, "or_ln41_fu_263_p2");
    sc_trace(mVcdFile, or_ln43_fu_293_p2, "or_ln43_fu_293_p2");
    sc_trace(mVcdFile, or_ln45_fu_303_p2, "or_ln45_fu_303_p2");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

HashUpdate_2_1::~HashUpdate_2_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete temp_U;
    delete grp_KeccakWidth1600_Spon_9_fu_174;
}

void HashUpdate_2_1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv32_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
             esl_seteq<1,1,1>(grp_KeccakWidth1600_Spon_9_fu_174_ap_done.read(), ap_const_logic_1))) {
            ap_return_preg = grp_KeccakWidth1600_Spon_9_fu_174_ap_return.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_KeccakWidth1600_Spon_9_fu_174_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
             esl_seteq<1,1,1>(tmp_52_fu_207_p3.read(), ap_const_lv1_1))) {
            grp_KeccakWidth1600_Spon_9_fu_174_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_KeccakWidth1600_Spon_9_fu_174_ap_ready.read())) {
            grp_KeccakWidth1600_Spon_9_fu_174_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_197_p2.read(), ap_const_lv1_1))) {
        loop_0_reg_163 = ap_const_lv5_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        loop_0_reg_163 = loop_reg_351.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln34_fu_197_p2.read()))) {
        phi_ln34_reg_152 = add_ln34_fu_186_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        phi_ln34_reg_152 = ap_const_lv7_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(tmp_52_fu_207_p3.read(), ap_const_lv1_0))) {
        loop_reg_351 = loop_fu_241_p2.read();
        trunc_ln37_reg_344 = trunc_ln37_fu_237_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        trunc_ln2_reg_356 = data_q0.read().range(23, 16);
        trunc_ln3_reg_361 = data_q0.read().range(31, 24);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        zext_ln37_reg_331 = zext_ln37_fu_203_p1.read();
    }
}

void HashUpdate_2_1::thread_add_ln34_fu_186_p2() {
    add_ln34_fu_186_p2 = (!phi_ln34_reg_152.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(phi_ln34_reg_152.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void HashUpdate_2_1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void HashUpdate_2_1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void HashUpdate_2_1::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void HashUpdate_2_1::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void HashUpdate_2_1::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void HashUpdate_2_1::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void HashUpdate_2_1::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
          esl_seteq<1,1,1>(grp_KeccakWidth1600_Spon_9_fu_174_ap_done.read(), ap_const_logic_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void HashUpdate_2_1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void HashUpdate_2_1::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(grp_KeccakWidth1600_Spon_9_fu_174_ap_done.read(), ap_const_logic_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void HashUpdate_2_1::thread_ap_return() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(grp_KeccakWidth1600_Spon_9_fu_174_ap_done.read(), ap_const_logic_1))) {
        ap_return = grp_KeccakWidth1600_Spon_9_fu_174_ap_return.read();
    } else {
        ap_return = ap_return_preg.read();
    }
}

void HashUpdate_2_1::thread_ctx_sponge_state_address0() {
    ctx_sponge_state_address0 = grp_KeccakWidth1600_Spon_9_fu_174_instance_state_address0.read();
}

void HashUpdate_2_1::thread_ctx_sponge_state_ce0() {
    ctx_sponge_state_ce0 = grp_KeccakWidth1600_Spon_9_fu_174_instance_state_ce0.read();
}

void HashUpdate_2_1::thread_ctx_sponge_state_d0() {
    ctx_sponge_state_d0 = grp_KeccakWidth1600_Spon_9_fu_174_instance_state_d0.read();
}

void HashUpdate_2_1::thread_ctx_sponge_state_we0() {
    ctx_sponge_state_we0 = grp_KeccakWidth1600_Spon_9_fu_174_instance_state_we0.read();
}

void HashUpdate_2_1::thread_data_address0() {
    data_address0 =  (sc_lv<10>) (zext_ln38_fu_232_p1.read());
}

void HashUpdate_2_1::thread_data_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        data_ce0 = ap_const_logic_1;
    } else {
        data_ce0 = ap_const_logic_0;
    }
}

void HashUpdate_2_1::thread_grp_KeccakWidth1600_Spon_9_fu_174_ap_start() {
    grp_KeccakWidth1600_Spon_9_fu_174_ap_start = grp_KeccakWidth1600_Spon_9_fu_174_ap_start_reg.read();
}

void HashUpdate_2_1::thread_icmp_ln34_fu_197_p2() {
    icmp_ln34_fu_197_p2 = (!phi_ln34_reg_152.read().is_01() || !ap_const_lv7_4A.is_01())? sc_lv<1>(): sc_lv<1>(phi_ln34_reg_152.read() == ap_const_lv7_4A);
}

void HashUpdate_2_1::thread_loop_fu_241_p2() {
    loop_fu_241_p2 = (!ap_const_lv5_4.is_01() || !loop_0_reg_163.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_4) + sc_biguint<5>(loop_0_reg_163.read()));
}

void HashUpdate_2_1::thread_or_ln41_fu_263_p2() {
    or_ln41_fu_263_p2 = (trunc_ln37_reg_344.read() | ap_const_lv4_1);
}

void HashUpdate_2_1::thread_or_ln43_fu_293_p2() {
    or_ln43_fu_293_p2 = (trunc_ln37_reg_344.read() | ap_const_lv4_2);
}

void HashUpdate_2_1::thread_or_ln45_fu_303_p2() {
    or_ln45_fu_303_p2 = (trunc_ln37_reg_344.read() | ap_const_lv4_3);
}

void HashUpdate_2_1::thread_temp_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        temp_address0 =  (sc_lv<7>) (zext_ln45_fu_308_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        temp_address0 =  (sc_lv<7>) (zext_ln37_reg_331.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        temp_address0 =  (sc_lv<7>) (zext_ln34_fu_192_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        temp_address0 = grp_KeccakWidth1600_Spon_9_fu_174_data_address0.read();
    } else {
        temp_address0 = "XXXXXXX";
    }
}

void HashUpdate_2_1::thread_temp_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        temp_address1 =  (sc_lv<7>) (zext_ln43_fu_298_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        temp_address1 =  (sc_lv<7>) (zext_ln41_fu_268_p1.read());
    } else {
        temp_address1 = "XXXXXXX";
    }
}

void HashUpdate_2_1::thread_temp_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        temp_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        temp_ce0 = grp_KeccakWidth1600_Spon_9_fu_174_data_ce0.read();
    } else {
        temp_ce0 = ap_const_logic_0;
    }
}

void HashUpdate_2_1::thread_temp_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        temp_ce1 = ap_const_logic_1;
    } else {
        temp_ce1 = ap_const_logic_0;
    }
}

void HashUpdate_2_1::thread_temp_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        temp_d0 = trunc_ln3_reg_361.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        temp_d0 = trunc_ln39_fu_247_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        temp_d0 = ap_const_lv8_0;
    } else {
        temp_d0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void HashUpdate_2_1::thread_temp_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        temp_d1 = trunc_ln2_reg_356.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        temp_d1 = data_q0.read().range(15, 8);
    } else {
        temp_d1 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void HashUpdate_2_1::thread_temp_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        temp_we0 = ap_const_logic_1;
    } else {
        temp_we0 = ap_const_logic_0;
    }
}

void HashUpdate_2_1::thread_temp_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        temp_we1 = ap_const_logic_1;
    } else {
        temp_we1 = ap_const_logic_0;
    }
}

void HashUpdate_2_1::thread_tmp_52_fu_207_p3() {
    tmp_52_fu_207_p3 = loop_0_reg_163.read().range(4, 4);
}

void HashUpdate_2_1::thread_tmp_fu_225_p3() {
    tmp_fu_225_p3 = esl_concat<8,2>(data_offset.read(), trunc_ln_fu_215_p4.read());
}

void HashUpdate_2_1::thread_trunc_ln37_fu_237_p1() {
    trunc_ln37_fu_237_p1 = loop_0_reg_163.read().range(4-1, 0);
}

void HashUpdate_2_1::thread_trunc_ln39_fu_247_p1() {
    trunc_ln39_fu_247_p1 = data_q0.read().range(8-1, 0);
}

void HashUpdate_2_1::thread_trunc_ln_fu_215_p4() {
    trunc_ln_fu_215_p4 = loop_0_reg_163.read().range(3, 2);
}

void HashUpdate_2_1::thread_zext_ln34_fu_192_p1() {
    zext_ln34_fu_192_p1 = esl_zext<64,7>(phi_ln34_reg_152.read());
}

void HashUpdate_2_1::thread_zext_ln37_fu_203_p1() {
    zext_ln37_fu_203_p1 = esl_zext<64,5>(loop_0_reg_163.read());
}

void HashUpdate_2_1::thread_zext_ln38_fu_232_p1() {
    zext_ln38_fu_232_p1 = esl_zext<64,10>(tmp_fu_225_p3.read());
}

void HashUpdate_2_1::thread_zext_ln41_fu_268_p1() {
    zext_ln41_fu_268_p1 = esl_zext<64,4>(or_ln41_fu_263_p2.read());
}

void HashUpdate_2_1::thread_zext_ln43_fu_298_p1() {
    zext_ln43_fu_298_p1 = esl_zext<64,4>(or_ln43_fu_293_p2.read());
}

void HashUpdate_2_1::thread_zext_ln45_fu_308_p1() {
    zext_ln45_fu_308_p1 = esl_zext<64,4>(or_ln45_fu_303_p2.read());
}

void HashUpdate_2_1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln34_fu_197_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(tmp_52_fu_207_p3.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(grp_KeccakWidth1600_Spon_9_fu_174_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

}

