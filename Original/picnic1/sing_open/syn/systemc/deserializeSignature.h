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
    sc_signal< sc_lv<64> > sigBytesLen_cast1_fu_578_p1;
    sc_signal< sc_lv<64> > sigBytesLen_cast1_reg_1463;
    sc_signal< sc_lv<17> > trunc_ln54_fu_588_p1;
    sc_signal< sc_lv<17> > trunc_ln54_reg_1471;
    sc_signal< sc_lv<1> > icmp_ln1968_fu_582_p2;
    sc_signal< sc_lv<8> > i_10_fu_598_p2;
    sc_signal< sc_lv<8> > i_10_reg_1486;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > trunc_ln386_fu_604_p1;
    sc_signal< sc_lv<2> > trunc_ln386_reg_1491;
    sc_signal< sc_lv<1> > icmp_ln1940_fu_592_p2;
    sc_signal< sc_lv<64> > bytesExpected_fu_632_p2;
    sc_signal< sc_lv<64> > bytesExpected_reg_1501;
    sc_signal< sc_lv<16> > mul_ln1977_fu_641_p2;
    sc_signal< sc_lv<16> > mul_ln1977_reg_1507;
    sc_signal< sc_lv<64> > inputShareSize_2_fu_726_p3;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > loop_fu_763_p2;
    sc_signal< sc_lv<6> > loop_reg_1523;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln2039_fu_757_p2;
    sc_signal< sc_lv<8> > i_11_fu_794_p2;
    sc_signal< sc_lv<8> > i_11_reg_1536;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<2> > trunc_ln386_4_fu_800_p1;
    sc_signal< sc_lv<2> > trunc_ln386_4_reg_1541;
    sc_signal< sc_lv<1> > icmp_ln1951_fu_788_p2;
    sc_signal< sc_lv<6> > loop_28_fu_886_p2;
    sc_signal< sc_lv<6> > loop_28_reg_1557;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > icmp_ln2048_fu_880_p2;
    sc_signal< sc_lv<15> > add_ln2052_fu_921_p2;
    sc_signal< sc_lv<15> > add_ln2052_reg_1567;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<13> > zext_ln2058_fu_935_p1;
    sc_signal< sc_lv<13> > zext_ln2058_reg_1572;
    sc_signal< sc_lv<14> > zext_ln2052_fu_947_p1;
    sc_signal< sc_lv<14> > zext_ln2052_reg_1578;
    sc_signal< sc_lv<8> > i_fu_957_p2;
    sc_signal< sc_lv<8> > i_reg_1586;
    sc_signal< sc_lv<1> > icmp_ln2052_fu_951_p2;
    sc_signal< sc_lv<3> > zext_ln386_fu_1038_p1;
    sc_signal< sc_lv<3> > zext_ln386_reg_1596;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<17> > add_ln2058_fu_1046_p2;
    sc_signal< sc_lv<17> > add_ln2058_reg_1601;
    sc_signal< sc_lv<6> > loop_29_fu_1057_p2;
    sc_signal< sc_lv<6> > loop_29_reg_1612;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<14> > add_ln2058_3_fu_1067_p2;
    sc_signal< sc_lv<14> > add_ln2058_3_reg_1617;
    sc_signal< sc_lv<1> > icmp_ln2057_fu_1051_p2;
    sc_signal< sc_lv<7> > loop_30_fu_1106_p2;
    sc_signal< sc_lv<7> > loop_30_reg_1630;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<15> > add_ln2071_fu_1116_p2;
    sc_signal< sc_lv<15> > add_ln2071_reg_1635;
    sc_signal< sc_lv<1> > icmp_ln2070_fu_1100_p2;
    sc_signal< sc_lv<5> > loop_31_fu_1156_p2;
    sc_signal< sc_lv<5> > loop_31_reg_1648;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<1> > icmp_ln2075_fu_1150_p2;
    sc_signal< sc_lv<5> > loop_32_fu_1210_p2;
    sc_signal< sc_lv<5> > loop_32_reg_1661;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<13> > add_ln2081_fu_1220_p2;
    sc_signal< sc_lv<13> > add_ln2081_reg_1666;
    sc_signal< sc_lv<1> > icmp_ln2080_fu_1204_p2;
    sc_signal< sc_lv<16> > add_ln2087_fu_1274_p2;
    sc_signal< sc_lv<16> > add_ln2087_reg_1679;
    sc_signal< sc_lv<1> > icmp_ln2084_fu_1268_p2;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<1> > tmp_47_fu_1284_p3;
    sc_signal< sc_lv<17> > add_ln2087_6_fu_1367_p2;
    sc_signal< sc_lv<17> > add_ln2087_6_reg_1700;
    sc_signal< sc_lv<17> > add_ln2087_8_fu_1391_p2;
    sc_signal< sc_lv<17> > add_ln2087_8_reg_1705;
    sc_signal< sc_lv<2> > trunc_ln2087_4_reg_1710;
    sc_signal< sc_lv<5> > loop_33_fu_1406_p2;
    sc_signal< sc_lv<5> > loop_33_reg_1715;
    sc_signal< sc_lv<8> > sigBytes_load_6_reg_1720;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<8> > sigBytes_load_7_reg_1725;
    sc_signal< sc_lv<16> > add_ln2088_fu_1447_p2;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<64> > inputShareSize_reg_396;
    sc_signal< sc_lv<8> > round_assign_reg_408;
    sc_signal< sc_lv<6> > loop_0_reg_419;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln1979_fu_752_p2;
    sc_signal< sc_lv<8> > round_assign_1_reg_431;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln1953_fu_874_p2;
    sc_signal< sc_lv<6> > loop_1_reg_442;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<16> > p_01_rec_reg_454;
    sc_signal< sc_lv<8> > round_assign_2_reg_466;
    sc_signal< sc_lv<15> > phi_mul_reg_478;
    sc_signal< sc_lv<6> > loop_2_reg_490;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<7> > loop_3_reg_501;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<5> > loop_4_reg_512;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<5> > loop_5_reg_524;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<5> > loop_6_reg_535;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<8> > p_sum5_pn_reg_546;
    sc_signal< sc_lv<1> > p_0_reg_559;
    sc_signal< sc_lv<64> > zext_ln54_13_fu_627_p1;
    sc_signal< sc_lv<64> > zext_ln2040_2_fu_778_p1;
    sc_signal< sc_lv<64> > zext_ln2040_fu_783_p1;
    sc_signal< sc_lv<64> > zext_ln54_12_fu_814_p1;
    sc_signal< sc_lv<64> > zext_ln2049_3_fu_911_p1;
    sc_signal< sc_lv<64> > zext_ln2049_fu_916_p1;
    sc_signal< sc_lv<64> > zext_ln54_14_fu_973_p1;
    sc_signal< sc_lv<64> > zext_ln2058_3_fu_1091_p1;
    sc_signal< sc_lv<64> > zext_ln2058_5_fu_1096_p1;
    sc_signal< sc_lv<64> > zext_ln2071_3_fu_1141_p1;
    sc_signal< sc_lv<64> > zext_ln2071_4_fu_1146_p1;
    sc_signal< sc_lv<64> > zext_ln2076_3_fu_1185_p1;
    sc_signal< sc_lv<64> > zext_ln2076_4_fu_1199_p1;
    sc_signal< sc_lv<64> > zext_ln2081_3_fu_1248_p1;
    sc_signal< sc_lv<64> > zext_ln2081_4_fu_1280_p1;
    sc_signal< sc_lv<64> > zext_ln2087_2_fu_1310_p1;
    sc_signal< sc_lv<64> > zext_ln2087_5_fu_1343_p1;
    sc_signal< sc_lv<64> > zext_ln2087_8_fu_1412_p1;
    sc_signal< sc_lv<64> > zext_ln2087_11_fu_1416_p1;
    sc_signal< sc_lv<64> > zext_ln2087_12_fu_1438_p1;
    sc_signal< sc_lv<6> > trunc_ln_fu_608_p4;
    sc_signal< sc_lv<17> > zext_ln54_fu_618_p1;
    sc_signal< sc_lv<17> > add_ln54_fu_622_p2;
    sc_signal< sc_lv<7> > mul_ln1977_fu_641_p1;
    sc_signal< sc_lv<3> > shl_ln_fu_647_p3;
    sc_signal< sc_lv<3> > xor_ln54_fu_654_p2;
    sc_signal< sc_lv<8> > zext_ln54_15_fu_660_p1;
    sc_signal< sc_lv<8> > lshr_ln54_fu_664_p2;
    sc_signal< sc_lv<3> > xor_ln54_2_fu_674_p2;
    sc_signal< sc_lv<8> > zext_ln54_16_fu_680_p1;
    sc_signal< sc_lv<8> > lshr_ln54_8_fu_684_p2;
    sc_signal< sc_lv<1> > trunc_ln386_3_fu_670_p1;
    sc_signal< sc_lv<1> > trunc_ln54_9_fu_690_p1;
    sc_signal< sc_lv<2> > challenge_fu_694_p3;
    sc_signal< sc_lv<1> > icmp_ln1942_fu_702_p2;
    sc_signal< sc_lv<1> > icmp_ln1942_1_fu_708_p2;
    sc_signal< sc_lv<1> > or_ln1942_fu_714_p2;
    sc_signal< sc_lv<64> > inputShareSize_1_fu_720_p2;
    sc_signal< sc_lv<64> > zext_ln1977_fu_737_p1;
    sc_signal< sc_lv<1> > trunc_ln1976_fu_734_p1;
    sc_signal< sc_lv<64> > bytesExpected_1_fu_740_p2;
    sc_signal< sc_lv<64> > bytesExpected_2_fu_745_p3;
    sc_signal< sc_lv<17> > zext_ln2040_1_fu_769_p1;
    sc_signal< sc_lv<17> > add_ln2040_fu_773_p2;
    sc_signal< sc_lv<6> > trunc_ln54_6_fu_804_p4;
    sc_signal< sc_lv<3> > bitNumber_assign_fu_819_p3;
    sc_signal< sc_lv<3> > xor_ln54_3_fu_826_p2;
    sc_signal< sc_lv<8> > zext_ln54_17_fu_832_p1;
    sc_signal< sc_lv<8> > lshr_ln54_9_fu_836_p2;
    sc_signal< sc_lv<3> > xor_ln54_4_fu_846_p2;
    sc_signal< sc_lv<8> > zext_ln54_18_fu_852_p1;
    sc_signal< sc_lv<8> > lshr_ln54_10_fu_856_p2;
    sc_signal< sc_lv<1> > trunc_ln386_5_fu_842_p1;
    sc_signal< sc_lv<1> > trunc_ln54_10_fu_862_p1;
    sc_signal< sc_lv<2> > challenge_1_fu_866_p3;
    sc_signal< sc_lv<7> > zext_ln2049_1_fu_892_p1;
    sc_signal< sc_lv<7> > add_ln2049_fu_896_p2;
    sc_signal< sc_lv<17> > zext_ln2049_2_fu_902_p1;
    sc_signal< sc_lv<17> > add_ln2049_1_fu_906_p2;
    sc_signal< sc_lv<12> > tmp_s_fu_927_p3;
    sc_signal< sc_lv<13> > tmp_21_fu_939_p3;
    sc_signal< sc_lv<6> > trunc_ln54_8_fu_963_p4;
    sc_signal< sc_lv<2> > trunc_ln386_6_fu_978_p1;
    sc_signal< sc_lv<3> > bitNumber_assign_3_fu_982_p3;
    sc_signal< sc_lv<3> > xor_ln54_5_fu_990_p2;
    sc_signal< sc_lv<8> > zext_ln54_19_fu_996_p1;
    sc_signal< sc_lv<8> > lshr_ln54_11_fu_1000_p2;
    sc_signal< sc_lv<3> > xor_ln54_6_fu_1010_p2;
    sc_signal< sc_lv<8> > zext_ln54_20_fu_1016_p1;
    sc_signal< sc_lv<8> > lshr_ln54_12_fu_1020_p2;
    sc_signal< sc_lv<1> > trunc_ln386_7_fu_1006_p1;
    sc_signal< sc_lv<1> > trunc_ln54_11_fu_1026_p1;
    sc_signal< sc_lv<2> > challenge_2_fu_1030_p3;
    sc_signal< sc_lv<17> > zext_ln2052_1_fu_1042_p1;
    sc_signal< sc_lv<14> > zext_ln2058_4_fu_1063_p1;
    sc_signal< sc_lv<7> > zext_ln2058_1_fu_1072_p1;
    sc_signal< sc_lv<7> > add_ln2058_2_fu_1076_p2;
    sc_signal< sc_lv<17> > zext_ln2058_2_fu_1082_p1;
    sc_signal< sc_lv<17> > add_ln2058_1_fu_1086_p2;
    sc_signal< sc_lv<15> > zext_ln2071_fu_1112_p1;
    sc_signal< sc_lv<8> > zext_ln2071_1_fu_1122_p1;
    sc_signal< sc_lv<8> > add_ln2071_1_fu_1126_p2;
    sc_signal< sc_lv<17> > zext_ln2071_2_fu_1132_p1;
    sc_signal< sc_lv<17> > add_ln2071_2_fu_1136_p2;
    sc_signal< sc_lv<7> > zext_ln2076_1_fu_1162_p1;
    sc_signal< sc_lv<7> > add_ln2076_1_fu_1166_p2;
    sc_signal< sc_lv<8> > sext_ln2076_fu_1172_p1;
    sc_signal< sc_lv<17> > zext_ln2076_2_fu_1176_p1;
    sc_signal< sc_lv<17> > add_ln2076_2_fu_1180_p2;
    sc_signal< sc_lv<13> > zext_ln2076_fu_1190_p1;
    sc_signal< sc_lv<13> > add_ln2076_fu_1194_p2;
    sc_signal< sc_lv<13> > zext_ln2081_fu_1216_p1;
    sc_signal< sc_lv<7> > zext_ln2081_1_fu_1225_p1;
    sc_signal< sc_lv<7> > add_ln2081_1_fu_1229_p2;
    sc_signal< sc_lv<8> > sext_ln2081_fu_1235_p1;
    sc_signal< sc_lv<17> > zext_ln2081_2_fu_1239_p1;
    sc_signal< sc_lv<17> > add_ln2081_2_fu_1243_p2;
    sc_signal< sc_lv<3> > add_ln2084_fu_1253_p2;
    sc_signal< sc_lv<2> > tmp_fu_1258_p4;
    sc_signal< sc_lv<16> > zext_ln2087_fu_1292_p1;
    sc_signal< sc_lv<16> > add_ln2087_1_fu_1296_p2;
    sc_signal< sc_lv<17> > zext_ln2087_1_fu_1301_p1;
    sc_signal< sc_lv<17> > add_ln2087_2_fu_1305_p2;
    sc_signal< sc_lv<4> > trunc_ln2086_fu_1315_p1;
    sc_signal< sc_lv<4> > or_ln2087_fu_1319_p2;
    sc_signal< sc_lv<16> > zext_ln2087_3_fu_1325_p1;
    sc_signal< sc_lv<16> > add_ln2087_3_fu_1329_p2;
    sc_signal< sc_lv<17> > zext_ln2087_4_fu_1334_p1;
    sc_signal< sc_lv<17> > add_ln2087_4_fu_1338_p2;
    sc_signal< sc_lv<4> > or_ln2087_1_fu_1348_p2;
    sc_signal< sc_lv<16> > zext_ln2087_6_fu_1354_p1;
    sc_signal< sc_lv<16> > add_ln2087_5_fu_1358_p2;
    sc_signal< sc_lv<17> > zext_ln2087_7_fu_1363_p1;
    sc_signal< sc_lv<4> > or_ln2087_2_fu_1372_p2;
    sc_signal< sc_lv<16> > zext_ln2087_9_fu_1378_p1;
    sc_signal< sc_lv<16> > add_ln2087_7_fu_1382_p2;
    sc_signal< sc_lv<17> > zext_ln2087_10_fu_1387_p1;
    sc_signal< sc_lv<10> > tmp_22_fu_1431_p3;
    sc_signal< sc_lv<16> > zext_ln2088_fu_1443_p1;
    sc_signal< sc_lv<1> > ap_return_preg;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<25> > ap_NS_fsm;
    sc_signal< sc_lv<16> > mul_ln1977_fu_641_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<25> ap_ST_fsm_state1;
    static const sc_lv<25> ap_ST_fsm_state2;
    static const sc_lv<25> ap_ST_fsm_state3;
    static const sc_lv<25> ap_ST_fsm_state4;
    static const sc_lv<25> ap_ST_fsm_state5;
    static const sc_lv<25> ap_ST_fsm_state6;
    static const sc_lv<25> ap_ST_fsm_state7;
    static const sc_lv<25> ap_ST_fsm_state8;
    static const sc_lv<25> ap_ST_fsm_state9;
    static const sc_lv<25> ap_ST_fsm_state10;
    static const sc_lv<25> ap_ST_fsm_state11;
    static const sc_lv<25> ap_ST_fsm_state12;
    static const sc_lv<25> ap_ST_fsm_state13;
    static const sc_lv<25> ap_ST_fsm_state14;
    static const sc_lv<25> ap_ST_fsm_state15;
    static const sc_lv<25> ap_ST_fsm_state16;
    static const sc_lv<25> ap_ST_fsm_state17;
    static const sc_lv<25> ap_ST_fsm_state18;
    static const sc_lv<25> ap_ST_fsm_state19;
    static const sc_lv<25> ap_ST_fsm_state20;
    static const sc_lv<25> ap_ST_fsm_state21;
    static const sc_lv<25> ap_ST_fsm_state22;
    static const sc_lv<25> ap_ST_fsm_state23;
    static const sc_lv<25> ap_ST_fsm_state24;
    static const sc_lv<25> ap_ST_fsm_state25;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_13;
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
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln2040_fu_773_p2();
    void thread_add_ln2049_1_fu_906_p2();
    void thread_add_ln2049_fu_896_p2();
    void thread_add_ln2052_fu_921_p2();
    void thread_add_ln2058_1_fu_1086_p2();
    void thread_add_ln2058_2_fu_1076_p2();
    void thread_add_ln2058_3_fu_1067_p2();
    void thread_add_ln2058_fu_1046_p2();
    void thread_add_ln2071_1_fu_1126_p2();
    void thread_add_ln2071_2_fu_1136_p2();
    void thread_add_ln2071_fu_1116_p2();
    void thread_add_ln2076_1_fu_1166_p2();
    void thread_add_ln2076_2_fu_1180_p2();
    void thread_add_ln2076_fu_1194_p2();
    void thread_add_ln2081_1_fu_1229_p2();
    void thread_add_ln2081_2_fu_1243_p2();
    void thread_add_ln2081_fu_1220_p2();
    void thread_add_ln2084_fu_1253_p2();
    void thread_add_ln2087_1_fu_1296_p2();
    void thread_add_ln2087_2_fu_1305_p2();
    void thread_add_ln2087_3_fu_1329_p2();
    void thread_add_ln2087_4_fu_1338_p2();
    void thread_add_ln2087_5_fu_1358_p2();
    void thread_add_ln2087_6_fu_1367_p2();
    void thread_add_ln2087_7_fu_1382_p2();
    void thread_add_ln2087_8_fu_1391_p2();
    void thread_add_ln2087_fu_1274_p2();
    void thread_add_ln2088_fu_1447_p2();
    void thread_add_ln54_fu_622_p2();
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
    void thread_ap_CS_fsm_state25();
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
    void thread_bitNumber_assign_3_fu_982_p3();
    void thread_bitNumber_assign_fu_819_p3();
    void thread_bytesExpected_1_fu_740_p2();
    void thread_bytesExpected_2_fu_745_p3();
    void thread_bytesExpected_fu_632_p2();
    void thread_challenge_1_fu_866_p3();
    void thread_challenge_2_fu_1030_p3();
    void thread_challenge_fu_694_p3();
    void thread_i_10_fu_598_p2();
    void thread_i_11_fu_794_p2();
    void thread_i_fu_957_p2();
    void thread_icmp_ln1940_fu_592_p2();
    void thread_icmp_ln1942_1_fu_708_p2();
    void thread_icmp_ln1942_fu_702_p2();
    void thread_icmp_ln1951_fu_788_p2();
    void thread_icmp_ln1953_fu_874_p2();
    void thread_icmp_ln1968_fu_582_p2();
    void thread_icmp_ln1979_fu_752_p2();
    void thread_icmp_ln2039_fu_757_p2();
    void thread_icmp_ln2048_fu_880_p2();
    void thread_icmp_ln2052_fu_951_p2();
    void thread_icmp_ln2057_fu_1051_p2();
    void thread_icmp_ln2070_fu_1100_p2();
    void thread_icmp_ln2075_fu_1150_p2();
    void thread_icmp_ln2080_fu_1204_p2();
    void thread_icmp_ln2084_fu_1268_p2();
    void thread_inputShareSize_1_fu_720_p2();
    void thread_inputShareSize_2_fu_726_p3();
    void thread_loop_28_fu_886_p2();
    void thread_loop_29_fu_1057_p2();
    void thread_loop_30_fu_1106_p2();
    void thread_loop_31_fu_1156_p2();
    void thread_loop_32_fu_1210_p2();
    void thread_loop_33_fu_1406_p2();
    void thread_loop_fu_763_p2();
    void thread_lshr_ln54_10_fu_856_p2();
    void thread_lshr_ln54_11_fu_1000_p2();
    void thread_lshr_ln54_12_fu_1020_p2();
    void thread_lshr_ln54_8_fu_684_p2();
    void thread_lshr_ln54_9_fu_836_p2();
    void thread_lshr_ln54_fu_664_p2();
    void thread_mul_ln1977_fu_641_p1();
    void thread_mul_ln1977_fu_641_p10();
    void thread_mul_ln1977_fu_641_p2();
    void thread_or_ln1942_fu_714_p2();
    void thread_or_ln2087_1_fu_1348_p2();
    void thread_or_ln2087_2_fu_1372_p2();
    void thread_or_ln2087_fu_1319_p2();
    void thread_sext_ln2076_fu_1172_p1();
    void thread_sext_ln2081_fu_1235_p1();
    void thread_shl_ln_fu_647_p3();
    void thread_sigBytesLen_cast1_fu_578_p1();
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
    void thread_tmp_21_fu_939_p3();
    void thread_tmp_22_fu_1431_p3();
    void thread_tmp_47_fu_1284_p3();
    void thread_tmp_fu_1258_p4();
    void thread_tmp_s_fu_927_p3();
    void thread_trunc_ln1976_fu_734_p1();
    void thread_trunc_ln2086_fu_1315_p1();
    void thread_trunc_ln386_3_fu_670_p1();
    void thread_trunc_ln386_4_fu_800_p1();
    void thread_trunc_ln386_5_fu_842_p1();
    void thread_trunc_ln386_6_fu_978_p1();
    void thread_trunc_ln386_7_fu_1006_p1();
    void thread_trunc_ln386_fu_604_p1();
    void thread_trunc_ln54_10_fu_862_p1();
    void thread_trunc_ln54_11_fu_1026_p1();
    void thread_trunc_ln54_6_fu_804_p4();
    void thread_trunc_ln54_8_fu_963_p4();
    void thread_trunc_ln54_9_fu_690_p1();
    void thread_trunc_ln54_fu_588_p1();
    void thread_trunc_ln_fu_608_p4();
    void thread_xor_ln54_2_fu_674_p2();
    void thread_xor_ln54_3_fu_826_p2();
    void thread_xor_ln54_4_fu_846_p2();
    void thread_xor_ln54_5_fu_990_p2();
    void thread_xor_ln54_6_fu_1010_p2();
    void thread_xor_ln54_fu_654_p2();
    void thread_zext_ln1977_fu_737_p1();
    void thread_zext_ln2040_1_fu_769_p1();
    void thread_zext_ln2040_2_fu_778_p1();
    void thread_zext_ln2040_fu_783_p1();
    void thread_zext_ln2049_1_fu_892_p1();
    void thread_zext_ln2049_2_fu_902_p1();
    void thread_zext_ln2049_3_fu_911_p1();
    void thread_zext_ln2049_fu_916_p1();
    void thread_zext_ln2052_1_fu_1042_p1();
    void thread_zext_ln2052_fu_947_p1();
    void thread_zext_ln2058_1_fu_1072_p1();
    void thread_zext_ln2058_2_fu_1082_p1();
    void thread_zext_ln2058_3_fu_1091_p1();
    void thread_zext_ln2058_4_fu_1063_p1();
    void thread_zext_ln2058_5_fu_1096_p1();
    void thread_zext_ln2058_fu_935_p1();
    void thread_zext_ln2071_1_fu_1122_p1();
    void thread_zext_ln2071_2_fu_1132_p1();
    void thread_zext_ln2071_3_fu_1141_p1();
    void thread_zext_ln2071_4_fu_1146_p1();
    void thread_zext_ln2071_fu_1112_p1();
    void thread_zext_ln2076_1_fu_1162_p1();
    void thread_zext_ln2076_2_fu_1176_p1();
    void thread_zext_ln2076_3_fu_1185_p1();
    void thread_zext_ln2076_4_fu_1199_p1();
    void thread_zext_ln2076_fu_1190_p1();
    void thread_zext_ln2081_1_fu_1225_p1();
    void thread_zext_ln2081_2_fu_1239_p1();
    void thread_zext_ln2081_3_fu_1248_p1();
    void thread_zext_ln2081_4_fu_1280_p1();
    void thread_zext_ln2081_fu_1216_p1();
    void thread_zext_ln2087_10_fu_1387_p1();
    void thread_zext_ln2087_11_fu_1416_p1();
    void thread_zext_ln2087_12_fu_1438_p1();
    void thread_zext_ln2087_1_fu_1301_p1();
    void thread_zext_ln2087_2_fu_1310_p1();
    void thread_zext_ln2087_3_fu_1325_p1();
    void thread_zext_ln2087_4_fu_1334_p1();
    void thread_zext_ln2087_5_fu_1343_p1();
    void thread_zext_ln2087_6_fu_1354_p1();
    void thread_zext_ln2087_7_fu_1363_p1();
    void thread_zext_ln2087_8_fu_1412_p1();
    void thread_zext_ln2087_9_fu_1378_p1();
    void thread_zext_ln2087_fu_1292_p1();
    void thread_zext_ln2088_fu_1443_p1();
    void thread_zext_ln386_fu_1038_p1();
    void thread_zext_ln54_12_fu_814_p1();
    void thread_zext_ln54_13_fu_627_p1();
    void thread_zext_ln54_14_fu_973_p1();
    void thread_zext_ln54_15_fu_660_p1();
    void thread_zext_ln54_16_fu_680_p1();
    void thread_zext_ln54_17_fu_832_p1();
    void thread_zext_ln54_18_fu_852_p1();
    void thread_zext_ln54_19_fu_996_p1();
    void thread_zext_ln54_20_fu_1016_p1();
    void thread_zext_ln54_fu_618_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
