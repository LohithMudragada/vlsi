// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module KeccakWidth1600_Spon_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        instance_state_address0,
        instance_state_ce0,
        instance_state_we0,
        instance_state_d0,
        instance_state_q0,
        instance_byteIOIndex_read,
        instance_squeezing_read,
        data_address0,
        data_ce0,
        data_we0,
        data_d0,
        data_offset,
        data_offset1
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] instance_state_address0;
output   instance_state_ce0;
output   instance_state_we0;
output  [7:0] instance_state_d0;
input  [7:0] instance_state_q0;
input  [31:0] instance_byteIOIndex_read;
input  [31:0] instance_squeezing_read;
output  [14:0] data_address0;
output   data_ce0;
output   data_we0;
output  [7:0] data_d0;
input  [7:0] data_offset;
input  [1:0] data_offset1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] instance_state_address0;
reg instance_state_ce0;
reg instance_state_we0;
reg[7:0] instance_state_d0;
reg[14:0] data_address0;
reg data_ce0;
reg data_we0;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [15:0] tmp_36_cast_fu_318_p3;
reg   [15:0] tmp_36_cast_reg_614;
wire   [0:0] icmp_ln297_fu_326_p2;
reg   [0:0] icmp_ln297_reg_620;
reg   [7:0] instance_state_addr_reg_624;
wire   [7:0] instance_state_addr_4_reg_629;
wire    ap_CS_fsm_state3;
reg   [33:0] i_35_load_reg_642;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln303_fu_375_p2;
reg   [0:0] icmp_ln303_reg_651;
wire   [0:0] icmp_ln302_fu_369_p2;
wire   [63:0] zext_ln304_fu_403_p1;
wire   [0:0] icmp_ln303_1_fu_391_p2;
wire   [7:0] loop_52_fu_434_p2;
reg   [7:0] loop_52_reg_669;
wire    ap_CS_fsm_state10;
wire   [6:0] trunc_ln394_2_fu_445_p1;
reg   [6:0] trunc_ln394_2_reg_674;
wire   [0:0] icmp_ln393_2_fu_428_p2;
wire   [63:0] add_ln310_fu_449_p2;
wire   [63:0] j_17_fu_455_p2;
wire   [5:0] partialBlock_fu_497_p2;
reg   [5:0] partialBlock_reg_694;
wire    ap_CS_fsm_state12;
wire    grp_KeccakP1600_Permute_s_fu_276_ap_ready;
wire    grp_KeccakP1600_Permute_s_fu_276_ap_done;
reg    ap_block_state12_on_subcall_done;
wire   [31:0] partialBlock_16_fu_524_p3;
reg   [31:0] partialBlock_16_reg_699;
wire    ap_CS_fsm_state13;
wire   [63:0] zext_ln323_fu_532_p1;
reg   [63:0] zext_ln323_reg_705;
wire   [33:0] i_fu_540_p2;
reg   [33:0] i_reg_710;
wire   [31:0] loop_fu_550_p2;
reg   [31:0] loop_reg_718;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln393_fu_545_p2;
wire   [6:0] trunc_ln394_fu_567_p1;
reg   [6:0] trunc_ln394_reg_728;
wire   [31:0] add_ln330_fu_571_p2;
wire   [63:0] add_ln329_fu_603_p2;
wire    ap_CS_fsm_state16;
wire    grp_KeccakP1600_Permute_s_fu_276_ap_start;
wire    grp_KeccakP1600_Permute_s_fu_276_ap_idle;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_276_state_address0;
wire    grp_KeccakP1600_Permute_s_fu_276_state_ce0;
wire    grp_KeccakP1600_Permute_s_fu_276_state_we0;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_276_state_d0;
reg   [31:0] ap_phi_mux_instance_byteIOIndex_67_phi_fu_165_p4;
reg   [31:0] instance_byteIOIndex_67_reg_162;
wire    ap_CS_fsm_state6;
reg    ap_block_state6_on_subcall_done;
reg   [31:0] instance_byteIOIndex_1_reg_173;
reg   [63:0] curData_0_idx_reg_184;
reg   [63:0] j_0_reg_196;
reg   [63:0] curData_1_rec_reg_206;
reg   [7:0] loop_0_i_reg_218;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state9;
reg   [31:0] offset_assign_2_reg_229;
reg   [31:0] loop_0_i1_reg_242;
wire    ap_CS_fsm_state15;
reg   [31:0] instance_byteIOIndex_3_reg_253;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln304_fu_407_p2;
reg   [63:0] curData_1_rec_pn_reg_266;
reg    grp_KeccakP1600_Permute_s_fu_276_ap_start_reg;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln149_fu_332_p1;
wire   [63:0] zext_ln394_2_fu_440_p1;
wire   [63:0] zext_ln394_12_fu_489_p1;
wire   [63:0] zext_ln394_fu_562_p1;
wire   [63:0] zext_ln394_10_fu_598_p1;
reg   [33:0] i_35_fu_74;
wire   [33:0] sub_ln312_fu_417_p2;
wire    ap_CS_fsm_state2;
wire   [7:0] xor_ln149_fu_337_p2;
wire    ap_CS_fsm_state4;
wire   [7:0] xor_ln149_2_fu_344_p2;
wire   [9:0] tmp_fu_294_p3;
wire   [10:0] zext_ln394_8_fu_302_p1;
wire   [10:0] zext_ln394_7_fu_290_p1;
wire   [10:0] sub_ln394_fu_306_p2;
wire   [10:0] zext_ln394_6_fu_286_p1;
wire   [10:0] add_ln394_7_fu_312_p2;
wire   [28:0] tmp_68_fu_359_p4;
wire   [29:0] trunc_ln303_fu_381_p1;
wire   [29:0] add_ln303_fu_385_p2;
wire   [33:0] j_fu_397_p2;
wire   [33:0] trunc_ln312_fu_413_p1;
wire   [6:0] trunc_ln304_fu_461_p1;
wire   [6:0] trunc_ln302_3_fu_470_p1;
wire   [6:0] add_ln394_5_fu_465_p2;
wire   [6:0] add_ln394_4_fu_474_p2;
wire   [15:0] zext_ln394_11_fu_480_p1;
wire   [15:0] add_ln394_9_fu_484_p2;
wire   [5:0] trunc_ln320_fu_494_p1;
wire   [31:0] zext_ln320_fu_503_p1;
wire   [31:0] add_ln321_fu_506_p2;
wire   [0:0] icmp_ln321_fu_512_p2;
wire   [31:0] partialBlock_15_fu_518_p2;
wire   [33:0] zext_ln323_3_fu_536_p1;
wire   [31:0] add_ln394_fu_556_p2;
wire   [6:0] trunc_ln302_fu_580_p1;
wire   [6:0] add_ln394_3_fu_584_p2;
wire   [15:0] zext_ln394_9_fu_589_p1;
wire   [15:0] add_ln394_8_fu_593_p2;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_KeccakP1600_Permute_s_fu_276_ap_start_reg = 1'b0;
end

KeccakP1600_Permute_s grp_KeccakP1600_Permute_s_fu_276(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakP1600_Permute_s_fu_276_ap_start),
    .ap_done(grp_KeccakP1600_Permute_s_fu_276_ap_done),
    .ap_idle(grp_KeccakP1600_Permute_s_fu_276_ap_idle),
    .ap_ready(grp_KeccakP1600_Permute_s_fu_276_ap_ready),
    .state_address0(grp_KeccakP1600_Permute_s_fu_276_state_address0),
    .state_ce0(grp_KeccakP1600_Permute_s_fu_276_state_ce0),
    .state_we0(grp_KeccakP1600_Permute_s_fu_276_state_we0),
    .state_d0(grp_KeccakP1600_Permute_s_fu_276_state_d0),
    .state_q0(instance_state_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_KeccakP1600_Permute_s_fu_276_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state5) | ((icmp_ln303_1_fu_391_p2 == 1'd1) & (icmp_ln302_fu_369_p2 == 1'd1) & (icmp_ln303_fu_375_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)) | ((icmp_ln304_fu_407_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
            grp_KeccakP1600_Permute_s_fu_276_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakP1600_Permute_s_fu_276_ap_ready == 1'b1)) begin
            grp_KeccakP1600_Permute_s_fu_276_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        curData_0_idx_reg_184 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        curData_0_idx_reg_184 <= add_ln329_fu_603_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln304_fu_407_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        curData_1_rec_pn_reg_266 <= curData_1_rec_reg_206;
    end else if (((icmp_ln393_fu_545_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        curData_1_rec_pn_reg_266 <= zext_ln323_reg_705;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln393_2_fu_428_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        curData_1_rec_reg_206 <= add_ln310_fu_449_p2;
    end else if (((icmp_ln303_1_fu_391_p2 == 1'd0) & (icmp_ln302_fu_369_p2 == 1'd1) & (icmp_ln303_fu_375_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        curData_1_rec_reg_206 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln393_fu_545_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        i_35_fu_74 <= i_reg_710;
    end else if (((icmp_ln304_fu_407_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        i_35_fu_74 <= sub_ln312_fu_417_p2;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        i_35_fu_74 <= 34'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        instance_byteIOIndex_1_reg_173 <= ap_phi_mux_instance_byteIOIndex_67_phi_fu_165_p4;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        instance_byteIOIndex_1_reg_173 <= instance_byteIOIndex_3_reg_253;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln304_fu_407_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        instance_byteIOIndex_3_reg_253 <= 32'd168;
    end else if (((icmp_ln393_fu_545_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        instance_byteIOIndex_3_reg_253 <= add_ln330_fu_571_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln297_reg_620 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        instance_byteIOIndex_67_reg_162 <= 32'd0;
    end else if (((icmp_ln297_fu_326_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        instance_byteIOIndex_67_reg_162 <= instance_byteIOIndex_read;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln393_2_fu_428_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        j_0_reg_196 <= j_17_fu_455_p2;
    end else if (((icmp_ln303_1_fu_391_p2 == 1'd0) & (icmp_ln302_fu_369_p2 == 1'd1) & (icmp_ln303_fu_375_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        j_0_reg_196 <= zext_ln304_fu_403_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        loop_0_i1_reg_242 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        loop_0_i1_reg_242 <= loop_reg_718;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_KeccakP1600_Permute_s_fu_276_ap_done == 1'b1))) begin
        loop_0_i_reg_218 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        loop_0_i_reg_218 <= loop_52_reg_669;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln303_fu_375_p2 == 1'd0) & (icmp_ln302_fu_369_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        offset_assign_2_reg_229 <= instance_byteIOIndex_1_reg_173;
    end else if (((icmp_ln303_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state12) & (1'b0 == ap_block_state12_on_subcall_done))) begin
        offset_assign_2_reg_229 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_35_load_reg_642 <= i_35_fu_74;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i_reg_710 <= i_fu_540_p2;
        partialBlock_16_reg_699 <= partialBlock_16_fu_524_p3;
        zext_ln323_reg_705[31 : 0] <= zext_ln323_fu_532_p1[31 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        icmp_ln297_reg_620 <= icmp_ln297_fu_326_p2;
        tmp_36_cast_reg_614[15 : 5] <= tmp_36_cast_fu_318_p3[15 : 5];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln302_fu_369_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        icmp_ln303_reg_651 <= icmp_ln303_fu_375_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln297_fu_326_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        instance_state_addr_reg_624 <= zext_ln149_fu_332_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        loop_52_reg_669 <= loop_52_fu_434_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        loop_reg_718 <= loop_fu_550_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (1'b0 == ap_block_state12_on_subcall_done))) begin
        partialBlock_reg_694 <= partialBlock_fu_497_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln393_2_fu_428_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        trunc_ln394_2_reg_674 <= trunc_ln394_2_fu_445_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln393_fu_545_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        trunc_ln394_reg_728 <= trunc_ln394_fu_567_p1;
    end
end

always @ (*) begin
    if ((((icmp_ln302_fu_369_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln297_reg_620 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_phi_mux_instance_byteIOIndex_67_phi_fu_165_p4 = 32'd0;
    end else begin
        ap_phi_mux_instance_byteIOIndex_67_phi_fu_165_p4 = instance_byteIOIndex_67_reg_162;
    end
end

always @ (*) begin
    if (((icmp_ln302_fu_369_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        data_address0 = zext_ln394_10_fu_598_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        data_address0 = zext_ln394_12_fu_489_p1;
    end else begin
        data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11))) begin
        data_ce0 = 1'b1;
    end else begin
        data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11))) begin
        data_we0 = 1'b1;
    end else begin
        data_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        instance_state_address0 = zext_ln394_fu_562_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        instance_state_address0 = zext_ln394_2_fu_440_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        instance_state_address0 = instance_state_addr_4_reg_629;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        instance_state_address0 = 64'd167;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        instance_state_address0 = instance_state_addr_reg_624;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        instance_state_address0 = zext_ln149_fu_332_p1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_620 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_address0 = grp_KeccakP1600_Permute_s_fu_276_state_address0;
    end else begin
        instance_state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        instance_state_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_620 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_ce0 = grp_KeccakP1600_Permute_s_fu_276_state_ce0;
    end else begin
        instance_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        instance_state_d0 = xor_ln149_2_fu_344_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        instance_state_d0 = xor_ln149_fu_337_p2;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_620 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_d0 = grp_KeccakP1600_Permute_s_fu_276_state_d0;
    end else begin
        instance_state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        instance_state_we0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_620 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_we0 = grp_KeccakP1600_Permute_s_fu_276_state_we0;
    end else begin
        instance_state_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln297_fu_326_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((icmp_ln297_fu_326_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln302_fu_369_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln303_1_fu_391_p2 == 1'd0) & (icmp_ln302_fu_369_p2 == 1'd1) & (icmp_ln303_fu_375_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln304_fu_407_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_KeccakP1600_Permute_s_fu_276_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln393_2_fu_428_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (1'b0 == ap_block_state12_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((icmp_ln393_fu_545_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln303_fu_385_p2 = (30'd168 + trunc_ln303_fu_381_p1);

assign add_ln310_fu_449_p2 = (curData_1_rec_reg_206 + 64'd168);

assign add_ln321_fu_506_p2 = (zext_ln320_fu_503_p1 + offset_assign_2_reg_229);

assign add_ln329_fu_603_p2 = (curData_1_rec_pn_reg_266 + curData_0_idx_reg_184);

assign add_ln330_fu_571_p2 = (offset_assign_2_reg_229 + partialBlock_16_reg_699);

assign add_ln394_3_fu_584_p2 = (trunc_ln394_reg_728 + trunc_ln302_fu_580_p1);

assign add_ln394_4_fu_474_p2 = (trunc_ln302_3_fu_470_p1 + add_ln394_5_fu_465_p2);

assign add_ln394_5_fu_465_p2 = (trunc_ln394_2_reg_674 + trunc_ln304_fu_461_p1);

assign add_ln394_7_fu_312_p2 = (sub_ln394_fu_306_p2 + zext_ln394_6_fu_286_p1);

assign add_ln394_8_fu_593_p2 = (tmp_36_cast_reg_614 + zext_ln394_9_fu_589_p1);

assign add_ln394_9_fu_484_p2 = (tmp_36_cast_reg_614 + zext_ln394_11_fu_480_p1);

assign add_ln394_fu_556_p2 = (offset_assign_2_reg_229 + loop_0_i1_reg_242);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state12_on_subcall_done = ((icmp_ln303_reg_651 == 1'd1) & (grp_KeccakP1600_Permute_s_fu_276_ap_done == 1'b0));
end

always @ (*) begin
    ap_block_state6_on_subcall_done = ((icmp_ln297_reg_620 == 1'd1) & (grp_KeccakP1600_Permute_s_fu_276_ap_done == 1'b0));
end

assign data_d0 = instance_state_q0;

assign grp_KeccakP1600_Permute_s_fu_276_ap_start = grp_KeccakP1600_Permute_s_fu_276_ap_start_reg;

assign i_fu_540_p2 = (zext_ln323_3_fu_536_p1 + i_35_load_reg_642);

assign icmp_ln297_fu_326_p2 = ((instance_squeezing_read == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln302_fu_369_p2 = ((tmp_68_fu_359_p4 == 29'd0) ? 1'b1 : 1'b0);

assign icmp_ln303_1_fu_391_p2 = ((add_ln303_fu_385_p2 > 30'd32) ? 1'b1 : 1'b0);

assign icmp_ln303_fu_375_p2 = ((instance_byteIOIndex_1_reg_173 == 32'd168) ? 1'b1 : 1'b0);

assign icmp_ln304_fu_407_p2 = ((j_0_reg_196 < 64'd168) ? 1'b1 : 1'b0);

assign icmp_ln321_fu_512_p2 = ((add_ln321_fu_506_p2 > 32'd168) ? 1'b1 : 1'b0);

assign icmp_ln393_2_fu_428_p2 = ((loop_0_i_reg_218 == 8'd168) ? 1'b1 : 1'b0);

assign icmp_ln393_fu_545_p2 = ((loop_0_i1_reg_242 == partialBlock_16_reg_699) ? 1'b1 : 1'b0);

assign instance_state_addr_4_reg_629 = 64'd167;

assign j_17_fu_455_p2 = ($signed(j_0_reg_196) + $signed(64'd18446744073709551448));

assign j_fu_397_p2 = (34'd32 - i_35_fu_74);

assign loop_52_fu_434_p2 = (loop_0_i_reg_218 + 8'd1);

assign loop_fu_550_p2 = (loop_0_i1_reg_242 + 32'd1);

assign partialBlock_15_fu_518_p2 = (32'd168 - offset_assign_2_reg_229);

assign partialBlock_16_fu_524_p3 = ((icmp_ln321_fu_512_p2[0:0] === 1'b1) ? partialBlock_15_fu_518_p2 : zext_ln320_fu_503_p1);

assign partialBlock_fu_497_p2 = ($signed(6'd32) - $signed(trunc_ln320_fu_494_p1));

assign sub_ln312_fu_417_p2 = (34'd32 - trunc_ln312_fu_413_p1);

assign sub_ln394_fu_306_p2 = (zext_ln394_8_fu_302_p1 - zext_ln394_7_fu_290_p1);

assign tmp_36_cast_fu_318_p3 = {{add_ln394_7_fu_312_p2}, {5'd0}};

assign tmp_68_fu_359_p4 = {{i_35_fu_74[33:5]}};

assign tmp_fu_294_p3 = {{data_offset}, {2'd0}};

assign trunc_ln302_3_fu_470_p1 = curData_0_idx_reg_184[6:0];

assign trunc_ln302_fu_580_p1 = curData_0_idx_reg_184[6:0];

assign trunc_ln303_fu_381_p1 = i_35_fu_74[29:0];

assign trunc_ln304_fu_461_p1 = curData_1_rec_reg_206[6:0];

assign trunc_ln312_fu_413_p1 = j_0_reg_196[33:0];

assign trunc_ln320_fu_494_p1 = i_35_load_reg_642[5:0];

assign trunc_ln394_2_fu_445_p1 = loop_0_i_reg_218[6:0];

assign trunc_ln394_fu_567_p1 = loop_0_i1_reg_242[6:0];

assign xor_ln149_2_fu_344_p2 = (instance_state_q0 ^ 8'd128);

assign xor_ln149_fu_337_p2 = (instance_state_q0 ^ 8'd1);

assign zext_ln149_fu_332_p1 = instance_byteIOIndex_read;

assign zext_ln304_fu_403_p1 = j_fu_397_p2;

assign zext_ln320_fu_503_p1 = partialBlock_reg_694;

assign zext_ln323_3_fu_536_p1 = partialBlock_16_fu_524_p3;

assign zext_ln323_fu_532_p1 = partialBlock_16_fu_524_p3;

assign zext_ln394_10_fu_598_p1 = add_ln394_8_fu_593_p2;

assign zext_ln394_11_fu_480_p1 = add_ln394_4_fu_474_p2;

assign zext_ln394_12_fu_489_p1 = add_ln394_9_fu_484_p2;

assign zext_ln394_2_fu_440_p1 = loop_0_i_reg_218;

assign zext_ln394_6_fu_286_p1 = data_offset1;

assign zext_ln394_7_fu_290_p1 = data_offset;

assign zext_ln394_8_fu_302_p1 = tmp_fu_294_p3;

assign zext_ln394_9_fu_589_p1 = add_ln394_3_fu_584_p2;

assign zext_ln394_fu_562_p1 = add_ln394_fu_556_p2;

always @ (posedge ap_clk) begin
    tmp_36_cast_reg_614[4:0] <= 5'b00000;
    zext_ln323_reg_705[63:32] <= 32'b00000000000000000000000000000000;
end

endmodule //KeccakWidth1600_Spon_1
