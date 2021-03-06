// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module KeccakP1600_Permute_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_address0,
        state_ce0,
        state_we0,
        state_d0,
        state_q0
);

parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] state_address0;
output   state_ce0;
output   state_we0;
output  [7:0] state_d0;
input  [7:0] state_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] state_address0;
reg state_ce0;
reg state_we0;

(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] KeccakRhoOffsets_address0;
reg    KeccakRhoOffsets_ce0;
wire   [5:0] KeccakRhoOffsets_q0;
wire   [4:0] KeccakRoundConstants_address0;
reg    KeccakRoundConstants_ce0;
wire   [63:0] KeccakRoundConstants_q0;
wire   [4:0] i_37_fu_256_p2;
reg   [4:0] i_37_reg_548;
wire    ap_CS_fsm_state2;
reg   [4:0] stateAsWords_addr_1_reg_553;
wire   [0:0] icmp_ln269_fu_250_p2;
wire   [7:0] shl_ln_fu_267_p3;
reg   [7:0] shl_ln_reg_558;
wire   [3:0] j_fu_285_p2;
reg   [3:0] j_reg_572;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln271_fu_279_p2;
wire   [4:0] i_38_fu_340_p2;
reg   [4:0] i_38_reg_585;
wire    ap_CS_fsm_state5;
wire   [2:0] x_fu_352_p2;
reg   [2:0] x_reg_593;
wire    ap_CS_fsm_state7;
wire   [3:0] zext_ln353_fu_358_p1;
reg   [3:0] zext_ln353_reg_598;
wire   [0:0] icmp_ln352_fu_346_p2;
wire   [2:0] y_fu_368_p2;
reg   [2:0] y_reg_606;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln352_1_fu_362_p2;
wire   [0:0] icmp_ln353_fu_407_p2;
reg   [0:0] icmp_ln353_reg_616;
reg   [4:0] stateAsWords_addr_3_reg_621;
wire   [63:0] select_ln353_fu_449_p3;
reg   [63:0] select_ln353_reg_626;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
wire   [4:0] i_fu_474_p2;
reg   [4:0] i_reg_639;
wire    ap_CS_fsm_state16;
wire   [0:0] icmp_ln280_fu_468_p2;
wire   [7:0] shl_ln6_fu_485_p3;
reg   [7:0] shl_ln6_reg_649;
wire    ap_CS_fsm_state17;
wire   [63:0] stateAsWords_q0;
reg   [63:0] stateAsWords_load_1_reg_654;
wire   [3:0] j_19_fu_503_p2;
wire    ap_CS_fsm_state18;
reg   [4:0] stateAsWords_address0;
reg    stateAsWords_ce0;
reg    stateAsWords_we0;
reg   [63:0] stateAsWords_d0;
reg   [4:0] stateAsWords_address1;
reg    stateAsWords_ce1;
reg    stateAsWords_we1;
reg   [63:0] stateAsWords_d1;
wire   [63:0] stateAsWords_q1;
wire    grp_theta_fu_235_ap_start;
wire    grp_theta_fu_235_ap_done;
wire    grp_theta_fu_235_ap_idle;
wire    grp_theta_fu_235_ap_ready;
wire   [4:0] grp_theta_fu_235_A_address0;
wire    grp_theta_fu_235_A_ce0;
wire    grp_theta_fu_235_A_we0;
wire   [63:0] grp_theta_fu_235_A_d0;
wire    grp_chi_fu_240_ap_start;
wire    grp_chi_fu_240_ap_done;
wire    grp_chi_fu_240_ap_idle;
wire    grp_chi_fu_240_ap_ready;
wire   [4:0] grp_chi_fu_240_A_address0;
wire    grp_chi_fu_240_A_ce0;
wire   [4:0] grp_chi_fu_240_A_address1;
wire    grp_chi_fu_240_A_ce1;
wire    grp_chi_fu_240_A_we1;
wire   [63:0] grp_chi_fu_240_A_d1;
wire    grp_pi_fu_245_ap_start;
wire    grp_pi_fu_245_ap_done;
wire    grp_pi_fu_245_ap_idle;
wire    grp_pi_fu_245_ap_ready;
wire   [4:0] grp_pi_fu_245_A_address0;
wire    grp_pi_fu_245_A_ce0;
wire    grp_pi_fu_245_A_we0;
wire   [63:0] grp_pi_fu_245_A_d0;
reg   [4:0] i_0_i_reg_155;
reg   [3:0] j_0_i_reg_166;
wire    ap_CS_fsm_state4;
reg   [4:0] indexRound_assign_reg_178;
wire    ap_CS_fsm_state15;
reg   [2:0] x_0_i_reg_190;
wire    ap_CS_fsm_state6;
reg   [2:0] y_0_i_reg_201;
wire    ap_CS_fsm_state10;
reg   [4:0] i_0_i3_reg_212;
wire   [0:0] icmp_ln281_fu_497_p2;
wire   [0:0] icmp_ln293_fu_334_p2;
reg   [3:0] j_0_i5_reg_224;
reg    grp_theta_fu_235_ap_start_reg;
reg    grp_chi_fu_240_ap_start_reg;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
reg    grp_pi_fu_245_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln270_fu_262_p1;
wire   [63:0] zext_ln272_fu_296_p1;
wire   [63:0] zext_ln353_3_fu_401_p1;
wire   [63:0] zext_ln382_fu_456_p1;
wire   [63:0] zext_ln282_fu_480_p1;
wire   [63:0] zext_ln282_2_fu_540_p1;
wire   [63:0] or_ln272_fu_327_p2;
wire   [63:0] xor_ln382_fu_461_p2;
wire   [7:0] zext_ln271_fu_275_p1;
wire   [7:0] add_ln272_fu_291_p2;
wire   [2:0] trunc_ln272_fu_305_p1;
wire   [5:0] shl_ln272_1_fu_309_p3;
wire   [63:0] zext_ln272_1_fu_301_p1;
wire   [63:0] zext_ln272_2_fu_317_p1;
wire   [63:0] shl_ln272_fu_321_p2;
wire   [3:0] zext_ln353_1_fu_374_p1;
wire   [3:0] add_ln353_fu_386_p2;
wire   [4:0] shl_ln7_fu_378_p3;
wire   [4:0] zext_ln353_2_fu_391_p1;
wire   [4:0] add_ln353_1_fu_395_p2;
wire   [63:0] zext_ln353_5_fu_417_p1;
wire   [6:0] zext_ln353_4_fu_413_p1;
wire   [6:0] sub_ln353_fu_427_p2;
wire   [63:0] zext_ln353_6_fu_433_p1;
wire   [63:0] lshr_ln353_fu_437_p2;
wire   [63:0] shl_ln353_fu_421_p2;
wire   [63:0] xor_ln353_fu_443_p2;
wire   [2:0] trunc_ln282_fu_509_p1;
wire   [5:0] shl_ln282_1_fu_513_p3;
wire   [63:0] zext_ln282_1_fu_521_p1;
wire   [63:0] lshr_ln282_fu_525_p2;
wire   [7:0] zext_ln281_fu_493_p1;
wire   [7:0] add_ln282_fu_535_p2;
reg   [17:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_theta_fu_235_ap_start_reg = 1'b0;
#0 grp_chi_fu_240_ap_start_reg = 1'b0;
#0 grp_pi_fu_245_ap_start_reg = 1'b0;
end

KeccakP1600_Permucud #(
    .DataWidth( 6 ),
    .AddressRange( 25 ),
    .AddressWidth( 5 ))
KeccakRhoOffsets_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(KeccakRhoOffsets_address0),
    .ce0(KeccakRhoOffsets_ce0),
    .q0(KeccakRhoOffsets_q0)
);

KeccakP1600_PermudEe #(
    .DataWidth( 64 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
KeccakRoundConstants_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(KeccakRoundConstants_address0),
    .ce0(KeccakRoundConstants_ce0),
    .q0(KeccakRoundConstants_q0)
);

KeccakP1600_PermueOg #(
    .DataWidth( 64 ),
    .AddressRange( 25 ),
    .AddressWidth( 5 ))
stateAsWords_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(stateAsWords_address0),
    .ce0(stateAsWords_ce0),
    .we0(stateAsWords_we0),
    .d0(stateAsWords_d0),
    .q0(stateAsWords_q0),
    .address1(stateAsWords_address1),
    .ce1(stateAsWords_ce1),
    .we1(stateAsWords_we1),
    .d1(stateAsWords_d1),
    .q1(stateAsWords_q1)
);

theta grp_theta_fu_235(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_theta_fu_235_ap_start),
    .ap_done(grp_theta_fu_235_ap_done),
    .ap_idle(grp_theta_fu_235_ap_idle),
    .ap_ready(grp_theta_fu_235_ap_ready),
    .A_address0(grp_theta_fu_235_A_address0),
    .A_ce0(grp_theta_fu_235_A_ce0),
    .A_we0(grp_theta_fu_235_A_we0),
    .A_d0(grp_theta_fu_235_A_d0),
    .A_q0(stateAsWords_q0)
);

chi grp_chi_fu_240(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_chi_fu_240_ap_start),
    .ap_done(grp_chi_fu_240_ap_done),
    .ap_idle(grp_chi_fu_240_ap_idle),
    .ap_ready(grp_chi_fu_240_ap_ready),
    .A_address0(grp_chi_fu_240_A_address0),
    .A_ce0(grp_chi_fu_240_A_ce0),
    .A_q0(stateAsWords_q0),
    .A_address1(grp_chi_fu_240_A_address1),
    .A_ce1(grp_chi_fu_240_A_ce1),
    .A_we1(grp_chi_fu_240_A_we1),
    .A_d1(grp_chi_fu_240_A_d1),
    .A_q1(stateAsWords_q1)
);

pi grp_pi_fu_245(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_pi_fu_245_ap_start),
    .ap_done(grp_pi_fu_245_ap_done),
    .ap_idle(grp_pi_fu_245_ap_idle),
    .ap_ready(grp_pi_fu_245_ap_ready),
    .A_address0(grp_pi_fu_245_A_address0),
    .A_ce0(grp_pi_fu_245_A_ce0),
    .A_we0(grp_pi_fu_245_A_we0),
    .A_d0(grp_pi_fu_245_A_d0),
    .A_q0(stateAsWords_q0)
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
        grp_chi_fu_240_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_chi_fu_240_ap_start_reg <= 1'b1;
        end else if ((grp_chi_fu_240_ap_ready == 1'b1)) begin
            grp_chi_fu_240_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_pi_fu_245_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln352_fu_346_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
            grp_pi_fu_245_ap_start_reg <= 1'b1;
        end else if ((grp_pi_fu_245_ap_ready == 1'b1)) begin
            grp_pi_fu_245_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_theta_fu_235_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln293_fu_334_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_theta_fu_235_ap_start_reg <= 1'b1;
        end else if ((grp_theta_fu_235_ap_ready == 1'b1)) begin
            grp_theta_fu_235_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln293_fu_334_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        i_0_i3_reg_212 <= 5'd0;
    end else if (((icmp_ln281_fu_497_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
        i_0_i3_reg_212 <= i_reg_639;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln271_fu_279_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_i_reg_155 <= i_37_reg_548;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i_reg_155 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln269_fu_250_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        indexRound_assign_reg_178 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        indexRound_assign_reg_178 <= i_38_reg_585;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        j_0_i5_reg_224 <= 4'd0;
    end else if (((icmp_ln281_fu_497_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        j_0_i5_reg_224 <= j_19_fu_503_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        j_0_i_reg_166 <= j_reg_572;
    end else if (((icmp_ln269_fu_250_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_i_reg_166 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln352_1_fu_362_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        x_0_i_reg_190 <= x_reg_593;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_theta_fu_235_ap_done == 1'b1))) begin
        x_0_i_reg_190 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln352_fu_346_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        y_0_i_reg_201 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        y_0_i_reg_201 <= y_reg_606;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_37_reg_548 <= i_37_fu_256_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_38_reg_585 <= i_38_fu_340_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        i_reg_639 <= i_fu_474_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln352_1_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        icmp_ln353_reg_616 <= icmp_ln353_fu_407_p2;
        stateAsWords_addr_3_reg_621 <= zext_ln353_3_fu_401_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_572 <= j_fu_285_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        select_ln353_reg_626 <= select_ln353_fu_449_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        shl_ln6_reg_649[7 : 3] <= shl_ln6_fu_485_p3[7 : 3];
        stateAsWords_load_1_reg_654 <= stateAsWords_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln269_fu_250_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        shl_ln_reg_558[7 : 3] <= shl_ln_fu_267_p3[7 : 3];
        stateAsWords_addr_1_reg_553 <= zext_ln270_fu_262_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        x_reg_593 <= x_fu_352_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        y_reg_606 <= y_fu_368_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln352_fu_346_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        zext_ln353_reg_598[2 : 0] <= zext_ln353_fu_358_p1[2 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        KeccakRhoOffsets_ce0 = 1'b1;
    end else begin
        KeccakRhoOffsets_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        KeccakRoundConstants_ce0 = 1'b1;
    end else begin
        KeccakRoundConstants_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln280_fu_468_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16)))) begin
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
    if (((icmp_ln280_fu_468_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        stateAsWords_address0 = zext_ln282_fu_480_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        stateAsWords_address0 = 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        stateAsWords_address0 = stateAsWords_addr_1_reg_553;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        stateAsWords_address0 = zext_ln270_fu_262_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        stateAsWords_address0 = grp_pi_fu_245_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        stateAsWords_address0 = grp_chi_fu_240_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        stateAsWords_address0 = grp_theta_fu_235_A_address0;
    end else begin
        stateAsWords_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14))) begin
        stateAsWords_address1 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        stateAsWords_address1 = stateAsWords_addr_3_reg_621;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        stateAsWords_address1 = zext_ln353_3_fu_401_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        stateAsWords_address1 = grp_chi_fu_240_A_address1;
    end else begin
        stateAsWords_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state8))) begin
        stateAsWords_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        stateAsWords_ce0 = grp_pi_fu_245_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        stateAsWords_ce0 = grp_chi_fu_240_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        stateAsWords_ce0 = grp_theta_fu_235_A_ce0;
    end else begin
        stateAsWords_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state8))) begin
        stateAsWords_ce1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        stateAsWords_ce1 = grp_chi_fu_240_A_ce1;
    end else begin
        stateAsWords_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        stateAsWords_d0 = or_ln272_fu_327_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        stateAsWords_d0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        stateAsWords_d0 = grp_pi_fu_245_A_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        stateAsWords_d0 = grp_theta_fu_235_A_d0;
    end else begin
        stateAsWords_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        stateAsWords_d1 = xor_ln382_fu_461_p2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        stateAsWords_d1 = select_ln353_reg_626;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        stateAsWords_d1 = grp_chi_fu_240_A_d1;
    end else begin
        stateAsWords_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((icmp_ln269_fu_250_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        stateAsWords_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        stateAsWords_we0 = grp_pi_fu_245_A_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        stateAsWords_we0 = grp_theta_fu_235_A_we0;
    end else begin
        stateAsWords_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state15))) begin
        stateAsWords_we1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        stateAsWords_we1 = grp_chi_fu_240_A_we1;
    end else begin
        stateAsWords_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        state_address0 = zext_ln282_2_fu_540_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = zext_ln272_fu_296_p1;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state18))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln281_fu_497_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        state_we0 = 1'b1;
    end else begin
        state_we0 = 1'b0;
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
            if (((icmp_ln269_fu_250_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln271_fu_279_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln293_fu_334_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_theta_fu_235_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln352_fu_346_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln352_1_fu_362_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_pi_fu_245_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_chi_fu_240_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state16 : begin
            if (((icmp_ln280_fu_468_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((icmp_ln281_fu_497_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign KeccakRhoOffsets_address0 = zext_ln353_3_fu_401_p1;

assign KeccakRoundConstants_address0 = zext_ln382_fu_456_p1;

assign add_ln272_fu_291_p2 = (shl_ln_reg_558 + zext_ln271_fu_275_p1);

assign add_ln282_fu_535_p2 = (shl_ln6_reg_649 + zext_ln281_fu_493_p1);

assign add_ln353_1_fu_395_p2 = (shl_ln7_fu_378_p3 + zext_ln353_2_fu_391_p1);

assign add_ln353_fu_386_p2 = (zext_ln353_reg_598 + zext_ln353_1_fu_374_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_chi_fu_240_ap_start = grp_chi_fu_240_ap_start_reg;

assign grp_pi_fu_245_ap_start = grp_pi_fu_245_ap_start_reg;

assign grp_theta_fu_235_ap_start = grp_theta_fu_235_ap_start_reg;

assign i_37_fu_256_p2 = (i_0_i_reg_155 + 5'd1);

assign i_38_fu_340_p2 = (indexRound_assign_reg_178 + 5'd1);

assign i_fu_474_p2 = (i_0_i3_reg_212 + 5'd1);

assign icmp_ln269_fu_250_p2 = ((i_0_i_reg_155 == 5'd25) ? 1'b1 : 1'b0);

assign icmp_ln271_fu_279_p2 = ((j_0_i_reg_166 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln280_fu_468_p2 = ((i_0_i3_reg_212 == 5'd25) ? 1'b1 : 1'b0);

assign icmp_ln281_fu_497_p2 = ((j_0_i5_reg_224 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln293_fu_334_p2 = ((indexRound_assign_reg_178 == 5'd24) ? 1'b1 : 1'b0);

assign icmp_ln352_1_fu_362_p2 = ((y_0_i_reg_201 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln352_fu_346_p2 = ((x_0_i_reg_190 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln353_fu_407_p2 = ((add_ln353_1_fu_395_p2 == 5'd0) ? 1'b1 : 1'b0);

assign j_19_fu_503_p2 = (j_0_i5_reg_224 + 4'd1);

assign j_fu_285_p2 = (j_0_i_reg_166 + 4'd1);

assign lshr_ln282_fu_525_p2 = stateAsWords_load_1_reg_654 >> zext_ln282_1_fu_521_p1;

assign lshr_ln353_fu_437_p2 = stateAsWords_q1 >> zext_ln353_6_fu_433_p1;

assign or_ln272_fu_327_p2 = (stateAsWords_q0 | shl_ln272_fu_321_p2);

assign select_ln353_fu_449_p3 = ((icmp_ln353_reg_616[0:0] === 1'b1) ? stateAsWords_q0 : xor_ln353_fu_443_p2);

assign shl_ln272_1_fu_309_p3 = {{trunc_ln272_fu_305_p1}, {3'd0}};

assign shl_ln272_fu_321_p2 = zext_ln272_1_fu_301_p1 << zext_ln272_2_fu_317_p1;

assign shl_ln282_1_fu_513_p3 = {{trunc_ln282_fu_509_p1}, {3'd0}};

assign shl_ln353_fu_421_p2 = stateAsWords_q1 << zext_ln353_5_fu_417_p1;

assign shl_ln6_fu_485_p3 = {{i_0_i3_reg_212}, {3'd0}};

assign shl_ln7_fu_378_p3 = {{y_0_i_reg_201}, {2'd0}};

assign shl_ln_fu_267_p3 = {{i_0_i_reg_155}, {3'd0}};

assign state_d0 = lshr_ln282_fu_525_p2[7:0];

assign sub_ln353_fu_427_p2 = ($signed(7'd64) - $signed(zext_ln353_4_fu_413_p1));

assign trunc_ln272_fu_305_p1 = j_0_i_reg_166[2:0];

assign trunc_ln282_fu_509_p1 = j_0_i5_reg_224[2:0];

assign x_fu_352_p2 = (x_0_i_reg_190 + 3'd1);

assign xor_ln353_fu_443_p2 = (shl_ln353_fu_421_p2 ^ lshr_ln353_fu_437_p2);

assign xor_ln382_fu_461_p2 = (stateAsWords_q1 ^ KeccakRoundConstants_q0);

assign y_fu_368_p2 = (y_0_i_reg_201 + 3'd1);

assign zext_ln270_fu_262_p1 = i_0_i_reg_155;

assign zext_ln271_fu_275_p1 = j_0_i_reg_166;

assign zext_ln272_1_fu_301_p1 = state_q0;

assign zext_ln272_2_fu_317_p1 = shl_ln272_1_fu_309_p3;

assign zext_ln272_fu_296_p1 = add_ln272_fu_291_p2;

assign zext_ln281_fu_493_p1 = j_0_i5_reg_224;

assign zext_ln282_1_fu_521_p1 = shl_ln282_1_fu_513_p3;

assign zext_ln282_2_fu_540_p1 = add_ln282_fu_535_p2;

assign zext_ln282_fu_480_p1 = i_0_i3_reg_212;

assign zext_ln353_1_fu_374_p1 = y_0_i_reg_201;

assign zext_ln353_2_fu_391_p1 = add_ln353_fu_386_p2;

assign zext_ln353_3_fu_401_p1 = add_ln353_1_fu_395_p2;

assign zext_ln353_4_fu_413_p1 = KeccakRhoOffsets_q0;

assign zext_ln353_5_fu_417_p1 = KeccakRhoOffsets_q0;

assign zext_ln353_6_fu_433_p1 = sub_ln353_fu_427_p2;

assign zext_ln353_fu_358_p1 = x_0_i_reg_190;

assign zext_ln382_fu_456_p1 = indexRound_assign_reg_178;

always @ (posedge ap_clk) begin
    shl_ln_reg_558[2:0] <= 3'b000;
    zext_ln353_reg_598[3] <= 1'b0;
    shl_ln6_reg_649[2:0] <= 3'b000;
end

endmodule //KeccakP1600_Permute_s
