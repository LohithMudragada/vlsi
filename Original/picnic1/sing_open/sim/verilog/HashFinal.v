// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module HashFinal (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ctx_sponge_state_address0,
        ctx_sponge_state_ce0,
        ctx_sponge_state_we0,
        ctx_sponge_state_d0,
        ctx_sponge_state_q0,
        ctx_sponge_byteIOInd,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] ctx_sponge_state_address0;
output   ctx_sponge_state_ce0;
output   ctx_sponge_state_we0;
output  [7:0] ctx_sponge_state_d0;
input  [7:0] ctx_sponge_state_q0;
input  [31:0] ctx_sponge_byteIOInd;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] ctx_sponge_state_address0;
reg ctx_sponge_state_ce0;
reg ctx_sponge_state_we0;
reg[7:0] ctx_sponge_state_d0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] ctx_sponge_state_add_reg_95;
wire   [7:0] ctx_sponge_state_add_1_reg_100;
wire    ap_CS_fsm_state3;
wire    grp_KeccakP1600_Permute_s_fu_54_ap_start;
wire    grp_KeccakP1600_Permute_s_fu_54_ap_done;
wire    grp_KeccakP1600_Permute_s_fu_54_ap_idle;
wire    grp_KeccakP1600_Permute_s_fu_54_ap_ready;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_54_state_address0;
wire    grp_KeccakP1600_Permute_s_fu_54_state_ce0;
wire    grp_KeccakP1600_Permute_s_fu_54_state_we0;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_54_state_d0;
reg    grp_KeccakP1600_Permute_s_fu_54_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln149_fu_64_p1;
wire    ap_CS_fsm_state2;
wire   [7:0] xor_ln149_fu_69_p2;
wire    ap_CS_fsm_state4;
wire   [7:0] xor_ln149_11_fu_76_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_KeccakP1600_Permute_s_fu_54_ap_start_reg = 1'b0;
end

KeccakP1600_Permute_s grp_KeccakP1600_Permute_s_fu_54(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakP1600_Permute_s_fu_54_ap_start),
    .ap_done(grp_KeccakP1600_Permute_s_fu_54_ap_done),
    .ap_idle(grp_KeccakP1600_Permute_s_fu_54_ap_idle),
    .ap_ready(grp_KeccakP1600_Permute_s_fu_54_ap_ready),
    .state_address0(grp_KeccakP1600_Permute_s_fu_54_state_address0),
    .state_ce0(grp_KeccakP1600_Permute_s_fu_54_state_ce0),
    .state_we0(grp_KeccakP1600_Permute_s_fu_54_state_we0),
    .state_d0(grp_KeccakP1600_Permute_s_fu_54_state_d0),
    .state_q0(ctx_sponge_state_q0)
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
        grp_KeccakP1600_Permute_s_fu_54_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_KeccakP1600_Permute_s_fu_54_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakP1600_Permute_s_fu_54_ap_ready == 1'b1)) begin
            grp_KeccakP1600_Permute_s_fu_54_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_sponge_state_add_reg_95 <= zext_ln149_fu_64_p1;
    end
end

always @ (*) begin
    if ((((grp_KeccakP1600_Permute_s_fu_54_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_KeccakP1600_Permute_s_fu_54_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ctx_sponge_state_address0 = ctx_sponge_state_add_1_reg_100;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_sponge_state_address0 = 64'd167;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ctx_sponge_state_address0 = ctx_sponge_state_add_reg_95;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        ctx_sponge_state_address0 = zext_ln149_fu_64_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_sponge_state_address0 = grp_KeccakP1600_Permute_s_fu_54_state_address0;
    end else begin
        ctx_sponge_state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        ctx_sponge_state_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_sponge_state_ce0 = grp_KeccakP1600_Permute_s_fu_54_state_ce0;
    end else begin
        ctx_sponge_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ctx_sponge_state_d0 = xor_ln149_11_fu_76_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ctx_sponge_state_d0 = xor_ln149_fu_69_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_sponge_state_d0 = grp_KeccakP1600_Permute_s_fu_54_state_d0;
    end else begin
        ctx_sponge_state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        ctx_sponge_state_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_sponge_state_we0 = grp_KeccakP1600_Permute_s_fu_54_state_we0;
    end else begin
        ctx_sponge_state_we0 = 1'b0;
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
            if (((grp_KeccakP1600_Permute_s_fu_54_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_return_0 = 32'd0;

assign ap_return_1 = 32'd1;

assign ctx_sponge_state_add_1_reg_100 = 64'd167;

assign grp_KeccakP1600_Permute_s_fu_54_ap_start = grp_KeccakP1600_Permute_s_fu_54_ap_start_reg;

assign xor_ln149_11_fu_76_p2 = (ctx_sponge_state_q0 ^ 8'd128);

assign xor_ln149_fu_69_p2 = (ctx_sponge_state_q0 ^ 8'd31);

assign zext_ln149_fu_64_p1 = ctx_sponge_byteIOInd;

endmodule //HashFinal