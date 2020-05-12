// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _matrix_mul_1_HH_
#define _matrix_mul_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "matrix_mul_1_tempibs.h"
#include "matrix_mul_prod.h"
#include "matrix_mul_temp.h"

namespace ap_rtl {

struct matrix_mul_1 : public sc_module {
    // Port declarations 13
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
    sc_in< sc_lv<32> > output_r_q0;
    sc_in< sc_lv<5> > state_offset;
    sc_in< sc_lv<14> > matrix_offset;


    // Module declarations
    matrix_mul_1(sc_module_name name);
    SC_HAS_PROCESS(matrix_mul_1);

    ~matrix_mul_1();

    sc_trace_file* mVcdFile;

    matrix_mul_1_tempibs* temp_matrix2_U;
    matrix_mul_prod* prod_U;
    matrix_mul_temp* temp_U;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<14> > temp_matrix2_address0;
    sc_signal< sc_logic > temp_matrix2_ce0;
    sc_signal< sc_lv<32> > temp_matrix2_q0;
    sc_signal< sc_lv<4> > trunc_ln127_fu_275_p1;
    sc_signal< sc_lv<4> > trunc_ln127_reg_928;
    sc_signal< sc_lv<3> > trunc_ln124_fu_279_p1;
    sc_signal< sc_lv<3> > trunc_ln124_reg_934;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > i_fu_289_p2;
    sc_signal< sc_lv<8> > i_reg_942;
    sc_signal< sc_lv<9> > shl_ln_fu_299_p3;
    sc_signal< sc_lv<9> > shl_ln_reg_947;
    sc_signal< sc_lv<1> > icmp_ln124_fu_283_p2;
    sc_signal< sc_lv<3> > j_fu_317_p2;
    sc_signal< sc_lv<3> > j_reg_955;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln125_fu_311_p2;
    sc_signal< sc_lv<32> > prod_q0;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > icmp_ln85_fu_373_p2;
    sc_signal< sc_lv<3> > i_8_fu_379_p2;
    sc_signal< sc_lv<3> > i_8_reg_983;
    sc_signal< sc_lv<2> > tmp_36_reg_988;
    sc_signal< sc_lv<6> > temp_addr_4_reg_994;
    sc_signal< sc_lv<32> > x_6_fu_410_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<5> > start_pos_fu_622_p3;
    sc_signal< sc_lv<5> > start_pos_reg_1004;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > or_ln66_9_fu_630_p2;
    sc_signal< sc_lv<5> > or_ln66_9_reg_1010;
    sc_signal< sc_lv<8> > or_ln66_fu_766_p2;
    sc_signal< sc_lv<8> > or_ln66_reg_1016;
    sc_signal< sc_lv<3> > loop_fu_894_p2;
    sc_signal< sc_lv<3> > loop_reg_1024;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > icmp_ln133_fu_888_p2;
    sc_signal< sc_lv<4> > add_ln134_fu_909_p2;
    sc_signal< sc_lv<4> > add_ln134_reg_1034;
    sc_signal< sc_lv<6> > prod_address0;
    sc_signal< sc_logic > prod_ce0;
    sc_signal< sc_logic > prod_we0;
    sc_signal< sc_lv<32> > prod_d0;
    sc_signal< sc_lv<6> > temp_address0;
    sc_signal< sc_logic > temp_ce0;
    sc_signal< sc_lv<4> > temp_we0;
    sc_signal< sc_lv<32> > temp_d0;
    sc_signal< sc_lv<32> > temp_q0;
    sc_signal< sc_lv<8> > bitNumber_assign_reg_215;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<3> > j_0_reg_227;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > x_0_i_reg_239;
    sc_signal< sc_lv<3> > i_0_i_reg_249;
    sc_signal< sc_lv<3> > loop_0_reg_260;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<64> > zext_ln127_2_fu_341_p1;
    sc_signal< sc_lv<64> > zext_ln127_3_fu_351_p1;
    sc_signal< sc_lv<64> > zext_ln127_fu_356_p1;
    sc_signal< sc_lv<64> > zext_ln85_fu_368_p1;
    sc_signal< sc_lv<64> > zext_ln66_fu_405_p1;
    sc_signal< sc_lv<64> > zext_ln134_fu_900_p1;
    sc_signal< sc_lv<64> > zext_ln134_2_fu_914_p1;
    sc_signal< sc_lv<4> > shl_ln66_17_fu_881_p2;
    sc_signal< sc_lv<5> > grp_fu_271_p0;
    sc_signal< sc_lv<5> > grp_fu_271_p1;
    sc_signal< sc_lv<7> > trunc_ln126_fu_295_p1;
    sc_signal< sc_lv<9> > zext_ln125_fu_307_p1;
    sc_signal< sc_lv<9> > add_ln126_fu_323_p2;
    sc_signal< sc_lv<4> > zext_ln127_1_fu_332_p1;
    sc_signal< sc_lv<4> > add_ln127_fu_336_p2;
    sc_signal< sc_lv<14> > zext_ln126_fu_328_p1;
    sc_signal< sc_lv<14> > add_ln127_1_fu_346_p2;
    sc_signal< sc_lv<3> > adjSize_fu_395_p4;
    sc_signal< sc_lv<31> > lshr_ln_fu_416_p4;
    sc_signal< sc_lv<32> > zext_ln93_fu_426_p1;
    sc_signal< sc_lv<32> > y_fu_456_p2;
    sc_signal< sc_lv<30> > lshr_ln1_fu_462_p4;
    sc_signal< sc_lv<24> > trunc_ln93_3_fu_446_p4;
    sc_signal< sc_lv<24> > trunc_ln93_1_fu_442_p1;
    sc_signal< sc_lv<32> > zext_ln94_fu_472_p1;
    sc_signal< sc_lv<32> > y_4_fu_500_p2;
    sc_signal< sc_lv<28> > lshr_ln2_fu_506_p4;
    sc_signal< sc_lv<24> > trunc_ln94_1_fu_490_p4;
    sc_signal< sc_lv<24> > xor_ln94_fu_484_p2;
    sc_signal< sc_lv<32> > zext_ln95_fu_516_p1;
    sc_signal< sc_lv<24> > trunc_ln95_1_fu_534_p4;
    sc_signal< sc_lv<24> > xor_ln95_fu_528_p2;
    sc_signal< sc_lv<32> > y_5_fu_544_p2;
    sc_signal< sc_lv<24> > trunc_ln_fu_556_p4;
    sc_signal< sc_lv<24> > xor_ln95_2_fu_550_p2;
    sc_signal< sc_lv<24> > y_6_fu_574_p2;
    sc_signal< sc_lv<1> > trunc_ln93_fu_430_p1;
    sc_signal< sc_lv<1> > tmp_32_fu_476_p3;
    sc_signal< sc_lv<1> > xor_ln98_fu_588_p2;
    sc_signal< sc_lv<1> > tmp_31_fu_434_p3;
    sc_signal< sc_lv<1> > tmp_34_fu_566_p3;
    sc_signal< sc_lv<1> > tmp_35_fu_580_p3;
    sc_signal< sc_lv<1> > xor_ln98_2_fu_600_p2;
    sc_signal< sc_lv<1> > tmp_33_fu_520_p3;
    sc_signal< sc_lv<1> > xor_ln98_3_fu_606_p2;
    sc_signal< sc_lv<1> > xor_ln98_1_fu_594_p2;
    sc_signal< sc_lv<1> > xor_ln98_4_fu_612_p2;
    sc_signal< sc_lv<6> > zext_ln66_37_fu_637_p1;
    sc_signal< sc_lv<6> > zext_ln66_38_fu_641_p1;
    sc_signal< sc_lv<1> > grp_fu_271_p2;
    sc_signal< sc_lv<6> > sub_ln66_fu_655_p2;
    sc_signal< sc_lv<6> > sub_ln66_9_fu_667_p2;
    sc_signal< sc_lv<32> > tmp_37_fu_645_p4;
    sc_signal< sc_lv<6> > xor_ln66_17_fu_661_p2;
    sc_signal< sc_lv<6> > select_ln66_fu_673_p3;
    sc_signal< sc_lv<6> > select_ln66_27_fu_689_p3;
    sc_signal< sc_lv<6> > sub_ln66_10_fu_697_p2;
    sc_signal< sc_lv<32> > select_ln66_26_fu_681_p3;
    sc_signal< sc_lv<32> > zext_ln66_39_fu_703_p1;
    sc_signal< sc_lv<32> > zext_ln66_40_fu_707_p1;
    sc_signal< sc_lv<32> > lshr_ln66_fu_711_p2;
    sc_signal< sc_lv<32> > lshr_ln66_10_fu_717_p2;
    sc_signal< sc_lv<32> > and_ln66_17_fu_723_p2;
    sc_signal< sc_lv<3> > xor_ln66_fu_733_p2;
    sc_signal< sc_lv<8> > zext_ln66_1_fu_738_p1;
    sc_signal< sc_lv<8> > shl_ln66_fu_742_p2;
    sc_signal< sc_lv<8> > zext_ln98_fu_618_p1;
    sc_signal< sc_lv<8> > trunc_ln66_fu_729_p1;
    sc_signal< sc_lv<8> > xor_ln66_3_fu_748_p2;
    sc_signal< sc_lv<8> > and_ln66_fu_760_p2;
    sc_signal< sc_lv<8> > shl_ln66_7_fu_754_p2;
    sc_signal< sc_lv<6> > zext_ln66_41_fu_772_p1;
    sc_signal< sc_lv<6> > zext_ln66_42_fu_775_p1;
    sc_signal< sc_lv<6> > xor_ln66_18_fu_781_p2;
    sc_signal< sc_lv<6> > select_ln66_28_fu_787_p3;
    sc_signal< sc_lv<6> > select_ln66_30_fu_803_p3;
    sc_signal< sc_lv<6> > select_ln66_29_fu_795_p3;
    sc_signal< sc_lv<6> > xor_ln66_19_fu_811_p2;
    sc_signal< sc_lv<32> > zext_ln66_43_fu_778_p1;
    sc_signal< sc_lv<32> > zext_ln66_44_fu_817_p1;
    sc_signal< sc_lv<32> > shl_ln66_15_fu_829_p2;
    sc_signal< sc_lv<32> > tmp_38_fu_835_p4;
    sc_signal< sc_lv<32> > zext_ln66_45_fu_821_p1;
    sc_signal< sc_lv<32> > zext_ln66_46_fu_825_p1;
    sc_signal< sc_lv<32> > shl_ln66_16_fu_853_p2;
    sc_signal< sc_lv<32> > lshr_ln66_11_fu_859_p2;
    sc_signal< sc_lv<32> > select_ln66_31_fu_845_p3;
    sc_signal< sc_lv<32> > and_ln66_18_fu_865_p2;
    sc_signal< sc_lv<4> > zext_ln66_47_fu_878_p1;
    sc_signal< sc_lv<4> > zext_ln134_1_fu_905_p1;
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
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
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
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<2> ap_const_lv2_0;
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
    void thread_add_ln126_fu_323_p2();
    void thread_add_ln127_1_fu_346_p2();
    void thread_add_ln127_fu_336_p2();
    void thread_add_ln134_fu_909_p2();
    void thread_adjSize_fu_395_p4();
    void thread_and_ln66_17_fu_723_p2();
    void thread_and_ln66_18_fu_865_p2();
    void thread_and_ln66_fu_760_p2();
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
    void thread_grp_fu_271_p0();
    void thread_grp_fu_271_p1();
    void thread_grp_fu_271_p2();
    void thread_i_8_fu_379_p2();
    void thread_i_fu_289_p2();
    void thread_icmp_ln124_fu_283_p2();
    void thread_icmp_ln125_fu_311_p2();
    void thread_icmp_ln133_fu_888_p2();
    void thread_icmp_ln85_fu_373_p2();
    void thread_j_fu_317_p2();
    void thread_loop_fu_894_p2();
    void thread_lshr_ln1_fu_462_p4();
    void thread_lshr_ln2_fu_506_p4();
    void thread_lshr_ln66_10_fu_717_p2();
    void thread_lshr_ln66_11_fu_859_p2();
    void thread_lshr_ln66_fu_711_p2();
    void thread_lshr_ln_fu_416_p4();
    void thread_or_ln66_9_fu_630_p2();
    void thread_or_ln66_fu_766_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_prod_address0();
    void thread_prod_ce0();
    void thread_prod_d0();
    void thread_prod_we0();
    void thread_select_ln66_26_fu_681_p3();
    void thread_select_ln66_27_fu_689_p3();
    void thread_select_ln66_28_fu_787_p3();
    void thread_select_ln66_29_fu_795_p3();
    void thread_select_ln66_30_fu_803_p3();
    void thread_select_ln66_31_fu_845_p3();
    void thread_select_ln66_fu_673_p3();
    void thread_shl_ln66_15_fu_829_p2();
    void thread_shl_ln66_16_fu_853_p2();
    void thread_shl_ln66_17_fu_881_p2();
    void thread_shl_ln66_7_fu_754_p2();
    void thread_shl_ln66_fu_742_p2();
    void thread_shl_ln_fu_299_p3();
    void thread_start_pos_fu_622_p3();
    void thread_sub_ln66_10_fu_697_p2();
    void thread_sub_ln66_9_fu_667_p2();
    void thread_sub_ln66_fu_655_p2();
    void thread_temp_address0();
    void thread_temp_ce0();
    void thread_temp_d0();
    void thread_temp_matrix2_address0();
    void thread_temp_matrix2_ce0();
    void thread_temp_we0();
    void thread_tmp_31_fu_434_p3();
    void thread_tmp_32_fu_476_p3();
    void thread_tmp_33_fu_520_p3();
    void thread_tmp_34_fu_566_p3();
    void thread_tmp_35_fu_580_p3();
    void thread_tmp_37_fu_645_p4();
    void thread_tmp_38_fu_835_p4();
    void thread_trunc_ln124_fu_279_p1();
    void thread_trunc_ln126_fu_295_p1();
    void thread_trunc_ln127_fu_275_p1();
    void thread_trunc_ln66_fu_729_p1();
    void thread_trunc_ln93_1_fu_442_p1();
    void thread_trunc_ln93_3_fu_446_p4();
    void thread_trunc_ln93_fu_430_p1();
    void thread_trunc_ln94_1_fu_490_p4();
    void thread_trunc_ln95_1_fu_534_p4();
    void thread_trunc_ln_fu_556_p4();
    void thread_x_6_fu_410_p2();
    void thread_xor_ln66_17_fu_661_p2();
    void thread_xor_ln66_18_fu_781_p2();
    void thread_xor_ln66_19_fu_811_p2();
    void thread_xor_ln66_3_fu_748_p2();
    void thread_xor_ln66_fu_733_p2();
    void thread_xor_ln94_fu_484_p2();
    void thread_xor_ln95_2_fu_550_p2();
    void thread_xor_ln95_fu_528_p2();
    void thread_xor_ln98_1_fu_594_p2();
    void thread_xor_ln98_2_fu_600_p2();
    void thread_xor_ln98_3_fu_606_p2();
    void thread_xor_ln98_4_fu_612_p2();
    void thread_xor_ln98_fu_588_p2();
    void thread_y_4_fu_500_p2();
    void thread_y_5_fu_544_p2();
    void thread_y_6_fu_574_p2();
    void thread_y_fu_456_p2();
    void thread_zext_ln125_fu_307_p1();
    void thread_zext_ln126_fu_328_p1();
    void thread_zext_ln127_1_fu_332_p1();
    void thread_zext_ln127_2_fu_341_p1();
    void thread_zext_ln127_3_fu_351_p1();
    void thread_zext_ln127_fu_356_p1();
    void thread_zext_ln134_1_fu_905_p1();
    void thread_zext_ln134_2_fu_914_p1();
    void thread_zext_ln134_fu_900_p1();
    void thread_zext_ln66_1_fu_738_p1();
    void thread_zext_ln66_37_fu_637_p1();
    void thread_zext_ln66_38_fu_641_p1();
    void thread_zext_ln66_39_fu_703_p1();
    void thread_zext_ln66_40_fu_707_p1();
    void thread_zext_ln66_41_fu_772_p1();
    void thread_zext_ln66_42_fu_775_p1();
    void thread_zext_ln66_43_fu_778_p1();
    void thread_zext_ln66_44_fu_817_p1();
    void thread_zext_ln66_45_fu_821_p1();
    void thread_zext_ln66_46_fu_825_p1();
    void thread_zext_ln66_47_fu_878_p1();
    void thread_zext_ln66_fu_405_p1();
    void thread_zext_ln85_fu_368_p1();
    void thread_zext_ln93_fu_426_p1();
    void thread_zext_ln94_fu_472_p1();
    void thread_zext_ln95_fu_516_p1();
    void thread_zext_ln98_fu_618_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
