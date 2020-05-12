// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _createRandomTape13_HH_
#define _createRandomTape13_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeccakWidth1600_Spon_3.h"
#include "KeccakWidth1600_Spon_4.h"
#include "KeccakWidth1600_Spon_15.h"
#include "KeccakWidth1600_Spon_8.h"
#include "KeccakWidth1600_Spon_10.h"
#include "HashInit.h"
#include "HashFinal.h"
#include "createRandomTape1fYi.h"

namespace ap_rtl {

struct createRandomTape13 : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<12> > seed_0_address0;
    sc_out< sc_logic > seed_0_ce0;
    sc_in< sc_lv<8> > seed_0_q0;
    sc_in< sc_lv<8> > seed_offset1;
    sc_out< sc_lv<5> > salt_0_address0;
    sc_out< sc_logic > salt_0_ce0;
    sc_in< sc_lv<8> > salt_0_q0;
    sc_in< sc_lv<8> > roundNumber;
    sc_in< sc_lv<1> > playerNumber;
    sc_out< sc_lv<7> > tape_address0;
    sc_out< sc_logic > tape_ce0;
    sc_out< sc_logic > tape_we0;
    sc_out< sc_lv<8> > tape_d0;
    sc_in< sc_lv<8> > tape_q0;


    // Module declarations
    createRandomTape13(sc_module_name name);
    SC_HAS_PROCESS(createRandomTape13);

    ~createRandomTape13();

    sc_trace_file* mVcdFile;

    createRandomTape1fYi* ctx_sponge_state_U;
    KeccakWidth1600_Spon_3* grp_KeccakWidth1600_Spon_3_fu_66;
    KeccakWidth1600_Spon_4* grp_KeccakWidth1600_Spon_4_fu_82;
    KeccakWidth1600_Spon_15* grp_KeccakWidth1600_Spon_15_fu_96;
    KeccakWidth1600_Spon_8* grp_KeccakWidth1600_Spon_8_fu_108;
    KeccakWidth1600_Spon_10* grp_KeccakWidth1600_Spon_10_fu_120;
    HashInit* grp_HashInit_fu_133;
    HashFinal* grp_HashFinal_fu_146;
    sc_signal< sc_lv<24> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > grp_HashInit_fu_133_ap_return;
    sc_signal< sc_lv<32> > reg_164;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_HashInit_fu_133_ap_ready;
    sc_signal< sc_logic > grp_HashInit_fu_133_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > reg_170;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_HashFinal_fu_146_ap_ready;
    sc_signal< sc_logic > grp_HashFinal_fu_146_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<32> > reg_175;
    sc_signal< sc_lv<32> > grp_KeccakWidth1600_Spon_10_fu_120_ap_return;
    sc_signal< sc_lv<32> > reg_180;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_10_fu_120_ap_ready;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_10_fu_120_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > grp_KeccakWidth1600_Spon_4_fu_82_ap_return;
    sc_signal< sc_lv<32> > ctx_sponge_byteIOInd_37_reg_196;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_4_fu_82_ap_ready;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_4_fu_82_ap_done;
    sc_signal< sc_lv<32> > grp_KeccakWidth1600_Spon_15_fu_96_ap_return;
    sc_signal< sc_lv<32> > ctx_sponge_byteIOInd_40_reg_201;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_15_fu_96_ap_ready;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_15_fu_96_ap_done;
    sc_signal< sc_lv<32> > grp_KeccakWidth1600_Spon_8_fu_108_ap_return;
    sc_signal< sc_lv<32> > ctx_sponge_byteIOInd_41_reg_206;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_8_fu_108_ap_ready;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_8_fu_108_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<8> > temp_0_fu_186_p1;
    sc_signal< sc_lv<8> > temp_0_reg_216;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<8> > ctx_sponge_state_address0;
    sc_signal< sc_logic > ctx_sponge_state_ce0;
    sc_signal< sc_logic > ctx_sponge_state_we0;
    sc_signal< sc_lv<8> > ctx_sponge_state_d0;
    sc_signal< sc_lv<8> > ctx_sponge_state_q0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_3_fu_66_ap_start;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_3_fu_66_ap_done;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_3_fu_66_ap_idle;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_3_fu_66_ap_ready;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_3_fu_66_instance_state_address0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_3_fu_66_instance_state_ce0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_3_fu_66_instance_state_we0;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_3_fu_66_instance_state_d0;
    sc_signal< sc_lv<7> > grp_KeccakWidth1600_Spon_3_fu_66_data_address0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_3_fu_66_data_ce0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_3_fu_66_data_we0;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_3_fu_66_data_d0;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_3_fu_66_dataByteLen;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_4_fu_82_ap_start;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_4_fu_82_ap_idle;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_4_fu_82_instance_state_address0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_4_fu_82_instance_state_ce0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_4_fu_82_instance_state_we0;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_4_fu_82_instance_state_d0;
    sc_signal< sc_lv<12> > grp_KeccakWidth1600_Spon_4_fu_82_data_0_address0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_4_fu_82_data_0_ce0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_15_fu_96_ap_start;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_15_fu_96_ap_idle;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_15_fu_96_instance_state_address0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_15_fu_96_instance_state_ce0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_15_fu_96_instance_state_we0;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_15_fu_96_instance_state_d0;
    sc_signal< sc_lv<7> > grp_KeccakWidth1600_Spon_15_fu_96_data_address0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_15_fu_96_data_ce0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_8_fu_108_ap_start;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_8_fu_108_ap_idle;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_8_fu_108_instance_state_address0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_8_fu_108_instance_state_ce0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_8_fu_108_instance_state_we0;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_8_fu_108_instance_state_d0;
    sc_signal< sc_lv<5> > grp_KeccakWidth1600_Spon_8_fu_108_data_0_address0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_8_fu_108_data_0_ce0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_10_fu_120_ap_start;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_10_fu_120_ap_idle;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_10_fu_120_instance_state_address0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_10_fu_120_instance_state_ce0;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_10_fu_120_instance_state_we0;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_10_fu_120_instance_state_d0;
    sc_signal< sc_lv<32> > grp_KeccakWidth1600_Spon_10_fu_120_instance_byteIOIndex_read;
    sc_signal< sc_lv<8> > grp_KeccakWidth1600_Spon_10_fu_120_data_0_read;
    sc_signal< sc_logic > grp_HashInit_fu_133_ap_start;
    sc_signal< sc_logic > grp_HashInit_fu_133_ap_idle;
    sc_signal< sc_lv<8> > grp_HashInit_fu_133_ctx_sponge_state_address0;
    sc_signal< sc_logic > grp_HashInit_fu_133_ctx_sponge_state_ce0;
    sc_signal< sc_logic > grp_HashInit_fu_133_ctx_sponge_state_we0;
    sc_signal< sc_lv<8> > grp_HashInit_fu_133_ctx_sponge_state_d0;
    sc_signal< sc_lv<4> > grp_HashInit_fu_133_hashPrefix;
    sc_signal< sc_logic > grp_HashFinal_fu_146_ap_start;
    sc_signal< sc_logic > grp_HashFinal_fu_146_ap_idle;
    sc_signal< sc_lv<8> > grp_HashFinal_fu_146_ctx_sponge_state_address0;
    sc_signal< sc_logic > grp_HashFinal_fu_146_ctx_sponge_state_ce0;
    sc_signal< sc_logic > grp_HashFinal_fu_146_ctx_sponge_state_we0;
    sc_signal< sc_lv<8> > grp_HashFinal_fu_146_ctx_sponge_state_d0;
    sc_signal< sc_lv<32> > grp_HashFinal_fu_146_ctx_sponge_byteIOInd;
    sc_signal< sc_lv<32> > grp_HashFinal_fu_146_ap_return_0;
    sc_signal< sc_lv<32> > grp_HashFinal_fu_146_ap_return_1;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_3_fu_66_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_4_fu_82_ap_start_reg;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_15_fu_96_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_8_fu_108_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > grp_KeccakWidth1600_Spon_10_fu_120_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > grp_HashInit_fu_133_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > grp_HashFinal_fu_146_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<24> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<24> ap_ST_fsm_state1;
    static const sc_lv<24> ap_ST_fsm_state2;
    static const sc_lv<24> ap_ST_fsm_state3;
    static const sc_lv<24> ap_ST_fsm_state4;
    static const sc_lv<24> ap_ST_fsm_state5;
    static const sc_lv<24> ap_ST_fsm_state6;
    static const sc_lv<24> ap_ST_fsm_state7;
    static const sc_lv<24> ap_ST_fsm_state8;
    static const sc_lv<24> ap_ST_fsm_state9;
    static const sc_lv<24> ap_ST_fsm_state10;
    static const sc_lv<24> ap_ST_fsm_state11;
    static const sc_lv<24> ap_ST_fsm_state12;
    static const sc_lv<24> ap_ST_fsm_state13;
    static const sc_lv<24> ap_ST_fsm_state14;
    static const sc_lv<24> ap_ST_fsm_state15;
    static const sc_lv<24> ap_ST_fsm_state16;
    static const sc_lv<24> ap_ST_fsm_state17;
    static const sc_lv<24> ap_ST_fsm_state18;
    static const sc_lv<24> ap_ST_fsm_state19;
    static const sc_lv<24> ap_ST_fsm_state20;
    static const sc_lv<24> ap_ST_fsm_state21;
    static const sc_lv<24> ap_ST_fsm_state22;
    static const sc_lv<24> ap_ST_fsm_state23;
    static const sc_lv<24> ap_ST_fsm_state24;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<8> ap_const_lv8_20;
    static const sc_lv<8> ap_const_lv8_5B;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_14;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
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
    void thread_ctx_sponge_state_address0();
    void thread_ctx_sponge_state_ce0();
    void thread_ctx_sponge_state_d0();
    void thread_ctx_sponge_state_we0();
    void thread_grp_HashFinal_fu_146_ap_start();
    void thread_grp_HashFinal_fu_146_ctx_sponge_byteIOInd();
    void thread_grp_HashInit_fu_133_ap_start();
    void thread_grp_HashInit_fu_133_hashPrefix();
    void thread_grp_KeccakWidth1600_Spon_10_fu_120_ap_start();
    void thread_grp_KeccakWidth1600_Spon_10_fu_120_data_0_read();
    void thread_grp_KeccakWidth1600_Spon_10_fu_120_instance_byteIOIndex_read();
    void thread_grp_KeccakWidth1600_Spon_15_fu_96_ap_start();
    void thread_grp_KeccakWidth1600_Spon_3_fu_66_ap_start();
    void thread_grp_KeccakWidth1600_Spon_3_fu_66_dataByteLen();
    void thread_grp_KeccakWidth1600_Spon_4_fu_82_ap_start();
    void thread_grp_KeccakWidth1600_Spon_8_fu_108_ap_start();
    void thread_salt_0_address0();
    void thread_salt_0_ce0();
    void thread_seed_0_address0();
    void thread_seed_0_ce0();
    void thread_tape_address0();
    void thread_tape_ce0();
    void thread_tape_d0();
    void thread_tape_we0();
    void thread_temp_0_fu_186_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
