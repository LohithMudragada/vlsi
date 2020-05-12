// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _KeccakWidth1600_Spon_8_HH_
#define _KeccakWidth1600_Spon_8_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeccakP1600_Permute_s.h"

namespace ap_rtl {

struct KeccakWidth1600_Spon_8 : public sc_module {
    // Port declarations 14
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
    sc_in< sc_lv<8> > data_0_read;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    KeccakWidth1600_Spon_8(sc_module_name name);
    SC_HAS_PROCESS(KeccakWidth1600_Spon_8);

    ~KeccakWidth1600_Spon_8();

    sc_trace_file* mVcdFile;

    KeccakP1600_Permute_s* grp_KeccakP1600_Permute_s_fu_163;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<64> > zext_ln206_fu_238_p1;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln194_fu_204_p2;
    sc_signal< sc_lv<1> > icmp_ln195_fu_210_p2;
    sc_signal< sc_lv<1> > icmp_ln195_1_fu_226_p2;
    sc_signal< sc_lv<1> > trunc_ln212_fu_242_p1;
    sc_signal< sc_lv<1> > trunc_ln212_reg_488;
    sc_signal< sc_lv<32> > select_ln224_fu_281_p3;
    sc_signal< sc_lv<32> > select_ln224_reg_493;
    sc_signal< sc_lv<64> > zext_ln229_fu_289_p1;
    sc_signal< sc_lv<64> > zext_ln229_reg_499;
    sc_signal< sc_lv<34> > i_fu_297_p2;
    sc_signal< sc_lv<34> > i_reg_505;
    sc_signal< sc_lv<1> > trunc_ln232_fu_303_p1;
    sc_signal< sc_lv<1> > trunc_ln232_reg_510;
    sc_signal< sc_lv<8> > loop_40_fu_334_p2;
    sc_signal< sc_lv<8> > loop_40_reg_521;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > instance_state_addr_1_reg_526;
    sc_signal< sc_lv<1> > icmp_ln211_fu_328_p2;
    sc_signal< sc_lv<64> > j_5_fu_345_p2;
    sc_signal< sc_lv<64> > j_5_reg_531;
    sc_signal< sc_lv<64> > add_ln214_fu_374_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_163_ap_ready;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_163_ap_done;
    sc_signal< sc_lv<32> > loop_fu_385_p2;
    sc_signal< sc_lv<32> > loop_reg_544;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > instance_state_addr_reg_549;
    sc_signal< sc_lv<1> > icmp_ln231_fu_380_p2;
    sc_signal< sc_lv<64> > p_2_rec_fu_445_p2;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_163_ap_start;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_163_ap_idle;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_163_state_address0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_163_state_ce0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_163_state_we0;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_163_state_d0;
    sc_signal< sc_lv<64> > p_01_rec_reg_93;
    sc_signal< sc_lv<64> > j_0_reg_105;
    sc_signal< sc_lv<64> > p_1_rec_reg_115;
    sc_signal< sc_lv<8> > offset_assign_9_reg_127;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln206_fu_307_p2;
    sc_signal< sc_lv<32> > loop_1_reg_139;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > p_1_rec_pn_reg_151;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > icmp_ln237_fu_407_p2;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_163_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln149_1_fu_340_p1;
    sc_signal< sc_lv<64> > zext_ln149_fu_397_p1;
    sc_signal< sc_lv<34> > i_22_fu_52;
    sc_signal< sc_lv<34> > sub_ln216_fu_317_p2;
    sc_signal< sc_lv<32> > instance_byteIOIndex_fu_56;
    sc_signal< sc_lv<32> > add_ln236_fu_402_p2;
    sc_signal< sc_lv<8> > xor_ln149_1_fu_367_p2;
    sc_signal< sc_lv<8> > xor_ln149_fu_438_p2;
    sc_signal< sc_lv<33> > tmp_fu_194_p4;
    sc_signal< sc_lv<30> > trunc_ln195_fu_216_p1;
    sc_signal< sc_lv<30> > add_ln195_fu_220_p2;
    sc_signal< sc_lv<34> > j_fu_232_p2;
    sc_signal< sc_lv<2> > trunc_ln223_fu_249_p1;
    sc_signal< sc_lv<2> > partialBlock_fu_253_p2;
    sc_signal< sc_lv<32> > zext_ln223_fu_259_p1;
    sc_signal< sc_lv<32> > add_ln224_fu_263_p2;
    sc_signal< sc_lv<1> > icmp_ln224_fu_269_p2;
    sc_signal< sc_lv<32> > partialBlock_1_fu_275_p2;
    sc_signal< sc_lv<34> > zext_ln229_1_fu_293_p1;
    sc_signal< sc_lv<34> > trunc_ln216_fu_313_p1;
    sc_signal< sc_lv<1> > trunc_ln212_1_fu_351_p1;
    sc_signal< sc_lv<1> > xor_ln212_fu_355_p2;
    sc_signal< sc_lv<8> > select_ln212_fu_360_p3;
    sc_signal< sc_lv<32> > add_ln232_fu_391_p2;
    sc_signal< sc_lv<1> > trunc_ln232_1_fu_422_p1;
    sc_signal< sc_lv<1> > xor_ln232_fu_426_p2;
    sc_signal< sc_lv<8> > select_ln232_fu_431_p3;
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
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<34> ap_const_lv34_0;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<33> ap_const_lv33_0;
    static const sc_lv<30> ap_const_lv30_A8;
    static const sc_lv<30> ap_const_lv30_2;
    static const sc_lv<34> ap_const_lv34_2;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<32> ap_const_lv32_A8;
    static const sc_lv<64> ap_const_lv64_A8;
    static const sc_lv<8> ap_const_lv8_A8;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<64> ap_const_lv64_FFFFFFFFFFFFFF58;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln195_fu_220_p2();
    void thread_add_ln214_fu_374_p2();
    void thread_add_ln224_fu_263_p2();
    void thread_add_ln232_fu_391_p2();
    void thread_add_ln236_fu_402_p2();
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
    void thread_ap_return();
    void thread_grp_KeccakP1600_Permute_s_fu_163_ap_start();
    void thread_i_fu_297_p2();
    void thread_icmp_ln194_fu_204_p2();
    void thread_icmp_ln195_1_fu_226_p2();
    void thread_icmp_ln195_fu_210_p2();
    void thread_icmp_ln206_fu_307_p2();
    void thread_icmp_ln211_fu_328_p2();
    void thread_icmp_ln224_fu_269_p2();
    void thread_icmp_ln231_fu_380_p2();
    void thread_icmp_ln237_fu_407_p2();
    void thread_instance_state_address0();
    void thread_instance_state_ce0();
    void thread_instance_state_d0();
    void thread_instance_state_we0();
    void thread_j_5_fu_345_p2();
    void thread_j_fu_232_p2();
    void thread_loop_40_fu_334_p2();
    void thread_loop_fu_385_p2();
    void thread_p_2_rec_fu_445_p2();
    void thread_partialBlock_1_fu_275_p2();
    void thread_partialBlock_fu_253_p2();
    void thread_select_ln212_fu_360_p3();
    void thread_select_ln224_fu_281_p3();
    void thread_select_ln232_fu_431_p3();
    void thread_sub_ln216_fu_317_p2();
    void thread_tmp_fu_194_p4();
    void thread_trunc_ln195_fu_216_p1();
    void thread_trunc_ln212_1_fu_351_p1();
    void thread_trunc_ln212_fu_242_p1();
    void thread_trunc_ln216_fu_313_p1();
    void thread_trunc_ln223_fu_249_p1();
    void thread_trunc_ln232_1_fu_422_p1();
    void thread_trunc_ln232_fu_303_p1();
    void thread_xor_ln149_1_fu_367_p2();
    void thread_xor_ln149_fu_438_p2();
    void thread_xor_ln212_fu_355_p2();
    void thread_xor_ln232_fu_426_p2();
    void thread_zext_ln149_1_fu_340_p1();
    void thread_zext_ln149_fu_397_p1();
    void thread_zext_ln206_fu_238_p1();
    void thread_zext_ln223_fu_259_p1();
    void thread_zext_ln229_1_fu_293_p1();
    void thread_zext_ln229_fu_289_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif