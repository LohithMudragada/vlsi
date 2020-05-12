// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module KeccakWidth1600_Spon_2 (
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
        dataByteLen
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
output  [6:0] data_address0;
output   data_ce0;
output   data_we0;
output  [7:0] data_d0;
input  [7:0] dataByteLen;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] instance_state_address0;
reg instance_state_ce0;
reg instance_state_we0;
reg[7:0] instance_state_d0;
reg[6:0] data_address0;
reg data_ce0;
reg data_we0;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [8:0] dataByteLen_cast_fu_255_p1;
reg  signed [8:0] dataByteLen_cast_reg_520;
wire   [33:0] dataByteLen_cast1_ca_fu_259_p1;
reg   [33:0] dataByteLen_cast1_ca_reg_527;
wire   [0:0] icmp_ln297_fu_263_p2;
reg   [0:0] icmp_ln297_reg_533;
reg   [7:0] instance_state_addr_reg_537;
wire   [7:0] instance_state_addr_7_reg_542;
wire    ap_CS_fsm_state3;
wire   [29:0] zext_ln303_fu_288_p1;
reg   [29:0] zext_ln303_reg_555;
wire    ap_CS_fsm_state6;
wire    grp_KeccakP1600_Permute_s_fu_245_ap_ready;
wire    grp_KeccakP1600_Permute_s_fu_245_ap_done;
reg    ap_block_state6_on_subcall_done;
wire   [31:0] zext_ln320_fu_291_p1;
reg   [31:0] zext_ln320_reg_560;
reg   [33:0] i_29_load_reg_565;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln303_fu_307_p2;
reg   [0:0] icmp_ln303_reg_574;
wire   [0:0] icmp_ln302_fu_302_p2;
wire  signed [63:0] sext_ln304_fu_333_p1;
wire   [0:0] icmp_ln303_1_fu_323_p2;
wire   [7:0] loop_46_fu_367_p2;
reg   [7:0] loop_46_reg_592;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln393_2_fu_361_p2;
wire   [63:0] add_ln310_fu_378_p2;
wire   [63:0] j_11_fu_384_p2;
wire   [31:0] partialBlock_fu_418_p2;
reg   [31:0] partialBlock_reg_612;
wire    ap_CS_fsm_state12;
reg    ap_block_state12_on_subcall_done;
wire   [31:0] partialBlock_9_fu_440_p3;
reg   [31:0] partialBlock_9_reg_618;
wire    ap_CS_fsm_state13;
wire   [63:0] zext_ln323_fu_447_p1;
reg   [63:0] zext_ln323_reg_624;
wire   [33:0] i_fu_455_p2;
reg   [33:0] i_reg_629;
wire   [31:0] loop_fu_465_p2;
reg   [31:0] loop_reg_637;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln393_fu_460_p2;
wire   [7:0] trunc_ln394_fu_482_p1;
reg   [7:0] trunc_ln394_reg_647;
wire   [31:0] add_ln330_fu_486_p2;
wire   [63:0] add_ln329_fu_509_p2;
wire    ap_CS_fsm_state16;
wire    grp_KeccakP1600_Permute_s_fu_245_ap_start;
wire    grp_KeccakP1600_Permute_s_fu_245_ap_idle;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_245_state_address0;
wire    grp_KeccakP1600_Permute_s_fu_245_state_ce0;
wire    grp_KeccakP1600_Permute_s_fu_245_state_we0;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_245_state_d0;
reg   [31:0] ap_phi_mux_instance_byteIOIndex_phi_fu_133_p4;
reg   [31:0] instance_byteIOIndex_reg_130;
reg   [31:0] instance_byteIOIndex_1_reg_141;
reg   [63:0] curData_0_idx_reg_152;
reg   [63:0] j_0_reg_164;
reg   [63:0] curData_1_rec_reg_174;
reg   [7:0] loop_0_i_reg_186;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state9;
reg   [31:0] offset_assign_3_reg_198;
reg   [31:0] loop_0_i3_reg_211;
wire    ap_CS_fsm_state15;
reg   [31:0] instance_byteIOIndex_3_reg_222;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln304_fu_337_p2;
reg   [63:0] curData_1_rec_pn_reg_235;
reg    grp_KeccakP1600_Permute_s_fu_245_ap_start_reg;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln149_fu_269_p1;
wire   [63:0] zext_ln394_3_fu_373_p1;
wire   [63:0] zext_ln394_5_fu_410_p1;
wire   [63:0] zext_ln394_fu_477_p1;
wire   [63:0] zext_ln394_4_fu_504_p1;
reg   [33:0] i_29_fu_48;
wire   [33:0] sub_ln312_fu_350_p2;
wire    ap_CS_fsm_state2;
wire   [7:0] xor_ln149_fu_274_p2;
wire    ap_CS_fsm_state4;
wire   [7:0] xor_ln149_3_fu_281_p2;
wire   [29:0] trunc_ln303_fu_313_p1;
wire   [29:0] add_ln303_fu_317_p2;
wire   [33:0] j_fu_328_p2;
wire   [33:0] zext_ln312_fu_343_p1;
wire   [33:0] trunc_ln312_fu_346_p1;
wire   [7:0] trunc_ln304_fu_390_p1;
wire   [7:0] add_ln394_5_fu_394_p2;
wire   [7:0] trunc_ln302_2_fu_400_p1;
wire   [7:0] add_ln394_6_fu_404_p2;
wire   [31:0] trunc_ln320_fu_415_p1;
wire   [31:0] add_ln321_fu_423_p2;
wire   [0:0] icmp_ln321_fu_428_p2;
wire   [31:0] partialBlock_8_fu_434_p2;
wire   [33:0] zext_ln323_2_fu_451_p1;
wire   [31:0] add_ln394_fu_471_p2;
wire   [7:0] trunc_ln302_fu_495_p1;
wire   [7:0] add_ln394_4_fu_499_p2;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_KeccakP1600_Permute_s_fu_245_ap_start_reg = 1'b0;
end

KeccakP1600_Permute_s grp_KeccakP1600_Permute_s_fu_245(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakP1600_Permute_s_fu_245_ap_start),
    .ap_done(grp_KeccakP1600_Permute_s_fu_245_ap_done),
    .ap_idle(grp_KeccakP1600_Permute_s_fu_245_ap_idle),
    .ap_ready(grp_KeccakP1600_Permute_s_fu_245_ap_ready),
    .state_address0(grp_KeccakP1600_Permute_s_fu_245_state_address0),
    .state_ce0(grp_KeccakP1600_Permute_s_fu_245_state_ce0),
    .state_we0(grp_KeccakP1600_Permute_s_fu_245_state_we0),
    .state_d0(grp_KeccakP1600_Permute_s_fu_245_state_d0),
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
        grp_KeccakP1600_Permute_s_fu_245_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln304_fu_337_p2 == 1'd0)) | ((icmp_ln303_1_fu_323_p2 == 1'd1) & (icmp_ln302_fu_302_p2 == 1'd1) & (icmp_ln303_fu_307_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)))) begin
            grp_KeccakP1600_Permute_s_fu_245_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakP1600_Permute_s_fu_245_ap_ready == 1'b1)) begin
            grp_KeccakP1600_Permute_s_fu_245_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        curData_0_idx_reg_152 <= add_ln329_fu_509_p2;
    end else if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        curData_0_idx_reg_152 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln304_fu_337_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        curData_1_rec_pn_reg_235 <= curData_1_rec_reg_174;
    end else if (((icmp_ln393_fu_460_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        curData_1_rec_pn_reg_235 <= zext_ln323_reg_624;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln393_2_fu_361_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        curData_1_rec_reg_174 <= add_ln310_fu_378_p2;
    end else if (((icmp_ln302_fu_302_p2 == 1'd1) & (icmp_ln303_fu_307_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (icmp_ln303_1_fu_323_p2 == 1'd0))) begin
        curData_1_rec_reg_174 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln393_fu_460_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        i_29_fu_48 <= i_reg_629;
    end else if (((icmp_ln304_fu_337_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        i_29_fu_48 <= sub_ln312_fu_350_p2;
    end else if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        i_29_fu_48 <= 34'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        instance_byteIOIndex_1_reg_141 <= instance_byteIOIndex_3_reg_222;
    end else if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        instance_byteIOIndex_1_reg_141 <= ap_phi_mux_instance_byteIOIndex_phi_fu_133_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln304_fu_337_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        instance_byteIOIndex_3_reg_222 <= 32'd168;
    end else if (((icmp_ln393_fu_460_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        instance_byteIOIndex_3_reg_222 <= add_ln330_fu_486_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln297_fu_263_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        instance_byteIOIndex_reg_130 <= instance_byteIOIndex_read;
    end else if (((1'b0 == ap_block_state6_on_subcall_done) & (icmp_ln297_reg_533 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        instance_byteIOIndex_reg_130 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln393_2_fu_361_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        j_0_reg_164 <= j_11_fu_384_p2;
    end else if (((icmp_ln302_fu_302_p2 == 1'd1) & (icmp_ln303_fu_307_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (icmp_ln303_1_fu_323_p2 == 1'd0))) begin
        j_0_reg_164 <= sext_ln304_fu_333_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        loop_0_i3_reg_211 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        loop_0_i3_reg_211 <= loop_reg_637;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_KeccakP1600_Permute_s_fu_245_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        loop_0_i_reg_186 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        loop_0_i_reg_186 <= loop_46_reg_592;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln302_fu_302_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (icmp_ln303_fu_307_p2 == 1'd0))) begin
        offset_assign_3_reg_198 <= instance_byteIOIndex_1_reg_141;
    end else if (((icmp_ln303_reg_574 == 1'd1) & (1'b1 == ap_CS_fsm_state12) & (1'b0 == ap_block_state12_on_subcall_done))) begin
        offset_assign_3_reg_198 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dataByteLen_cast1_ca_reg_527[8 : 0] <= dataByteLen_cast1_ca_fu_259_p1[8 : 0];
        dataByteLen_cast_reg_520 <= dataByteLen_cast_fu_255_p1;
        icmp_ln297_reg_533 <= icmp_ln297_fu_263_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_29_load_reg_565 <= i_29_fu_48;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i_reg_629 <= i_fu_455_p2;
        partialBlock_9_reg_618 <= partialBlock_9_fu_440_p3;
        zext_ln323_reg_624[31 : 0] <= zext_ln323_fu_447_p1[31 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln302_fu_302_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        icmp_ln303_reg_574 <= icmp_ln303_fu_307_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln297_fu_263_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        instance_state_addr_reg_537 <= zext_ln149_fu_269_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        loop_46_reg_592 <= loop_46_fu_367_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        loop_reg_637 <= loop_fu_465_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (1'b0 == ap_block_state12_on_subcall_done))) begin
        partialBlock_reg_612 <= partialBlock_fu_418_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln393_fu_460_p2 == 1'd0))) begin
        trunc_ln394_reg_647 <= trunc_ln394_fu_482_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        zext_ln303_reg_555[8 : 0] <= zext_ln303_fu_288_p1[8 : 0];
        zext_ln320_reg_560[8 : 0] <= zext_ln320_fu_291_p1[8 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state7) & (icmp_ln302_fu_302_p2 == 1'd0)))) begin
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
    if (((icmp_ln297_reg_533 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_phi_mux_instance_byteIOIndex_phi_fu_133_p4 = 32'd0;
    end else begin
        ap_phi_mux_instance_byteIOIndex_phi_fu_133_p4 = instance_byteIOIndex_reg_130;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln302_fu_302_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        data_address0 = zext_ln394_4_fu_504_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        data_address0 = zext_ln394_5_fu_410_p1;
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
        instance_state_address0 = zext_ln394_fu_477_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        instance_state_address0 = zext_ln394_3_fu_373_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        instance_state_address0 = instance_state_addr_7_reg_542;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        instance_state_address0 = 64'd167;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        instance_state_address0 = instance_state_addr_reg_537;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        instance_state_address0 = zext_ln149_fu_269_p1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_533 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_574 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_address0 = grp_KeccakP1600_Permute_s_fu_245_state_address0;
    end else begin
        instance_state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        instance_state_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_533 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_574 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_ce0 = grp_KeccakP1600_Permute_s_fu_245_state_ce0;
    end else begin
        instance_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        instance_state_d0 = xor_ln149_3_fu_281_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        instance_state_d0 = xor_ln149_fu_274_p2;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_533 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_574 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_d0 = grp_KeccakP1600_Permute_s_fu_245_state_d0;
    end else begin
        instance_state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        instance_state_we0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_533 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_574 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_we0 = grp_KeccakP1600_Permute_s_fu_245_state_we0;
    end else begin
        instance_state_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln297_fu_263_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((icmp_ln297_fu_263_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln302_fu_302_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln302_fu_302_p2 == 1'd1) & (icmp_ln303_fu_307_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (icmp_ln303_1_fu_323_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln304_fu_337_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((grp_KeccakP1600_Permute_s_fu_245_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln393_2_fu_361_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((icmp_ln393_fu_460_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
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

assign add_ln303_fu_317_p2 = (30'd168 + trunc_ln303_fu_313_p1);

assign add_ln310_fu_378_p2 = (curData_1_rec_reg_174 + 64'd168);

assign add_ln321_fu_423_p2 = (offset_assign_3_reg_198 + partialBlock_reg_612);

assign add_ln329_fu_509_p2 = (curData_1_rec_pn_reg_235 + curData_0_idx_reg_152);

assign add_ln330_fu_486_p2 = (offset_assign_3_reg_198 + partialBlock_9_reg_618);

assign add_ln394_4_fu_499_p2 = (trunc_ln302_fu_495_p1 + trunc_ln394_reg_647);

assign add_ln394_5_fu_394_p2 = (trunc_ln304_fu_390_p1 + loop_0_i_reg_186);

assign add_ln394_6_fu_404_p2 = (add_ln394_5_fu_394_p2 + trunc_ln302_2_fu_400_p1);

assign add_ln394_fu_471_p2 = (loop_0_i3_reg_211 + offset_assign_3_reg_198);

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
    ap_block_state12_on_subcall_done = ((icmp_ln303_reg_574 == 1'd1) & (grp_KeccakP1600_Permute_s_fu_245_ap_done == 1'b0));
end

always @ (*) begin
    ap_block_state6_on_subcall_done = ((icmp_ln297_reg_533 == 1'd1) & (grp_KeccakP1600_Permute_s_fu_245_ap_done == 1'b0));
end

assign dataByteLen_cast1_ca_fu_259_p1 = $unsigned(dataByteLen_cast_fu_255_p1);

assign dataByteLen_cast_fu_255_p1 = $signed(dataByteLen);

assign data_d0 = instance_state_q0;

assign grp_KeccakP1600_Permute_s_fu_245_ap_start = grp_KeccakP1600_Permute_s_fu_245_ap_start_reg;

assign i_fu_455_p2 = (i_29_load_reg_565 + zext_ln323_2_fu_451_p1);

assign icmp_ln297_fu_263_p2 = ((instance_squeezing_read == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln302_fu_302_p2 = ((i_29_fu_48 < dataByteLen_cast1_ca_reg_527) ? 1'b1 : 1'b0);

assign icmp_ln303_1_fu_323_p2 = ((add_ln303_fu_317_p2 > zext_ln303_reg_555) ? 1'b1 : 1'b0);

assign icmp_ln303_fu_307_p2 = ((instance_byteIOIndex_1_reg_141 == 32'd168) ? 1'b1 : 1'b0);

assign icmp_ln304_fu_337_p2 = ((j_0_reg_164 < 64'd168) ? 1'b1 : 1'b0);

assign icmp_ln321_fu_428_p2 = ((add_ln321_fu_423_p2 > 32'd168) ? 1'b1 : 1'b0);

assign icmp_ln393_2_fu_361_p2 = ((loop_0_i_reg_186 == 8'd168) ? 1'b1 : 1'b0);

assign icmp_ln393_fu_460_p2 = ((loop_0_i3_reg_211 == partialBlock_9_reg_618) ? 1'b1 : 1'b0);

assign instance_state_addr_7_reg_542 = 64'd167;

assign j_11_fu_384_p2 = ($signed(j_0_reg_164) + $signed(64'd18446744073709551448));

assign j_fu_328_p2 = (dataByteLen_cast1_ca_reg_527 - i_29_fu_48);

assign loop_46_fu_367_p2 = (loop_0_i_reg_186 + 8'd1);

assign loop_fu_465_p2 = (loop_0_i3_reg_211 + 32'd1);

assign partialBlock_8_fu_434_p2 = (32'd168 - offset_assign_3_reg_198);

assign partialBlock_9_fu_440_p3 = ((icmp_ln321_fu_428_p2[0:0] === 1'b1) ? partialBlock_8_fu_434_p2 : partialBlock_reg_612);

assign partialBlock_fu_418_p2 = (zext_ln320_reg_560 - trunc_ln320_fu_415_p1);

assign sext_ln304_fu_333_p1 = $signed(j_fu_328_p2);

assign sub_ln312_fu_350_p2 = (zext_ln312_fu_343_p1 - trunc_ln312_fu_346_p1);

assign trunc_ln302_2_fu_400_p1 = curData_0_idx_reg_152[7:0];

assign trunc_ln302_fu_495_p1 = curData_0_idx_reg_152[7:0];

assign trunc_ln303_fu_313_p1 = i_29_fu_48[29:0];

assign trunc_ln304_fu_390_p1 = curData_1_rec_reg_174[7:0];

assign trunc_ln312_fu_346_p1 = j_0_reg_164[33:0];

assign trunc_ln320_fu_415_p1 = i_29_load_reg_565[31:0];

assign trunc_ln394_fu_482_p1 = loop_0_i3_reg_211[7:0];

assign xor_ln149_3_fu_281_p2 = (instance_state_q0 ^ 8'd128);

assign xor_ln149_fu_274_p2 = (instance_state_q0 ^ 8'd1);

assign zext_ln149_fu_269_p1 = instance_byteIOIndex_read;

assign zext_ln303_fu_288_p1 = $unsigned(dataByteLen_cast_reg_520);

assign zext_ln312_fu_343_p1 = $unsigned(dataByteLen_cast_reg_520);

assign zext_ln320_fu_291_p1 = $unsigned(dataByteLen_cast_reg_520);

assign zext_ln323_2_fu_451_p1 = partialBlock_9_fu_440_p3;

assign zext_ln323_fu_447_p1 = partialBlock_9_fu_440_p3;

assign zext_ln394_3_fu_373_p1 = loop_0_i_reg_186;

assign zext_ln394_4_fu_504_p1 = add_ln394_4_fu_499_p2;

assign zext_ln394_5_fu_410_p1 = add_ln394_6_fu_404_p2;

assign zext_ln394_fu_477_p1 = add_ln394_fu_471_p2;

always @ (posedge ap_clk) begin
    dataByteLen_cast1_ca_reg_527[33:9] <= 25'b0000000000000000000000000;
    zext_ln303_reg_555[29:9] <= 21'b000000000000000000000;
    zext_ln320_reg_560[31:9] <= 23'b00000000000000000000000;
    zext_ln323_reg_624[63:32] <= 32'b00000000000000000000000000000000;
end

endmodule //KeccakWidth1600_Spon_2
