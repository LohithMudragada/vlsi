// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module KeccakWidth1600_Spon_6 (
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
        data_0_address0,
        data_0_ce0,
        data_0_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

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
output  [4:0] data_0_address0;
output   data_0_ce0;
input  [7:0] data_0_q0;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] instance_state_address0;
reg instance_state_ce0;
reg instance_state_we0;
reg[7:0] instance_state_d0;
reg[4:0] data_0_address0;
reg data_0_ce0;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [33:0] i_25_load_reg_476;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln195_fu_230_p2;
reg   [0:0] icmp_ln195_reg_484;
wire   [0:0] icmp_ln194_fu_224_p2;
wire   [0:0] icmp_ln195_1_fu_246_p2;
reg   [0:0] icmp_ln195_1_reg_488;
wire   [63:0] zext_ln206_fu_258_p1;
wire   [5:0] partialBlock_fu_266_p2;
reg   [5:0] partialBlock_reg_497;
wire   [7:0] loop_42_fu_299_p2;
reg   [7:0] loop_42_reg_508;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln211_fu_293_p2;
reg   [7:0] instance_state_addr_3_reg_518;
wire   [63:0] j_7_fu_339_p2;
reg   [63:0] j_7_reg_523;
wire   [63:0] add_ln214_fu_345_p2;
wire    ap_CS_fsm_state6;
wire    grp_KeccakP1600_Permute_s_fu_176_ap_ready;
wire    grp_KeccakP1600_Permute_s_fu_176_ap_done;
wire   [31:0] select_ln224_fu_372_p3;
reg   [31:0] select_ln224_reg_533;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln229_fu_380_p1;
reg   [63:0] zext_ln229_reg_539;
wire   [33:0] i_fu_388_p2;
reg   [33:0] i_reg_545;
wire   [31:0] loop_fu_398_p2;
reg   [31:0] loop_reg_553;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln231_fu_393_p2;
reg   [7:0] instance_state_addr_reg_563;
wire   [0:0] icmp_ln237_fu_439_p2;
reg   [0:0] icmp_ln237_reg_568;
wire   [63:0] p_2_rec_fu_454_p2;
wire    ap_CS_fsm_state10;
reg    ap_predicate_op111_call_state10;
reg    ap_block_state10_on_subcall_done;
wire    grp_KeccakP1600_Permute_s_fu_176_ap_start;
wire    grp_KeccakP1600_Permute_s_fu_176_ap_idle;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_176_state_address0;
wire    grp_KeccakP1600_Permute_s_fu_176_state_ce0;
wire    grp_KeccakP1600_Permute_s_fu_176_state_we0;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_176_state_d0;
reg   [63:0] p_01_rec_reg_108;
reg   [63:0] j_0_reg_120;
reg   [63:0] p_1_rec_reg_130;
reg   [7:0] offset_assign_7_reg_142;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln206_fu_272_p2;
reg   [31:0] loop_1_reg_153;
wire    ap_CS_fsm_state9;
reg   [63:0] ap_phi_mux_p_1_rec_pn_phi_fu_167_p6;
reg   [63:0] p_1_rec_pn_reg_164;
reg    grp_KeccakP1600_Permute_s_fu_176_ap_start_reg;
wire   [63:0] zext_ln212_2_fu_334_p1;
wire   [63:0] zext_ln212_fu_305_p1;
wire   [63:0] zext_ln232_fu_418_p1;
wire   [63:0] zext_ln149_fu_429_p1;
reg   [33:0] i_25_fu_52;
wire   [33:0] sub_ln216_fu_282_p2;
reg   [31:0] instance_byteIOIndex_fu_56;
wire   [31:0] add_ln236_fu_434_p2;
wire   [7:0] grp_fu_194_p2;
wire   [28:0] tmp_fu_214_p4;
wire   [29:0] trunc_ln195_fu_236_p1;
wire   [29:0] add_ln195_fu_240_p2;
wire   [33:0] j_fu_252_p2;
wire   [5:0] trunc_ln223_fu_262_p1;
wire   [33:0] trunc_ln216_fu_278_p1;
wire   [6:0] trunc_ln212_fu_310_p1;
wire   [6:0] trunc_ln206_fu_314_p1;
wire   [6:0] trunc_ln194_2_fu_324_p1;
wire   [6:0] add_ln212_fu_318_p2;
wire   [6:0] add_ln212_1_fu_328_p2;
wire   [31:0] zext_ln223_fu_351_p1;
wire   [31:0] add_ln224_fu_354_p2;
wire   [0:0] icmp_ln224_fu_360_p2;
wire   [31:0] partialBlock_3_fu_366_p2;
wire   [33:0] zext_ln229_2_fu_384_p1;
wire   [6:0] trunc_ln194_fu_408_p1;
wire   [6:0] trunc_ln232_fu_404_p1;
wire   [6:0] add_ln232_fu_412_p2;
wire   [31:0] add_ln232_3_fu_423_p2;
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_KeccakP1600_Permute_s_fu_176_ap_start_reg = 1'b0;
end

KeccakP1600_Permute_s grp_KeccakP1600_Permute_s_fu_176(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakP1600_Permute_s_fu_176_ap_start),
    .ap_done(grp_KeccakP1600_Permute_s_fu_176_ap_done),
    .ap_idle(grp_KeccakP1600_Permute_s_fu_176_ap_idle),
    .ap_ready(grp_KeccakP1600_Permute_s_fu_176_ap_ready),
    .state_address0(grp_KeccakP1600_Permute_s_fu_176_state_address0),
    .state_ce0(grp_KeccakP1600_Permute_s_fu_176_state_ce0),
    .state_we0(grp_KeccakP1600_Permute_s_fu_176_state_we0),
    .state_d0(grp_KeccakP1600_Permute_s_fu_176_state_d0),
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
        grp_KeccakP1600_Permute_s_fu_176_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln211_fu_293_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln237_fu_439_p2 == 1'd1) & (icmp_ln231_fu_393_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)))) begin
            grp_KeccakP1600_Permute_s_fu_176_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakP1600_Permute_s_fu_176_ap_ready == 1'b1)) begin
            grp_KeccakP1600_Permute_s_fu_176_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln231_fu_393_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        i_25_fu_52 <= i_reg_545;
    end else if (((icmp_ln206_fu_272_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_25_fu_52 <= sub_ln216_fu_282_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_25_fu_52 <= 34'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln237_fu_439_p2 == 1'd0) & (icmp_ln231_fu_393_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        instance_byteIOIndex_fu_56 <= add_ln236_fu_434_p2;
    end else if ((((icmp_ln206_fu_272_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln237_fu_439_p2 == 1'd1) & (icmp_ln231_fu_393_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)))) begin
        instance_byteIOIndex_fu_56 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        instance_byteIOIndex_fu_56 <= instance_byteIOIndex_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_KeccakP1600_Permute_s_fu_176_ap_done == 1'b1))) begin
        j_0_reg_120 <= j_7_reg_523;
    end else if (((icmp_ln195_1_fu_246_p2 == 1'd0) & (icmp_ln194_fu_224_p2 == 1'd1) & (icmp_ln195_fu_230_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_120 <= zext_ln206_fu_258_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        loop_1_reg_153 <= loop_reg_553;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        loop_1_reg_153 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln206_fu_272_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        offset_assign_7_reg_142 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        offset_assign_7_reg_142 <= loop_42_reg_508;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (1'b0 == ap_block_state10_on_subcall_done))) begin
        p_01_rec_reg_108 <= p_2_rec_fu_454_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        p_01_rec_reg_108 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (1'b0 == ap_block_state10_on_subcall_done) & (((icmp_ln237_reg_568 == 1'd1) & (icmp_ln195_reg_484 == 1'd0)) | ((icmp_ln195_1_reg_488 == 1'd1) & (icmp_ln237_reg_568 == 1'd1)))) | ((icmp_ln237_fu_439_p2 == 1'd0) & (icmp_ln231_fu_393_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)))) begin
        p_1_rec_pn_reg_164 <= zext_ln229_reg_539;
    end else if (((icmp_ln206_fu_272_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        p_1_rec_pn_reg_164 <= p_1_rec_reg_130;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_KeccakP1600_Permute_s_fu_176_ap_done == 1'b1))) begin
        p_1_rec_reg_130 <= add_ln214_fu_345_p2;
    end else if (((icmp_ln195_1_fu_246_p2 == 1'd0) & (icmp_ln194_fu_224_p2 == 1'd1) & (icmp_ln195_fu_230_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        p_1_rec_reg_130 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_25_load_reg_476 <= i_25_fu_52;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_reg_545 <= i_fu_388_p2;
        select_ln224_reg_533 <= select_ln224_fu_372_p3;
        zext_ln229_reg_539[31 : 0] <= zext_ln229_fu_380_p1[31 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln194_fu_224_p2 == 1'd1) & (icmp_ln195_fu_230_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln195_1_reg_488 <= icmp_ln195_1_fu_246_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln194_fu_224_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln195_reg_484 <= icmp_ln195_fu_230_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln231_fu_393_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        icmp_ln237_reg_568 <= icmp_ln237_fu_439_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln211_fu_293_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        instance_state_addr_3_reg_518 <= zext_ln212_fu_305_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln231_fu_393_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        instance_state_addr_reg_563 <= zext_ln149_fu_429_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln211_fu_293_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        j_7_reg_523 <= j_7_fu_339_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        loop_42_reg_508 <= loop_42_fu_299_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        loop_reg_553 <= loop_fu_398_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln194_fu_224_p2 == 1'd1) & (icmp_ln195_fu_230_p2 == 1'd0)) | ((icmp_ln195_1_fu_246_p2 == 1'd1) & (icmp_ln194_fu_224_p2 == 1'd1))))) begin
        partialBlock_reg_497 <= partialBlock_fu_266_p2;
    end
end

always @ (*) begin
    if ((((icmp_ln194_fu_224_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (((icmp_ln237_reg_568 == 1'd1) & (icmp_ln195_reg_484 == 1'd0)) | ((icmp_ln195_1_reg_488 == 1'd1) & (icmp_ln237_reg_568 == 1'd1))))) begin
        ap_phi_mux_p_1_rec_pn_phi_fu_167_p6 = zext_ln229_reg_539;
    end else begin
        ap_phi_mux_p_1_rec_pn_phi_fu_167_p6 = p_1_rec_pn_reg_164;
    end
end

always @ (*) begin
    if (((icmp_ln194_fu_224_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        data_0_address0 = zext_ln232_fu_418_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        data_0_address0 = zext_ln212_2_fu_334_p1;
    end else begin
        data_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state8))) begin
        data_0_ce0 = 1'b1;
    end else begin
        data_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        instance_state_address0 = instance_state_addr_reg_563;
    end else if (((icmp_ln231_fu_393_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        instance_state_address0 = zext_ln149_fu_429_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        instance_state_address0 = instance_state_addr_3_reg_518;
    end else if (((icmp_ln211_fu_293_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        instance_state_address0 = zext_ln212_fu_305_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state10) & (ap_predicate_op111_call_state10 == 1'b1)))) begin
        instance_state_address0 = grp_KeccakP1600_Permute_s_fu_176_state_address0;
    end else begin
        instance_state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5) | ((icmp_ln211_fu_293_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln231_fu_393_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        instance_state_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state10) & (ap_predicate_op111_call_state10 == 1'b1)))) begin
        instance_state_ce0 = grp_KeccakP1600_Permute_s_fu_176_state_ce0;
    end else begin
        instance_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
        instance_state_d0 = grp_fu_194_p2;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state10) & (ap_predicate_op111_call_state10 == 1'b1)))) begin
        instance_state_d0 = grp_KeccakP1600_Permute_s_fu_176_state_d0;
    end else begin
        instance_state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
        instance_state_we0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state10) & (ap_predicate_op111_call_state10 == 1'b1)))) begin
        instance_state_we0 = grp_KeccakP1600_Permute_s_fu_176_state_we0;
    end else begin
        instance_state_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln194_fu_224_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln195_1_fu_246_p2 == 1'd0) & (icmp_ln194_fu_224_p2 == 1'd1) & (icmp_ln195_fu_230_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln206_fu_272_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln211_fu_293_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_KeccakP1600_Permute_s_fu_176_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln231_fu_393_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (1'b0 == ap_block_state10_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln195_fu_240_p2 = (30'd168 + trunc_ln195_fu_236_p1);

assign add_ln212_1_fu_328_p2 = (trunc_ln194_2_fu_324_p1 + add_ln212_fu_318_p2);

assign add_ln212_fu_318_p2 = (trunc_ln212_fu_310_p1 + trunc_ln206_fu_314_p1);

assign add_ln214_fu_345_p2 = (p_1_rec_reg_130 + 64'd168);

assign add_ln224_fu_354_p2 = (zext_ln223_fu_351_p1 + instance_byteIOIndex_fu_56);

assign add_ln232_3_fu_423_p2 = (instance_byteIOIndex_fu_56 + loop_1_reg_153);

assign add_ln232_fu_412_p2 = (trunc_ln194_fu_408_p1 + trunc_ln232_fu_404_p1);

assign add_ln236_fu_434_p2 = (instance_byteIOIndex_fu_56 + select_ln224_reg_533);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state10_on_subcall_done = ((grp_KeccakP1600_Permute_s_fu_176_ap_done == 1'b0) & (ap_predicate_op111_call_state10 == 1'b1));
end

always @ (*) begin
    ap_predicate_op111_call_state10 = (((icmp_ln237_reg_568 == 1'd1) & (icmp_ln195_reg_484 == 1'd0)) | ((icmp_ln195_1_reg_488 == 1'd1) & (icmp_ln237_reg_568 == 1'd1)));
end

assign ap_return = instance_byteIOIndex_fu_56;

assign grp_KeccakP1600_Permute_s_fu_176_ap_start = grp_KeccakP1600_Permute_s_fu_176_ap_start_reg;

assign grp_fu_194_p2 = (instance_state_q0 ^ data_0_q0);

assign i_fu_388_p2 = (zext_ln229_2_fu_384_p1 + i_25_load_reg_476);

assign icmp_ln194_fu_224_p2 = ((tmp_fu_214_p4 == 29'd0) ? 1'b1 : 1'b0);

assign icmp_ln195_1_fu_246_p2 = ((add_ln195_fu_240_p2 > 30'd32) ? 1'b1 : 1'b0);

assign icmp_ln195_fu_230_p2 = ((instance_byteIOIndex_fu_56 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln206_fu_272_p2 = ((j_0_reg_120 < 64'd168) ? 1'b1 : 1'b0);

assign icmp_ln211_fu_293_p2 = ((offset_assign_7_reg_142 == 8'd168) ? 1'b1 : 1'b0);

assign icmp_ln224_fu_360_p2 = ((add_ln224_fu_354_p2 > 32'd168) ? 1'b1 : 1'b0);

assign icmp_ln231_fu_393_p2 = ((loop_1_reg_153 == select_ln224_reg_533) ? 1'b1 : 1'b0);

assign icmp_ln237_fu_439_p2 = ((add_ln236_fu_434_p2 == 32'd168) ? 1'b1 : 1'b0);

assign j_7_fu_339_p2 = ($signed(j_0_reg_120) + $signed(64'd18446744073709551448));

assign j_fu_252_p2 = (34'd32 - i_25_fu_52);

assign loop_42_fu_299_p2 = (offset_assign_7_reg_142 + 8'd1);

assign loop_fu_398_p2 = (loop_1_reg_153 + 32'd1);

assign p_2_rec_fu_454_p2 = (ap_phi_mux_p_1_rec_pn_phi_fu_167_p6 + p_01_rec_reg_108);

assign partialBlock_3_fu_366_p2 = (32'd168 - instance_byteIOIndex_fu_56);

assign partialBlock_fu_266_p2 = ($signed(6'd32) - $signed(trunc_ln223_fu_262_p1));

assign select_ln224_fu_372_p3 = ((icmp_ln224_fu_360_p2[0:0] === 1'b1) ? partialBlock_3_fu_366_p2 : zext_ln223_fu_351_p1);

assign sub_ln216_fu_282_p2 = (34'd32 - trunc_ln216_fu_278_p1);

assign tmp_fu_214_p4 = {{i_25_fu_52[33:5]}};

assign trunc_ln194_2_fu_324_p1 = p_01_rec_reg_108[6:0];

assign trunc_ln194_fu_408_p1 = p_01_rec_reg_108[6:0];

assign trunc_ln195_fu_236_p1 = i_25_fu_52[29:0];

assign trunc_ln206_fu_314_p1 = p_1_rec_reg_130[6:0];

assign trunc_ln212_fu_310_p1 = offset_assign_7_reg_142[6:0];

assign trunc_ln216_fu_278_p1 = j_0_reg_120[33:0];

assign trunc_ln223_fu_262_p1 = i_25_fu_52[5:0];

assign trunc_ln232_fu_404_p1 = loop_1_reg_153[6:0];

assign zext_ln149_fu_429_p1 = add_ln232_3_fu_423_p2;

assign zext_ln206_fu_258_p1 = j_fu_252_p2;

assign zext_ln212_2_fu_334_p1 = add_ln212_1_fu_328_p2;

assign zext_ln212_fu_305_p1 = offset_assign_7_reg_142;

assign zext_ln223_fu_351_p1 = partialBlock_reg_497;

assign zext_ln229_2_fu_384_p1 = select_ln224_fu_372_p3;

assign zext_ln229_fu_380_p1 = select_ln224_fu_372_p3;

assign zext_ln232_fu_418_p1 = add_ln232_fu_412_p2;

always @ (posedge ap_clk) begin
    zext_ln229_reg_539[63:32] <= 32'b00000000000000000000000000000000;
end

endmodule //KeccakWidth1600_Spon_6
