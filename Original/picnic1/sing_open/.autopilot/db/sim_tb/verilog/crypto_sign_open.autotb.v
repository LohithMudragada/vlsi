// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      crypto_sign_open
`define AUTOTB_DUT_INST AESL_inst_crypto_sign_open
`define AUTOTB_TOP      apatb_crypto_sign_open_top
`define AUTOTB_LAT_RESULT_FILE "crypto_sign_open.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "crypto_sign_open.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_crypto_sign_open_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_m AESL_automem_m
`define AESL_MEM_INST_m mem_inst_m
`define AESL_MEM_mlen AESL_automem_mlen
`define AESL_MEM_INST_mlen mem_inst_mlen
`define AESL_MEM_sm AESL_automem_sm
`define AESL_MEM_INST_sm mem_inst_sm
`define AESL_DEPTH_smlen 1
`define AESL_MEM_pk AESL_automem_pk
`define AESL_MEM_INST_pk mem_inst_pk
`define AESL_MEM_viewOutputs AESL_automem_viewOutputs
`define AESL_MEM_INST_viewOutputs mem_inst_viewOutputs
`define AUTOTB_TVIN_m  "./c.crypto_sign_open.autotvin_m.dat"
`define AUTOTB_TVIN_mlen  "./c.crypto_sign_open.autotvin_mlen.dat"
`define AUTOTB_TVIN_sm  "./c.crypto_sign_open.autotvin_sm.dat"
`define AUTOTB_TVIN_smlen  "./c.crypto_sign_open.autotvin_smlen.dat"
`define AUTOTB_TVIN_pk  "./c.crypto_sign_open.autotvin_pk.dat"
`define AUTOTB_TVIN_viewOutputs  "./c.crypto_sign_open.autotvin_viewOutputs.dat"
`define AUTOTB_TVIN_m_out_wrapc  "./rtl.crypto_sign_open.autotvin_m.dat"
`define AUTOTB_TVIN_mlen_out_wrapc  "./rtl.crypto_sign_open.autotvin_mlen.dat"
`define AUTOTB_TVIN_sm_out_wrapc  "./rtl.crypto_sign_open.autotvin_sm.dat"
`define AUTOTB_TVIN_smlen_out_wrapc  "./rtl.crypto_sign_open.autotvin_smlen.dat"
`define AUTOTB_TVIN_pk_out_wrapc  "./rtl.crypto_sign_open.autotvin_pk.dat"
`define AUTOTB_TVIN_viewOutputs_out_wrapc  "./rtl.crypto_sign_open.autotvin_viewOutputs.dat"
`define AUTOTB_TVOUT_m  "./c.crypto_sign_open.autotvout_m.dat"
`define AUTOTB_TVOUT_mlen  "./c.crypto_sign_open.autotvout_mlen.dat"
`define AUTOTB_TVOUT_viewOutputs  "./c.crypto_sign_open.autotvout_viewOutputs.dat"
`define AUTOTB_TVOUT_ap_return  "./c.crypto_sign_open.autotvout_ap_return.dat"
`define AUTOTB_TVOUT_m_out_wrapc  "./impl_rtl.crypto_sign_open.autotvout_m.dat"
`define AUTOTB_TVOUT_mlen_out_wrapc  "./impl_rtl.crypto_sign_open.autotvout_mlen.dat"
`define AUTOTB_TVOUT_viewOutputs_out_wrapc  "./impl_rtl.crypto_sign_open.autotvout_viewOutputs.dat"
`define AUTOTB_TVOUT_ap_return_out_wrapc  "./impl_rtl.crypto_sign_open.autotvout_ap_return.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_m = 3300;
parameter LENGTH_mlen = 1;
parameter LENGTH_sm = 37336;
parameter LENGTH_smlen = 1;
parameter LENGTH_pk = 33;
parameter LENGTH_viewOutputs = 10512;
parameter LENGTH_ap_return = 1;

task read_token;
    input integer fp;
    output reg [183 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [183 : 0] token1;
    reg [183 : 0] token2;
    reg [183 : 0] golden;
    reg [183 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [11 : 0] m_address0;
wire  m_ce0;
wire  m_we0;
wire [7 : 0] m_d0;
wire [0 : 0] mlen_address0;
wire  mlen_ce0;
wire  mlen_we0;
wire [63 : 0] mlen_d0;
wire [15 : 0] sm_address0;
wire  sm_ce0;
wire [7 : 0] sm_q0;
wire [15 : 0] sm_address1;
wire  sm_ce1;
wire [7 : 0] sm_q1;
wire [63 : 0] smlen;
wire [5 : 0] pk_address0;
wire  pk_ce0;
wire [7 : 0] pk_q0;
wire [13 : 0] viewOutputs_address0;
wire  viewOutputs_ce0;
wire  viewOutputs_we0;
wire [31 : 0] viewOutputs_d0;
wire [31 : 0] viewOutputs_q0;
wire [31 : 0] ap_return;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .m_address0(m_address0),
    .m_ce0(m_ce0),
    .m_we0(m_we0),
    .m_d0(m_d0),
    .mlen_address0(mlen_address0),
    .mlen_ce0(mlen_ce0),
    .mlen_we0(mlen_we0),
    .mlen_d0(mlen_d0),
    .sm_address0(sm_address0),
    .sm_ce0(sm_ce0),
    .sm_q0(sm_q0),
    .sm_address1(sm_address1),
    .sm_ce1(sm_ce1),
    .sm_q1(sm_q1),
    .smlen(smlen),
    .pk_address0(pk_address0),
    .pk_ce0(pk_ce0),
    .pk_q0(pk_q0),
    .viewOutputs_address0(viewOutputs_address0),
    .viewOutputs_ce0(viewOutputs_ce0),
    .viewOutputs_we0(viewOutputs_we0),
    .viewOutputs_d0(viewOutputs_d0),
    .viewOutputs_q0(viewOutputs_q0),
    .ap_return(ap_return));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
//------------------------arraym Instantiation--------------

// The input and output of arraym
wire    arraym_ce0, arraym_ce1;
wire    arraym_we0, arraym_we1;
wire    [11 : 0]    arraym_address0, arraym_address1;
wire    [7 : 0]    arraym_din0, arraym_din1;
wire    [7 : 0]    arraym_dout0, arraym_dout1;
wire    arraym_ready;
wire    arraym_done;

`AESL_MEM_m `AESL_MEM_INST_m(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraym_ce0),
    .we0        (arraym_we0),
    .address0   (arraym_address0),
    .din0       (arraym_din0),
    .dout0      (arraym_dout0),
    .ce1        (arraym_ce1),
    .we1        (arraym_we1),
    .address1   (arraym_address1),
    .din1       (arraym_din1),
    .dout1      (arraym_dout1),
    .ready      (arraym_ready),
    .done    (arraym_done)
);

// Assignment between dut and arraym
assign arraym_address0 = m_address0;
assign arraym_ce0 = m_ce0;
assign arraym_we0 = m_we0;
assign arraym_din0 = m_d0;
assign arraym_we1 = 0;
assign arraym_din1 = 0;
assign arraym_ready= ready_initial | arraym_done;
assign arraym_done =    AESL_done_delay;


//------------------------arraymlen Instantiation--------------

// The input and output of arraymlen
wire    arraymlen_ce0, arraymlen_ce1;
wire    arraymlen_we0, arraymlen_we1;
wire    [0 : 0]    arraymlen_address0, arraymlen_address1;
wire    [63 : 0]    arraymlen_din0, arraymlen_din1;
wire    [63 : 0]    arraymlen_dout0, arraymlen_dout1;
wire    arraymlen_ready;
wire    arraymlen_done;

`AESL_MEM_mlen `AESL_MEM_INST_mlen(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraymlen_ce0),
    .we0        (arraymlen_we0),
    .address0   (arraymlen_address0),
    .din0       (arraymlen_din0),
    .dout0      (arraymlen_dout0),
    .ce1        (arraymlen_ce1),
    .we1        (arraymlen_we1),
    .address1   (arraymlen_address1),
    .din1       (arraymlen_din1),
    .dout1      (arraymlen_dout1),
    .ready      (arraymlen_ready),
    .done    (arraymlen_done)
);

// Assignment between dut and arraymlen
assign arraymlen_address0 = mlen_address0;
assign arraymlen_ce0 = mlen_ce0;
assign arraymlen_we0 = mlen_we0;
assign arraymlen_din0 = mlen_d0;
assign arraymlen_we1 = 0;
assign arraymlen_din1 = 0;
assign arraymlen_ready= ready_initial | arraymlen_done;
assign arraymlen_done =    AESL_done_delay;


//------------------------arraysm Instantiation--------------

// The input and output of arraysm
wire    arraysm_ce0, arraysm_ce1;
wire    arraysm_we0, arraysm_we1;
wire    [15 : 0]    arraysm_address0, arraysm_address1;
wire    [7 : 0]    arraysm_din0, arraysm_din1;
wire    [7 : 0]    arraysm_dout0, arraysm_dout1;
wire    arraysm_ready;
wire    arraysm_done;

`AESL_MEM_sm `AESL_MEM_INST_sm(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraysm_ce0),
    .we0        (arraysm_we0),
    .address0   (arraysm_address0),
    .din0       (arraysm_din0),
    .dout0      (arraysm_dout0),
    .ce1        (arraysm_ce1),
    .we1        (arraysm_we1),
    .address1   (arraysm_address1),
    .din1       (arraysm_din1),
    .dout1      (arraysm_dout1),
    .ready      (arraysm_ready),
    .done    (arraysm_done)
);

// Assignment between dut and arraysm
assign arraysm_address0 = sm_address0;
assign arraysm_ce0 = sm_ce0;
assign sm_q0 = arraysm_dout0;
assign arraysm_we0 = 0;
assign arraysm_din0 = 0;
assign arraysm_address1 = sm_address1;
assign arraysm_ce1 = sm_ce1;
assign sm_q1 = arraysm_dout1;
assign arraysm_we1 = 0;
assign arraysm_din1 = 0;
assign arraysm_ready=    ready;
assign arraysm_done = 0;


// The signal of port smlen
reg [63: 0] AESL_REG_smlen = 0;
assign smlen = AESL_REG_smlen;
initial begin : read_file_process_smlen
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [183  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_smlen,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_smlen);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_smlen);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


//------------------------arraypk Instantiation--------------

// The input and output of arraypk
wire    arraypk_ce0, arraypk_ce1;
wire    arraypk_we0, arraypk_we1;
wire    [5 : 0]    arraypk_address0, arraypk_address1;
wire    [7 : 0]    arraypk_din0, arraypk_din1;
wire    [7 : 0]    arraypk_dout0, arraypk_dout1;
wire    arraypk_ready;
wire    arraypk_done;

`AESL_MEM_pk `AESL_MEM_INST_pk(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraypk_ce0),
    .we0        (arraypk_we0),
    .address0   (arraypk_address0),
    .din0       (arraypk_din0),
    .dout0      (arraypk_dout0),
    .ce1        (arraypk_ce1),
    .we1        (arraypk_we1),
    .address1   (arraypk_address1),
    .din1       (arraypk_din1),
    .dout1      (arraypk_dout1),
    .ready      (arraypk_ready),
    .done    (arraypk_done)
);

// Assignment between dut and arraypk
assign arraypk_address0 = pk_address0;
assign arraypk_ce0 = pk_ce0;
assign pk_q0 = arraypk_dout0;
assign arraypk_we0 = 0;
assign arraypk_din0 = 0;
assign arraypk_we1 = 0;
assign arraypk_din1 = 0;
assign arraypk_ready=    ready;
assign arraypk_done = 0;


//------------------------arrayviewOutputs Instantiation--------------

// The input and output of arrayviewOutputs
wire    arrayviewOutputs_ce0, arrayviewOutputs_ce1;
wire    arrayviewOutputs_we0, arrayviewOutputs_we1;
wire    [13 : 0]    arrayviewOutputs_address0, arrayviewOutputs_address1;
wire    [31 : 0]    arrayviewOutputs_din0, arrayviewOutputs_din1;
wire    [31 : 0]    arrayviewOutputs_dout0, arrayviewOutputs_dout1;
wire    arrayviewOutputs_ready;
wire    arrayviewOutputs_done;

`AESL_MEM_viewOutputs `AESL_MEM_INST_viewOutputs(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayviewOutputs_ce0),
    .we0        (arrayviewOutputs_we0),
    .address0   (arrayviewOutputs_address0),
    .din0       (arrayviewOutputs_din0),
    .dout0      (arrayviewOutputs_dout0),
    .ce1        (arrayviewOutputs_ce1),
    .we1        (arrayviewOutputs_we1),
    .address1   (arrayviewOutputs_address1),
    .din1       (arrayviewOutputs_din1),
    .dout1      (arrayviewOutputs_dout1),
    .ready      (arrayviewOutputs_ready),
    .done    (arrayviewOutputs_done)
);

// Assignment between dut and arrayviewOutputs
assign arrayviewOutputs_address0 = viewOutputs_address0;
assign arrayviewOutputs_ce0 = viewOutputs_ce0;
assign viewOutputs_q0 = arrayviewOutputs_dout0;
assign arrayviewOutputs_we0 = viewOutputs_we0;
assign arrayviewOutputs_din0 = viewOutputs_d0;
assign arrayviewOutputs_we1 = 0;
assign arrayviewOutputs_din1 = 0;
assign arrayviewOutputs_ready= ready;
assign arrayviewOutputs_done = interface_done;


initial begin : write_file_process_ap_return
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer ap_return_count;
    reg [183:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_ap_return_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ap_return_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
          $fdisplay(fp,"0x%x", ap_return);
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.crypto_sign_open.autotvout_m.dat", "r");
    fp2 = $fopen("./impl_rtl.crypto_sign_open.autotvout_m.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.crypto_sign_open.autotvout_m.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.crypto_sign_open.autotvout_m.dat\"!");
    else begin
        $display("Comparing rtl.crypto_sign_open.autotvout_m.dat with impl_rtl.crypto_sign_open.autotvout_m.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.crypto_sign_open.autotvout_mlen.dat", "r");
    fp2 = $fopen("./impl_rtl.crypto_sign_open.autotvout_mlen.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.crypto_sign_open.autotvout_mlen.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.crypto_sign_open.autotvout_mlen.dat\"!");
    else begin
        $display("Comparing rtl.crypto_sign_open.autotvout_mlen.dat with impl_rtl.crypto_sign_open.autotvout_mlen.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.crypto_sign_open.autotvout_viewOutputs.dat", "r");
    fp2 = $fopen("./impl_rtl.crypto_sign_open.autotvout_viewOutputs.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.crypto_sign_open.autotvout_viewOutputs.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.crypto_sign_open.autotvout_viewOutputs.dat\"!");
    else begin
        $display("Comparing rtl.crypto_sign_open.autotvout_viewOutputs.dat with impl_rtl.crypto_sign_open.autotvout_viewOutputs.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.crypto_sign_open.autotvout_ap_return.dat", "r");
    fp2 = $fopen("./impl_rtl.crypto_sign_open.autotvout_ap_return.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.crypto_sign_open.autotvout_ap_return.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.crypto_sign_open.autotvout_ap_return.dat\"!");
    else begin
        $display("Comparing rtl.crypto_sign_open.autotvout_ap_return.dat with impl_rtl.crypto_sign_open.autotvout_ap_return.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_m;
reg [31:0] size_m;
reg [31:0] size_m_backup;
reg end_mlen;
reg [31:0] size_mlen;
reg [31:0] size_mlen_backup;
reg end_sm;
reg [31:0] size_sm;
reg [31:0] size_sm_backup;
reg end_smlen;
reg [31:0] size_smlen;
reg [31:0] size_smlen_backup;
reg end_pk;
reg [31:0] size_pk;
reg [31:0] size_pk_backup;
reg end_viewOutputs;
reg [31:0] size_viewOutputs;
reg [31:0] size_viewOutputs_backup;
reg end_ap_return;
reg [31:0] size_ap_return;
reg [31:0] size_ap_return_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_m;

initial begin : dump_tvout_runtime_sign_m
    integer fp;
    dump_tvout_finish_m = 0;
    fp = $fopen(`AUTOTB_TVOUT_m_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_m_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_m_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_m_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_m = 1;
end


reg dump_tvout_finish_mlen;

initial begin : dump_tvout_runtime_sign_mlen
    integer fp;
    dump_tvout_finish_mlen = 0;
    fp = $fopen(`AUTOTB_TVOUT_mlen_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_mlen_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_mlen_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_mlen_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_mlen = 1;
end


reg dump_tvout_finish_viewOutputs;

initial begin : dump_tvout_runtime_sign_viewOutputs
    integer fp;
    dump_tvout_finish_viewOutputs = 0;
    fp = $fopen(`AUTOTB_TVOUT_viewOutputs_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_viewOutputs_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_viewOutputs_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_viewOutputs_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_viewOutputs = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
