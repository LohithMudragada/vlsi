// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _matrix_mul_HH_
#define _matrix_mul_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "matrix_mul_temp_mfYi.h"
#include "matrix_mul_prod.h"
#include "matrix_mul_temp.h"

namespace ap_rtl {

struct matrix_mul : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_lv<4> > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;
    sc_in< sc_lv<5> > output_offset;
    sc_out< sc_lv<10> > state_address0;
    sc_out< sc_logic > state_ce0;
    sc_in< sc_lv<32> > state_q0;
    sc_in< sc_lv<8> > state_offset;
    sc_in< sc_lv<14> > matrix_offset;


    // Module declarations
    matrix_mul(sc_module_name name);
    SC_HAS_PROCESS(matrix_mul);

    ~matrix_mul();

    sc_trace_file* mVcdFile;

    matrix_mul_temp_mfYi* temp_matrix_U;
    matrix_mul_prod* prod_U;
    matrix_mul_temp* temp_U;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<14> > temp_matrix_address0;
    sc_signal< sc_logic > temp_matrix_ce0;
    sc_signal< sc_lv<32> > temp_matrix_q0;
    sc_signal< sc_lv<11> > zext_ln127_5_cast_fu_302_p1;
    sc_signal< sc_lv<11> > zext_ln127_5_cast_reg_954;
    sc_signal< sc_lv<3> > trunc_ln124_fu_306_p1;
    sc_signal< sc_lv<3> > trunc_ln124_reg_964;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > i_fu_316_p2;
    sc_signal< sc_lv<8> > i_reg_972;
    sc_signal< sc_lv<9> > shl_ln_fu_326_p3;
    sc_signal< sc_lv<9> > shl_ln_reg_977;
    sc_signal< sc_lv<1> > icmp_ln124_fu_310_p2;
    sc_signal< sc_lv<3> > trunc_ln134_fu_334_p1;
    sc_signal< sc_lv<3> > trunc_ln134_reg_982;
    sc_signal< sc_lv<3> > j_fu_347_p2;
    sc_signal< sc_lv<3> > j_reg_990;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln125_fu_341_p2;
    sc_signal< sc_lv<32> > prod_q0;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > icmp_ln85_fu_403_p2;
    sc_signal< sc_lv<3> > i_19_fu_409_p2;
    sc_signal< sc_lv<3> > i_19_reg_1018;
    sc_signal< sc_lv<2> > tmp_60_reg_1023;
    sc_signal< sc_lv<6> > temp_addr_5_reg_1029;
    sc_signal< sc_lv<32> > x_7_fu_440_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<5> > start_pos_fu_652_p3;
    sc_signal< sc_lv<5> > start_pos_reg_1039;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > or_ln66_11_fu_660_p2;
    sc_signal< sc_lv<5> > or_ln66_11_reg_1045;
    sc_signal< sc_lv<8> > or_ln66_fu_796_p2;
    sc_signal< sc_lv<8> > or_ln66_reg_1051;
    sc_signal< sc_lv<3> > loop_fu_924_p2;
    sc_signal< sc_lv<3> > loop_reg_1059;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > icmp_ln133_fu_918_p2;
    sc_signal< sc_lv<3> > add_ln134_fu_935_p2;
    sc_signal< sc_lv<3> > add_ln134_reg_1069;
    sc_signal< sc_lv<6> > prod_address0;
    sc_signal< sc_logic > prod_ce0;
    sc_signal< sc_logic > prod_we0;
    sc_signal< sc_lv<32> > prod_d0;
    sc_signal< sc_lv<6> > temp_address0;
    sc_signal< sc_logic > temp_ce0;
    sc_signal< sc_lv<4> > temp_we0;
    sc_signal< sc_lv<32> > temp_d0;
    sc_signal< sc_lv<32> > temp_q0;
    sc_signal< sc_lv<8> > bitNumber_assign_reg_234;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<3> > j_0_reg_246;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > x_0_i_reg_258;
    sc_signal< sc_lv<3> > i_0_i_reg_268;
    sc_signal< sc_lv<3> > loop_0_reg_279;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<64> > zext_ln127_6_fu_371_p1;
    sc_signal< sc_lv<64> > zext_ln127_4_fu_381_p1;
    sc_signal< sc_lv<64> > zext_ln127_fu_386_p1;
    sc_signal< sc_lv<64> > zext_ln85_fu_398_p1;
    sc_signal< sc_lv<64> > zext_ln66_fu_435_p1;
    sc_signal< sc_lv<64> > zext_ln134_fu_930_p1;
    sc_signal< sc_lv<64> > zext_ln134_3_fu_940_p1;
    sc_signal< sc_lv<4> > shl_ln66_23_fu_911_p2;
    sc_signal< sc_lv<5> > grp_fu_290_p0;
    sc_signal< sc_lv<5> > grp_fu_290_p1;
    sc_signal< sc_lv<10> > tmp_s_fu_294_p3;
    sc_signal< sc_lv<7> > trunc_ln126_fu_322_p1;
    sc_signal< sc_lv<9> > zext_ln125_fu_337_p1;
    sc_signal< sc_lv<9> > add_ln126_fu_353_p2;
    sc_signal< sc_lv<11> > zext_ln127_5_fu_362_p1;
    sc_signal< sc_lv<11> > add_ln127_2_fu_366_p2;
    sc_signal< sc_lv<14> > zext_ln126_fu_358_p1;
    sc_signal< sc_lv<14> > add_ln127_fu_376_p2;
    sc_signal< sc_lv<3> > adjSize_fu_425_p4;
    sc_signal< sc_lv<31> > lshr_ln_fu_446_p4;
    sc_signal< sc_lv<32> > zext_ln93_fu_456_p1;
    sc_signal< sc_lv<32> > y_fu_486_p2;
    sc_signal< sc_lv<30> > lshr_ln4_fu_492_p4;
    sc_signal< sc_lv<24> > trunc_ln93_6_fu_476_p4;
    sc_signal< sc_lv<24> > trunc_ln93_2_fu_472_p1;
    sc_signal< sc_lv<32> > zext_ln94_fu_502_p1;
    sc_signal< sc_lv<32> > y_7_fu_530_p2;
    sc_signal< sc_lv<28> > lshr_ln5_fu_536_p4;
    sc_signal< sc_lv<24> > trunc_ln94_2_fu_520_p4;
    sc_signal< sc_lv<24> > xor_ln94_fu_514_p2;
    sc_signal< sc_lv<32> > zext_ln95_fu_546_p1;
    sc_signal< sc_lv<24> > trunc_ln95_2_fu_564_p4;
    sc_signal< sc_lv<24> > xor_ln95_fu_558_p2;
    sc_signal< sc_lv<32> > y_8_fu_574_p2;
    sc_signal< sc_lv<24> > trunc_ln_fu_586_p4;
    sc_signal< sc_lv<24> > xor_ln95_4_fu_580_p2;
    sc_signal< sc_lv<24> > y_9_fu_604_p2;
    sc_signal< sc_lv<1> > trunc_ln93_fu_460_p1;
    sc_signal< sc_lv<1> > tmp_56_fu_506_p3;
    sc_signal< sc_lv<1> > xor_ln98_fu_618_p2;
    sc_signal< sc_lv<1> > tmp_55_fu_464_p3;
    sc_signal< sc_lv<1> > tmp_58_fu_596_p3;
    sc_signal< sc_lv<1> > tmp_59_fu_610_p3;
    sc_signal< sc_lv<1> > xor_ln98_6_fu_630_p2;
    sc_signal< sc_lv<1> > tmp_57_fu_550_p3;
    sc_signal< sc_lv<1> > xor_ln98_7_fu_636_p2;
    sc_signal< sc_lv<1> > xor_ln98_5_fu_624_p2;
    sc_signal< sc_lv<1> > xor_ln98_8_fu_642_p2;
    sc_signal< sc_lv<6> > zext_ln66_50_fu_667_p1;
    sc_signal< sc_lv<6> > zext_ln66_51_fu_671_p1;
    sc_signal< sc_lv<1> > grp_fu_290_p2;
    sc_signal< sc_lv<6> > sub_ln66_fu_685_p2;
    sc_signal< sc_lv<6> > sub_ln66_11_fu_697_p2;
    sc_signal< sc_lv<32> > tmp_61_fu_675_p4;
    sc_signal< sc_lv<6> > xor_ln66_23_fu_691_p2;
    sc_signal< sc_lv<6> > select_ln66_fu_703_p3;
    sc_signal< sc_lv<6> > select_ln66_33_fu_719_p3;
    sc_signal< sc_lv<6> > sub_ln66_12_fu_727_p2;
    sc_signal< sc_lv<32> > select_ln66_32_fu_711_p3;
    sc_signal< sc_lv<32> > zext_ln66_52_fu_733_p1;
    sc_signal< sc_lv<32> > zext_ln66_53_fu_737_p1;
    sc_signal< sc_lv<32> > lshr_ln66_fu_741_p2;
    sc_signal< sc_lv<32> > lshr_ln66_12_fu_747_p2;
    sc_signal< sc_lv<32> > and_ln66_21_fu_753_p2;
    sc_signal< sc_lv<3> > xor_ln66_fu_763_p2;
    sc_signal< sc_lv<8> > zext_ln66_4_fu_768_p1;
    sc_signal< sc_lv<8> > shl_ln66_fu_772_p2;
    sc_signal< sc_lv<8> > zext_ln98_fu_648_p1;
    sc_signal< sc_lv<8> > trunc_ln66_fu_759_p1;
    sc_signal< sc_lv<8> > xor_ln66_7_fu_778_p2;
    sc_signal< sc_lv<8> > and_ln66_fu_790_p2;
    sc_signal< sc_lv<8> > shl_ln66_11_fu_784_p2;
    sc_signal< sc_lv<6> > zext_ln66_54_fu_802_p1;
    sc_signal< sc_lv<6> > zext_ln66_55_fu_805_p1;
    sc_signal< sc_lv<6> > xor_ln66_24_fu_811_p2;
    sc_signal< sc_lv<6> > select_ln66_34_fu_817_p3;
    sc_signal< sc_lv<6> > select_ln66_36_fu_833_p3;
    sc_signal< sc_lv<6> > select_ln66_35_fu_825_p3;
    sc_signal< sc_lv<6> > xor_ln66_25_fu_841_p2;
    sc_signal< sc_lv<32> > zext_ln66_56_fu_808_p1;
    sc_signal< sc_lv<32> > zext_ln66_57_fu_847_p1;
    sc_signal< sc_lv<32> > shl_ln66_21_fu_859_p2;
    sc_signal< sc_lv<32> > tmp_62_fu_865_p4;
    sc_signal< sc_lv<32> > zext_ln66_58_fu_851_p1;
    sc_signal< sc_lv<32> > zext_ln66_59_fu_855_p1;
    sc_signal< sc_lv<32> > shl_ln66_22_fu_883_p2;
    sc_signal< sc_lv<32> > lshr_ln66_13_fu_889_p2;
    sc_signal< sc_lv<32> > select_ln66_37_fu_875_p3;
    sc_signal< sc_lv<32> > and_ln66_22_fu_895_p2;
    sc_signal< sc_lv<4> > zext_ln66_60_fu_908_p1;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<5> ap_const_lv5_7;
    static const sc_lv<6> ap_const_lv6_1F;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<4> ap_const_lv4_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln126_fu_353_p2();
    void thread_add_ln127_2_fu_366_p2();
    void thread_add_ln127_fu_376_p2();
    void thread_add_ln134_fu_935_p2();
    void thread_adjSize_fu_425_p4();
    void thread_and_ln66_21_fu_753_p2();
    void thread_and_ln66_22_fu_895_p2();
    void thread_and_ln66_fu_790_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
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
    void thread_grp_fu_290_p0();
    void thread_grp_fu_290_p1();
    void thread_grp_fu_290_p2();
    void thread_i_19_fu_409_p2();
    void thread_i_fu_316_p2();
    void thread_icmp_ln124_fu_310_p2();
    void thread_icmp_ln125_fu_341_p2();
    void thread_icmp_ln133_fu_918_p2();
    void thread_icmp_ln85_fu_403_p2();
    void thread_j_fu_347_p2();
    void thread_loop_fu_924_p2();
    void thread_lshr_ln4_fu_492_p4();
    void thread_lshr_ln5_fu_536_p4();
    void thread_lshr_ln66_12_fu_747_p2();
    void thread_lshr_ln66_13_fu_889_p2();
    void thread_lshr_ln66_fu_741_p2();
    void thread_lshr_ln_fu_446_p4();
    void thread_or_ln66_11_fu_660_p2();
    void thread_or_ln66_fu_796_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_prod_address0();
    void thread_prod_ce0();
    void thread_prod_d0();
    void thread_prod_we0();
    void thread_select_ln66_32_fu_711_p3();
    void thread_select_ln66_33_fu_719_p3();
    void thread_select_ln66_34_fu_817_p3();
    void thread_select_ln66_35_fu_825_p3();
    void thread_select_ln66_36_fu_833_p3();
    void thread_select_ln66_37_fu_875_p3();
    void thread_select_ln66_fu_703_p3();
    void thread_shl_ln66_11_fu_784_p2();
    void thread_shl_ln66_21_fu_859_p2();
    void thread_shl_ln66_22_fu_883_p2();
    void thread_shl_ln66_23_fu_911_p2();
    void thread_shl_ln66_fu_772_p2();
    void thread_shl_ln_fu_326_p3();
    void thread_start_pos_fu_652_p3();
    void thread_state_address0();
    void thread_state_ce0();
    void thread_sub_ln66_11_fu_697_p2();
    void thread_sub_ln66_12_fu_727_p2();
    void thread_sub_ln66_fu_685_p2();
    void thread_temp_address0();
    void thread_temp_ce0();
    void thread_temp_d0();
    void thread_temp_matrix_address0();
    void thread_temp_matrix_ce0();
    void thread_temp_we0();
    void thread_tmp_55_fu_464_p3();
    void thread_tmp_56_fu_506_p3();
    void thread_tmp_57_fu_550_p3();
    void thread_tmp_58_fu_596_p3();
    void thread_tmp_59_fu_610_p3();
    void thread_tmp_61_fu_675_p4();
    void thread_tmp_62_fu_865_p4();
    void thread_tmp_s_fu_294_p3();
    void thread_trunc_ln124_fu_306_p1();
    void thread_trunc_ln126_fu_322_p1();
    void thread_trunc_ln134_fu_334_p1();
    void thread_trunc_ln66_fu_759_p1();
    void thread_trunc_ln93_2_fu_472_p1();
    void thread_trunc_ln93_6_fu_476_p4();
    void thread_trunc_ln93_fu_460_p1();
    void thread_trunc_ln94_2_fu_520_p4();
    void thread_trunc_ln95_2_fu_564_p4();
    void thread_trunc_ln_fu_586_p4();
    void thread_x_7_fu_440_p2();
    void thread_xor_ln66_23_fu_691_p2();
    void thread_xor_ln66_24_fu_811_p2();
    void thread_xor_ln66_25_fu_841_p2();
    void thread_xor_ln66_7_fu_778_p2();
    void thread_xor_ln66_fu_763_p2();
    void thread_xor_ln94_fu_514_p2();
    void thread_xor_ln95_4_fu_580_p2();
    void thread_xor_ln95_fu_558_p2();
    void thread_xor_ln98_5_fu_624_p2();
    void thread_xor_ln98_6_fu_630_p2();
    void thread_xor_ln98_7_fu_636_p2();
    void thread_xor_ln98_8_fu_642_p2();
    void thread_xor_ln98_fu_618_p2();
    void thread_y_7_fu_530_p2();
    void thread_y_8_fu_574_p2();
    void thread_y_9_fu_604_p2();
    void thread_y_fu_486_p2();
    void thread_zext_ln125_fu_337_p1();
    void thread_zext_ln126_fu_358_p1();
    void thread_zext_ln127_4_fu_381_p1();
    void thread_zext_ln127_5_cast_fu_302_p1();
    void thread_zext_ln127_5_fu_362_p1();
    void thread_zext_ln127_6_fu_371_p1();
    void thread_zext_ln127_fu_386_p1();
    void thread_zext_ln134_3_fu_940_p1();
    void thread_zext_ln134_fu_930_p1();
    void thread_zext_ln66_4_fu_768_p1();
    void thread_zext_ln66_50_fu_667_p1();
    void thread_zext_ln66_51_fu_671_p1();
    void thread_zext_ln66_52_fu_733_p1();
    void thread_zext_ln66_53_fu_737_p1();
    void thread_zext_ln66_54_fu_802_p1();
    void thread_zext_ln66_55_fu_805_p1();
    void thread_zext_ln66_56_fu_808_p1();
    void thread_zext_ln66_57_fu_847_p1();
    void thread_zext_ln66_58_fu_851_p1();
    void thread_zext_ln66_59_fu_855_p1();
    void thread_zext_ln66_60_fu_908_p1();
    void thread_zext_ln66_fu_435_p1();
    void thread_zext_ln85_fu_398_p1();
    void thread_zext_ln93_fu_456_p1();
    void thread_zext_ln94_fu_502_p1();
    void thread_zext_ln95_fu_546_p1();
    void thread_zext_ln98_fu_648_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
