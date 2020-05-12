// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _KeccakWidth1600_Spon_9_HH_
#define _KeccakWidth1600_Spon_9_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeccakP1600_Permute_s.h"

namespace ap_rtl {

struct KeccakWidth1600_Spon_9 : public sc_module {
    // Port declarations 13
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
    sc_in< sc_lv<4> > data_0_read;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    KeccakWidth1600_Spon_9(sc_module_name name);
    SC_HAS_PROCESS(KeccakWidth1600_Spon_9);

    ~KeccakWidth1600_Spon_9();

    sc_trace_file* mVcdFile;

    KeccakP1600_Permute_s* grp_KeccakP1600_Permute_s_fu_54;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > data_0_read_cast_fu_72_p1;
    sc_signal< sc_lv<8> > data_0_read_cast_reg_158;
    sc_signal< sc_lv<32> > select_ln224_fu_94_p3;
    sc_signal< sc_lv<32> > select_ln224_reg_163;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > loop_fu_107_p2;
    sc_signal< sc_lv<32> > loop_reg_173;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > instance_state_addr_reg_178;
    sc_signal< sc_lv<1> > icmp_ln231_fu_102_p2;
    sc_signal< sc_lv<1> > icmp_ln237_fu_129_p2;
    sc_signal< sc_lv<1> > icmp_ln237_reg_183;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_54_ap_start;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_54_ap_done;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_54_ap_idle;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_54_ap_ready;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_54_state_address0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_54_state_ce0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_54_state_we0;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_54_state_d0;
    sc_signal< sc_lv<32> > loop_1_reg_43;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_54_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > zext_ln149_fu_119_p1;
    sc_signal< sc_lv<32> > instance_byteIOIndex_1_fu_20;
    sc_signal< sc_lv<32> > add_ln236_fu_124_p2;
    sc_signal< sc_lv<1> > phitmp_fu_146_p2;
    sc_signal< sc_lv<8> > xor_ln149_fu_140_p2;
    sc_signal< sc_lv<32> > add_ln224_fu_76_p2;
    sc_signal< sc_lv<1> > icmp_ln224_fu_82_p2;
    sc_signal< sc_lv<32> > partialBlock_fu_88_p2;
    sc_signal< sc_lv<32> > add_ln232_fu_113_p2;
    sc_signal< bool > ap_block_state5_on_subcall_done;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_A8;
    static const bool ap_const_boolean_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln224_fu_76_p2();
    void thread_add_ln232_fu_113_p2();
    void thread_add_ln236_fu_124_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_state5_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_data_0_read_cast_fu_72_p1();
    void thread_grp_KeccakP1600_Permute_s_fu_54_ap_start();
    void thread_icmp_ln224_fu_82_p2();
    void thread_icmp_ln231_fu_102_p2();
    void thread_icmp_ln237_fu_129_p2();
    void thread_instance_state_address0();
    void thread_instance_state_ce0();
    void thread_instance_state_d0();
    void thread_instance_state_we0();
    void thread_loop_fu_107_p2();
    void thread_partialBlock_fu_88_p2();
    void thread_phitmp_fu_146_p2();
    void thread_select_ln224_fu_94_p3();
    void thread_xor_ln149_fu_140_p2();
    void thread_zext_ln149_fu_119_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
