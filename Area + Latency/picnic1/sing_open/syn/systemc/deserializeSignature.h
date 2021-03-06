// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _deserializeSignature_HH_
#define _deserializeSignature_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct deserializeSignature : public sc_module {
    // Port declarations 46
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<12> > sig_0_proofs_seed1_address0;
    sc_out< sc_logic > sig_0_proofs_seed1_ce0;
    sc_out< sc_logic > sig_0_proofs_seed1_we0;
    sc_out< sc_lv<8> > sig_0_proofs_seed1_d0;
    sc_out< sc_lv<12> > sig_0_proofs_seed2_address0;
    sc_out< sc_logic > sig_0_proofs_seed2_ce0;
    sc_out< sc_logic > sig_0_proofs_seed2_we0;
    sc_out< sc_lv<8> > sig_0_proofs_seed2_d0;
    sc_out< sc_lv<10> > sig_0_proofs_inputS_address0;
    sc_out< sc_logic > sig_0_proofs_inputS_ce0;
    sc_out< sc_logic > sig_0_proofs_inputS_we0;
    sc_out< sc_lv<32> > sig_0_proofs_inputS_d0;
    sc_out< sc_lv<15> > sig_0_proofs_commun_address0;
    sc_out< sc_logic > sig_0_proofs_commun_ce0;
    sc_out< sc_logic > sig_0_proofs_commun_we0;
    sc_out< sc_lv<8> > sig_0_proofs_commun_d0;
    sc_out< sc_lv<13> > sig_0_proofs_view3C_address0;
    sc_out< sc_logic > sig_0_proofs_view3C_ce0;
    sc_out< sc_logic > sig_0_proofs_view3C_we0;
    sc_out< sc_lv<8> > sig_0_proofs_view3C_d0;
    sc_out< sc_lv<6> > sig_0_challengeBits_address0;
    sc_out< sc_logic > sig_0_challengeBits_ce0;
    sc_out< sc_logic > sig_0_challengeBits_we0;
    sc_out< sc_lv<8> > sig_0_challengeBits_d0;
    sc_in< sc_lv<8> > sig_0_challengeBits_q0;
    sc_out< sc_lv<5> > sig_0_salt_address0;
    sc_out< sc_logic > sig_0_salt_ce0;
    sc_out< sc_logic > sig_0_salt_we0;
    sc_out< sc_lv<8> > sig_0_salt_d0;
    sc_out< sc_lv<16> > sigBytes_address0;
    sc_out< sc_logic > sigBytes_ce0;
    sc_in< sc_lv<8> > sigBytes_q0;
    sc_out< sc_lv<16> > sigBytes_address1;
    sc_out< sc_logic > sigBytes_ce1;
    sc_in< sc_lv<8> > sigBytes_q1;
    sc_in< sc_lv<64> > sigBytes_offset;
    sc_in< sc_lv<32> > sigBytesLen;
    sc_in< sc_lv<7> > params_UnruhGWithout;
    sc_in< sc_lv<2> > params_transform_rea;
    sc_out< sc_lv<1> > ap_return;


    // Module declarations
    deserializeSignature(sc_module_name name);
    SC_HAS_PROCESS(deserializeSignature);

    ~deserializeSignature();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<25> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > loop_0_reg_447;
    sc_signal< sc_lv<6> > loop_1_reg_470;
    sc_signal< sc_lv<6> > loop_2_reg_518;
    sc_signal< sc_lv<7> > loop_3_reg_530;
    sc_signal< sc_lv<5> > loop_4_reg_541;
    sc_signal< sc_lv<5> > loop_5_reg_553;
    sc_signal< sc_lv<64> > sigBytesLen_cast1_fu_608_p1;
    sc_signal< sc_lv<64> > sigBytesLen_cast1_reg_1495;
    sc_signal< sc_lv<17> > trunc_ln54_fu_618_p1;
    sc_signal< sc_lv<17> > trunc_ln54_reg_1503;
    sc_signal< sc_lv<1> > icmp_ln1968_fu_612_p2;
    sc_signal< sc_lv<8> > i_20_fu_628_p2;
    sc_signal< sc_lv<8> > i_20_reg_1518;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > trunc_ln386_fu_634_p1;
    sc_signal< sc_lv<2> > trunc_ln386_reg_1523;
    sc_signal< sc_lv<1> > icmp_ln1940_fu_622_p2;
    sc_signal< sc_lv<64> > bytesExpected_fu_662_p2;
    sc_signal< sc_lv<64> > bytesExpected_reg_1533;
    sc_signal< sc_lv<16> > mul_ln1977_fu_671_p2;
    sc_signal< sc_lv<16> > mul_ln1977_reg_1539;
    sc_signal< sc_lv<64> > inputShareSize_2_fu_756_p3;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln1979_fu_782_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln2039_fu_787_p2;
    sc_signal< sc_lv<1> > icmp_ln2039_reg_1553;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<6> > loop_fu_793_p2;
    sc_signal< sc_lv<6> > loop_reg_1557;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > icmp_ln1951_fu_818_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > i_21_fu_824_p2;
    sc_signal< sc_lv<8> > i_21_reg_1571;
    sc_signal< sc_lv<2> > trunc_ln386_4_fu_830_p1;
    sc_signal< sc_lv<2> > trunc_ln386_4_reg_1576;
    sc_signal< sc_lv<1> > icmp_ln2048_fu_910_p2;
    sc_signal< sc_lv<1> > icmp_ln2048_reg_1589;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state10_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state11_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<6> > loop_32_fu_916_p2;
    sc_signal< sc_lv<6> > loop_32_reg_1593;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<15> > add_ln2052_fu_951_p2;
    sc_signal< sc_lv<15> > add_ln2052_reg_1603;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > i_fu_963_p2;
    sc_signal< sc_lv<8> > i_reg_1611;
    sc_signal< sc_lv<1> > icmp_ln2052_fu_957_p2;
    sc_signal< sc_lv<13> > zext_ln2058_fu_996_p1;
    sc_signal< sc_lv<13> > zext_ln2058_reg_1621;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<14> > zext_ln382_fu_1008_p1;
    sc_signal< sc_lv<14> > zext_ln382_reg_1627;
    sc_signal< sc_lv<3> > zext_ln386_fu_1072_p1;
    sc_signal< sc_lv<3> > zext_ln386_reg_1632;
    sc_signal< sc_lv<17> > add_ln2058_fu_1076_p2;
    sc_signal< sc_lv<17> > add_ln2058_reg_1637;
    sc_signal< sc_lv<1> > icmp_ln2057_fu_1081_p2;
    sc_signal< sc_lv<1> > icmp_ln2057_reg_1645;
    sc_signal< sc_logic > ap_CS_fsm_pp2_stage0;
    sc_signal< bool > ap_block_state15_pp2_stage0_iter0;
    sc_signal< bool > ap_block_state16_pp2_stage0_iter1;
    sc_signal< bool > ap_block_pp2_stage0_11001;
    sc_signal< sc_lv<6> > loop_33_fu_1087_p2;
    sc_signal< sc_lv<6> > loop_33_reg_1649;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter0;
    sc_signal< sc_lv<1> > icmp_ln2070_fu_1131_p2;
    sc_signal< sc_lv<1> > icmp_ln2070_reg_1659;
    sc_signal< sc_logic > ap_CS_fsm_pp3_stage0;
    sc_signal< bool > ap_block_state18_pp3_stage0_iter0;
    sc_signal< bool > ap_block_state19_pp3_stage0_iter1;
    sc_signal< bool > ap_block_pp3_stage0_11001;
    sc_signal< sc_lv<7> > loop_34_fu_1137_p2;
    sc_signal< sc_logic > ap_enable_reg_pp3_iter0;
    sc_signal< sc_lv<15> > add_ln2071_fu_1147_p2;
    sc_signal< sc_lv<15> > add_ln2071_reg_1668;
    sc_signal< sc_lv<1> > icmp_ln2075_fu_1181_p2;
    sc_signal< sc_lv<1> > icmp_ln2075_reg_1678;
    sc_signal< sc_logic > ap_CS_fsm_pp4_stage0;
    sc_signal< bool > ap_block_state21_pp4_stage0_iter0;
    sc_signal< bool > ap_block_state22_pp4_stage0_iter1;
    sc_signal< bool > ap_block_pp4_stage0_11001;
    sc_signal< sc_lv<5> > loop_35_fu_1187_p2;
    sc_signal< sc_lv<5> > loop_35_reg_1682;
    sc_signal< sc_logic > ap_enable_reg_pp4_iter0;
    sc_signal< sc_lv<1> > icmp_ln2080_fu_1235_p2;
    sc_signal< sc_lv<1> > icmp_ln2080_reg_1692;
    sc_signal< sc_logic > ap_CS_fsm_pp5_stage0;
    sc_signal< bool > ap_block_state24_pp5_stage0_iter0;
    sc_signal< bool > ap_block_state25_pp5_stage0_iter1;
    sc_signal< bool > ap_block_pp5_stage0_11001;
    sc_signal< sc_lv<5> > loop_36_fu_1241_p2;
    sc_signal< sc_lv<5> > loop_36_reg_1696;
    sc_signal< sc_logic > ap_enable_reg_pp5_iter0;
    sc_signal< sc_lv<16> > add_ln2087_fu_1310_p2;
    sc_signal< sc_lv<16> > add_ln2087_reg_1709;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_lv<1> > icmp_ln2084_fu_1304_p2;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<1> > tmp_64_fu_1316_p3;
    sc_signal< sc_lv<17> > add_ln2087_6_fu_1399_p2;
    sc_signal< sc_lv<17> > add_ln2087_6_reg_1730;
    sc_signal< sc_lv<17> > add_ln2087_8_fu_1423_p2;
    sc_signal< sc_lv<17> > add_ln2087_8_reg_1735;
    sc_signal< sc_lv<2> > trunc_ln2087_4_reg_1740;
    sc_signal< sc_lv<5> > loop_37_fu_1438_p2;
    sc_signal< sc_lv<5> > loop_37_reg_1745;
    sc_signal< sc_lv<8> > sigBytes_load_6_reg_1750;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_lv<8> > sigBytes_load_7_reg_1755;
    sc_signal< sc_lv<16> > add_ln2088_fu_1479_p2;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state10;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp2_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp2_exit_iter0_state15;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter1;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< bool > ap_block_pp3_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp3_exit_iter0_state18;
    sc_signal< sc_logic > ap_enable_reg_pp3_iter1;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< bool > ap_block_pp4_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp4_exit_iter0_state21;
    sc_signal< sc_logic > ap_enable_reg_pp4_iter1;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< bool > ap_block_pp5_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp5_exit_iter0_state24;
    sc_signal< sc_logic > ap_enable_reg_pp5_iter1;
    sc_signal< sc_lv<64> > inputShareSize_reg_424;
    sc_signal< sc_lv<8> > round_assign_reg_436;
    sc_signal< sc_lv<6> > ap_phi_mux_loop_0_phi_fu_451_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<8> > round_assign_2_reg_459;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > icmp_ln1953_fu_904_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<6> > ap_phi_mux_loop_1_phi_fu_474_p4;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<16> > p_01_rec_reg_482;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > round_assign_3_reg_494;
    sc_signal< sc_lv<15> > phi_mul_reg_506;
    sc_signal< sc_lv<6> > ap_phi_mux_loop_2_phi_fu_522_p4;
    sc_signal< bool > ap_block_pp2_stage0;
    sc_signal< sc_lv<5> > ap_phi_mux_loop_4_phi_fu_545_p4;
    sc_signal< bool > ap_block_pp4_stage0;
    sc_signal< sc_lv<5> > ap_phi_mux_loop_5_phi_fu_557_p4;
    sc_signal< bool > ap_block_pp5_stage0;
    sc_signal< sc_lv<5> > loop_6_reg_565;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_lv<8> > p_sum5_pn_reg_576;
    sc_signal< sc_lv<1> > p_0_reg_589;
    sc_signal< sc_lv<64> > zext_ln54_13_fu_657_p1;
    sc_signal< sc_lv<64> > zext_ln2040_2_fu_808_p1;
    sc_signal< sc_lv<64> > zext_ln2040_fu_813_p1;
    sc_signal< sc_lv<64> > zext_ln54_12_fu_844_p1;
    sc_signal< sc_lv<64> > zext_ln2049_3_fu_941_p1;
    sc_signal< sc_lv<64> > zext_ln2049_fu_946_p1;
    sc_signal< sc_lv<64> > zext_ln54_14_fu_979_p1;
    sc_signal< sc_lv<64> > zext_ln2058_3_fu_1112_p1;
    sc_signal< sc_lv<64> > zext_ln2058_5_fu_1126_p1;
    sc_signal< sc_lv<64> > zext_ln2071_3_fu_1172_p1;
    sc_signal< bool > ap_block_pp3_stage0;
    sc_signal< sc_lv<64> > zext_ln2071_4_fu_1177_p1;
    sc_signal< sc_lv<64> > zext_ln2076_3_fu_1216_p1;
    sc_signal< sc_lv<64> > zext_ln2076_4_fu_1230_p1;
    sc_signal< sc_lv<64> > zext_ln2081_3_fu_1270_p1;
    sc_signal< sc_lv<64> > zext_ln2081_4_fu_1284_p1;
    sc_signal< sc_lv<64> > zext_ln2087_2_fu_1342_p1;
    sc_signal< sc_lv<64> > zext_ln2087_5_fu_1375_p1;
    sc_signal< sc_lv<64> > zext_ln2087_8_fu_1444_p1;
    sc_signal< sc_lv<64> > zext_ln2087_11_fu_1448_p1;
    sc_signal< sc_lv<64> > zext_ln2087_12_fu_1470_p1;
    sc_signal< sc_lv<6> > trunc_ln_fu_638_p4;
    sc_signal< sc_lv<17> > zext_ln54_fu_648_p1;
    sc_signal< sc_lv<17> > add_ln54_fu_652_p2;
    sc_signal< sc_lv<7> > mul_ln1977_fu_671_p1;
    sc_signal< sc_lv<3> > shl_ln_fu_677_p3;
    sc_signal< sc_lv<3> > xor_ln54_fu_684_p2;
    sc_signal< sc_lv<8> > zext_ln54_15_fu_690_p1;
    sc_signal< sc_lv<8> > lshr_ln54_fu_694_p2;
    sc_signal< sc_lv<3> > xor_ln54_2_fu_704_p2;
    sc_signal< sc_lv<8> > zext_ln54_16_fu_710_p1;
    sc_signal< sc_lv<8> > lshr_ln54_8_fu_714_p2;
    sc_signal< sc_lv<1> > trunc_ln386_3_fu_700_p1;
    sc_signal< sc_lv<1> > trunc_ln54_9_fu_720_p1;
    sc_signal< sc_lv<2> > challenge_fu_724_p3;
    sc_signal< sc_lv<1> > icmp_ln1942_fu_732_p2;
    sc_signal< sc_lv<1> > icmp_ln1942_1_fu_738_p2;
    sc_signal< sc_lv<1> > or_ln1942_fu_744_p2;
    sc_signal< sc_lv<64> > inputShareSize_1_fu_750_p2;
    sc_signal< sc_lv<64> > zext_ln1977_fu_767_p1;
    sc_signal< sc_lv<1> > trunc_ln1976_fu_764_p1;
    sc_signal< sc_lv<64> > bytesExpected_1_fu_770_p2;
    sc_signal< sc_lv<64> > bytesExpected_2_fu_775_p3;
    sc_signal< sc_lv<17> > zext_ln2040_1_fu_799_p1;
    sc_signal< sc_lv<17> > add_ln2040_fu_803_p2;
    sc_signal< sc_lv<6> > trunc_ln54_6_fu_834_p4;
    sc_signal< sc_lv<3> > bitNumber_assign_fu_849_p3;
    sc_signal< sc_lv<3> > xor_ln54_3_fu_856_p2;
    sc_signal< sc_lv<8> > zext_ln54_17_fu_862_p1;
    sc_signal< sc_lv<8> > lshr_ln54_9_fu_866_p2;
    sc_signal< sc_lv<3> > xor_ln54_4_fu_876_p2;
    sc_signal< sc_lv<8> > zext_ln54_18_fu_882_p1;
    sc_signal< sc_lv<8> > lshr_ln54_10_fu_886_p2;
    sc_signal< sc_lv<1> > trunc_ln386_5_fu_872_p1;
    sc_signal< sc_lv<1> > trunc_ln54_10_fu_892_p1;
    sc_signal< sc_lv<2> > challenge_1_fu_896_p3;
    sc_signal< sc_lv<7> > zext_ln2049_1_fu_922_p1;
    sc_signal< sc_lv<7> > add_ln2049_fu_926_p2;
    sc_signal< sc_lv<17> > zext_ln2049_2_fu_932_p1;
    sc_signal< sc_lv<17> > add_ln2049_1_fu_936_p2;
    sc_signal< sc_lv<6> > trunc_ln54_8_fu_969_p4;
    sc_signal< sc_lv<12> > tmp_19_fu_988_p3;
    sc_signal< sc_lv<13> > tmp_20_fu_1000_p3;
    sc_signal< sc_lv<2> > trunc_ln386_6_fu_1012_p1;
    sc_signal< sc_lv<3> > bitNumber_assign_4_fu_1016_p3;
    sc_signal< sc_lv<3> > xor_ln54_5_fu_1024_p2;
    sc_signal< sc_lv<8> > zext_ln54_19_fu_1030_p1;
    sc_signal< sc_lv<8> > lshr_ln54_11_fu_1034_p2;
    sc_signal< sc_lv<3> > xor_ln54_6_fu_1044_p2;
    sc_signal< sc_lv<8> > zext_ln54_20_fu_1050_p1;
    sc_signal< sc_lv<8> > lshr_ln54_12_fu_1054_p2;
    sc_signal< sc_lv<1> > trunc_ln386_7_fu_1040_p1;
    sc_signal< sc_lv<1> > trunc_ln54_11_fu_1060_p1;
    sc_signal< sc_lv<2> > challenge_2_fu_1064_p3;
    sc_signal< sc_lv<17> > zext_ln2052_fu_984_p1;
    sc_signal< sc_lv<7> > zext_ln2058_1_fu_1093_p1;
    sc_signal< sc_lv<7> > add_ln2058_2_fu_1097_p2;
    sc_signal< sc_lv<17> > zext_ln2058_2_fu_1103_p1;
    sc_signal< sc_lv<17> > add_ln2058_1_fu_1107_p2;
    sc_signal< sc_lv<14> > zext_ln2058_4_fu_1117_p1;
    sc_signal< sc_lv<14> > add_ln2058_3_fu_1121_p2;
    sc_signal< sc_lv<15> > zext_ln2071_fu_1143_p1;
    sc_signal< sc_lv<8> > zext_ln2071_1_fu_1153_p1;
    sc_signal< sc_lv<8> > add_ln2071_1_fu_1157_p2;
    sc_signal< sc_lv<17> > zext_ln2071_2_fu_1163_p1;
    sc_signal< sc_lv<17> > add_ln2071_2_fu_1167_p2;
    sc_signal< sc_lv<7> > zext_ln2076_1_fu_1193_p1;
    sc_signal< sc_lv<7> > add_ln2076_1_fu_1197_p2;
    sc_signal< sc_lv<8> > sext_ln2076_fu_1203_p1;
    sc_signal< sc_lv<17> > zext_ln2076_2_fu_1207_p1;
    sc_signal< sc_lv<17> > add_ln2076_2_fu_1211_p2;
    sc_signal< sc_lv<13> > zext_ln2076_fu_1221_p1;
    sc_signal< sc_lv<13> > add_ln2076_fu_1225_p2;
    sc_signal< sc_lv<7> > zext_ln2081_1_fu_1247_p1;
    sc_signal< sc_lv<7> > add_ln2081_1_fu_1251_p2;
    sc_signal< sc_lv<8> > sext_ln2081_fu_1257_p1;
    sc_signal< sc_lv<17> > zext_ln2081_2_fu_1261_p1;
    sc_signal< sc_lv<17> > add_ln2081_2_fu_1265_p2;
    sc_signal< sc_lv<13> > zext_ln2081_fu_1275_p1;
    sc_signal< sc_lv<13> > add_ln2081_fu_1279_p2;
    sc_signal< sc_lv<3> > add_ln2084_fu_1289_p2;
    sc_signal< sc_lv<2> > tmp_fu_1294_p4;
    sc_signal< sc_lv<16> > zext_ln2087_fu_1324_p1;
    sc_signal< sc_lv<16> > add_ln2087_1_fu_1328_p2;
    sc_signal< sc_lv<17> > zext_ln2087_1_fu_1333_p1;
    sc_signal< sc_lv<17> > add_ln2087_2_fu_1337_p2;
    sc_signal< sc_lv<4> > trunc_ln2086_fu_1347_p1;
    sc_signal< sc_lv<4> > or_ln2087_fu_1351_p2;
    sc_signal< sc_lv<16> > zext_ln2087_3_fu_1357_p1;
    sc_signal< sc_lv<16> > add_ln2087_3_fu_1361_p2;
    sc_signal< sc_lv<17> > zext_ln2087_4_fu_1366_p1;
    sc_signal< sc_lv<17> > add_ln2087_4_fu_1370_p2;
    sc_signal< sc_lv<4> > or_ln2087_1_fu_1380_p2;
    sc_signal< sc_lv<16> > zext_ln2087_6_fu_1386_p1;
    sc_signal< sc_lv<16> > add_ln2087_5_fu_1390_p2;
    sc_signal< sc_lv<17> > zext_ln2087_7_fu_1395_p1;
    sc_signal< sc_lv<4> > or_ln2087_2_fu_1404_p2;
    sc_signal< sc_lv<16> > zext_ln2087_9_fu_1410_p1;
    sc_signal< sc_lv<16> > add_ln2087_7_fu_1414_p2;
    sc_signal< sc_lv<17> > zext_ln2087_10_fu_1419_p1;
    sc_signal< sc_lv<10> > tmp_21_fu_1463_p3;
    sc_signal< sc_lv<16> > zext_ln2088_fu_1475_p1;
    sc_signal< sc_lv<1> > ap_return_preg;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<25> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_logic > ap_idle_pp2;
    sc_signal< sc_logic > ap_enable_pp2;
    sc_signal< sc_logic > ap_idle_pp3;
    sc_signal< sc_logic > ap_enable_pp3;
    sc_signal< sc_logic > ap_idle_pp4;
    sc_signal< sc_logic > ap_enable_pp4;
    sc_signal< sc_logic > ap_idle_pp5;
    sc_signal< sc_logic > ap_enable_pp5;
    sc_signal< sc_lv<16> > mul_ln1977_fu_671_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<25> ap_ST_fsm_state1;
    static const sc_lv<25> ap_ST_fsm_state2;
    static const sc_lv<25> ap_ST_fsm_state3;
    static const sc_lv<25> ap_ST_fsm_state4;
    static const sc_lv<25> ap_ST_fsm_pp0_stage0;
    static const sc_lv<25> ap_ST_fsm_state7;
    static const sc_lv<25> ap_ST_fsm_state8;
    static const sc_lv<25> ap_ST_fsm_state9;
    static const sc_lv<25> ap_ST_fsm_pp1_stage0;
    static const sc_lv<25> ap_ST_fsm_state12;
    static const sc_lv<25> ap_ST_fsm_state13;
    static const sc_lv<25> ap_ST_fsm_state14;
    static const sc_lv<25> ap_ST_fsm_pp2_stage0;
    static const sc_lv<25> ap_ST_fsm_state17;
    static const sc_lv<25> ap_ST_fsm_pp3_stage0;
    static const sc_lv<25> ap_ST_fsm_state20;
    static const sc_lv<25> ap_ST_fsm_pp4_stage0;
    static const sc_lv<25> ap_ST_fsm_state23;
    static const sc_lv<25> ap_ST_fsm_pp5_stage0;
    static const sc_lv<25> ap_ST_fsm_state26;
    static const sc_lv<25> ap_ST_fsm_state27;
    static const sc_lv<25> ap_ST_fsm_state28;
    static const sc_lv<25> ap_ST_fsm_state29;
    static const sc_lv<25> ap_ST_fsm_state30;
    static const sc_lv<25> ap_ST_fsm_state31;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<8> ap_const_lv8_8B;
    static const sc_lv<8> ap_const_lv8_9B;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<8> ap_const_lv8_DB;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<64> ap_const_lv64_7740;
    static const sc_lv<16> ap_const_lv16_DB;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<6> ap_const_lv6_37;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<7> ap_const_lv7_37;
    static const sc_lv<15> ap_const_lv15_4B;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<7> ap_const_lv7_57;
    static const sc_lv<7> ap_const_lv7_4B;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<8> ap_const_lv8_77;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<7> ap_const_lv7_42;
    static const sc_lv<7> ap_const_lv7_52;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<16> ap_const_lv16_E2;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<5> ap_const_lv5_4;
    static const sc_lv<32> ap_const_lv32_18;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln2040_fu_803_p2();
    void thread_add_ln2049_1_fu_936_p2();
    void thread_add_ln2049_fu_926_p2();
    void thread_add_ln2052_fu_951_p2();
    void thread_add_ln2058_1_fu_1107_p2();
    void thread_add_ln2058_2_fu_1097_p2();
    void thread_add_ln2058_3_fu_1121_p2();
    void thread_add_ln2058_fu_1076_p2();
    void thread_add_ln2071_1_fu_1157_p2();
    void thread_add_ln2071_2_fu_1167_p2();
    void thread_add_ln2071_fu_1147_p2();
    void thread_add_ln2076_1_fu_1197_p2();
    void thread_add_ln2076_2_fu_1211_p2();
    void thread_add_ln2076_fu_1225_p2();
    void thread_add_ln2081_1_fu_1251_p2();
    void thread_add_ln2081_2_fu_1265_p2();
    void thread_add_ln2081_fu_1279_p2();
    void thread_add_ln2084_fu_1289_p2();
    void thread_add_ln2087_1_fu_1328_p2();
    void thread_add_ln2087_2_fu_1337_p2();
    void thread_add_ln2087_3_fu_1361_p2();
    void thread_add_ln2087_4_fu_1370_p2();
    void thread_add_ln2087_5_fu_1390_p2();
    void thread_add_ln2087_6_fu_1399_p2();
    void thread_add_ln2087_7_fu_1414_p2();
    void thread_add_ln2087_8_fu_1423_p2();
    void thread_add_ln2087_fu_1310_p2();
    void thread_add_ln2088_fu_1479_p2();
    void thread_add_ln54_fu_652_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp2_stage0();
    void thread_ap_CS_fsm_pp3_stage0();
    void thread_ap_CS_fsm_pp4_stage0();
    void thread_ap_CS_fsm_pp5_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp2_stage0();
    void thread_ap_block_pp2_stage0_11001();
    void thread_ap_block_pp2_stage0_subdone();
    void thread_ap_block_pp3_stage0();
    void thread_ap_block_pp3_stage0_11001();
    void thread_ap_block_pp3_stage0_subdone();
    void thread_ap_block_pp4_stage0();
    void thread_ap_block_pp4_stage0_11001();
    void thread_ap_block_pp4_stage0_subdone();
    void thread_ap_block_pp5_stage0();
    void thread_ap_block_pp5_stage0_11001();
    void thread_ap_block_pp5_stage0_subdone();
    void thread_ap_block_state10_pp1_stage0_iter0();
    void thread_ap_block_state11_pp1_stage0_iter1();
    void thread_ap_block_state15_pp2_stage0_iter0();
    void thread_ap_block_state16_pp2_stage0_iter1();
    void thread_ap_block_state18_pp3_stage0_iter0();
    void thread_ap_block_state19_pp3_stage0_iter1();
    void thread_ap_block_state21_pp4_stage0_iter0();
    void thread_ap_block_state22_pp4_stage0_iter1();
    void thread_ap_block_state24_pp5_stage0_iter0();
    void thread_ap_block_state25_pp5_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter0();
    void thread_ap_block_state6_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state5();
    void thread_ap_condition_pp1_exit_iter0_state10();
    void thread_ap_condition_pp2_exit_iter0_state15();
    void thread_ap_condition_pp3_exit_iter0_state18();
    void thread_ap_condition_pp4_exit_iter0_state21();
    void thread_ap_condition_pp5_exit_iter0_state24();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_enable_pp2();
    void thread_ap_enable_pp3();
    void thread_ap_enable_pp4();
    void thread_ap_enable_pp5();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_idle_pp2();
    void thread_ap_idle_pp3();
    void thread_ap_idle_pp4();
    void thread_ap_idle_pp5();
    void thread_ap_phi_mux_loop_0_phi_fu_451_p4();
    void thread_ap_phi_mux_loop_1_phi_fu_474_p4();
    void thread_ap_phi_mux_loop_2_phi_fu_522_p4();
    void thread_ap_phi_mux_loop_4_phi_fu_545_p4();
    void thread_ap_phi_mux_loop_5_phi_fu_557_p4();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_bitNumber_assign_4_fu_1016_p3();
    void thread_bitNumber_assign_fu_849_p3();
    void thread_bytesExpected_1_fu_770_p2();
    void thread_bytesExpected_2_fu_775_p3();
    void thread_bytesExpected_fu_662_p2();
    void thread_challenge_1_fu_896_p3();
    void thread_challenge_2_fu_1064_p3();
    void thread_challenge_fu_724_p3();
    void thread_i_20_fu_628_p2();
    void thread_i_21_fu_824_p2();
    void thread_i_fu_963_p2();
    void thread_icmp_ln1940_fu_622_p2();
    void thread_icmp_ln1942_1_fu_738_p2();
    void thread_icmp_ln1942_fu_732_p2();
    void thread_icmp_ln1951_fu_818_p2();
    void thread_icmp_ln1953_fu_904_p2();
    void thread_icmp_ln1968_fu_612_p2();
    void thread_icmp_ln1979_fu_782_p2();
    void thread_icmp_ln2039_fu_787_p2();
    void thread_icmp_ln2048_fu_910_p2();
    void thread_icmp_ln2052_fu_957_p2();
    void thread_icmp_ln2057_fu_1081_p2();
    void thread_icmp_ln2070_fu_1131_p2();
    void thread_icmp_ln2075_fu_1181_p2();
    void thread_icmp_ln2080_fu_1235_p2();
    void thread_icmp_ln2084_fu_1304_p2();
    void thread_inputShareSize_1_fu_750_p2();
    void thread_inputShareSize_2_fu_756_p3();
    void thread_loop_32_fu_916_p2();
    void thread_loop_33_fu_1087_p2();
    void thread_loop_34_fu_1137_p2();
    void thread_loop_35_fu_1187_p2();
    void thread_loop_36_fu_1241_p2();
    void thread_loop_37_fu_1438_p2();
    void thread_loop_fu_793_p2();
    void thread_lshr_ln54_10_fu_886_p2();
    void thread_lshr_ln54_11_fu_1034_p2();
    void thread_lshr_ln54_12_fu_1054_p2();
    void thread_lshr_ln54_8_fu_714_p2();
    void thread_lshr_ln54_9_fu_866_p2();
    void thread_lshr_ln54_fu_694_p2();
    void thread_mul_ln1977_fu_671_p1();
    void thread_mul_ln1977_fu_671_p10();
    void thread_mul_ln1977_fu_671_p2();
    void thread_or_ln1942_fu_744_p2();
    void thread_or_ln2087_1_fu_1380_p2();
    void thread_or_ln2087_2_fu_1404_p2();
    void thread_or_ln2087_fu_1351_p2();
    void thread_sext_ln2076_fu_1203_p1();
    void thread_sext_ln2081_fu_1257_p1();
    void thread_shl_ln_fu_677_p3();
    void thread_sigBytesLen_cast1_fu_608_p1();
    void thread_sigBytes_address0();
    void thread_sigBytes_address1();
    void thread_sigBytes_ce0();
    void thread_sigBytes_ce1();
    void thread_sig_0_challengeBits_address0();
    void thread_sig_0_challengeBits_ce0();
    void thread_sig_0_challengeBits_d0();
    void thread_sig_0_challengeBits_we0();
    void thread_sig_0_proofs_commun_address0();
    void thread_sig_0_proofs_commun_ce0();
    void thread_sig_0_proofs_commun_d0();
    void thread_sig_0_proofs_commun_we0();
    void thread_sig_0_proofs_inputS_address0();
    void thread_sig_0_proofs_inputS_ce0();
    void thread_sig_0_proofs_inputS_d0();
    void thread_sig_0_proofs_inputS_we0();
    void thread_sig_0_proofs_seed1_address0();
    void thread_sig_0_proofs_seed1_ce0();
    void thread_sig_0_proofs_seed1_d0();
    void thread_sig_0_proofs_seed1_we0();
    void thread_sig_0_proofs_seed2_address0();
    void thread_sig_0_proofs_seed2_ce0();
    void thread_sig_0_proofs_seed2_d0();
    void thread_sig_0_proofs_seed2_we0();
    void thread_sig_0_proofs_view3C_address0();
    void thread_sig_0_proofs_view3C_ce0();
    void thread_sig_0_proofs_view3C_d0();
    void thread_sig_0_proofs_view3C_we0();
    void thread_sig_0_salt_address0();
    void thread_sig_0_salt_ce0();
    void thread_sig_0_salt_d0();
    void thread_sig_0_salt_we0();
    void thread_tmp_19_fu_988_p3();
    void thread_tmp_20_fu_1000_p3();
    void thread_tmp_21_fu_1463_p3();
    void thread_tmp_64_fu_1316_p3();
    void thread_tmp_fu_1294_p4();
    void thread_trunc_ln1976_fu_764_p1();
    void thread_trunc_ln2086_fu_1347_p1();
    void thread_trunc_ln386_3_fu_700_p1();
    void thread_trunc_ln386_4_fu_830_p1();
    void thread_trunc_ln386_5_fu_872_p1();
    void thread_trunc_ln386_6_fu_1012_p1();
    void thread_trunc_ln386_7_fu_1040_p1();
    void thread_trunc_ln386_fu_634_p1();
    void thread_trunc_ln54_10_fu_892_p1();
    void thread_trunc_ln54_11_fu_1060_p1();
    void thread_trunc_ln54_6_fu_834_p4();
    void thread_trunc_ln54_8_fu_969_p4();
    void thread_trunc_ln54_9_fu_720_p1();
    void thread_trunc_ln54_fu_618_p1();
    void thread_trunc_ln_fu_638_p4();
    void thread_xor_ln54_2_fu_704_p2();
    void thread_xor_ln54_3_fu_856_p2();
    void thread_xor_ln54_4_fu_876_p2();
    void thread_xor_ln54_5_fu_1024_p2();
    void thread_xor_ln54_6_fu_1044_p2();
    void thread_xor_ln54_fu_684_p2();
    void thread_zext_ln1977_fu_767_p1();
    void thread_zext_ln2040_1_fu_799_p1();
    void thread_zext_ln2040_2_fu_808_p1();
    void thread_zext_ln2040_fu_813_p1();
    void thread_zext_ln2049_1_fu_922_p1();
    void thread_zext_ln2049_2_fu_932_p1();
    void thread_zext_ln2049_3_fu_941_p1();
    void thread_zext_ln2049_fu_946_p1();
    void thread_zext_ln2052_fu_984_p1();
    void thread_zext_ln2058_1_fu_1093_p1();
    void thread_zext_ln2058_2_fu_1103_p1();
    void thread_zext_ln2058_3_fu_1112_p1();
    void thread_zext_ln2058_4_fu_1117_p1();
    void thread_zext_ln2058_5_fu_1126_p1();
    void thread_zext_ln2058_fu_996_p1();
    void thread_zext_ln2071_1_fu_1153_p1();
    void thread_zext_ln2071_2_fu_1163_p1();
    void thread_zext_ln2071_3_fu_1172_p1();
    void thread_zext_ln2071_4_fu_1177_p1();
    void thread_zext_ln2071_fu_1143_p1();
    void thread_zext_ln2076_1_fu_1193_p1();
    void thread_zext_ln2076_2_fu_1207_p1();
    void thread_zext_ln2076_3_fu_1216_p1();
    void thread_zext_ln2076_4_fu_1230_p1();
    void thread_zext_ln2076_fu_1221_p1();
    void thread_zext_ln2081_1_fu_1247_p1();
    void thread_zext_ln2081_2_fu_1261_p1();
    void thread_zext_ln2081_3_fu_1270_p1();
    void thread_zext_ln2081_4_fu_1284_p1();
    void thread_zext_ln2081_fu_1275_p1();
    void thread_zext_ln2087_10_fu_1419_p1();
    void thread_zext_ln2087_11_fu_1448_p1();
    void thread_zext_ln2087_12_fu_1470_p1();
    void thread_zext_ln2087_1_fu_1333_p1();
    void thread_zext_ln2087_2_fu_1342_p1();
    void thread_zext_ln2087_3_fu_1357_p1();
    void thread_zext_ln2087_4_fu_1366_p1();
    void thread_zext_ln2087_5_fu_1375_p1();
    void thread_zext_ln2087_6_fu_1386_p1();
    void thread_zext_ln2087_7_fu_1395_p1();
    void thread_zext_ln2087_8_fu_1444_p1();
    void thread_zext_ln2087_9_fu_1410_p1();
    void thread_zext_ln2087_fu_1324_p1();
    void thread_zext_ln2088_fu_1475_p1();
    void thread_zext_ln382_fu_1008_p1();
    void thread_zext_ln386_fu_1072_p1();
    void thread_zext_ln54_12_fu_844_p1();
    void thread_zext_ln54_13_fu_657_p1();
    void thread_zext_ln54_14_fu_979_p1();
    void thread_zext_ln54_15_fu_690_p1();
    void thread_zext_ln54_16_fu_710_p1();
    void thread_zext_ln54_17_fu_862_p1();
    void thread_zext_ln54_18_fu_882_p1();
    void thread_zext_ln54_19_fu_1030_p1();
    void thread_zext_ln54_20_fu_1050_p1();
    void thread_zext_ln54_fu_648_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
