// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module matrix_mul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0,
        output_offset,
        state_address0,
        state_ce0,
        state_q0,
        state_offset,
        matrix_offset
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] output_r_address0;
output   output_r_ce0;
output  [3:0] output_r_we0;
output  [31:0] output_r_d0;
input  [4:0] output_offset;
output  [9:0] state_address0;
output   state_ce0;
input  [31:0] state_q0;
input  [7:0] state_offset;
input  [13:0] matrix_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg output_r_ce0;
reg[3:0] output_r_we0;
reg state_ce0;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [13:0] temp_matrix_address0;
reg    temp_matrix_ce0;
wire   [31:0] temp_matrix_q0;
wire   [10:0] zext_ln127_5_cast_fu_302_p1;
reg   [10:0] zext_ln127_5_cast_reg_954;
wire   [2:0] trunc_ln124_fu_306_p1;
reg   [2:0] trunc_ln124_reg_964;
wire    ap_CS_fsm_state2;
wire   [7:0] i_fu_316_p2;
reg   [7:0] i_reg_972;
wire   [8:0] shl_ln_fu_326_p3;
reg   [8:0] shl_ln_reg_977;
wire   [0:0] icmp_ln124_fu_310_p2;
wire   [2:0] trunc_ln134_fu_334_p1;
reg   [2:0] trunc_ln134_reg_982;
wire   [2:0] j_fu_347_p2;
reg   [2:0] j_reg_990;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln125_fu_341_p2;
wire   [31:0] prod_q0;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln85_fu_403_p2;
wire   [2:0] i_19_fu_409_p2;
reg   [2:0] i_19_reg_1018;
reg   [1:0] tmp_61_reg_1023;
reg   [5:0] temp_addr_5_reg_1029;
wire   [31:0] x_7_fu_440_p2;
wire    ap_CS_fsm_state7;
wire   [4:0] start_pos_fu_652_p3;
reg   [4:0] start_pos_reg_1039;
wire    ap_CS_fsm_state8;
wire   [4:0] or_ln66_11_fu_660_p2;
reg   [4:0] or_ln66_11_reg_1045;
wire   [7:0] or_ln66_fu_796_p2;
reg   [7:0] or_ln66_reg_1051;
wire   [2:0] loop_fu_924_p2;
reg   [2:0] loop_reg_1059;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln133_fu_918_p2;
wire   [2:0] add_ln134_fu_935_p2;
reg   [2:0] add_ln134_reg_1069;
reg   [5:0] prod_address0;
reg    prod_ce0;
reg    prod_we0;
wire   [31:0] prod_d0;
reg   [5:0] temp_address0;
reg    temp_ce0;
reg   [3:0] temp_we0;
wire   [31:0] temp_d0;
wire   [31:0] temp_q0;
reg   [7:0] bitNumber_assign_reg_234;
wire    ap_CS_fsm_state9;
reg   [2:0] j_0_reg_246;
wire    ap_CS_fsm_state4;
reg   [31:0] x_0_i_reg_258;
reg   [2:0] i_0_i_reg_268;
reg   [2:0] loop_0_reg_279;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln127_6_fu_371_p1;
wire   [63:0] zext_ln127_4_fu_381_p1;
wire   [63:0] zext_ln127_fu_386_p1;
wire   [63:0] zext_ln85_fu_398_p1;
wire   [63:0] zext_ln66_fu_435_p1;
wire   [63:0] zext_ln134_fu_930_p1;
wire   [63:0] zext_ln134_3_fu_940_p1;
wire   [3:0] shl_ln66_23_fu_911_p2;
reg   [4:0] grp_fu_290_p0;
reg   [4:0] grp_fu_290_p1;
wire   [9:0] tmp_s_fu_294_p3;
wire   [6:0] trunc_ln126_fu_322_p1;
wire   [8:0] zext_ln125_fu_337_p1;
wire   [8:0] add_ln126_fu_353_p2;
wire   [10:0] zext_ln127_5_fu_362_p1;
wire   [10:0] add_ln127_2_fu_366_p2;
wire   [13:0] zext_ln126_fu_358_p1;
wire   [13:0] add_ln127_fu_376_p2;
wire   [2:0] adjSize_fu_425_p4;
wire   [30:0] lshr_ln_fu_446_p4;
wire   [31:0] zext_ln93_fu_456_p1;
wire   [31:0] y_fu_486_p2;
wire   [29:0] lshr_ln4_fu_492_p4;
wire   [23:0] trunc_ln93_6_fu_476_p4;
wire   [23:0] trunc_ln93_2_fu_472_p1;
wire   [31:0] zext_ln94_fu_502_p1;
wire   [31:0] y_7_fu_530_p2;
wire   [27:0] lshr_ln5_fu_536_p4;
wire   [23:0] trunc_ln94_2_fu_520_p4;
wire   [23:0] xor_ln94_fu_514_p2;
wire   [31:0] zext_ln95_fu_546_p1;
wire   [23:0] trunc_ln95_2_fu_564_p4;
wire   [23:0] xor_ln95_fu_558_p2;
wire   [31:0] y_8_fu_574_p2;
wire   [23:0] trunc_ln_fu_586_p4;
wire   [23:0] xor_ln95_4_fu_580_p2;
wire   [23:0] y_9_fu_604_p2;
wire   [0:0] trunc_ln93_fu_460_p1;
wire   [0:0] tmp_57_fu_506_p3;
wire   [0:0] xor_ln98_fu_618_p2;
wire   [0:0] tmp_56_fu_464_p3;
wire   [0:0] tmp_59_fu_596_p3;
wire   [0:0] tmp_60_fu_610_p3;
wire   [0:0] xor_ln98_6_fu_630_p2;
wire   [0:0] tmp_58_fu_550_p3;
wire   [0:0] xor_ln98_7_fu_636_p2;
wire   [0:0] xor_ln98_5_fu_624_p2;
wire   [0:0] xor_ln98_8_fu_642_p2;
wire   [5:0] zext_ln66_50_fu_667_p1;
wire   [5:0] zext_ln66_51_fu_671_p1;
wire   [0:0] grp_fu_290_p2;
wire   [5:0] sub_ln66_fu_685_p2;
wire   [5:0] sub_ln66_11_fu_697_p2;
reg   [31:0] tmp_62_fu_675_p4;
wire   [5:0] xor_ln66_23_fu_691_p2;
wire   [5:0] select_ln66_fu_703_p3;
wire   [5:0] select_ln66_33_fu_719_p3;
wire   [5:0] sub_ln66_12_fu_727_p2;
wire   [31:0] select_ln66_32_fu_711_p3;
wire   [31:0] zext_ln66_52_fu_733_p1;
wire   [31:0] zext_ln66_53_fu_737_p1;
wire   [31:0] lshr_ln66_fu_741_p2;
wire   [31:0] lshr_ln66_12_fu_747_p2;
wire   [31:0] and_ln66_21_fu_753_p2;
wire   [2:0] xor_ln66_fu_763_p2;
wire   [7:0] zext_ln66_4_fu_768_p1;
wire   [7:0] shl_ln66_fu_772_p2;
wire   [7:0] zext_ln98_fu_648_p1;
wire   [7:0] trunc_ln66_fu_759_p1;
wire   [7:0] xor_ln66_7_fu_778_p2;
wire   [7:0] and_ln66_fu_790_p2;
wire   [7:0] shl_ln66_11_fu_784_p2;
wire   [5:0] zext_ln66_54_fu_802_p1;
wire   [5:0] zext_ln66_55_fu_805_p1;
wire   [5:0] xor_ln66_24_fu_811_p2;
wire   [5:0] select_ln66_34_fu_817_p3;
wire   [5:0] select_ln66_36_fu_833_p3;
wire   [5:0] select_ln66_35_fu_825_p3;
wire   [5:0] xor_ln66_25_fu_841_p2;
wire   [31:0] zext_ln66_56_fu_808_p1;
wire   [31:0] zext_ln66_57_fu_847_p1;
wire   [31:0] shl_ln66_21_fu_859_p2;
reg   [31:0] tmp_63_fu_865_p4;
wire   [31:0] zext_ln66_58_fu_851_p1;
wire   [31:0] zext_ln66_59_fu_855_p1;
wire   [31:0] shl_ln66_22_fu_883_p2;
wire   [31:0] lshr_ln66_13_fu_889_p2;
wire   [31:0] select_ln66_37_fu_875_p3;
wire   [31:0] and_ln66_22_fu_895_p2;
wire   [3:0] zext_ln66_60_fu_908_p1;
reg   [10:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
end

matrix_mul_temp_mfYi #(
    .DataWidth( 32 ),
    .AddressRange( 10752 ),
    .AddressWidth( 14 ))
temp_matrix_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp_matrix_address0),
    .ce0(temp_matrix_ce0),
    .q0(temp_matrix_q0)
);

matrix_mul_prod #(
    .DataWidth( 32 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
prod_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(prod_address0),
    .ce0(prod_ce0),
    .we0(prod_we0),
    .d0(prod_d0),
    .q0(prod_q0)
);

matrix_mul_temp #(
    .DataWidth( 32 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
temp_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp_address0),
    .ce0(temp_ce0),
    .we0(temp_we0),
    .d0(temp_d0),
    .q0(temp_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        bitNumber_assign_reg_234 <= i_reg_972;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        bitNumber_assign_reg_234 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_0_i_reg_268 <= i_19_reg_1018;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_i_reg_268 <= 3'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        j_0_reg_246 <= j_reg_990;
    end else if (((icmp_ln124_fu_310_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_246 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_310_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        loop_0_reg_279 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        loop_0_reg_279 <= loop_reg_1059;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        x_0_i_reg_258 <= x_7_fu_440_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        x_0_i_reg_258 <= prod_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln133_fu_918_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        add_ln134_reg_1069 <= add_ln134_fu_935_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln85_fu_403_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        i_19_reg_1018 <= i_19_fu_409_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_972 <= i_fu_316_p2;
        trunc_ln124_reg_964 <= trunc_ln124_fu_306_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_990 <= j_fu_347_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        loop_reg_1059 <= loop_fu_924_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        or_ln66_11_reg_1045[4 : 3] <= or_ln66_11_fu_660_p2[4 : 3];
        or_ln66_reg_1051 <= or_ln66_fu_796_p2;
        start_pos_reg_1039[4 : 3] <= start_pos_fu_652_p3[4 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_310_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        shl_ln_reg_977[8 : 2] <= shl_ln_fu_326_p3[8 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln85_fu_403_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        temp_addr_5_reg_1029[2 : 0] <= zext_ln66_fu_435_p1[2 : 0];
        tmp_61_reg_1023 <= {{bitNumber_assign_reg_234[4:3]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_310_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        trunc_ln134_reg_982 <= trunc_ln134_fu_334_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        zext_ln127_5_cast_reg_954[9 : 2] <= zext_ln127_5_cast_fu_302_p1[9 : 2];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln133_fu_918_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)))) begin
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
    if (((icmp_ln133_fu_918_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_290_p0 = start_pos_reg_1039;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_290_p0 = start_pos_fu_652_p3;
    end else begin
        grp_fu_290_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_290_p1 = or_ln66_11_reg_1045;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_290_p1 = or_ln66_11_fu_660_p2;
    end else begin
        grp_fu_290_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        output_r_we0 = 4'd15;
    end else begin
        output_r_we0 = 4'd0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        prod_address0 = zext_ln85_fu_398_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        prod_address0 = zext_ln127_fu_386_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        prod_address0 = 64'd0;
    end else begin
        prod_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state6))) begin
        prod_ce0 = 1'b1;
    end else begin
        prod_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        prod_we0 = 1'b1;
    end else begin
        prod_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        temp_address0 = zext_ln134_fu_930_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        temp_address0 = temp_addr_5_reg_1029;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        temp_address0 = zext_ln66_fu_435_p1;
    end else begin
        temp_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6))) begin
        temp_ce0 = 1'b1;
    end else begin
        temp_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        temp_matrix_ce0 = 1'b1;
    end else begin
        temp_matrix_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        temp_we0 = shl_ln66_23_fu_911_p2;
    end else begin
        temp_we0 = 4'd0;
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
            if (((icmp_ln124_fu_310_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln125_fu_341_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln85_fu_403_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln133_fu_918_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln126_fu_353_p2 = (zext_ln125_fu_337_p1 + shl_ln_reg_977);

assign add_ln127_2_fu_366_p2 = (zext_ln127_5_cast_reg_954 + zext_ln127_5_fu_362_p1);

assign add_ln127_fu_376_p2 = (matrix_offset + zext_ln126_fu_358_p1);

assign add_ln134_fu_935_p2 = (loop_0_reg_279 + trunc_ln134_reg_982);

assign adjSize_fu_425_p4 = {{bitNumber_assign_reg_234[7:5]}};

assign and_ln66_21_fu_753_p2 = (lshr_ln66_fu_741_p2 & lshr_ln66_12_fu_747_p2);

assign and_ln66_22_fu_895_p2 = (shl_ln66_22_fu_883_p2 & lshr_ln66_13_fu_889_p2);

assign and_ln66_fu_790_p2 = (xor_ln66_7_fu_778_p2 & trunc_ln66_fu_759_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_fu_290_p2 = ((grp_fu_290_p0 > grp_fu_290_p1) ? 1'b1 : 1'b0);

assign i_19_fu_409_p2 = (i_0_i_reg_268 + 3'd1);

assign i_fu_316_p2 = (8'd1 + bitNumber_assign_reg_234);

assign icmp_ln124_fu_310_p2 = ((bitNumber_assign_reg_234 == 8'd128) ? 1'b1 : 1'b0);

assign icmp_ln125_fu_341_p2 = ((j_0_reg_246 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln133_fu_918_p2 = ((loop_0_reg_279 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln85_fu_403_p2 = ((i_0_i_reg_268 == 3'd4) ? 1'b1 : 1'b0);

assign j_fu_347_p2 = (j_0_reg_246 + 3'd1);

assign loop_fu_924_p2 = (loop_0_reg_279 + 3'd1);

assign lshr_ln4_fu_492_p4 = {{y_fu_486_p2[31:2]}};

assign lshr_ln5_fu_536_p4 = {{y_7_fu_530_p2[31:4]}};

assign lshr_ln66_12_fu_747_p2 = 32'd4294967295 >> zext_ln66_53_fu_737_p1;

assign lshr_ln66_13_fu_889_p2 = 32'd4294967295 >> zext_ln66_59_fu_855_p1;

assign lshr_ln66_fu_741_p2 = select_ln66_32_fu_711_p3 >> zext_ln66_52_fu_733_p1;

assign lshr_ln_fu_446_p4 = {{x_0_i_reg_258[31:1]}};

assign or_ln66_11_fu_660_p2 = (start_pos_fu_652_p3 | 5'd7);

assign or_ln66_fu_796_p2 = (shl_ln66_11_fu_784_p2 | and_ln66_fu_790_p2);

assign output_r_address0 = zext_ln134_3_fu_940_p1;

assign output_r_d0 = temp_q0;

assign prod_d0 = (temp_matrix_q0 & state_q0);

assign select_ln66_32_fu_711_p3 = ((grp_fu_290_p2[0:0] === 1'b1) ? tmp_62_fu_675_p4 : temp_q0);

assign select_ln66_33_fu_719_p3 = ((grp_fu_290_p2[0:0] === 1'b1) ? xor_ln66_23_fu_691_p2 : zext_ln66_50_fu_667_p1);

assign select_ln66_34_fu_817_p3 = ((grp_fu_290_p2[0:0] === 1'b1) ? zext_ln66_54_fu_802_p1 : zext_ln66_55_fu_805_p1);

assign select_ln66_35_fu_825_p3 = ((grp_fu_290_p2[0:0] === 1'b1) ? zext_ln66_55_fu_805_p1 : zext_ln66_54_fu_802_p1);

assign select_ln66_36_fu_833_p3 = ((grp_fu_290_p2[0:0] === 1'b1) ? xor_ln66_24_fu_811_p2 : zext_ln66_54_fu_802_p1);

assign select_ln66_37_fu_875_p3 = ((grp_fu_290_p2[0:0] === 1'b1) ? tmp_63_fu_865_p4 : shl_ln66_21_fu_859_p2);

assign select_ln66_fu_703_p3 = ((grp_fu_290_p2[0:0] === 1'b1) ? sub_ln66_fu_685_p2 : sub_ln66_11_fu_697_p2);

assign shl_ln66_11_fu_784_p2 = zext_ln98_fu_648_p1 << zext_ln66_4_fu_768_p1;

assign shl_ln66_21_fu_859_p2 = zext_ln66_56_fu_808_p1 << zext_ln66_57_fu_847_p1;

assign shl_ln66_22_fu_883_p2 = 32'd4294967295 << zext_ln66_58_fu_851_p1;

assign shl_ln66_23_fu_911_p2 = 4'd1 << zext_ln66_60_fu_908_p1;

assign shl_ln66_fu_772_p2 = 8'd1 << zext_ln66_4_fu_768_p1;

assign shl_ln_fu_326_p3 = {{trunc_ln126_fu_322_p1}, {2'd0}};

assign start_pos_fu_652_p3 = {{tmp_61_reg_1023}, {3'd0}};

assign state_address0 = zext_ln127_6_fu_371_p1;

assign sub_ln66_11_fu_697_p2 = (zext_ln66_51_fu_671_p1 - zext_ln66_50_fu_667_p1);

assign sub_ln66_12_fu_727_p2 = (6'd31 - select_ln66_fu_703_p3);

assign sub_ln66_fu_685_p2 = (zext_ln66_50_fu_667_p1 - zext_ln66_51_fu_671_p1);

assign temp_d0 = (select_ln66_37_fu_875_p3 & and_ln66_22_fu_895_p2);

assign temp_matrix_address0 = zext_ln127_4_fu_381_p1;

assign tmp_56_fu_464_p3 = x_0_i_reg_258[32'd1];

assign tmp_57_fu_506_p3 = y_fu_486_p2[32'd2];

assign tmp_58_fu_550_p3 = y_7_fu_530_p2[32'd4];

assign tmp_59_fu_596_p3 = y_8_fu_574_p2[32'd8];

assign tmp_60_fu_610_p3 = y_9_fu_604_p2[32'd16];

integer ap_tvar_int_0;

always @ (temp_q0) begin
    for (ap_tvar_int_0 = 32 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 31 - 0) begin
            tmp_62_fu_675_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_62_fu_675_p4[ap_tvar_int_0] = temp_q0[31 - ap_tvar_int_0];
        end
    end
end

integer ap_tvar_int_1;

always @ (shl_ln66_21_fu_859_p2) begin
    for (ap_tvar_int_1 = 32 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 31 - 0) begin
            tmp_63_fu_865_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_63_fu_865_p4[ap_tvar_int_1] = shl_ln66_21_fu_859_p2[31 - ap_tvar_int_1];
        end
    end
end

assign tmp_s_fu_294_p3 = {{state_offset}, {2'd0}};

assign trunc_ln124_fu_306_p1 = bitNumber_assign_reg_234[2:0];

assign trunc_ln126_fu_322_p1 = bitNumber_assign_reg_234[6:0];

assign trunc_ln134_fu_334_p1 = output_offset[2:0];

assign trunc_ln66_fu_759_p1 = and_ln66_21_fu_753_p2[7:0];

assign trunc_ln93_2_fu_472_p1 = x_0_i_reg_258[23:0];

assign trunc_ln93_6_fu_476_p4 = {{x_0_i_reg_258[24:1]}};

assign trunc_ln93_fu_460_p1 = x_0_i_reg_258[0:0];

assign trunc_ln94_2_fu_520_p4 = {{y_fu_486_p2[25:2]}};

assign trunc_ln95_2_fu_564_p4 = {{y_7_fu_530_p2[27:4]}};

assign trunc_ln_fu_586_p4 = {{y_8_fu_574_p2[31:8]}};

assign x_7_fu_440_p2 = (x_0_i_reg_258 ^ prod_q0);

assign xor_ln66_23_fu_691_p2 = (zext_ln66_50_fu_667_p1 ^ 6'd31);

assign xor_ln66_24_fu_811_p2 = (zext_ln66_54_fu_802_p1 ^ 6'd31);

assign xor_ln66_25_fu_841_p2 = (select_ln66_34_fu_817_p3 ^ 6'd31);

assign xor_ln66_7_fu_778_p2 = (shl_ln66_fu_772_p2 ^ 8'd255);

assign xor_ln66_fu_763_p2 = (trunc_ln124_reg_964 ^ 3'd7);

assign xor_ln94_fu_514_p2 = (trunc_ln93_6_fu_476_p4 ^ trunc_ln93_2_fu_472_p1);

assign xor_ln95_4_fu_580_p2 = (xor_ln95_fu_558_p2 ^ trunc_ln95_2_fu_564_p4);

assign xor_ln95_fu_558_p2 = (xor_ln94_fu_514_p2 ^ trunc_ln94_2_fu_520_p4);

assign xor_ln98_5_fu_624_p2 = (xor_ln98_fu_618_p2 ^ tmp_56_fu_464_p3);

assign xor_ln98_6_fu_630_p2 = (tmp_60_fu_610_p3 ^ tmp_59_fu_596_p3);

assign xor_ln98_7_fu_636_p2 = (xor_ln98_6_fu_630_p2 ^ tmp_58_fu_550_p3);

assign xor_ln98_8_fu_642_p2 = (xor_ln98_7_fu_636_p2 ^ xor_ln98_5_fu_624_p2);

assign xor_ln98_fu_618_p2 = (trunc_ln93_fu_460_p1 ^ tmp_57_fu_506_p3);

assign y_7_fu_530_p2 = (zext_ln94_fu_502_p1 ^ y_fu_486_p2);

assign y_8_fu_574_p2 = (zext_ln95_fu_546_p1 ^ y_7_fu_530_p2);

assign y_9_fu_604_p2 = (xor_ln95_4_fu_580_p2 ^ trunc_ln_fu_586_p4);

assign y_fu_486_p2 = (zext_ln93_fu_456_p1 ^ x_0_i_reg_258);

assign zext_ln125_fu_337_p1 = j_0_reg_246;

assign zext_ln126_fu_358_p1 = add_ln126_fu_353_p2;

assign zext_ln127_4_fu_381_p1 = add_ln127_fu_376_p2;

assign zext_ln127_5_cast_fu_302_p1 = tmp_s_fu_294_p3;

assign zext_ln127_5_fu_362_p1 = j_0_reg_246;

assign zext_ln127_6_fu_371_p1 = add_ln127_2_fu_366_p2;

assign zext_ln127_fu_386_p1 = j_0_reg_246;

assign zext_ln134_3_fu_940_p1 = add_ln134_reg_1069;

assign zext_ln134_fu_930_p1 = loop_0_reg_279;

assign zext_ln66_4_fu_768_p1 = xor_ln66_fu_763_p2;

assign zext_ln66_50_fu_667_p1 = start_pos_fu_652_p3;

assign zext_ln66_51_fu_671_p1 = or_ln66_11_fu_660_p2;

assign zext_ln66_52_fu_733_p1 = select_ln66_33_fu_719_p3;

assign zext_ln66_53_fu_737_p1 = sub_ln66_12_fu_727_p2;

assign zext_ln66_54_fu_802_p1 = start_pos_reg_1039;

assign zext_ln66_55_fu_805_p1 = or_ln66_11_reg_1045;

assign zext_ln66_56_fu_808_p1 = or_ln66_reg_1051;

assign zext_ln66_57_fu_847_p1 = select_ln66_36_fu_833_p3;

assign zext_ln66_58_fu_851_p1 = select_ln66_35_fu_825_p3;

assign zext_ln66_59_fu_855_p1 = xor_ln66_25_fu_841_p2;

assign zext_ln66_60_fu_908_p1 = tmp_61_reg_1023;

assign zext_ln66_fu_435_p1 = adjSize_fu_425_p4;

assign zext_ln85_fu_398_p1 = i_0_i_reg_268;

assign zext_ln93_fu_456_p1 = lshr_ln_fu_446_p4;

assign zext_ln94_fu_502_p1 = lshr_ln4_fu_492_p4;

assign zext_ln95_fu_546_p1 = lshr_ln5_fu_536_p4;

assign zext_ln98_fu_648_p1 = xor_ln98_8_fu_642_p2;

always @ (posedge ap_clk) begin
    zext_ln127_5_cast_reg_954[1:0] <= 2'b00;
    zext_ln127_5_cast_reg_954[10] <= 1'b0;
    shl_ln_reg_977[1:0] <= 2'b00;
    temp_addr_5_reg_1029[5:3] <= 3'b000;
    start_pos_reg_1039[2:0] <= 3'b000;
    or_ln66_11_reg_1045[2:0] <= 3'b111;
end

endmodule //matrix_mul
