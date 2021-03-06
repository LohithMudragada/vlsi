// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module KeccakWidth1600_Spon_12 (
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
        data_0_read,
        ap_return
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

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
input  [3:0] data_0_read;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] instance_state_address0;
reg instance_state_ce0;
reg instance_state_we0;
reg[7:0] instance_state_d0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] data_0_read_cast_fu_72_p1;
reg   [7:0] data_0_read_cast_reg_158;
wire   [31:0] select_ln224_fu_94_p3;
reg   [31:0] select_ln224_reg_163;
wire    ap_CS_fsm_state2;
wire   [31:0] loop_fu_107_p2;
reg   [31:0] loop_reg_173;
wire    ap_CS_fsm_state3;
reg   [7:0] instance_state_addr_reg_178;
wire   [0:0] icmp_ln231_fu_102_p2;
wire   [0:0] icmp_ln237_fu_129_p2;
reg   [0:0] icmp_ln237_reg_183;
wire    grp_KeccakP1600_Permute_s_fu_54_ap_start;
wire    grp_KeccakP1600_Permute_s_fu_54_ap_done;
wire    grp_KeccakP1600_Permute_s_fu_54_ap_idle;
wire    grp_KeccakP1600_Permute_s_fu_54_ap_ready;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_54_state_address0;
wire    grp_KeccakP1600_Permute_s_fu_54_state_ce0;
wire    grp_KeccakP1600_Permute_s_fu_54_state_we0;
wire   [7:0] grp_KeccakP1600_Permute_s_fu_54_state_d0;
reg   [31:0] loop_1_reg_43;
wire    ap_CS_fsm_state4;
reg    grp_KeccakP1600_Permute_s_fu_54_ap_start_reg;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln149_fu_119_p1;
reg   [31:0] instance_byteIOIndex_1_fu_20;
wire   [31:0] add_ln236_fu_124_p2;
wire   [0:0] phitmp_fu_146_p2;
wire   [7:0] xor_ln149_fu_140_p2;
wire   [31:0] add_ln224_fu_76_p2;
wire   [0:0] icmp_ln224_fu_82_p2;
wire   [31:0] partialBlock_fu_88_p2;
wire   [31:0] add_ln232_fu_113_p2;
reg    ap_block_state5_on_subcall_done;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
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
        grp_KeccakP1600_Permute_s_fu_54_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln237_fu_129_p2 == 1'd1) & (icmp_ln231_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_KeccakP1600_Permute_s_fu_54_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakP1600_Permute_s_fu_54_ap_ready == 1'b1)) begin
            grp_KeccakP1600_Permute_s_fu_54_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln237_fu_129_p2 == 1'd0) & (icmp_ln231_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        instance_byteIOIndex_1_fu_20 <= add_ln236_fu_124_p2;
    end else if ((((icmp_ln237_fu_129_p2 == 1'd1) & (icmp_ln231_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        instance_byteIOIndex_1_fu_20 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        loop_1_reg_43 <= loop_reg_173;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        loop_1_reg_43 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        data_0_read_cast_reg_158[3 : 0] <= data_0_read_cast_fu_72_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln231_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        icmp_ln237_reg_183 <= icmp_ln237_fu_129_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln231_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        instance_state_addr_reg_178 <= zext_ln149_fu_119_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        loop_reg_173 <= loop_fu_107_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        select_ln224_reg_163 <= select_ln224_fu_94_p3;
    end
end

always @ (*) begin
    if ((((phitmp_fu_146_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((phitmp_fu_146_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        instance_state_address0 = instance_state_addr_reg_178;
    end else if (((icmp_ln231_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        instance_state_address0 = zext_ln149_fu_119_p1;
    end else if (((icmp_ln237_reg_183 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        instance_state_address0 = grp_KeccakP1600_Permute_s_fu_54_state_address0;
    end else begin
        instance_state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((icmp_ln231_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        instance_state_ce0 = 1'b1;
    end else if (((icmp_ln237_reg_183 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        instance_state_ce0 = grp_KeccakP1600_Permute_s_fu_54_state_ce0;
    end else begin
        instance_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        instance_state_d0 = xor_ln149_fu_140_p2;
    end else if (((icmp_ln237_reg_183 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        instance_state_d0 = grp_KeccakP1600_Permute_s_fu_54_state_d0;
    end else begin
        instance_state_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        instance_state_we0 = 1'b1;
    end else if (((icmp_ln237_reg_183 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        instance_state_we0 = grp_KeccakP1600_Permute_s_fu_54_state_we0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln231_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            if (((phitmp_fu_146_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((phitmp_fu_146_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln224_fu_76_p2 = (instance_byteIOIndex_1_fu_20 + 32'd1);

assign add_ln232_fu_113_p2 = (instance_byteIOIndex_1_fu_20 + loop_1_reg_43);

assign add_ln236_fu_124_p2 = (select_ln224_reg_163 + instance_byteIOIndex_1_fu_20);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state5_on_subcall_done = ((icmp_ln237_reg_183 == 1'd1) & (grp_KeccakP1600_Permute_s_fu_54_ap_done == 1'b0));
end

assign ap_return = instance_byteIOIndex_1_fu_20;

assign data_0_read_cast_fu_72_p1 = data_0_read;

assign grp_KeccakP1600_Permute_s_fu_54_ap_start = grp_KeccakP1600_Permute_s_fu_54_ap_start_reg;

assign icmp_ln224_fu_82_p2 = ((add_ln224_fu_76_p2 > 32'd168) ? 1'b1 : 1'b0);

assign icmp_ln231_fu_102_p2 = ((loop_1_reg_43 == select_ln224_reg_163) ? 1'b1 : 1'b0);

assign icmp_ln237_fu_129_p2 = ((add_ln236_fu_124_p2 == 32'd168) ? 1'b1 : 1'b0);

assign loop_fu_107_p2 = (loop_1_reg_43 + 32'd1);

assign partialBlock_fu_88_p2 = (32'd168 - instance_byteIOIndex_1_fu_20);

assign phitmp_fu_146_p2 = ((select_ln224_reg_163 == 32'd0) ? 1'b1 : 1'b0);

assign select_ln224_fu_94_p3 = ((icmp_ln224_fu_82_p2[0:0] === 1'b1) ? partialBlock_fu_88_p2 : 32'd1);

assign xor_ln149_fu_140_p2 = (instance_state_q0 ^ data_0_read_cast_reg_158);

assign zext_ln149_fu_119_p1 = add_ln232_fu_113_p2;

always @ (posedge ap_clk) begin
    data_0_read_cast_reg_158[7:4] <= 4'b0000;
end

endmodule //KeccakWidth1600_Spon_12
