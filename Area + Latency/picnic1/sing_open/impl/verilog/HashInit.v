// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module HashInit (
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
        hashPrefix,
        ap_return
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

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
input  [3:0] hashPrefix;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] ctx_sponge_state_address0;
reg ctx_sponge_state_ce0;
reg ctx_sponge_state_we0;
reg[7:0] ctx_sponge_state_d0;
reg[31:0] ap_return;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] loop_fu_92_p2;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln66_fu_103_p2;
reg   [0:0] icmp_ln66_reg_122;
wire   [0:0] icmp_ln139_fu_86_p2;
wire    grp_KeccakWidth1600_Spon_9_fu_74_ap_start;
wire    grp_KeccakWidth1600_Spon_9_fu_74_ap_done;
wire    grp_KeccakWidth1600_Spon_9_fu_74_ap_idle;
wire    grp_KeccakWidth1600_Spon_9_fu_74_ap_ready;
wire   [7:0] grp_KeccakWidth1600_Spon_9_fu_74_instance_state_address0;
wire    grp_KeccakWidth1600_Spon_9_fu_74_instance_state_ce0;
wire    grp_KeccakWidth1600_Spon_9_fu_74_instance_state_we0;
wire   [7:0] grp_KeccakWidth1600_Spon_9_fu_74_instance_state_d0;
wire   [31:0] grp_KeccakWidth1600_Spon_9_fu_74_ap_return;
reg   [7:0] loop_0_i_i_i_reg_52;
reg   [31:0] ap_phi_mux_ctx_sponge_byteIOInd_phi_fu_67_p4;
reg   [31:0] ctx_sponge_byteIOInd_reg_63;
wire    ap_CS_fsm_state3;
reg    ap_block_state3_on_subcall_done;
reg    grp_KeccakWidth1600_Spon_9_fu_74_ap_start_reg;
wire   [63:0] zext_ln140_fu_98_p1;
reg   [31:0] ap_return_preg;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_KeccakWidth1600_Spon_9_fu_74_ap_start_reg = 1'b0;
#0 ap_return_preg = 32'd0;
end

KeccakWidth1600_Spon_9 grp_KeccakWidth1600_Spon_9_fu_74(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakWidth1600_Spon_9_fu_74_ap_start),
    .ap_done(grp_KeccakWidth1600_Spon_9_fu_74_ap_done),
    .ap_idle(grp_KeccakWidth1600_Spon_9_fu_74_ap_idle),
    .ap_ready(grp_KeccakWidth1600_Spon_9_fu_74_ap_ready),
    .instance_state_address0(grp_KeccakWidth1600_Spon_9_fu_74_instance_state_address0),
    .instance_state_ce0(grp_KeccakWidth1600_Spon_9_fu_74_instance_state_ce0),
    .instance_state_we0(grp_KeccakWidth1600_Spon_9_fu_74_instance_state_we0),
    .instance_state_d0(grp_KeccakWidth1600_Spon_9_fu_74_instance_state_d0),
    .instance_state_q0(ctx_sponge_state_q0),
    .data_0_read(hashPrefix),
    .ap_return(grp_KeccakWidth1600_Spon_9_fu_74_ap_return)
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
        ap_return_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_return_preg <= ap_phi_mux_ctx_sponge_byteIOInd_phi_fu_67_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_KeccakWidth1600_Spon_9_fu_74_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln139_fu_86_p2 == 1'd1) & (icmp_ln66_fu_103_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_KeccakWidth1600_Spon_9_fu_74_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakWidth1600_Spon_9_fu_74_ap_ready == 1'b1)) begin
            grp_KeccakWidth1600_Spon_9_fu_74_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (icmp_ln66_reg_122 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        ctx_sponge_byteIOInd_reg_63 <= grp_KeccakWidth1600_Spon_9_fu_74_ap_return;
    end else if (((icmp_ln139_fu_86_p2 == 1'd1) & (icmp_ln66_fu_103_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ctx_sponge_byteIOInd_reg_63 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        loop_0_i_i_i_reg_52 <= 8'd0;
    end else if (((icmp_ln139_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        loop_0_i_i_i_reg_52 <= loop_fu_92_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln139_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln66_reg_122 <= icmp_ln66_fu_103_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln66_reg_122 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_phi_mux_ctx_sponge_byteIOInd_phi_fu_67_p4 = grp_KeccakWidth1600_Spon_9_fu_74_ap_return;
    end else begin
        ap_phi_mux_ctx_sponge_byteIOInd_phi_fu_67_p4 = ctx_sponge_byteIOInd_reg_63;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_return = ap_phi_mux_ctx_sponge_byteIOInd_phi_fu_67_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((icmp_ln139_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ctx_sponge_state_address0 = zext_ln140_fu_98_p1;
    end else if (((icmp_ln66_reg_122 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        ctx_sponge_state_address0 = grp_KeccakWidth1600_Spon_9_fu_74_instance_state_address0;
    end else begin
        ctx_sponge_state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln139_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ctx_sponge_state_ce0 = 1'b1;
    end else if (((icmp_ln66_reg_122 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        ctx_sponge_state_ce0 = grp_KeccakWidth1600_Spon_9_fu_74_instance_state_ce0;
    end else begin
        ctx_sponge_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln139_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ctx_sponge_state_d0 = 8'd0;
    end else if (((icmp_ln66_reg_122 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        ctx_sponge_state_d0 = grp_KeccakWidth1600_Spon_9_fu_74_instance_state_d0;
    end else begin
        ctx_sponge_state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln139_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ctx_sponge_state_we0 = 1'b1;
    end else if (((icmp_ln66_reg_122 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        ctx_sponge_state_we0 = grp_KeccakWidth1600_Spon_9_fu_74_instance_state_we0;
    end else begin
        ctx_sponge_state_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln139_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
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

always @ (*) begin
    ap_block_state3_on_subcall_done = ((icmp_ln66_reg_122 == 1'd0) & (grp_KeccakWidth1600_Spon_9_fu_74_ap_done == 1'b0));
end

assign grp_KeccakWidth1600_Spon_9_fu_74_ap_start = grp_KeccakWidth1600_Spon_9_fu_74_ap_start_reg;

assign icmp_ln139_fu_86_p2 = ((loop_0_i_i_i_reg_52 == 8'd200) ? 1'b1 : 1'b0);

assign icmp_ln66_fu_103_p2 = ((hashPrefix == 4'd15) ? 1'b1 : 1'b0);

assign loop_fu_92_p2 = (loop_0_i_i_i_reg_52 + 8'd1);

assign zext_ln140_fu_98_p1 = loop_0_i_i_i_reg_52;

endmodule //HashInit
