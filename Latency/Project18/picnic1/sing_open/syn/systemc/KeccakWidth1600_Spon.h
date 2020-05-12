// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _KeccakWidth1600_Spon_HH_
#define _KeccakWidth1600_Spon_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeccakP1600_Permute_s.h"

namespace ap_rtl {

struct KeccakWidth1600_Spon : public sc_module {
    // Port declarations 19
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
    sc_out< sc_lv<15> > data_address0;
    sc_out< sc_logic > data_ce0;
    sc_out< sc_logic > data_we0;
    sc_out< sc_lv<8> > data_d0;
    sc_in< sc_lv<8> > data_offset;
    sc_in< sc_lv<2> > data_offset1;


    // Module declarations
    KeccakWidth1600_Spon(sc_module_name name);
    SC_HAS_PROCESS(KeccakWidth1600_Spon);

    ~KeccakWidth1600_Spon();

    sc_trace_file* mVcdFile;

    KeccakP1600_Permute_s* grp_KeccakP1600_Permute_s_fu_276;
    sc_signal< sc_lv<16> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<16> > tmp_44_cast_fu_318_p3;
    sc_signal< sc_lv<16> > tmp_44_cast_reg_614;
    sc_signal< sc_lv<1> > icmp_ln297_fu_326_p2;
    sc_signal< sc_lv<1> > icmp_ln297_reg_620;
    sc_signal< sc_lv<8> > instance_state_addr_reg_624;
    sc_signal< sc_lv<8> > instance_state_addr_1_reg_629;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<34> > i_27_load_reg_642;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > icmp_ln303_fu_375_p2;
    sc_signal< sc_lv<1> > icmp_ln303_reg_651;
    sc_signal< sc_lv<1> > icmp_ln302_fu_369_p2;
    sc_signal< sc_lv<64> > zext_ln304_fu_403_p1;
    sc_signal< sc_lv<1> > icmp_ln303_1_fu_391_p2;
    sc_signal< sc_lv<8> > loop_49_fu_434_p2;
    sc_signal< sc_lv<8> > loop_49_reg_669;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<7> > trunc_ln394_2_fu_445_p1;
    sc_signal< sc_lv<7> > trunc_ln394_2_reg_674;
    sc_signal< sc_lv<1> > icmp_ln393_1_fu_428_p2;
    sc_signal< sc_lv<64> > add_ln310_fu_449_p2;
    sc_signal< sc_lv<64> > j_15_fu_455_p2;
    sc_signal< sc_lv<6> > partialBlock_fu_497_p2;
    sc_signal< sc_lv<6> > partialBlock_reg_694;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_276_ap_ready;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_276_ap_done;
    sc_signal< bool > ap_block_state12_on_subcall_done;
    sc_signal< sc_lv<32> > partialBlock_19_fu_524_p3;
    sc_signal< sc_lv<32> > partialBlock_19_reg_699;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<64> > zext_ln323_fu_532_p1;
    sc_signal< sc_lv<64> > zext_ln323_reg_705;
    sc_signal< sc_lv<34> > i_fu_540_p2;
    sc_signal< sc_lv<34> > i_reg_710;
    sc_signal< sc_lv<32> > loop_fu_550_p2;
    sc_signal< sc_lv<32> > loop_reg_718;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<1> > icmp_ln393_fu_545_p2;
    sc_signal< sc_lv<7> > trunc_ln394_fu_567_p1;
    sc_signal< sc_lv<7> > trunc_ln394_reg_728;
    sc_signal< sc_lv<32> > add_ln330_fu_571_p2;
    sc_signal< sc_lv<64> > add_ln329_fu_603_p2;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_276_ap_start;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_276_ap_idle;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_276_state_address0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_276_state_ce0;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_276_state_we0;
    sc_signal< sc_lv<8> > grp_KeccakP1600_Permute_s_fu_276_state_d0;
    sc_signal< sc_lv<32> > ap_phi_mux_instance_byteIOIndex_72_phi_fu_165_p4;
    sc_signal< sc_lv<32> > instance_byteIOIndex_72_reg_162;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< bool > ap_block_state6_on_subcall_done;
    sc_signal< sc_lv<32> > instance_byteIOIndex_1_reg_173;
    sc_signal< sc_lv<64> > curData_0_idx_reg_184;
    sc_signal< sc_lv<64> > j_0_reg_196;
    sc_signal< sc_lv<64> > curData_1_rec_reg_206;
    sc_signal< sc_lv<8> > loop_0_i_reg_218;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > offset_assign_1_reg_229;
    sc_signal< sc_lv<32> > loop_0_i1_reg_242;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > instance_byteIOIndex_3_reg_253;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln304_fu_407_p2;
    sc_signal< sc_lv<64> > curData_1_rec_pn_reg_266;
    sc_signal< sc_logic > grp_KeccakP1600_Permute_s_fu_276_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > zext_ln149_fu_332_p1;
    sc_signal< sc_lv<64> > zext_ln394_1_fu_440_p1;
    sc_signal< sc_lv<64> > zext_ln394_16_fu_489_p1;
    sc_signal< sc_lv<64> > zext_ln394_fu_562_p1;
    sc_signal< sc_lv<64> > zext_ln394_14_fu_598_p1;
    sc_signal< sc_lv<34> > i_27_fu_74;
    sc_signal< sc_lv<34> > sub_ln312_fu_417_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > xor_ln149_fu_337_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > xor_ln149_1_fu_344_p2;
    sc_signal< sc_lv<10> > tmp_fu_294_p3;
    sc_signal< sc_lv<11> > zext_ln394_12_fu_302_p1;
    sc_signal< sc_lv<11> > zext_ln394_11_fu_290_p1;
    sc_signal< sc_lv<11> > sub_ln394_fu_306_p2;
    sc_signal< sc_lv<11> > zext_ln394_10_fu_286_p1;
    sc_signal< sc_lv<11> > add_ln394_9_fu_312_p2;
    sc_signal< sc_lv<29> > tmp_51_fu_359_p4;
    sc_signal< sc_lv<30> > trunc_ln303_fu_381_p1;
    sc_signal< sc_lv<30> > add_ln303_fu_385_p2;
    sc_signal< sc_lv<34> > j_fu_397_p2;
    sc_signal< sc_lv<34> > trunc_ln312_fu_413_p1;
    sc_signal< sc_lv<7> > trunc_ln304_fu_461_p1;
    sc_signal< sc_lv<7> > trunc_ln302_4_fu_470_p1;
    sc_signal< sc_lv<7> > add_ln394_3_fu_465_p2;
    sc_signal< sc_lv<7> > add_ln394_2_fu_474_p2;
    sc_signal< sc_lv<16> > zext_ln394_15_fu_480_p1;
    sc_signal< sc_lv<16> > add_ln394_11_fu_484_p2;
    sc_signal< sc_lv<6> > trunc_ln320_fu_494_p1;
    sc_signal< sc_lv<32> > zext_ln320_fu_503_p1;
    sc_signal< sc_lv<32> > add_ln321_fu_506_p2;
    sc_signal< sc_lv<1> > icmp_ln321_fu_512_p2;
    sc_signal< sc_lv<32> > partialBlock_18_fu_518_p2;
    sc_signal< sc_lv<34> > zext_ln323_4_fu_536_p1;
    sc_signal< sc_lv<32> > add_ln394_fu_556_p2;
    sc_signal< sc_lv<7> > trunc_ln302_fu_580_p1;
    sc_signal< sc_lv<7> > add_ln394_1_fu_584_p2;
    sc_signal< sc_lv<16> > zext_ln394_13_fu_589_p1;
    sc_signal< sc_lv<16> > add_ln394_10_fu_593_p2;
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
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<5> ap_const_lv5_0;
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
    void thread_add_ln303_fu_385_p2();
    void thread_add_ln310_fu_449_p2();
    void thread_add_ln321_fu_506_p2();
    void thread_add_ln329_fu_603_p2();
    void thread_add_ln330_fu_571_p2();
    void thread_add_ln394_10_fu_593_p2();
    void thread_add_ln394_11_fu_484_p2();
    void thread_add_ln394_1_fu_584_p2();
    void thread_add_ln394_2_fu_474_p2();
    void thread_add_ln394_3_fu_465_p2();
    void thread_add_ln394_9_fu_312_p2();
    void thread_add_ln394_fu_556_p2();
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
    void thread_ap_phi_mux_instance_byteIOIndex_72_phi_fu_165_p4();
    void thread_ap_ready();
    void thread_data_address0();
    void thread_data_ce0();
    void thread_data_d0();
    void thread_data_we0();
    void thread_grp_KeccakP1600_Permute_s_fu_276_ap_start();
    void thread_i_fu_540_p2();
    void thread_icmp_ln297_fu_326_p2();
    void thread_icmp_ln302_fu_369_p2();
    void thread_icmp_ln303_1_fu_391_p2();
    void thread_icmp_ln303_fu_375_p2();
    void thread_icmp_ln304_fu_407_p2();
    void thread_icmp_ln321_fu_512_p2();
    void thread_icmp_ln393_1_fu_428_p2();
    void thread_icmp_ln393_fu_545_p2();
    void thread_instance_state_addr_1_reg_629();
    void thread_instance_state_address0();
    void thread_instance_state_ce0();
    void thread_instance_state_d0();
    void thread_instance_state_we0();
    void thread_j_15_fu_455_p2();
    void thread_j_fu_397_p2();
    void thread_loop_49_fu_434_p2();
    void thread_loop_fu_550_p2();
    void thread_partialBlock_18_fu_518_p2();
    void thread_partialBlock_19_fu_524_p3();
    void thread_partialBlock_fu_497_p2();
    void thread_sub_ln312_fu_417_p2();
    void thread_sub_ln394_fu_306_p2();
    void thread_tmp_44_cast_fu_318_p3();
    void thread_tmp_51_fu_359_p4();
    void thread_tmp_fu_294_p3();
    void thread_trunc_ln302_4_fu_470_p1();
    void thread_trunc_ln302_fu_580_p1();
    void thread_trunc_ln303_fu_381_p1();
    void thread_trunc_ln304_fu_461_p1();
    void thread_trunc_ln312_fu_413_p1();
    void thread_trunc_ln320_fu_494_p1();
    void thread_trunc_ln394_2_fu_445_p1();
    void thread_trunc_ln394_fu_567_p1();
    void thread_xor_ln149_1_fu_344_p2();
    void thread_xor_ln149_fu_337_p2();
    void thread_zext_ln149_fu_332_p1();
    void thread_zext_ln304_fu_403_p1();
    void thread_zext_ln320_fu_503_p1();
    void thread_zext_ln323_4_fu_536_p1();
    void thread_zext_ln323_fu_532_p1();
    void thread_zext_ln394_10_fu_286_p1();
    void thread_zext_ln394_11_fu_290_p1();
    void thread_zext_ln394_12_fu_302_p1();
    void thread_zext_ln394_13_fu_589_p1();
    void thread_zext_ln394_14_fu_598_p1();
    void thread_zext_ln394_15_fu_480_p1();
    void thread_zext_ln394_16_fu_489_p1();
    void thread_zext_ln394_1_fu_440_p1();
    void thread_zext_ln394_fu_562_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
