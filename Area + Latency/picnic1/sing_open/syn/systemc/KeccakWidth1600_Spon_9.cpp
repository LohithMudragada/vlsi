// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "KeccakWidth1600_Spon_9.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic KeccakWidth1600_Spon_9::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic KeccakWidth1600_Spon_9::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> KeccakWidth1600_Spon_9::ap_ST_fsm_state1 = "1";
const sc_lv<5> KeccakWidth1600_Spon_9::ap_ST_fsm_state2 = "10";
const sc_lv<5> KeccakWidth1600_Spon_9::ap_ST_fsm_state3 = "100";
const sc_lv<5> KeccakWidth1600_Spon_9::ap_ST_fsm_state4 = "1000";
const sc_lv<5> KeccakWidth1600_Spon_9::ap_ST_fsm_state5 = "10000";
const sc_lv<32> KeccakWidth1600_Spon_9::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> KeccakWidth1600_Spon_9::ap_const_lv32_1 = "1";
const sc_lv<32> KeccakWidth1600_Spon_9::ap_const_lv32_2 = "10";
const sc_lv<1> KeccakWidth1600_Spon_9::ap_const_lv1_0 = "0";
const sc_lv<1> KeccakWidth1600_Spon_9::ap_const_lv1_1 = "1";
const sc_lv<32> KeccakWidth1600_Spon_9::ap_const_lv32_3 = "11";
const sc_lv<32> KeccakWidth1600_Spon_9::ap_const_lv32_4 = "100";
const sc_lv<32> KeccakWidth1600_Spon_9::ap_const_lv32_A8 = "10101000";
const bool KeccakWidth1600_Spon_9::ap_const_boolean_0 = false;
const bool KeccakWidth1600_Spon_9::ap_const_boolean_1 = true;

KeccakWidth1600_Spon_9::KeccakWidth1600_Spon_9(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_KeccakP1600_Permute_s_fu_54 = new KeccakP1600_Permute_s("grp_KeccakP1600_Permute_s_fu_54");
    grp_KeccakP1600_Permute_s_fu_54->ap_clk(ap_clk);
    grp_KeccakP1600_Permute_s_fu_54->ap_rst(ap_rst);
    grp_KeccakP1600_Permute_s_fu_54->ap_start(grp_KeccakP1600_Permute_s_fu_54_ap_start);
    grp_KeccakP1600_Permute_s_fu_54->ap_done(grp_KeccakP1600_Permute_s_fu_54_ap_done);
    grp_KeccakP1600_Permute_s_fu_54->ap_idle(grp_KeccakP1600_Permute_s_fu_54_ap_idle);
    grp_KeccakP1600_Permute_s_fu_54->ap_ready(grp_KeccakP1600_Permute_s_fu_54_ap_ready);
    grp_KeccakP1600_Permute_s_fu_54->state_address0(grp_KeccakP1600_Permute_s_fu_54_state_address0);
    grp_KeccakP1600_Permute_s_fu_54->state_ce0(grp_KeccakP1600_Permute_s_fu_54_state_ce0);
    grp_KeccakP1600_Permute_s_fu_54->state_we0(grp_KeccakP1600_Permute_s_fu_54_state_we0);
    grp_KeccakP1600_Permute_s_fu_54->state_d0(grp_KeccakP1600_Permute_s_fu_54_state_d0);
    grp_KeccakP1600_Permute_s_fu_54->state_q0(instance_state_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln224_fu_76_p2);
    sensitive << ( instance_byteIOIndex_1_fu_20 );

    SC_METHOD(thread_add_ln232_fu_113_p2);
    sensitive << ( loop_1_reg_43 );
    sensitive << ( instance_byteIOIndex_1_fu_20 );

    SC_METHOD(thread_add_ln236_fu_124_p2);
    sensitive << ( select_ln224_reg_163 );
    sensitive << ( instance_byteIOIndex_1_fu_20 );

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

    SC_METHOD(thread_ap_block_state5_on_subcall_done);
    sensitive << ( icmp_ln237_reg_183 );
    sensitive << ( grp_KeccakP1600_Permute_s_fu_54_ap_done );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( phitmp_fu_146_p2 );
    sensitive << ( ap_block_state5_on_subcall_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( phitmp_fu_146_p2 );
    sensitive << ( ap_block_state5_on_subcall_done );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( instance_byteIOIndex_1_fu_20 );
    sensitive << ( phitmp_fu_146_p2 );
    sensitive << ( ap_block_state5_on_subcall_done );

    SC_METHOD(thread_data_0_read_cast_fu_72_p1);
    sensitive << ( data_0_read );

    SC_METHOD(thread_grp_KeccakP1600_Permute_s_fu_54_ap_start);
    sensitive << ( grp_KeccakP1600_Permute_s_fu_54_ap_start_reg );

    SC_METHOD(thread_icmp_ln224_fu_82_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( add_ln224_fu_76_p2 );

    SC_METHOD(thread_icmp_ln231_fu_102_p2);
    sensitive << ( select_ln224_reg_163 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( loop_1_reg_43 );

    SC_METHOD(thread_icmp_ln237_fu_129_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln231_fu_102_p2 );
    sensitive << ( add_ln236_fu_124_p2 );

    SC_METHOD(thread_instance_state_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( instance_state_addr_reg_178 );
    sensitive << ( icmp_ln231_fu_102_p2 );
    sensitive << ( icmp_ln237_reg_183 );
    sensitive << ( grp_KeccakP1600_Permute_s_fu_54_state_address0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln149_fu_119_p1 );

    SC_METHOD(thread_instance_state_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln231_fu_102_p2 );
    sensitive << ( icmp_ln237_reg_183 );
    sensitive << ( grp_KeccakP1600_Permute_s_fu_54_state_ce0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_instance_state_d0);
    sensitive << ( icmp_ln237_reg_183 );
    sensitive << ( grp_KeccakP1600_Permute_s_fu_54_state_d0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( xor_ln149_fu_140_p2 );

    SC_METHOD(thread_instance_state_we0);
    sensitive << ( icmp_ln237_reg_183 );
    sensitive << ( grp_KeccakP1600_Permute_s_fu_54_state_we0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_loop_fu_107_p2);
    sensitive << ( loop_1_reg_43 );

    SC_METHOD(thread_partialBlock_fu_88_p2);
    sensitive << ( instance_byteIOIndex_1_fu_20 );

    SC_METHOD(thread_phitmp_fu_146_p2);
    sensitive << ( select_ln224_reg_163 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_block_state5_on_subcall_done );

    SC_METHOD(thread_select_ln224_fu_94_p3);
    sensitive << ( icmp_ln224_fu_82_p2 );
    sensitive << ( partialBlock_fu_88_p2 );

    SC_METHOD(thread_xor_ln149_fu_140_p2);
    sensitive << ( instance_state_q0 );
    sensitive << ( data_0_read_cast_reg_158 );

    SC_METHOD(thread_zext_ln149_fu_119_p1);
    sensitive << ( add_ln232_fu_113_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln231_fu_102_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( phitmp_fu_146_p2 );
    sensitive << ( ap_block_state5_on_subcall_done );

    ap_CS_fsm = "00001";
    grp_KeccakP1600_Permute_s_fu_54_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "KeccakWidth1600_Spon_9_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, instance_state_address0, "(port)instance_state_address0");
    sc_trace(mVcdFile, instance_state_ce0, "(port)instance_state_ce0");
    sc_trace(mVcdFile, instance_state_we0, "(port)instance_state_we0");
    sc_trace(mVcdFile, instance_state_d0, "(port)instance_state_d0");
    sc_trace(mVcdFile, instance_state_q0, "(port)instance_state_q0");
    sc_trace(mVcdFile, data_0_read, "(port)data_0_read");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, data_0_read_cast_fu_72_p1, "data_0_read_cast_fu_72_p1");
    sc_trace(mVcdFile, data_0_read_cast_reg_158, "data_0_read_cast_reg_158");
    sc_trace(mVcdFile, select_ln224_fu_94_p3, "select_ln224_fu_94_p3");
    sc_trace(mVcdFile, select_ln224_reg_163, "select_ln224_reg_163");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, loop_fu_107_p2, "loop_fu_107_p2");
    sc_trace(mVcdFile, loop_reg_173, "loop_reg_173");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, instance_state_addr_reg_178, "instance_state_addr_reg_178");
    sc_trace(mVcdFile, icmp_ln231_fu_102_p2, "icmp_ln231_fu_102_p2");
    sc_trace(mVcdFile, icmp_ln237_fu_129_p2, "icmp_ln237_fu_129_p2");
    sc_trace(mVcdFile, icmp_ln237_reg_183, "icmp_ln237_reg_183");
    sc_trace(mVcdFile, grp_KeccakP1600_Permute_s_fu_54_ap_start, "grp_KeccakP1600_Permute_s_fu_54_ap_start");
    sc_trace(mVcdFile, grp_KeccakP1600_Permute_s_fu_54_ap_done, "grp_KeccakP1600_Permute_s_fu_54_ap_done");
    sc_trace(mVcdFile, grp_KeccakP1600_Permute_s_fu_54_ap_idle, "grp_KeccakP1600_Permute_s_fu_54_ap_idle");
    sc_trace(mVcdFile, grp_KeccakP1600_Permute_s_fu_54_ap_ready, "grp_KeccakP1600_Permute_s_fu_54_ap_ready");
    sc_trace(mVcdFile, grp_KeccakP1600_Permute_s_fu_54_state_address0, "grp_KeccakP1600_Permute_s_fu_54_state_address0");
    sc_trace(mVcdFile, grp_KeccakP1600_Permute_s_fu_54_state_ce0, "grp_KeccakP1600_Permute_s_fu_54_state_ce0");
    sc_trace(mVcdFile, grp_KeccakP1600_Permute_s_fu_54_state_we0, "grp_KeccakP1600_Permute_s_fu_54_state_we0");
    sc_trace(mVcdFile, grp_KeccakP1600_Permute_s_fu_54_state_d0, "grp_KeccakP1600_Permute_s_fu_54_state_d0");
    sc_trace(mVcdFile, loop_1_reg_43, "loop_1_reg_43");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, grp_KeccakP1600_Permute_s_fu_54_ap_start_reg, "grp_KeccakP1600_Permute_s_fu_54_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, zext_ln149_fu_119_p1, "zext_ln149_fu_119_p1");
    sc_trace(mVcdFile, instance_byteIOIndex_1_fu_20, "instance_byteIOIndex_1_fu_20");
    sc_trace(mVcdFile, add_ln236_fu_124_p2, "add_ln236_fu_124_p2");
    sc_trace(mVcdFile, phitmp_fu_146_p2, "phitmp_fu_146_p2");
    sc_trace(mVcdFile, xor_ln149_fu_140_p2, "xor_ln149_fu_140_p2");
    sc_trace(mVcdFile, add_ln224_fu_76_p2, "add_ln224_fu_76_p2");
    sc_trace(mVcdFile, icmp_ln224_fu_82_p2, "icmp_ln224_fu_82_p2");
    sc_trace(mVcdFile, partialBlock_fu_88_p2, "partialBlock_fu_88_p2");
    sc_trace(mVcdFile, add_ln232_fu_113_p2, "add_ln232_fu_113_p2");
    sc_trace(mVcdFile, ap_block_state5_on_subcall_done, "ap_block_state5_on_subcall_done");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

KeccakWidth1600_Spon_9::~KeccakWidth1600_Spon_9() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete grp_KeccakP1600_Permute_s_fu_54;
}

void KeccakWidth1600_Spon_9::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_KeccakP1600_Permute_s_fu_54_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
             esl_seteq<1,1,1>(icmp_ln231_fu_102_p2.read(), ap_const_lv1_1) && 
             esl_seteq<1,1,1>(icmp_ln237_fu_129_p2.read(), ap_const_lv1_1))) {
            grp_KeccakP1600_Permute_s_fu_54_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_KeccakP1600_Permute_s_fu_54_ap_ready.read())) {
            grp_KeccakP1600_Permute_s_fu_54_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln231_fu_102_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln237_fu_129_p2.read()))) {
        instance_byteIOIndex_1_fu_20 = add_ln236_fu_124_p2.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                 esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                 esl_seteq<1,1,1>(icmp_ln231_fu_102_p2.read(), ap_const_lv1_1) && 
                 esl_seteq<1,1,1>(icmp_ln237_fu_129_p2.read(), ap_const_lv1_1)))) {
        instance_byteIOIndex_1_fu_20 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        loop_1_reg_43 = loop_reg_173.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        loop_1_reg_43 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        data_0_read_cast_reg_158 = data_0_read_cast_fu_72_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln231_fu_102_p2.read(), ap_const_lv1_1))) {
        icmp_ln237_reg_183 = icmp_ln237_fu_129_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln231_fu_102_p2.read(), ap_const_lv1_0))) {
        instance_state_addr_reg_178 =  (sc_lv<8>) (zext_ln149_fu_119_p1.read());
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        loop_reg_173 = loop_fu_107_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        select_ln224_reg_163 = select_ln224_fu_94_p3.read();
    }
}

void KeccakWidth1600_Spon_9::thread_add_ln224_fu_76_p2() {
    add_ln224_fu_76_p2 = (!instance_byteIOIndex_1_fu_20.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(instance_byteIOIndex_1_fu_20.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void KeccakWidth1600_Spon_9::thread_add_ln232_fu_113_p2() {
    add_ln232_fu_113_p2 = (!instance_byteIOIndex_1_fu_20.read().is_01() || !loop_1_reg_43.read().is_01())? sc_lv<32>(): (sc_biguint<32>(instance_byteIOIndex_1_fu_20.read()) + sc_biguint<32>(loop_1_reg_43.read()));
}

void KeccakWidth1600_Spon_9::thread_add_ln236_fu_124_p2() {
    add_ln236_fu_124_p2 = (!select_ln224_reg_163.read().is_01() || !instance_byteIOIndex_1_fu_20.read().is_01())? sc_lv<32>(): (sc_biguint<32>(select_ln224_reg_163.read()) + sc_biguint<32>(instance_byteIOIndex_1_fu_20.read()));
}

void KeccakWidth1600_Spon_9::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void KeccakWidth1600_Spon_9::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void KeccakWidth1600_Spon_9::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void KeccakWidth1600_Spon_9::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void KeccakWidth1600_Spon_9::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void KeccakWidth1600_Spon_9::thread_ap_block_state5_on_subcall_done() {
    ap_block_state5_on_subcall_done = (esl_seteq<1,1,1>(icmp_ln237_reg_183.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_0, grp_KeccakP1600_Permute_s_fu_54_ap_done.read()));
}

void KeccakWidth1600_Spon_9::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, phitmp_fu_146_p2.read()) && 
          esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void KeccakWidth1600_Spon_9::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void KeccakWidth1600_Spon_9::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, phitmp_fu_146_p2.read()) && 
         esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void KeccakWidth1600_Spon_9::thread_ap_return() {
    ap_return = instance_byteIOIndex_1_fu_20.read();
}

void KeccakWidth1600_Spon_9::thread_data_0_read_cast_fu_72_p1() {
    data_0_read_cast_fu_72_p1 = esl_zext<8,4>(data_0_read.read());
}

void KeccakWidth1600_Spon_9::thread_grp_KeccakP1600_Permute_s_fu_54_ap_start() {
    grp_KeccakP1600_Permute_s_fu_54_ap_start = grp_KeccakP1600_Permute_s_fu_54_ap_start_reg.read();
}

void KeccakWidth1600_Spon_9::thread_icmp_ln224_fu_82_p2() {
    icmp_ln224_fu_82_p2 = (!add_ln224_fu_76_p2.read().is_01() || !ap_const_lv32_A8.is_01())? sc_lv<1>(): (sc_biguint<32>(add_ln224_fu_76_p2.read()) > sc_biguint<32>(ap_const_lv32_A8));
}

void KeccakWidth1600_Spon_9::thread_icmp_ln231_fu_102_p2() {
    icmp_ln231_fu_102_p2 = (!loop_1_reg_43.read().is_01() || !select_ln224_reg_163.read().is_01())? sc_lv<1>(): sc_lv<1>(loop_1_reg_43.read() == select_ln224_reg_163.read());
}

void KeccakWidth1600_Spon_9::thread_icmp_ln237_fu_129_p2() {
    icmp_ln237_fu_129_p2 = (!add_ln236_fu_124_p2.read().is_01() || !ap_const_lv32_A8.is_01())? sc_lv<1>(): sc_lv<1>(add_ln236_fu_124_p2.read() == ap_const_lv32_A8);
}

void KeccakWidth1600_Spon_9::thread_instance_state_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        instance_state_address0 = instance_state_addr_reg_178.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(icmp_ln231_fu_102_p2.read(), ap_const_lv1_0))) {
        instance_state_address0 =  (sc_lv<8>) (zext_ln149_fu_119_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
                esl_seteq<1,1,1>(icmp_ln237_reg_183.read(), ap_const_lv1_1))) {
        instance_state_address0 = grp_KeccakP1600_Permute_s_fu_54_state_address0.read();
    } else {
        instance_state_address0 = "XXXXXXXX";
    }
}

void KeccakWidth1600_Spon_9::thread_instance_state_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln231_fu_102_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        instance_state_ce0 = ap_const_logic_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
                esl_seteq<1,1,1>(icmp_ln237_reg_183.read(), ap_const_lv1_1))) {
        instance_state_ce0 = grp_KeccakP1600_Permute_s_fu_54_state_ce0.read();
    } else {
        instance_state_ce0 = ap_const_logic_0;
    }
}

void KeccakWidth1600_Spon_9::thread_instance_state_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        instance_state_d0 = xor_ln149_fu_140_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
                esl_seteq<1,1,1>(icmp_ln237_reg_183.read(), ap_const_lv1_1))) {
        instance_state_d0 = grp_KeccakP1600_Permute_s_fu_54_state_d0.read();
    } else {
        instance_state_d0 = "XXXXXXXX";
    }
}

void KeccakWidth1600_Spon_9::thread_instance_state_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        instance_state_we0 = ap_const_logic_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
                esl_seteq<1,1,1>(icmp_ln237_reg_183.read(), ap_const_lv1_1))) {
        instance_state_we0 = grp_KeccakP1600_Permute_s_fu_54_state_we0.read();
    } else {
        instance_state_we0 = ap_const_logic_0;
    }
}

void KeccakWidth1600_Spon_9::thread_loop_fu_107_p2() {
    loop_fu_107_p2 = (!loop_1_reg_43.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(loop_1_reg_43.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void KeccakWidth1600_Spon_9::thread_partialBlock_fu_88_p2() {
    partialBlock_fu_88_p2 = (!ap_const_lv32_A8.is_01() || !instance_byteIOIndex_1_fu_20.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_const_lv32_A8) - sc_biguint<32>(instance_byteIOIndex_1_fu_20.read()));
}

void KeccakWidth1600_Spon_9::thread_phitmp_fu_146_p2() {
    phitmp_fu_146_p2 = (!select_ln224_reg_163.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(select_ln224_reg_163.read() == ap_const_lv32_0);
}

void KeccakWidth1600_Spon_9::thread_select_ln224_fu_94_p3() {
    select_ln224_fu_94_p3 = (!icmp_ln224_fu_82_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln224_fu_82_p2.read()[0].to_bool())? partialBlock_fu_88_p2.read(): ap_const_lv32_1);
}

void KeccakWidth1600_Spon_9::thread_xor_ln149_fu_140_p2() {
    xor_ln149_fu_140_p2 = (instance_state_q0.read() ^ data_0_read_cast_reg_158.read());
}

void KeccakWidth1600_Spon_9::thread_zext_ln149_fu_119_p1() {
    zext_ln149_fu_119_p1 = esl_zext<64,32>(add_ln232_fu_113_p2.read());
}

void KeccakWidth1600_Spon_9::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln231_fu_102_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, phitmp_fu_146_p2.read()) && esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, phitmp_fu_146_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<5>) ("XXXXX");
            break;
    }
}

}

