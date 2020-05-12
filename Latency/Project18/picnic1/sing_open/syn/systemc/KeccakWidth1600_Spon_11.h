// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _KeccakWidth1600_Spon_11_HH_
#define _KeccakWidth1600_Spon_11_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeccakP1600_Permute_s.h"

namespace ap_rtl {

struct KeccakWidth1600_Spon_11 : public sc_module {
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
    sc_out< sc_lv<15> > data_address0;
    sc_out< sc_logic > data_ce0;
    sc_in< sc_lv<8> > data_q0;
    sc_in< sc_lv<8> > data_offset;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    KeccakWidth1600_Spon_11(sc_module_name name);
    SC_HAS_PROCESS(KeccakWidth1600_Spon_11);

    ~KeccakWidth1600_Spon_11();

    sc_trace_file* mVcdFile;

    KeccakP1600_Permute_s* grp_KeccakP1600_Permute_s_fu_103;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<15> > mul_ln212_fu_120_p2;
    sc_signal< sc_lv<15> > mul_ln212_reg_299;
    sc_signal< sc_lv<34> > i_24_load_reg_304;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<7> > partialBlock_fu_149_p2;
    sc_signal< sc_lv<7> > partialBlock_reg_312;
    sc_signal< sc_lv<1> > icmp_ln194_fu_139_p2;
    sc_signal< sc_lv<32> > select_ln224_fu_176_p3;
    sc_signal< sc_lv<32> > select_ln224_reg_317;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > zext_ln229_fu_184_p1;
    sc_signal< sc_lv<64> > zext_ln229_reg_323;
    sc_signal< sc_lv<34> > i_fu_192_p2;
    sc_signal< sc_lv<34> > i_reg_328;
    sc_signal< sc_lv<32> > loop_fu_202_p2;
    sc_signal< sc_lv<32> > loop_reg_336;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln231_fu_197_p2;
    sc_signal< sc_lv<8> > instance_state_addr_reg_346;
    sc_signal< sc_lv<1> > icmp_ln237_fu_252_p2;
    sc_signal< sc_lv<1> > icmp_ln237_reg_351;
    sc_signal< sc_lv<64> > p_2_rec_fu_279_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_103_ap_ready;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_103_ap_done;
    sc_signal< bool > ap_block_state6_on_subcall_done;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_103_ap_start;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_103_ap_idle;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_103_state_address0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_103_state_ce0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_103_state_we0;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_103_state_d0;
    sc_signal< sc_lv<64> > p_01_rec_reg_80;
    sc_signal< sc_lv<32> > loop_1_reg_92;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_103_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln232_4_fu_231_p1;
    sc_signal< sc_lv<64> > zext_ln149_fu_242_p1;
    sc_signal< sc_lv<34> > i_24_fu_34;
    sc_signal< sc_lv<32> > instance_byteIOIndex_fu_38;
    sc_signal< sc_lv<32> > add_ln236_fu_247_p2;
    sc_signal< sc_lv<8> > xor_ln149_fu_272_p2;
    sc_signal< sc_lv<8> > mul_ln212_fu_120_p0;
    sc_signal< sc_lv<7> > trunc_ln223_fu_145_p1;
    sc_signal< sc_lv<32> > zext_ln223_fu_155_p1;
    sc_signal< sc_lv<32> > add_ln224_fu_158_p2;
    sc_signal< sc_lv<1> > icmp_ln224_fu_164_p2;
    sc_signal< sc_lv<32> > partialBlock_14_fu_170_p2;
    sc_signal< sc_lv<34> > zext_ln229_9_fu_188_p1;
    sc_signal< sc_lv<8> > trunc_ln232_fu_208_p1;
    sc_signal< sc_lv<8> > trunc_ln194_fu_212_p1;
    sc_signal< sc_lv<8> > add_ln232_fu_216_p2;
    sc_signal< sc_lv<15> > zext_ln232_fu_222_p1;
    sc_signal< sc_lv<15> > add_ln232_14_fu_226_p2;
    sc_signal< sc_lv<32> > add_ln232_15_fu_236_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< sc_lv<15> > mul_ln212_fu_120_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const bool ap_const_boolean_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<34> ap_const_lv34_0;
    static const sc_lv<15> ap_const_lv15_4B;
    static const sc_lv<34> ap_const_lv34_4B;
    static const sc_lv<7> ap_const_lv7_4B;
    static const sc_lv<32> ap_const_lv32_A8;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln224_fu_158_p2();
    void thread_add_ln232_14_fu_226_p2();
    void thread_add_ln232_15_fu_236_p2();
    void thread_add_ln232_fu_216_p2();
    void thread_add_ln236_fu_247_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_state6_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_data_address0();
    void thread_data_ce0();
    void thread_grp_KeccakP1600_Permute_s_fu_103_ap_start();
    void thread_i_fu_192_p2();
    void thread_icmp_ln194_fu_139_p2();
    void thread_icmp_ln224_fu_164_p2();
    void thread_icmp_ln231_fu_197_p2();
    void thread_icmp_ln237_fu_252_p2();
    void thread_instance_state_address0();
    void thread_instance_state_ce0();
    void thread_instance_state_d0();
    void thread_instance_state_we0();
    void thread_loop_fu_202_p2();
    void thread_mul_ln212_fu_120_p0();
    void thread_mul_ln212_fu_120_p00();
    void thread_mul_ln212_fu_120_p2();
    void thread_p_2_rec_fu_279_p2();
    void thread_partialBlock_14_fu_170_p2();
    void thread_partialBlock_fu_149_p2();
    void thread_select_ln224_fu_176_p3();
    void thread_trunc_ln194_fu_212_p1();
    void thread_trunc_ln223_fu_145_p1();
    void thread_trunc_ln232_fu_208_p1();
    void thread_xor_ln149_fu_272_p2();
    void thread_zext_ln149_fu_242_p1();
    void thread_zext_ln223_fu_155_p1();
    void thread_zext_ln229_9_fu_188_p1();
    void thread_zext_ln229_fu_184_p1();
    void thread_zext_ln232_4_fu_231_p1();
    void thread_zext_ln232_fu_222_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif