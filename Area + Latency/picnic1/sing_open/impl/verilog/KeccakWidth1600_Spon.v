// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module KeccakWidth1600_Spon (
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
        data_0_address0,
        data_0_ce0,
        data_0_we0,
        data_0_d0,
        data_offset1,
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
output  [8:0] data_0_address0;
output   data_0_ce0;
output   data_0_we0;
output  [7:0] data_0_d0;
input  [0:0] data_offset1;
input  [7:0] dataByteLen;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] instance_state_address0;
reg instance_state_ce0;
reg instance_state_we0;
reg[7:0] instance_state_d0;
reg[8:0] data_0_address0;
reg data_0_ce0;
reg data_0_we0;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [8:0] dataByteLen_cast_fu_268_p1;
reg  signed [8:0] dataByteLen_cast_reg_562;
wire   [33:0] zext_ln394_13_fu_272_p1;
reg   [33:0] zext_ln394_13_reg_569;
wire   [9:0] select_ln394_fu_276_p3;
reg   [9:0] select_ln394_reg_575;
wire   [0:0] icmp_ln297_fu_284_p2;
reg   [0:0] icmp_ln297_reg_581;
reg   [7:0] instance_state_addr_reg_585;
wire   [7:0] instance_state_addr_1_reg_590;
wire    ap_CS_fsm_state3;
wire   [29:0] zext_ln303_fu_309_p1;
reg   [29:0] zext_ln303_reg_603;
wire    ap_CS_fsm_state6;
wire    grp_KeccakP1600_Permute_s_fu_258_ap_ready;
wire    grp_KeccakP1600_Permute_s_fu_258_ap_done;
reg    ap_block_state6_on_subcall_done;
wire   [31:0] zext_ln320_fu_312_p1;
reg   [31:0] zext_ln320_reg_608;
reg   [33:0] i_36_load_reg_613;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln303_fu_328_p2;
reg   [0:0] icmp_ln303_reg_622;
wire   [0:0] icmp_ln302_fu_323_p2;
wire  signed [63:0] sext_ln304_fu_354_p1;
wire   [0:0] icmp_ln303_1_fu_344_p2;
wire   [7:0] loop_53_fu_388_p2;
reg   [7:0] loop_53_reg_640;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln393_1_fu_382_p2;
wire   [9:0] add_ln394_11_fu_427_p2;
reg   [9:0] add_ln394_11_reg_650;
wire   [63:0] add_ln310_fu_432_p2;
wire   [63:0] j_18_fu_438_p2;
wire   [31:0] partialBlock_fu_451_p2;
reg   [31:0] partialBlock_reg_665;
wire    ap_CS_fsm_state12;
reg    ap_block_state12_on_subcall_done;
wire   [31:0] partialBlock_18_fu_473_p3;
reg   [31:0] partialBlock_18_reg_671;
wire    ap_CS_fsm_state13;
wire   [63:0] zext_ln323_fu_480_p1;
reg   [63:0] zext_ln323_reg_677;
wire   [33:0] i_fu_488_p2;
reg   [33:0] i_reg_682;
wire   [31:0] loop_fu_498_p2;
reg   [31:0] loop_reg_690;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln393_fu_493_p2;
wire   [9:0] add_ln394_10_fu_533_p2;
reg   [9:0] add_ln394_10_reg_700;
wire   [31:0] add_ln330_fu_538_p2;
wire   [63:0] add_ln329_fu_551_p2;
wire    ap_CS_fsm_state16;
wire    grp_KeccakP1600_Permute_s_fu_258_ap_start;
wire    grp_KeccakP1600_Permute_s_fu_258_ap_idle;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_258_state_address0;
wire    grp_KeccakP1600_Permute_s_fu_258_state_ce0;
wire    grp_KeccakP1600_Permute_s_fu_258_state_we0;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_258_state_d0;
reg   [31:0] ap_phi_mux_instance_byteIOIndex_phi_fu_147_p4;
reg   [31:0] instance_byteIOIndex_reg_144;
reg   [31:0] instance_byteIOIndex_1_reg_155;
reg   [63:0] curData_0_idx_reg_166;
reg   [63:0] j_0_reg_178;
reg   [63:0] curData_1_rec_reg_188;
reg   [7:0] loop_0_i_reg_200;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state9;
reg   [31:0] offset_assign_1_reg_211;
reg   [31:0] loop_0_i1_reg_224;
wire    ap_CS_fsm_state15;
reg   [31:0] instance_byteIOIndex_3_reg_235;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln304_fu_358_p2;
reg   [63:0] curData_1_rec_pn_reg_248;
reg    grp_KeccakP1600_Permute_s_fu_258_ap_start_reg;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln149_fu_290_p1;
wire   [63:0] zext_ln394_1_fu_394_p1;
wire  signed [63:0] sext_ln394_1_fu_444_p1;
wire   [63:0] zext_ln394_fu_510_p1;
wire  signed [63:0] sext_ln394_fu_547_p1;
reg   [33:0] i_36_fu_56;
wire   [33:0] sub_ln312_fu_371_p2;
wire    ap_CS_fsm_state2;
wire   [7:0] xor_ln149_fu_295_p2;
wire    ap_CS_fsm_state4;
wire   [7:0] xor_ln149_1_fu_302_p2;
wire   [29:0] trunc_ln303_fu_334_p1;
wire   [29:0] add_ln303_fu_338_p2;
wire   [33:0] j_fu_349_p2;
wire   [33:0] zext_ln312_fu_364_p1;
wire   [33:0] trunc_ln312_fu_367_p1;
wire   [8:0] zext_ln394_15_fu_399_p1;
wire   [8:0] trunc_ln304_fu_403_p1;
wire   [8:0] trunc_ln302_4_fu_413_p1;
wire   [8:0] add_ln394_3_fu_407_p2;
wire   [8:0] add_ln394_2_fu_417_p2;
wire   [9:0] zext_ln394_16_fu_423_p1;
wire   [31:0] trunc_ln320_fu_448_p1;
wire   [31:0] add_ln321_fu_456_p2;
wire   [0:0] icmp_ln321_fu_461_p2;
wire   [31:0] partialBlock_17_fu_467_p2;
wire   [33:0] zext_ln323_4_fu_484_p1;
wire   [31:0] add_ln394_fu_504_p2;
wire   [8:0] trunc_ln394_fu_515_p1;
wire   [8:0] trunc_ln302_fu_519_p1;
wire   [8:0] add_ln394_1_fu_523_p2;
wire   [9:0] zext_ln394_14_fu_529_p1;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_KeccakP1600_Permute_s_fu_258_ap_start_reg = 1'b0;
end

KeccakP1600_Permute_s grp_KeccakP1600_Permute_s_fu_258(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakP1600_Permute_s_fu_258_ap_start),
    .ap_done(grp_KeccakP1600_Permute_s_fu_258_ap_done),
    .ap_idle(grp_KeccakP1600_Permute_s_fu_258_ap_idle),
    .ap_ready(grp_KeccakP1600_Permute_s_fu_258_ap_ready),
    .state_address0(grp_KeccakP1600_Permute_s_fu_258_state_address0),
    .state_ce0(grp_KeccakP1600_Permute_s_fu_258_state_ce0),
    .state_we0(grp_KeccakP1600_Permute_s_fu_258_state_we0),
    .state_d0(grp_KeccakP1600_Permute_s_fu_258_state_d0),
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
        grp_KeccakP1600_Permute_s_fu_258_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln304_fu_358_p2 == 1'd0)) | ((icmp_ln303_1_fu_344_p2 == 1'd1) & (icmp_ln302_fu_323_p2 == 1'd1) & (icmp_ln303_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)))) begin
            grp_KeccakP1600_Permute_s_fu_258_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakP1600_Permute_s_fu_258_ap_ready == 1'b1)) begin
            grp_KeccakP1600_Permute_s_fu_258_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        curData_0_idx_reg_166 <= add_ln329_fu_551_p2;
    end else if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        curData_0_idx_reg_166 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln304_fu_358_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        curData_1_rec_pn_reg_248 <= curData_1_rec_reg_188;
    end else if (((icmp_ln393_fu_493_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        curData_1_rec_pn_reg_248 <= zext_ln323_reg_677;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln393_1_fu_382_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        curData_1_rec_reg_188 <= add_ln310_fu_432_p2;
    end else if (((icmp_ln302_fu_323_p2 == 1'd1) & (icmp_ln303_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (icmp_ln303_1_fu_344_p2 == 1'd0))) begin
        curData_1_rec_reg_188 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln393_fu_493_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        i_36_fu_56 <= i_reg_682;
    end else if (((icmp_ln304_fu_358_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        i_36_fu_56 <= sub_ln312_fu_371_p2;
    end else if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        i_36_fu_56 <= 34'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        instance_byteIOIndex_1_reg_155 <= instance_byteIOIndex_3_reg_235;
    end else if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        instance_byteIOIndex_1_reg_155 <= ap_phi_mux_instance_byteIOIndex_phi_fu_147_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln304_fu_358_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        instance_byteIOIndex_3_reg_235 <= 32'd168;
    end else if (((icmp_ln393_fu_493_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        instance_byteIOIndex_3_reg_235 <= add_ln330_fu_538_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln297_fu_284_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        instance_byteIOIndex_reg_144 <= instance_byteIOIndex_read;
    end else if (((1'b0 == ap_block_state6_on_subcall_done) & (icmp_ln297_reg_581 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        instance_byteIOIndex_reg_144 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln393_1_fu_382_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        j_0_reg_178 <= j_18_fu_438_p2;
    end else if (((icmp_ln302_fu_323_p2 == 1'd1) & (icmp_ln303_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (icmp_ln303_1_fu_344_p2 == 1'd0))) begin
        j_0_reg_178 <= sext_ln304_fu_354_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        loop_0_i1_reg_224 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        loop_0_i1_reg_224 <= loop_reg_690;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_KeccakP1600_Permute_s_fu_258_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        loop_0_i_reg_200 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        loop_0_i_reg_200 <= loop_53_reg_640;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln302_fu_323_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (icmp_ln303_fu_328_p2 == 1'd0))) begin
        offset_assign_1_reg_211 <= instance_byteIOIndex_1_reg_155;
    end else if (((icmp_ln303_reg_622 == 1'd1) & (1'b1 == ap_CS_fsm_state12) & (1'b0 == ap_block_state12_on_subcall_done))) begin
        offset_assign_1_reg_211 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln393_fu_493_p2 == 1'd0))) begin
        add_ln394_10_reg_700 <= add_ln394_10_fu_533_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln393_1_fu_382_p2 == 1'd0))) begin
        add_ln394_11_reg_650 <= add_ln394_11_fu_427_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dataByteLen_cast_reg_562 <= dataByteLen_cast_fu_268_p1;
        icmp_ln297_reg_581 <= icmp_ln297_fu_284_p2;
        select_ln394_reg_575[2 : 1] <= select_ln394_fu_276_p3[2 : 1];
select_ln394_reg_575[5] <= select_ln394_fu_276_p3[5];
select_ln394_reg_575[7] <= select_ln394_fu_276_p3[7];
        zext_ln394_13_reg_569[8 : 0] <= zext_ln394_13_fu_272_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_36_load_reg_613 <= i_36_fu_56;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i_reg_682 <= i_fu_488_p2;
        partialBlock_18_reg_671 <= partialBlock_18_fu_473_p3;
        zext_ln323_reg_677[31 : 0] <= zext_ln323_fu_480_p1[31 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln302_fu_323_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        icmp_ln303_reg_622 <= icmp_ln303_fu_328_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln297_fu_284_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        instance_state_addr_reg_585 <= zext_ln149_fu_290_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        loop_53_reg_640 <= loop_53_fu_388_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        loop_reg_690 <= loop_fu_498_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (1'b0 == ap_block_state12_on_subcall_done))) begin
        partialBlock_reg_665 <= partialBlock_fu_451_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        zext_ln303_reg_603[8 : 0] <= zext_ln303_fu_309_p1[8 : 0];
        zext_ln320_reg_608[8 : 0] <= zext_ln320_fu_312_p1[8 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state7) & (icmp_ln302_fu_323_p2 == 1'd0)))) begin
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
    if (((icmp_ln297_reg_581 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_phi_mux_instance_byteIOIndex_phi_fu_147_p4 = 32'd0;
    end else begin
        ap_phi_mux_instance_byteIOIndex_phi_fu_147_p4 = instance_byteIOIndex_reg_144;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln302_fu_323_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        data_0_address0 = sext_ln394_fu_547_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        data_0_address0 = sext_ln394_1_fu_444_p1;
    end else begin
        data_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11))) begin
        data_0_ce0 = 1'b1;
    end else begin
        data_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11))) begin
        data_0_we0 = 1'b1;
    end else begin
        data_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        instance_state_address0 = zext_ln394_fu_510_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        instance_state_address0 = zext_ln394_1_fu_394_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        instance_state_address0 = instance_state_addr_1_reg_590;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        instance_state_address0 = 64'd167;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        instance_state_address0 = instance_state_addr_reg_585;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        instance_state_address0 = zext_ln149_fu_290_p1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_581 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_622 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_address0 = grp_KeccakP1600_Permute_s_fu_258_state_address0;
    end else begin
        instance_state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        instance_state_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_581 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_622 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_ce0 = grp_KeccakP1600_Permute_s_fu_258_state_ce0;
    end else begin
        instance_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        instance_state_d0 = xor_ln149_1_fu_302_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        instance_state_d0 = xor_ln149_fu_295_p2;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_581 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_622 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_d0 = grp_KeccakP1600_Permute_s_fu_258_state_d0;
    end else begin
        instance_state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        instance_state_we0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | ((icmp_ln297_reg_581 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln303_reg_622 == 1'd1) & (1'b1 == ap_CS_fsm_state12)))) begin
        instance_state_we0 = grp_KeccakP1600_Permute_s_fu_258_state_we0;
    end else begin
        instance_state_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln297_fu_284_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((icmp_ln297_fu_284_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln302_fu_323_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln302_fu_323_p2 == 1'd1) & (icmp_ln303_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (icmp_ln303_1_fu_344_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln304_fu_358_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((grp_KeccakP1600_Permute_s_fu_258_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln393_1_fu_382_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((icmp_ln393_fu_493_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
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

assign add_ln303_fu_338_p2 = (30'd168 + trunc_ln303_fu_334_p1);

assign add_ln310_fu_432_p2 = (curData_1_rec_reg_188 + 64'd168);

assign add_ln321_fu_456_p2 = (offset_assign_1_reg_211 + partialBlock_reg_665);

assign add_ln329_fu_551_p2 = (curData_1_rec_pn_reg_248 + curData_0_idx_reg_166);

assign add_ln330_fu_538_p2 = (offset_assign_1_reg_211 + partialBlock_18_reg_671);

assign add_ln394_10_fu_533_p2 = (select_ln394_reg_575 + zext_ln394_14_fu_529_p1);

assign add_ln394_11_fu_427_p2 = (select_ln394_reg_575 + zext_ln394_16_fu_423_p1);

assign add_ln394_1_fu_523_p2 = (trunc_ln394_fu_515_p1 + trunc_ln302_fu_519_p1);

assign add_ln394_2_fu_417_p2 = (trunc_ln302_4_fu_413_p1 + add_ln394_3_fu_407_p2);

assign add_ln394_3_fu_407_p2 = (zext_ln394_15_fu_399_p1 + trunc_ln304_fu_403_p1);

assign add_ln394_fu_504_p2 = (offset_assign_1_reg_211 + loop_0_i1_reg_224);

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
    ap_block_state12_on_subcall_done = ((icmp_ln303_reg_622 == 1'd1) & (grp_KeccakP1600_Permute_s_fu_258_ap_done == 1'b0));
end

always @ (*) begin
    ap_block_state6_on_subcall_done = ((icmp_ln297_reg_581 == 1'd1) & (grp_KeccakP1600_Permute_s_fu_258_ap_done == 1'b0));
end

assign dataByteLen_cast_fu_268_p1 = $signed(dataByteLen);

assign data_0_d0 = instance_state_q0;

assign grp_KeccakP1600_Permute_s_fu_258_ap_start = grp_KeccakP1600_Permute_s_fu_258_ap_start_reg;

assign i_fu_488_p2 = (i_36_load_reg_613 + zext_ln323_4_fu_484_p1);

assign icmp_ln297_fu_284_p2 = ((instance_squeezing_read == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln302_fu_323_p2 = ((i_36_fu_56 < zext_ln394_13_reg_569) ? 1'b1 : 1'b0);

assign icmp_ln303_1_fu_344_p2 = ((add_ln303_fu_338_p2 > zext_ln303_reg_603) ? 1'b1 : 1'b0);

assign icmp_ln303_fu_328_p2 = ((instance_byteIOIndex_1_reg_155 == 32'd168) ? 1'b1 : 1'b0);

assign icmp_ln304_fu_358_p2 = ((j_0_reg_178 < 64'd168) ? 1'b1 : 1'b0);

assign icmp_ln321_fu_461_p2 = ((add_ln321_fu_456_p2 > 32'd168) ? 1'b1 : 1'b0);

assign icmp_ln393_1_fu_382_p2 = ((loop_0_i_reg_200 == 8'd168) ? 1'b1 : 1'b0);

assign icmp_ln393_fu_493_p2 = ((loop_0_i1_reg_224 == partialBlock_18_reg_671) ? 1'b1 : 1'b0);

assign instance_state_addr_1_reg_590 = 64'd167;

assign j_18_fu_438_p2 = ($signed(j_0_reg_178) + $signed(64'd18446744073709551448));

assign j_fu_349_p2 = (zext_ln394_13_reg_569 - i_36_fu_56);

assign loop_53_fu_388_p2 = (loop_0_i_reg_200 + 8'd1);

assign loop_fu_498_p2 = (loop_0_i1_reg_224 + 32'd1);

assign partialBlock_17_fu_467_p2 = (32'd168 - offset_assign_1_reg_211);

assign partialBlock_18_fu_473_p3 = ((icmp_ln321_fu_461_p2[0:0] === 1'b1) ? partialBlock_17_fu_467_p2 : partialBlock_reg_665);

assign partialBlock_fu_451_p2 = (zext_ln320_reg_608 - trunc_ln320_fu_448_p1);

assign select_ln394_fu_276_p3 = ((data_offset1[0:0] === 1'b1) ? 10'd166 : 10'd0);

assign sext_ln304_fu_354_p1 = $signed(j_fu_349_p2);

assign sext_ln394_1_fu_444_p1 = $signed(add_ln394_11_reg_650);

assign sext_ln394_fu_547_p1 = $signed(add_ln394_10_reg_700);

assign sub_ln312_fu_371_p2 = (zext_ln312_fu_364_p1 - trunc_ln312_fu_367_p1);

assign trunc_ln302_4_fu_413_p1 = curData_0_idx_reg_166[8:0];

assign trunc_ln302_fu_519_p1 = curData_0_idx_reg_166[8:0];

assign trunc_ln303_fu_334_p1 = i_36_fu_56[29:0];

assign trunc_ln304_fu_403_p1 = curData_1_rec_reg_188[8:0];

assign trunc_ln312_fu_367_p1 = j_0_reg_178[33:0];

assign trunc_ln320_fu_448_p1 = i_36_load_reg_613[31:0];

assign trunc_ln394_fu_515_p1 = loop_0_i1_reg_224[8:0];

assign xor_ln149_1_fu_302_p2 = (instance_state_q0 ^ 8'd128);

assign xor_ln149_fu_295_p2 = (instance_state_q0 ^ 8'd1);

assign zext_ln149_fu_290_p1 = instance_byteIOIndex_read;

assign zext_ln303_fu_309_p1 = $unsigned(dataByteLen_cast_reg_562);

assign zext_ln312_fu_364_p1 = $unsigned(dataByteLen_cast_reg_562);

assign zext_ln320_fu_312_p1 = $unsigned(dataByteLen_cast_reg_562);

assign zext_ln323_4_fu_484_p1 = partialBlock_18_fu_473_p3;

assign zext_ln323_fu_480_p1 = partialBlock_18_fu_473_p3;

assign zext_ln394_13_fu_272_p1 = $unsigned(dataByteLen_cast_fu_268_p1);

assign zext_ln394_14_fu_529_p1 = add_ln394_1_fu_523_p2;

assign zext_ln394_15_fu_399_p1 = loop_0_i_reg_200;

assign zext_ln394_16_fu_423_p1 = add_ln394_2_fu_417_p2;

assign zext_ln394_1_fu_394_p1 = loop_0_i_reg_200;

assign zext_ln394_fu_510_p1 = add_ln394_fu_504_p2;

always @ (posedge ap_clk) begin
    zext_ln394_13_reg_569[33:9] <= 25'b0000000000000000000000000;
    select_ln394_reg_575[0] <= 1'b0;
    select_ln394_reg_575[4:3] <= 2'b00;
    select_ln394_reg_575[6:6] <= 1'b0;
    select_ln394_reg_575[9:8] <= 2'b00;
    zext_ln303_reg_603[29:9] <= 21'b000000000000000000000;
    zext_ln320_reg_608[31:9] <= 23'b00000000000000000000000;
    zext_ln323_reg_677[63:32] <= 32'b00000000000000000000000000000000;
end

endmodule //KeccakWidth1600_Spon
