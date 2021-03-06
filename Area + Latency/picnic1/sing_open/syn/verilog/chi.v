// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module chi (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_address0,
        A_ce0,
        A_q0,
        A_address1,
        A_ce1,
        A_we1,
        A_d1,
        A_q1
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] A_address0;
output   A_ce0;
input  [63:0] A_q0;
output  [4:0] A_address1;
output   A_ce1;
output   A_we1;
output  [63:0] A_d1;
input  [63:0] A_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] A_address0;
reg A_ce0;
reg[4:0] A_address1;
reg A_ce1;
reg A_we1;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] y_fu_139_p2;
reg   [2:0] y_reg_317;
wire    ap_CS_fsm_state2;
wire   [4:0] add_ln374_1_fu_157_p2;
reg   [4:0] add_ln374_1_reg_322;
wire   [0:0] icmp_ln372_fu_133_p2;
wire   [2:0] x_fu_169_p2;
reg   [2:0] x_reg_333;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln373_fu_163_p2;
reg   [63:0] A_load_reg_345;
wire    ap_CS_fsm_state4;
wire   [2:0] x_8_fu_290_p2;
reg   [2:0] x_8_reg_363;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln375_fu_284_p2;
wire   [4:0] add_ln376_fu_305_p2;
reg   [4:0] add_ln376_reg_373;
reg   [2:0] C_address0;
reg    C_ce0;
reg    C_we0;
wire   [63:0] C_d0;
wire   [63:0] C_q0;
reg   [2:0] y_0_reg_99;
reg   [2:0] x_0_reg_110;
wire    ap_CS_fsm_state5;
reg   [2:0] x_1_reg_122;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln374_fu_184_p1;
wire   [63:0] zext_ln374_1_fu_216_p1;
wire   [63:0] zext_ln374_2_fu_256_p1;
wire   [63:0] zext_ln374_3_fu_279_p1;
wire   [63:0] zext_ln376_fu_296_p1;
wire   [63:0] zext_ln376_1_fu_310_p1;
wire   [4:0] zext_ln374_4_fu_145_p1;
wire   [4:0] shl_ln_fu_149_p3;
wire   [4:0] zext_ln374_5_fu_175_p1;
wire   [4:0] add_ln374_fu_179_p2;
wire   [0:0] icmp_ln374_fu_189_p2;
wire   [2:0] xor_ln374_2_fu_194_p2;
wire   [2:0] select_ln374_fu_200_p3;
wire   [4:0] zext_ln374_6_fu_207_p1;
wire   [4:0] add_ln374_2_fu_211_p2;
wire   [2:0] add_ln374_3_fu_221_p2;
wire   [0:0] icmp_ln374_1_fu_227_p2;
wire   [2:0] add_ln374_6_fu_233_p2;
wire   [2:0] select_ln374_1_fu_239_p3;
wire   [4:0] zext_ln374_7_fu_247_p1;
wire   [4:0] add_ln374_4_fu_251_p2;
wire   [63:0] xor_ln374_fu_261_p2;
wire   [63:0] and_ln374_fu_267_p2;
wire   [4:0] zext_ln376_2_fu_301_p1;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
end

theta_D #(
    .DataWidth( 64 ),
    .AddressRange( 5 ),
    .AddressWidth( 3 ))
C_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(C_address0),
    .ce0(C_ce0),
    .we0(C_we0),
    .d0(C_d0),
    .q0(C_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        x_0_reg_110 <= x_reg_333;
    end else if (((icmp_ln372_fu_133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        x_0_reg_110 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln373_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        x_1_reg_122 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        x_1_reg_122 <= x_8_reg_363;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln375_fu_284_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        y_0_reg_99 <= y_reg_317;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        y_0_reg_99 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        A_load_reg_345 <= A_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln372_fu_133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        add_ln374_1_reg_322 <= add_ln374_1_fu_157_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln375_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        add_ln376_reg_373 <= add_ln376_fu_305_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        x_8_reg_363 <= x_8_fu_290_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        x_reg_333 <= x_fu_169_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y_reg_317 <= y_fu_139_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        A_address0 = zext_ln374_1_fu_216_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        A_address0 = zext_ln374_fu_184_p1;
    end else begin
        A_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        A_address1 = zext_ln376_1_fu_310_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        A_address1 = zext_ln374_2_fu_256_p1;
    end else begin
        A_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state7))) begin
        A_ce1 = 1'b1;
    end else begin
        A_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        A_we1 = 1'b1;
    end else begin
        A_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_address0 = zext_ln376_fu_296_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        C_address0 = zext_ln374_3_fu_279_p1;
    end else begin
        C_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        C_ce0 = 1'b1;
    end else begin
        C_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        C_we0 = 1'b1;
    end else begin
        C_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln372_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln372_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((icmp_ln372_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln373_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln375_fu_284_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_d1 = C_q0;

assign C_d0 = (and_ln374_fu_267_p2 ^ A_load_reg_345);

assign add_ln374_1_fu_157_p2 = (zext_ln374_4_fu_145_p1 + shl_ln_fu_149_p3);

assign add_ln374_2_fu_211_p2 = (add_ln374_1_reg_322 + zext_ln374_6_fu_207_p1);

assign add_ln374_3_fu_221_p2 = (x_0_reg_110 + 3'd2);

assign add_ln374_4_fu_251_p2 = (add_ln374_1_reg_322 + zext_ln374_7_fu_247_p1);

assign add_ln374_6_fu_233_p2 = ($signed(x_0_reg_110) + $signed(3'd5));

assign add_ln374_fu_179_p2 = (add_ln374_1_reg_322 + zext_ln374_5_fu_175_p1);

assign add_ln376_fu_305_p2 = (add_ln374_1_reg_322 + zext_ln376_2_fu_301_p1);

assign and_ln374_fu_267_p2 = (xor_ln374_fu_261_p2 & A_q1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign icmp_ln372_fu_133_p2 = ((y_0_reg_99 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln373_fu_163_p2 = ((x_0_reg_110 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln374_1_fu_227_p2 = ((add_ln374_3_fu_221_p2 < 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln374_fu_189_p2 = ((x_reg_333 < 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln375_fu_284_p2 = ((x_1_reg_122 == 3'd5) ? 1'b1 : 1'b0);

assign select_ln374_1_fu_239_p3 = ((icmp_ln374_1_fu_227_p2[0:0] === 1'b1) ? add_ln374_3_fu_221_p2 : add_ln374_6_fu_233_p2);

assign select_ln374_fu_200_p3 = ((icmp_ln374_fu_189_p2[0:0] === 1'b1) ? x_reg_333 : xor_ln374_2_fu_194_p2);

assign shl_ln_fu_149_p3 = {{y_0_reg_99}, {2'd0}};

assign x_8_fu_290_p2 = (x_1_reg_122 + 3'd1);

assign x_fu_169_p2 = (x_0_reg_110 + 3'd1);

assign xor_ln374_2_fu_194_p2 = (x_0_reg_110 ^ 3'd4);

assign xor_ln374_fu_261_p2 = (64'd18446744073709551615 ^ A_q0);

assign y_fu_139_p2 = (y_0_reg_99 + 3'd1);

assign zext_ln374_1_fu_216_p1 = add_ln374_2_fu_211_p2;

assign zext_ln374_2_fu_256_p1 = add_ln374_4_fu_251_p2;

assign zext_ln374_3_fu_279_p1 = x_0_reg_110;

assign zext_ln374_4_fu_145_p1 = y_0_reg_99;

assign zext_ln374_5_fu_175_p1 = x_0_reg_110;

assign zext_ln374_6_fu_207_p1 = select_ln374_fu_200_p3;

assign zext_ln374_7_fu_247_p1 = select_ln374_1_fu_239_p3;

assign zext_ln374_fu_184_p1 = add_ln374_fu_179_p2;

assign zext_ln376_1_fu_310_p1 = add_ln376_reg_373;

assign zext_ln376_2_fu_301_p1 = x_1_reg_122;

assign zext_ln376_fu_296_p1 = x_1_reg_122;

endmodule //chi
