// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module KeccakWidth1600_Spon_7 (
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
        data_offset1,
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
output  [8:0] data_0_address0;
output   data_0_ce0;
input  [7:0] data_0_q0;
input  [0:0] data_offset1;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] instance_state_address0;
reg instance_state_ce0;
reg instance_state_we0;
reg[7:0] instance_state_d0;
reg[8:0] data_0_address0;
reg data_0_ce0;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] select_ln212_fu_215_p3;
reg   [9:0] select_ln212_reg_516;
reg   [33:0] i_14_load_reg_522;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln195_fu_252_p2;
reg   [0:0] icmp_ln195_reg_530;
wire   [0:0] icmp_ln194_fu_246_p2;
wire   [0:0] icmp_ln195_1_fu_268_p2;
reg   [0:0] icmp_ln195_1_reg_534;
wire   [63:0] zext_ln206_fu_280_p1;
wire   [5:0] partialBlock_fu_288_p2;
reg   [5:0] partialBlock_reg_543;
wire   [7:0] loop_38_fu_321_p2;
reg   [7:0] loop_38_reg_554;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln211_fu_315_p2;
reg   [7:0] instance_state_addr_3_reg_564;
wire   [63:0] j_4_fu_370_p2;
reg   [63:0] j_4_reg_569;
wire   [63:0] add_ln214_fu_376_p2;
wire    ap_CS_fsm_state6;
wire    grp_KeccakP1600_Permute_s_fu_190_ap_ready;
wire    grp_KeccakP1600_Permute_s_fu_190_ap_done;
wire   [31:0] select_ln224_fu_403_p3;
reg   [31:0] select_ln224_reg_579;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln229_fu_411_p1;
reg   [63:0] zext_ln229_reg_585;
wire   [33:0] i_fu_419_p2;
reg   [33:0] i_reg_591;
wire   [31:0] loop_fu_429_p2;
reg   [31:0] loop_reg_599;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln231_fu_424_p2;
reg   [7:0] instance_state_addr_reg_609;
wire   [0:0] icmp_ln237_fu_479_p2;
reg   [0:0] icmp_ln237_reg_614;
wire   [63:0] p_2_rec_fu_494_p2;
wire    ap_CS_fsm_state10;
reg    ap_predicate_op117_call_state10;
reg    ap_block_state10_on_subcall_done;
wire    grp_KeccakP1600_Permute_s_fu_190_ap_start;
wire    grp_KeccakP1600_Permute_s_fu_190_ap_idle;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_190_state_address0;
wire    grp_KeccakP1600_Permute_s_fu_190_state_ce0;
wire    grp_KeccakP1600_Permute_s_fu_190_state_we0;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_190_state_d0;
reg   [63:0] p_01_rec_reg_122;
reg   [63:0] j_0_reg_134;
reg   [63:0] p_1_rec_reg_144;
reg   [7:0] offset_assign_7_reg_156;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln206_fu_294_p2;
reg   [31:0] loop_1_reg_167;
wire    ap_CS_fsm_state9;
reg   [63:0] ap_phi_mux_p_1_rec_pn_phi_fu_181_p6;
reg   [63:0] p_1_rec_pn_reg_178;
reg    grp_KeccakP1600_Permute_s_fu_190_ap_start_reg;
wire  signed [63:0] sext_ln212_fu_365_p1;
wire   [63:0] zext_ln212_fu_327_p1;
wire  signed [63:0] sext_ln232_fu_458_p1;
wire   [63:0] zext_ln149_fu_469_p1;
reg   [33:0] i_14_fu_60;
wire   [33:0] sub_ln216_fu_304_p2;
reg   [31:0] instance_byteIOIndex_fu_64;
wire   [31:0] add_ln236_fu_474_p2;
wire   [7:0] grp_fu_208_p2;
wire   [28:0] tmp_fu_236_p4;
wire   [29:0] trunc_ln195_fu_258_p1;
wire   [29:0] add_ln195_fu_262_p2;
wire   [33:0] j_fu_274_p2;
wire   [5:0] trunc_ln223_fu_284_p1;
wire   [33:0] trunc_ln216_fu_300_p1;
wire   [8:0] zext_ln212_3_fu_332_p1;
wire   [8:0] trunc_ln206_fu_336_p1;
wire   [8:0] trunc_ln194_3_fu_346_p1;
wire   [8:0] add_ln212_fu_340_p2;
wire   [8:0] add_ln212_1_fu_350_p2;
wire   [9:0] zext_ln212_4_fu_356_p1;
wire   [9:0] add_ln212_2_fu_360_p2;
wire   [31:0] zext_ln223_fu_382_p1;
wire   [31:0] add_ln224_fu_385_p2;
wire   [0:0] icmp_ln224_fu_391_p2;
wire   [31:0] partialBlock_3_fu_397_p2;
wire   [33:0] zext_ln229_3_fu_415_p1;
wire   [8:0] trunc_ln232_fu_435_p1;
wire   [8:0] trunc_ln194_fu_439_p1;
wire   [8:0] add_ln232_fu_443_p2;
wire   [9:0] zext_ln232_fu_449_p1;
wire   [9:0] add_ln232_3_fu_453_p2;
wire   [31:0] add_ln232_4_fu_463_p2;
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_KeccakP1600_Permute_s_fu_190_ap_start_reg = 1'b0;
end

KeccakP1600_Permute_s grp_KeccakP1600_Permute_s_fu_190(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakP1600_Permute_s_fu_190_ap_start),
    .ap_done(grp_KeccakP1600_Permute_s_fu_190_ap_done),
    .ap_idle(grp_KeccakP1600_Permute_s_fu_190_ap_idle),
    .ap_ready(grp_KeccakP1600_Permute_s_fu_190_ap_ready),
    .state_address0(grp_KeccakP1600_Permute_s_fu_190_state_address0),
    .state_ce0(grp_KeccakP1600_Permute_s_fu_190_state_ce0),
    .state_we0(grp_KeccakP1600_Permute_s_fu_190_state_we0),
    .state_d0(grp_KeccakP1600_Permute_s_fu_190_state_d0),
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
        grp_KeccakP1600_Permute_s_fu_190_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln211_fu_315_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln237_fu_479_p2 == 1'd1) & (icmp_ln231_fu_424_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)))) begin
            grp_KeccakP1600_Permute_s_fu_190_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakP1600_Permute_s_fu_190_ap_ready == 1'b1)) begin
            grp_KeccakP1600_Permute_s_fu_190_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln231_fu_424_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        i_14_fu_60 <= i_reg_591;
    end else if (((icmp_ln206_fu_294_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_14_fu_60 <= sub_ln216_fu_304_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_14_fu_60 <= 34'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln237_fu_479_p2 == 1'd0) & (icmp_ln231_fu_424_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        instance_byteIOIndex_fu_64 <= add_ln236_fu_474_p2;
    end else if ((((icmp_ln206_fu_294_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln237_fu_479_p2 == 1'd1) & (icmp_ln231_fu_424_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)))) begin
        instance_byteIOIndex_fu_64 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        instance_byteIOIndex_fu_64 <= instance_byteIOIndex_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_KeccakP1600_Permute_s_fu_190_ap_done == 1'b1))) begin
        j_0_reg_134 <= j_4_reg_569;
    end else if (((icmp_ln195_1_fu_268_p2 == 1'd0) & (icmp_ln194_fu_246_p2 == 1'd1) & (icmp_ln195_fu_252_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_134 <= zext_ln206_fu_280_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        loop_1_reg_167 <= loop_reg_599;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        loop_1_reg_167 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln206_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        offset_assign_7_reg_156 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        offset_assign_7_reg_156 <= loop_38_reg_554;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (1'b0 == ap_block_state10_on_subcall_done))) begin
        p_01_rec_reg_122 <= p_2_rec_fu_494_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        p_01_rec_reg_122 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (1'b0 == ap_block_state10_on_subcall_done) & (((icmp_ln237_reg_614 == 1'd1) & (icmp_ln195_reg_530 == 1'd0)) | ((icmp_ln195_1_reg_534 == 1'd1) & (icmp_ln237_reg_614 == 1'd1)))) | ((icmp_ln237_fu_479_p2 == 1'd0) & (icmp_ln231_fu_424_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)))) begin
        p_1_rec_pn_reg_178 <= zext_ln229_reg_585;
    end else if (((icmp_ln206_fu_294_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        p_1_rec_pn_reg_178 <= p_1_rec_reg_144;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_KeccakP1600_Permute_s_fu_190_ap_done == 1'b1))) begin
        p_1_rec_reg_144 <= add_ln214_fu_376_p2;
    end else if (((icmp_ln195_1_fu_268_p2 == 1'd0) & (icmp_ln194_fu_246_p2 == 1'd1) & (icmp_ln195_fu_252_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        p_1_rec_reg_144 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_14_load_reg_522 <= i_14_fu_60;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_reg_591 <= i_fu_419_p2;
        select_ln224_reg_579 <= select_ln224_fu_403_p3;
        zext_ln229_reg_585[31 : 0] <= zext_ln229_fu_411_p1[31 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln194_fu_246_p2 == 1'd1) & (icmp_ln195_fu_252_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln195_1_reg_534 <= icmp_ln195_1_fu_268_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln194_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln195_reg_530 <= icmp_ln195_fu_252_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln231_fu_424_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        icmp_ln237_reg_614 <= icmp_ln237_fu_479_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln211_fu_315_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        instance_state_addr_3_reg_564 <= zext_ln212_fu_327_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln231_fu_424_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        instance_state_addr_reg_609 <= zext_ln149_fu_469_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln211_fu_315_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        j_4_reg_569 <= j_4_fu_370_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        loop_38_reg_554 <= loop_38_fu_321_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        loop_reg_599 <= loop_fu_429_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln194_fu_246_p2 == 1'd1) & (icmp_ln195_fu_252_p2 == 1'd0)) | ((icmp_ln195_1_fu_268_p2 == 1'd1) & (icmp_ln194_fu_246_p2 == 1'd1))))) begin
        partialBlock_reg_543 <= partialBlock_fu_288_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        select_ln212_reg_516[2 : 1] <= select_ln212_fu_215_p3[2 : 1];
select_ln212_reg_516[5] <= select_ln212_fu_215_p3[5];
select_ln212_reg_516[7] <= select_ln212_fu_215_p3[7];
    end
end

always @ (*) begin
    if ((((icmp_ln194_fu_246_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (((icmp_ln237_reg_614 == 1'd1) & (icmp_ln195_reg_530 == 1'd0)) | ((icmp_ln195_1_reg_534 == 1'd1) & (icmp_ln237_reg_614 == 1'd1))))) begin
        ap_phi_mux_p_1_rec_pn_phi_fu_181_p6 = zext_ln229_reg_585;
    end else begin
        ap_phi_mux_p_1_rec_pn_phi_fu_181_p6 = p_1_rec_pn_reg_178;
    end
end

always @ (*) begin
    if (((icmp_ln194_fu_246_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        data_0_address0 = sext_ln232_fu_458_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        data_0_address0 = sext_ln212_fu_365_p1;
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
        instance_state_address0 = instance_state_addr_reg_609;
    end else if (((icmp_ln231_fu_424_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        instance_state_address0 = zext_ln149_fu_469_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        instance_state_address0 = instance_state_addr_3_reg_564;
    end else if (((icmp_ln211_fu_315_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        instance_state_address0 = zext_ln212_fu_327_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state10) & (ap_predicate_op117_call_state10 == 1'b1)))) begin
        instance_state_address0 = grp_KeccakP1600_Permute_s_fu_190_state_address0;
    end else begin
        instance_state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5) | ((icmp_ln211_fu_315_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln231_fu_424_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        instance_state_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state10) & (ap_predicate_op117_call_state10 == 1'b1)))) begin
        instance_state_ce0 = grp_KeccakP1600_Permute_s_fu_190_state_ce0;
    end else begin
        instance_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
        instance_state_d0 = grp_fu_208_p2;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state10) & (ap_predicate_op117_call_state10 == 1'b1)))) begin
        instance_state_d0 = grp_KeccakP1600_Permute_s_fu_190_state_d0;
    end else begin
        instance_state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
        instance_state_we0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state10) & (ap_predicate_op117_call_state10 == 1'b1)))) begin
        instance_state_we0 = grp_KeccakP1600_Permute_s_fu_190_state_we0;
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
            if (((icmp_ln194_fu_246_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln195_1_fu_268_p2 == 1'd0) & (icmp_ln194_fu_246_p2 == 1'd1) & (icmp_ln195_fu_252_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln206_fu_294_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln211_fu_315_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_KeccakP1600_Permute_s_fu_190_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln231_fu_424_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
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

assign add_ln195_fu_262_p2 = (30'd168 + trunc_ln195_fu_258_p1);

assign add_ln212_1_fu_350_p2 = (trunc_ln194_3_fu_346_p1 + add_ln212_fu_340_p2);

assign add_ln212_2_fu_360_p2 = (select_ln212_reg_516 + zext_ln212_4_fu_356_p1);

assign add_ln212_fu_340_p2 = (zext_ln212_3_fu_332_p1 + trunc_ln206_fu_336_p1);

assign add_ln214_fu_376_p2 = (p_1_rec_reg_144 + 64'd168);

assign add_ln224_fu_385_p2 = (zext_ln223_fu_382_p1 + instance_byteIOIndex_fu_64);

assign add_ln232_3_fu_453_p2 = (select_ln212_reg_516 + zext_ln232_fu_449_p1);

assign add_ln232_4_fu_463_p2 = (loop_1_reg_167 + instance_byteIOIndex_fu_64);

assign add_ln232_fu_443_p2 = (trunc_ln232_fu_435_p1 + trunc_ln194_fu_439_p1);

assign add_ln236_fu_474_p2 = (instance_byteIOIndex_fu_64 + select_ln224_reg_579);

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
    ap_block_state10_on_subcall_done = ((grp_KeccakP1600_Permute_s_fu_190_ap_done == 1'b0) & (ap_predicate_op117_call_state10 == 1'b1));
end

always @ (*) begin
    ap_predicate_op117_call_state10 = (((icmp_ln237_reg_614 == 1'd1) & (icmp_ln195_reg_530 == 1'd0)) | ((icmp_ln195_1_reg_534 == 1'd1) & (icmp_ln237_reg_614 == 1'd1)));
end

assign ap_return = instance_byteIOIndex_fu_64;

assign grp_KeccakP1600_Permute_s_fu_190_ap_start = grp_KeccakP1600_Permute_s_fu_190_ap_start_reg;

assign grp_fu_208_p2 = (instance_state_q0 ^ data_0_q0);

assign i_fu_419_p2 = (zext_ln229_3_fu_415_p1 + i_14_load_reg_522);

assign icmp_ln194_fu_246_p2 = ((tmp_fu_236_p4 == 29'd0) ? 1'b1 : 1'b0);

assign icmp_ln195_1_fu_268_p2 = ((add_ln195_fu_262_p2 > 30'd32) ? 1'b1 : 1'b0);

assign icmp_ln195_fu_252_p2 = ((instance_byteIOIndex_fu_64 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln206_fu_294_p2 = ((j_0_reg_134 < 64'd168) ? 1'b1 : 1'b0);

assign icmp_ln211_fu_315_p2 = ((offset_assign_7_reg_156 == 8'd168) ? 1'b1 : 1'b0);

assign icmp_ln224_fu_391_p2 = ((add_ln224_fu_385_p2 > 32'd168) ? 1'b1 : 1'b0);

assign icmp_ln231_fu_424_p2 = ((loop_1_reg_167 == select_ln224_reg_579) ? 1'b1 : 1'b0);

assign icmp_ln237_fu_479_p2 = ((add_ln236_fu_474_p2 == 32'd168) ? 1'b1 : 1'b0);

assign j_4_fu_370_p2 = ($signed(j_0_reg_134) + $signed(64'd18446744073709551448));

assign j_fu_274_p2 = (34'd32 - i_14_fu_60);

assign loop_38_fu_321_p2 = (offset_assign_7_reg_156 + 8'd1);

assign loop_fu_429_p2 = (loop_1_reg_167 + 32'd1);

assign p_2_rec_fu_494_p2 = (ap_phi_mux_p_1_rec_pn_phi_fu_181_p6 + p_01_rec_reg_122);

assign partialBlock_3_fu_397_p2 = (32'd168 - instance_byteIOIndex_fu_64);

assign partialBlock_fu_288_p2 = ($signed(6'd32) - $signed(trunc_ln223_fu_284_p1));

assign select_ln212_fu_215_p3 = ((data_offset1[0:0] === 1'b1) ? 10'd166 : 10'd0);

assign select_ln224_fu_403_p3 = ((icmp_ln224_fu_391_p2[0:0] === 1'b1) ? partialBlock_3_fu_397_p2 : zext_ln223_fu_382_p1);

assign sext_ln212_fu_365_p1 = $signed(add_ln212_2_fu_360_p2);

assign sext_ln232_fu_458_p1 = $signed(add_ln232_3_fu_453_p2);

assign sub_ln216_fu_304_p2 = (34'd32 - trunc_ln216_fu_300_p1);

assign tmp_fu_236_p4 = {{i_14_fu_60[33:5]}};

assign trunc_ln194_3_fu_346_p1 = p_01_rec_reg_122[8:0];

assign trunc_ln194_fu_439_p1 = p_01_rec_reg_122[8:0];

assign trunc_ln195_fu_258_p1 = i_14_fu_60[29:0];

assign trunc_ln206_fu_336_p1 = p_1_rec_reg_144[8:0];

assign trunc_ln216_fu_300_p1 = j_0_reg_134[33:0];

assign trunc_ln223_fu_284_p1 = i_14_fu_60[5:0];

assign trunc_ln232_fu_435_p1 = loop_1_reg_167[8:0];

assign zext_ln149_fu_469_p1 = add_ln232_4_fu_463_p2;

assign zext_ln206_fu_280_p1 = j_fu_274_p2;

assign zext_ln212_3_fu_332_p1 = offset_assign_7_reg_156;

assign zext_ln212_4_fu_356_p1 = add_ln212_1_fu_350_p2;

assign zext_ln212_fu_327_p1 = offset_assign_7_reg_156;

assign zext_ln223_fu_382_p1 = partialBlock_reg_543;

assign zext_ln229_3_fu_415_p1 = select_ln224_fu_403_p3;

assign zext_ln229_fu_411_p1 = select_ln224_fu_403_p3;

assign zext_ln232_fu_449_p1 = add_ln232_fu_443_p2;

always @ (posedge ap_clk) begin
    select_ln212_reg_516[0] <= 1'b0;
    select_ln212_reg_516[4:3] <= 2'b00;
    select_ln212_reg_516[6:6] <= 1'b0;
    select_ln212_reg_516[9:8] <= 2'b00;
    zext_ln229_reg_585[63:32] <= 32'b00000000000000000000000000000000;
end

endmodule //KeccakWidth1600_Spon_7
