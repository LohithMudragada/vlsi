// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _KeccakWidth1600_Spon_3_HH_
#define _KeccakWidth1600_Spon_3_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeccakP1600_Permute_s.h"

namespace ap_rtl {

struct KeccakWidth1600_Spon_3 : public sc_module {
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
    sc_in< sc_lv<32> > instance_squeezing_read;
    sc_out< sc_lv<5> > data_address0;
    sc_out< sc_logic > data_ce0;
    sc_out< sc_logic > data_we0;
    sc_out< sc_lv<8> > data_d0;


    // Module declarations
    KeccakWidth1600_Spon_3(sc_module_name name);
    SC_HAS_PROCESS(KeccakWidth1600_Spon_3);

    ~KeccakWidth1600_Spon_3();

    sc_trace_file* mVcdFile;

    KeccakP1600_Permute_s* grp_KeccakP1600_Permute_s_fu_248;
    sc_signal< sc_lv<16> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > icmp_ln297_fu_258_p2;
    sc_signal< sc_lv<1> > icmp_ln297_reg_528;
    sc_signal< sc_lv<8> > instance_state_addr_reg_532;
    sc_signal< sc_lv<8> > instance_state_addr_6_reg_537;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<34> > i_28_load_reg_550;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > icmp_ln303_fu_307_p2;
    sc_signal< sc_lv<1> > icmp_ln303_reg_559;
    sc_signal< sc_lv<1> > icmp_ln302_fu_301_p2;
    sc_signal< sc_lv<64> > zext_ln304_fu_335_p1;
    sc_signal< sc_lv<1> > icmp_ln303_1_fu_323_p2;
    sc_signal< sc_lv<8> > loop_45_fu_366_p2;
    sc_signal< sc_lv<8> > loop_45_reg_577;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<7> > trunc_ln394_1_fu_377_p1;
    sc_signal< sc_lv<7> > trunc_ln394_1_reg_582;
    sc_signal< sc_lv<1> > icmp_ln393_1_fu_360_p2;
    sc_signal< sc_lv<64> > add_ln310_fu_381_p2;
    sc_signal< sc_lv<64> > j_10_fu_387_p2;
    sc_signal< sc_lv<6> > partialBlock_fu_420_p2;
    sc_signal< sc_lv<6> > partialBlock_reg_602;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_248_ap_ready;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_248_ap_done;
    sc_signal< bool > ap_block_state12_on_subcall_done;
    sc_signal< sc_lv<32> > partialBlock_7_fu_447_p3;
    sc_signal< sc_lv<32> > partialBlock_7_reg_607;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<64> > zext_ln323_fu_455_p1;
    sc_signal< sc_lv<64> > zext_ln323_reg_613;
    sc_signal< sc_lv<34> > i_fu_463_p2;
    sc_signal< sc_lv<34> > i_reg_618;
    sc_signal< sc_lv<32> > loop_fu_473_p2;
    sc_signal< sc_lv<32> > loop_reg_626;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<1> > icmp_ln393_fu_468_p2;
    sc_signal< sc_lv<7> > trunc_ln394_fu_490_p1;
    sc_signal< sc_lv<7> > trunc_ln394_reg_636;
    sc_signal< sc_lv<32> > add_ln330_fu_494_p2;
    sc_signal< sc_lv<64> > add_ln329_fu_517_p2;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_248_ap_start;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_248_ap_idle;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_248_state_address0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_248_state_ce0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_248_state_we0;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_248_state_d0;
    sc_signal< sc_lv<32> > ap_phi_mux_instance_byteIOIndex_35_phi_fu_137_p4;
    sc_signal< sc_lv<32> > instance_byteIOIndex_35_reg_134;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< bool > ap_block_state6_on_subcall_done;
    sc_signal< sc_lv<32> > instance_byteIOIndex_1_reg_145;
    sc_signal< sc_lv<64> > curData_0_idx_reg_156;
    sc_signal< sc_lv<64> > j_0_reg_168;
    sc_signal< sc_lv<64> > curData_1_rec_reg_178;
    sc_signal< sc_lv<8> > loop_0_i_reg_190;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > offset_assign_4_reg_201;
    sc_signal< sc_lv<32> > loop_0_i1_reg_214;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > instance_byteIOIndex_3_reg_225;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln304_fu_339_p2;
    sc_signal< sc_lv<64> > curData_1_rec_pn_reg_238;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_248_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > zext_ln149_fu_264_p1;
    sc_signal< sc_lv<64> > zext_ln394_2_fu_372_p1;
    sc_signal< sc_lv<64> > zext_ln394_3_fu_412_p1;
    sc_signal< sc_lv<64> > zext_ln394_fu_485_p1;
    sc_signal< sc_lv<64> > zext_ln394_1_fu_512_p1;
    sc_signal< sc_lv<34> > i_28_fu_58;
    sc_signal< sc_lv<34> > sub_ln312_fu_349_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > xor_ln149_fu_269_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > xor_ln149_4_fu_276_p2;
    sc_signal< sc_lv<29> > tmp_fu_291_p4;
    sc_signal< sc_lv<30> > trunc_ln303_fu_313_p1;
    sc_signal< sc_lv<30> > add_ln303_fu_317_p2;
    sc_signal< sc_lv<34> > j_fu_329_p2;
    sc_signal< sc_lv<34> > trunc_ln312_fu_345_p1;
    sc_signal< sc_lv<7> > trunc_ln304_fu_393_p1;
    sc_signal< sc_lv<7> > trunc_ln302_1_fu_402_p1;
    sc_signal< sc_lv<7> > add_ln394_2_fu_397_p2;
    sc_signal< sc_lv<7> > add_ln394_3_fu_406_p2;
    sc_signal< sc_lv<6> > trunc_ln320_fu_417_p1;
    sc_signal< sc_lv<32> > zext_ln320_fu_426_p1;
    sc_signal< sc_lv<32> > add_ln321_fu_429_p2;
    sc_signal< sc_lv<1> > icmp_ln321_fu_435_p2;
    sc_signal< sc_lv<32> > partialBlock_6_fu_441_p2;
    sc_signal< sc_lv<34> > zext_ln323_1_fu_459_p1;
    sc_signal< sc_lv<32> > add_ln394_fu_479_p2;
    sc_signal< sc_lv<7> > trunc_ln302_fu_503_p1;
    sc_signal< sc_lv<7> > add_ln394_1_fu_507_p2;
    sc_signal< sc_lv<16> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<16> ap_ST_fsm_state1;
    static const sc_lv<16> ap_ST_fsm_state2;
    static const sc_lv<16> ap_ST_fsm_state3;
    static const sc_lv<16> ap_ST_fsm_state4;
    static const sc_lv<16> ap_ST_fsm_state5;
    static const sc_lv<16> ap_ST_fsm_state6;
    static const sc_lv<16> ap_ST_fsm_state7;
    static const sc_lv<16> ap_ST_fsm_state8;
    static const sc_lv<16> ap_ST_fsm_state9;
    static const sc_lv<16> ap_ST_fsm_state10;
    static const sc_lv<16> ap_ST_fsm_state11;
    static const sc_lv<16> ap_ST_fsm_state12;
    static const sc_lv<16> ap_ST_fsm_state13;
    static const sc_lv<16> ap_ST_fsm_state14;
    static const sc_lv<16> ap_ST_fsm_state15;
    static const sc_lv<16> ap_ST_fsm_state16;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_B;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_A8;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<64> ap_const_lv64_A7;
    static const sc_lv<34> ap_const_lv34_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<29> ap_const_lv29_0;
    static const sc_lv<30> ap_const_lv30_A8;
    static const sc_lv<30> ap_const_lv30_20;
    static const sc_lv<34> ap_const_lv34_20;
    static const sc_lv<64> ap_const_lv64_A8;
    static const sc_lv<8> ap_const_lv8_A8;
    static const sc_lv<64> ap_const_lv64_FFFFFFFFFFFFFF58;
    static const sc_lv<6> ap_const_lv6_20;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln303_fu_317_p2();
    void thread_add_ln310_fu_381_p2();
    void thread_add_ln321_fu_429_p2();
    void thread_add_ln329_fu_517_p2();
    void thread_add_ln330_fu_494_p2();
    void thread_add_ln394_1_fu_507_p2();
    void thread_add_ln394_2_fu_397_p2();
    void thread_add_ln394_3_fu_406_p2();
    void thread_add_ln394_fu_479_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state12_on_subcall_done();
    void thread_ap_block_state6_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_instance_byteIOIndex_35_phi_fu_137_p4();
    void thread_ap_ready();
    void thread_data_address0();
    void thread_data_ce0();
    void thread_data_d0();
    void thread_data_we0();
    void thread_grp_KeccakP1600_Permute_s_fu_248_ap_start();
    void thread_i_fu_463_p2();
    void thread_icmp_ln297_fu_258_p2();
    void thread_icmp_ln302_fu_301_p2();
    void thread_icmp_ln303_1_fu_323_p2();
    void thread_icmp_ln303_fu_307_p2();
    void thread_icmp_ln304_fu_339_p2();
    void thread_icmp_ln321_fu_435_p2();
    void thread_icmp_ln393_1_fu_360_p2();
    void thread_icmp_ln393_fu_468_p2();
    void thread_instance_state_addr_6_reg_537();
    void thread_instance_state_address0();
    void thread_instance_state_ce0();
    void thread_instance_state_d0();
    void thread_instance_state_we0();
    void thread_j_10_fu_387_p2();
    void thread_j_fu_329_p2();
    void thread_loop_45_fu_366_p2();
    void thread_loop_fu_473_p2();
    void thread_partialBlock_6_fu_441_p2();
    void thread_partialBlock_7_fu_447_p3();
    void thread_partialBlock_fu_420_p2();
    void thread_sub_ln312_fu_349_p2();
    void thread_tmp_fu_291_p4();
    void thread_trunc_ln302_1_fu_402_p1();
    void thread_trunc_ln302_fu_503_p1();
    void thread_trunc_ln303_fu_313_p1();
    void thread_trunc_ln304_fu_393_p1();
    void thread_trunc_ln312_fu_345_p1();
    void thread_trunc_ln320_fu_417_p1();
    void thread_trunc_ln394_1_fu_377_p1();
    void thread_trunc_ln394_fu_490_p1();
    void thread_xor_ln149_4_fu_276_p2();
    void thread_xor_ln149_fu_269_p2();
    void thread_zext_ln149_fu_264_p1();
    void thread_zext_ln304_fu_335_p1();
    void thread_zext_ln320_fu_426_p1();
    void thread_zext_ln323_1_fu_459_p1();
    void thread_zext_ln323_fu_455_p1();
    void thread_zext_ln394_1_fu_512_p1();
    void thread_zext_ln394_2_fu_372_p1();
    void thread_zext_ln394_3_fu_412_p1();
    void thread_zext_ln394_fu_485_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
