-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity KeccakWidth1600_Spon_12 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    instance_state_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    instance_state_ce0 : OUT STD_LOGIC;
    instance_state_we0 : OUT STD_LOGIC;
    instance_state_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    instance_state_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    instance_byteIOIndex_read : IN STD_LOGIC_VECTOR (31 downto 0);
    data_0_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    data_0_ce0 : OUT STD_LOGIC;
    data_0_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    data_offset1 : IN STD_LOGIC_VECTOR (0 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of KeccakWidth1600_Spon_12 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv34_0 : STD_LOGIC_VECTOR (33 downto 0) := "0000000000000000000000000000000000";
    constant ap_const_lv10_A6 : STD_LOGIC_VECTOR (9 downto 0) := "0010100110";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_21 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100001";
    constant ap_const_lv29_0 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000000000000000000";
    constant ap_const_lv30_A8 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000010101000";
    constant ap_const_lv30_20 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000100000";
    constant ap_const_lv34_20 : STD_LOGIC_VECTOR (33 downto 0) := "0000000000000000000000000000100000";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv64_A8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000010101000";
    constant ap_const_lv8_A8 : STD_LOGIC_VECTOR (7 downto 0) := "10101000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv64_FFFFFFFFFFFFFF58 : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111101011000";
    constant ap_const_lv32_A8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010101000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal select_ln212_fu_215_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln212_reg_516 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_32_load_reg_522 : STD_LOGIC_VECTOR (33 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln195_fu_252_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_reg_530 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln194_fu_246_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_1_fu_268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_1_reg_534 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln206_fu_280_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal partialBlock_fu_288_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal partialBlock_reg_543 : STD_LOGIC_VECTOR (5 downto 0);
    signal loop_49_fu_321_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal loop_49_reg_554 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln211_fu_315_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal instance_state_addr_12_reg_564 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_14_fu_370_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_14_reg_569 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln214_fu_376_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_KeccakP1600_Permute_s_fu_190_ap_ready : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_190_ap_done : STD_LOGIC;
    signal select_ln224_fu_403_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln224_reg_579 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal zext_ln229_fu_411_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln229_reg_585 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_419_p2 : STD_LOGIC_VECTOR (33 downto 0);
    signal i_reg_591 : STD_LOGIC_VECTOR (33 downto 0);
    signal loop_fu_429_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal loop_reg_599 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal icmp_ln231_fu_424_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal instance_state_addr_reg_609 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln237_fu_479_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln237_reg_614 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_2_rec_fu_494_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal ap_predicate_op117_call_state10 : BOOLEAN;
    signal ap_block_state10_on_subcall_done : BOOLEAN;
    signal grp_KeccakP1600_Permute_s_fu_190_ap_start : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_190_ap_idle : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_190_state_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_KeccakP1600_Permute_s_fu_190_state_ce0 : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_190_state_we0 : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_190_state_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_01_rec_reg_122 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_0_reg_134 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_1_rec_reg_144 : STD_LOGIC_VECTOR (63 downto 0);
    signal offset_assign_13_reg_156 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln206_fu_294_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_1_reg_167 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_phi_mux_p_1_rec_pn_phi_fu_181_p6 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_1_rec_pn_reg_178 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_KeccakP1600_Permute_s_fu_190_ap_start_reg : STD_LOGIC := '0';
    signal sext_ln212_fu_365_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln212_fu_327_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln232_fu_458_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln149_fu_469_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_32_fu_60 : STD_LOGIC_VECTOR (33 downto 0);
    signal sub_ln216_fu_304_p2 : STD_LOGIC_VECTOR (33 downto 0);
    signal instance_byteIOIndex_fu_64 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln236_fu_474_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_208_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_fu_236_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal trunc_ln195_fu_258_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal add_ln195_fu_262_p2 : STD_LOGIC_VECTOR (29 downto 0);
    signal j_fu_274_p2 : STD_LOGIC_VECTOR (33 downto 0);
    signal trunc_ln223_fu_284_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln216_fu_300_p1 : STD_LOGIC_VECTOR (33 downto 0);
    signal zext_ln212_10_fu_332_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln206_fu_336_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln194_7_fu_346_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln212_fu_340_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln212_1_fu_350_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln212_11_fu_356_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln212_7_fu_360_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln223_fu_382_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln224_fu_385_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln224_fu_391_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal partialBlock_12_fu_397_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln229_7_fu_415_p1 : STD_LOGIC_VECTOR (33 downto 0);
    signal trunc_ln232_fu_435_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln194_fu_439_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln232_fu_443_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln232_fu_449_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln232_10_fu_453_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln232_11_fu_463_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);

    component KeccakP1600_Permute_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        state_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        state_ce0 : OUT STD_LOGIC;
        state_we0 : OUT STD_LOGIC;
        state_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        state_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    grp_KeccakP1600_Permute_s_fu_190 : component KeccakP1600_Permute_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_KeccakP1600_Permute_s_fu_190_ap_start,
        ap_done => grp_KeccakP1600_Permute_s_fu_190_ap_done,
        ap_idle => grp_KeccakP1600_Permute_s_fu_190_ap_idle,
        ap_ready => grp_KeccakP1600_Permute_s_fu_190_ap_ready,
        state_address0 => grp_KeccakP1600_Permute_s_fu_190_state_address0,
        state_ce0 => grp_KeccakP1600_Permute_s_fu_190_state_ce0,
        state_we0 => grp_KeccakP1600_Permute_s_fu_190_state_we0,
        state_d0 => grp_KeccakP1600_Permute_s_fu_190_state_d0,
        state_q0 => instance_state_q0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_KeccakP1600_Permute_s_fu_190_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_KeccakP1600_Permute_s_fu_190_ap_start_reg <= ap_const_logic_0;
            else
                if ((((icmp_ln211_fu_315_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln237_fu_479_p2 = ap_const_lv1_1) and (icmp_ln231_fu_424_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
                    grp_KeccakP1600_Permute_s_fu_190_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_KeccakP1600_Permute_s_fu_190_ap_ready = ap_const_logic_1)) then 
                    grp_KeccakP1600_Permute_s_fu_190_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_32_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln231_fu_424_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                i_32_fu_60 <= i_reg_591;
            elsif (((icmp_ln206_fu_294_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_32_fu_60 <= sub_ln216_fu_304_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_32_fu_60 <= ap_const_lv34_0;
            end if; 
        end if;
    end process;

    instance_byteIOIndex_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln237_fu_479_p2 = ap_const_lv1_0) and (icmp_ln231_fu_424_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                instance_byteIOIndex_fu_64 <= add_ln236_fu_474_p2;
            elsif ((((icmp_ln206_fu_294_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((icmp_ln237_fu_479_p2 = ap_const_lv1_1) and (icmp_ln231_fu_424_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
                instance_byteIOIndex_fu_64 <= ap_const_lv32_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                instance_byteIOIndex_fu_64 <= instance_byteIOIndex_read;
            end if; 
        end if;
    end process;

    j_0_reg_134_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_KeccakP1600_Permute_s_fu_190_ap_done = ap_const_logic_1))) then 
                j_0_reg_134 <= j_14_reg_569;
            elsif (((icmp_ln195_1_fu_268_p2 = ap_const_lv1_0) and (icmp_ln194_fu_246_p2 = ap_const_lv1_1) and (icmp_ln195_fu_252_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_reg_134 <= zext_ln206_fu_280_p1;
            end if; 
        end if;
    end process;

    loop_1_reg_167_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                loop_1_reg_167 <= loop_reg_599;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                loop_1_reg_167 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    offset_assign_13_reg_156_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln206_fu_294_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                offset_assign_13_reg_156 <= ap_const_lv8_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                offset_assign_13_reg_156 <= loop_49_reg_554;
            end if; 
        end if;
    end process;

    p_01_rec_reg_122_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_const_boolean_0 = ap_block_state10_on_subcall_done))) then 
                p_01_rec_reg_122 <= p_2_rec_fu_494_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_01_rec_reg_122 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    p_1_rec_pn_reg_178_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_const_boolean_0 = ap_block_state10_on_subcall_done) and (((icmp_ln237_reg_614 = ap_const_lv1_1) and (icmp_ln195_reg_530 = ap_const_lv1_0)) or ((icmp_ln195_1_reg_534 = ap_const_lv1_1) and (icmp_ln237_reg_614 = ap_const_lv1_1)))) or ((icmp_ln237_fu_479_p2 = ap_const_lv1_0) and (icmp_ln231_fu_424_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
                p_1_rec_pn_reg_178 <= zext_ln229_reg_585;
            elsif (((icmp_ln206_fu_294_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_1_rec_pn_reg_178 <= p_1_rec_reg_144;
            end if; 
        end if;
    end process;

    p_1_rec_reg_144_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_KeccakP1600_Permute_s_fu_190_ap_done = ap_const_logic_1))) then 
                p_1_rec_reg_144 <= add_ln214_fu_376_p2;
            elsif (((icmp_ln195_1_fu_268_p2 = ap_const_lv1_0) and (icmp_ln194_fu_246_p2 = ap_const_lv1_1) and (icmp_ln195_fu_252_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                p_1_rec_reg_144 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_32_load_reg_522 <= i_32_fu_60;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                i_reg_591 <= i_fu_419_p2;
                select_ln224_reg_579 <= select_ln224_fu_403_p3;
                    zext_ln229_reg_585(31 downto 0) <= zext_ln229_fu_411_p1(31 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln194_fu_246_p2 = ap_const_lv1_1) and (icmp_ln195_fu_252_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_ln195_1_reg_534 <= icmp_ln195_1_fu_268_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln194_fu_246_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_ln195_reg_530 <= icmp_ln195_fu_252_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln231_fu_424_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                icmp_ln237_reg_614 <= icmp_ln237_fu_479_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln211_fu_315_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                instance_state_addr_12_reg_564 <= zext_ln212_fu_327_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln231_fu_424_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                instance_state_addr_reg_609 <= zext_ln149_fu_469_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln211_fu_315_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                j_14_reg_569 <= j_14_fu_370_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                loop_49_reg_554 <= loop_49_fu_321_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                loop_reg_599 <= loop_fu_429_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (((icmp_ln194_fu_246_p2 = ap_const_lv1_1) and (icmp_ln195_fu_252_p2 = ap_const_lv1_0)) or ((icmp_ln195_1_fu_268_p2 = ap_const_lv1_1) and (icmp_ln194_fu_246_p2 = ap_const_lv1_1))))) then
                partialBlock_reg_543 <= partialBlock_fu_288_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    select_ln212_reg_516(2 downto 1) <= select_ln212_fu_215_p3(2 downto 1);    select_ln212_reg_516(5) <= select_ln212_fu_215_p3(5);    select_ln212_reg_516(7) <= select_ln212_fu_215_p3(7);
            end if;
        end if;
    end process;
    select_ln212_reg_516(0) <= '0';
    select_ln212_reg_516(4 downto 3) <= "00";
    select_ln212_reg_516(6 downto 6) <= "0";
    select_ln212_reg_516(9 downto 8) <= "00";
    zext_ln229_reg_585(63 downto 32) <= "00000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln195_fu_252_p2, icmp_ln194_fu_246_p2, icmp_ln195_1_fu_268_p2, ap_CS_fsm_state4, icmp_ln211_fu_315_p2, ap_CS_fsm_state6, grp_KeccakP1600_Permute_s_fu_190_ap_done, ap_CS_fsm_state8, icmp_ln231_fu_424_p2, ap_CS_fsm_state10, ap_block_state10_on_subcall_done, ap_CS_fsm_state3, icmp_ln206_fu_294_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln194_fu_246_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((icmp_ln195_1_fu_268_p2 = ap_const_lv1_0) and (icmp_ln194_fu_246_p2 = ap_const_lv1_1) and (icmp_ln195_fu_252_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln206_fu_294_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln211_fu_315_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_KeccakP1600_Permute_s_fu_190_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if (((icmp_ln231_fu_424_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state10 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_const_boolean_0 = ap_block_state10_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    add_ln195_fu_262_p2 <= std_logic_vector(unsigned(ap_const_lv30_A8) + unsigned(trunc_ln195_fu_258_p1));
    add_ln212_1_fu_350_p2 <= std_logic_vector(unsigned(trunc_ln194_7_fu_346_p1) + unsigned(add_ln212_fu_340_p2));
    add_ln212_7_fu_360_p2 <= std_logic_vector(unsigned(select_ln212_reg_516) + unsigned(zext_ln212_11_fu_356_p1));
    add_ln212_fu_340_p2 <= std_logic_vector(unsigned(zext_ln212_10_fu_332_p1) + unsigned(trunc_ln206_fu_336_p1));
    add_ln214_fu_376_p2 <= std_logic_vector(unsigned(p_1_rec_reg_144) + unsigned(ap_const_lv64_A8));
    add_ln224_fu_385_p2 <= std_logic_vector(unsigned(zext_ln223_fu_382_p1) + unsigned(instance_byteIOIndex_fu_64));
    add_ln232_10_fu_453_p2 <= std_logic_vector(unsigned(select_ln212_reg_516) + unsigned(zext_ln232_fu_449_p1));
    add_ln232_11_fu_463_p2 <= std_logic_vector(unsigned(loop_1_reg_167) + unsigned(instance_byteIOIndex_fu_64));
    add_ln232_fu_443_p2 <= std_logic_vector(unsigned(trunc_ln232_fu_435_p1) + unsigned(trunc_ln194_fu_439_p1));
    add_ln236_fu_474_p2 <= std_logic_vector(unsigned(instance_byteIOIndex_fu_64) + unsigned(select_ln224_reg_579));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_block_state10_on_subcall_done_assign_proc : process(grp_KeccakP1600_Permute_s_fu_190_ap_done, ap_predicate_op117_call_state10)
    begin
                ap_block_state10_on_subcall_done <= ((grp_KeccakP1600_Permute_s_fu_190_ap_done = ap_const_logic_0) and (ap_predicate_op117_call_state10 = ap_const_boolean_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln194_fu_246_p2)
    begin
        if ((((icmp_ln194_fu_246_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_p_1_rec_pn_phi_fu_181_p6_assign_proc : process(icmp_ln195_reg_530, icmp_ln195_1_reg_534, zext_ln229_reg_585, icmp_ln237_reg_614, ap_CS_fsm_state10, p_1_rec_pn_reg_178)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) and (((icmp_ln237_reg_614 = ap_const_lv1_1) and (icmp_ln195_reg_530 = ap_const_lv1_0)) or ((icmp_ln195_1_reg_534 = ap_const_lv1_1) and (icmp_ln237_reg_614 = ap_const_lv1_1))))) then 
            ap_phi_mux_p_1_rec_pn_phi_fu_181_p6 <= zext_ln229_reg_585;
        else 
            ap_phi_mux_p_1_rec_pn_phi_fu_181_p6 <= p_1_rec_pn_reg_178;
        end if; 
    end process;


    ap_predicate_op117_call_state10_assign_proc : process(icmp_ln195_reg_530, icmp_ln195_1_reg_534, icmp_ln237_reg_614)
    begin
                ap_predicate_op117_call_state10 <= (((icmp_ln237_reg_614 = ap_const_lv1_1) and (icmp_ln195_reg_530 = ap_const_lv1_0)) or ((icmp_ln195_1_reg_534 = ap_const_lv1_1) and (icmp_ln237_reg_614 = ap_const_lv1_1)));
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln194_fu_246_p2)
    begin
        if (((icmp_ln194_fu_246_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= instance_byteIOIndex_fu_64;

    data_0_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state8, sext_ln212_fu_365_p1, sext_ln232_fu_458_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            data_0_address0 <= sext_ln232_fu_458_p1(9 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            data_0_address0 <= sext_ln212_fu_365_p1(9 - 1 downto 0);
        else 
            data_0_address0 <= "XXXXXXXXX";
        end if; 
    end process;


    data_0_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            data_0_ce0 <= ap_const_logic_1;
        else 
            data_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_KeccakP1600_Permute_s_fu_190_ap_start <= grp_KeccakP1600_Permute_s_fu_190_ap_start_reg;
    grp_fu_208_p2 <= (instance_state_q0 xor data_0_q0);
    i_fu_419_p2 <= std_logic_vector(unsigned(zext_ln229_7_fu_415_p1) + unsigned(i_32_load_reg_522));
    icmp_ln194_fu_246_p2 <= "1" when (tmp_fu_236_p4 = ap_const_lv29_0) else "0";
    icmp_ln195_1_fu_268_p2 <= "1" when (unsigned(add_ln195_fu_262_p2) > unsigned(ap_const_lv30_20)) else "0";
    icmp_ln195_fu_252_p2 <= "1" when (instance_byteIOIndex_fu_64 = ap_const_lv32_0) else "0";
    icmp_ln206_fu_294_p2 <= "1" when (unsigned(j_0_reg_134) < unsigned(ap_const_lv64_A8)) else "0";
    icmp_ln211_fu_315_p2 <= "1" when (offset_assign_13_reg_156 = ap_const_lv8_A8) else "0";
    icmp_ln224_fu_391_p2 <= "1" when (unsigned(add_ln224_fu_385_p2) > unsigned(ap_const_lv32_A8)) else "0";
    icmp_ln231_fu_424_p2 <= "1" when (loop_1_reg_167 = select_ln224_reg_579) else "0";
    icmp_ln237_fu_479_p2 <= "1" when (add_ln236_fu_474_p2 = ap_const_lv32_A8) else "0";

    instance_state_address0_assign_proc : process(ap_CS_fsm_state4, icmp_ln211_fu_315_p2, instance_state_addr_12_reg_564, ap_CS_fsm_state6, ap_CS_fsm_state8, icmp_ln231_fu_424_p2, instance_state_addr_reg_609, ap_CS_fsm_state10, ap_predicate_op117_call_state10, grp_KeccakP1600_Permute_s_fu_190_state_address0, ap_CS_fsm_state5, ap_CS_fsm_state9, zext_ln212_fu_327_p1, zext_ln149_fu_469_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            instance_state_address0 <= instance_state_addr_reg_609;
        elsif (((icmp_ln231_fu_424_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            instance_state_address0 <= zext_ln149_fu_469_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            instance_state_address0 <= instance_state_addr_12_reg_564;
        elsif (((icmp_ln211_fu_315_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            instance_state_address0 <= zext_ln212_fu_327_p1(8 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op117_call_state10 = ap_const_boolean_1)))) then 
            instance_state_address0 <= grp_KeccakP1600_Permute_s_fu_190_state_address0;
        else 
            instance_state_address0 <= "XXXXXXXX";
        end if; 
    end process;


    instance_state_ce0_assign_proc : process(ap_CS_fsm_state4, icmp_ln211_fu_315_p2, ap_CS_fsm_state6, ap_CS_fsm_state8, icmp_ln231_fu_424_p2, ap_CS_fsm_state10, ap_predicate_op117_call_state10, grp_KeccakP1600_Permute_s_fu_190_state_ce0, ap_CS_fsm_state5, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((icmp_ln211_fu_315_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln231_fu_424_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
            instance_state_ce0 <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op117_call_state10 = ap_const_boolean_1)))) then 
            instance_state_ce0 <= grp_KeccakP1600_Permute_s_fu_190_state_ce0;
        else 
            instance_state_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    instance_state_d0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state10, ap_predicate_op117_call_state10, grp_KeccakP1600_Permute_s_fu_190_state_d0, ap_CS_fsm_state5, ap_CS_fsm_state9, grp_fu_208_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            instance_state_d0 <= grp_fu_208_p2;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op117_call_state10 = ap_const_boolean_1)))) then 
            instance_state_d0 <= grp_KeccakP1600_Permute_s_fu_190_state_d0;
        else 
            instance_state_d0 <= "XXXXXXXX";
        end if; 
    end process;


    instance_state_we0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state10, ap_predicate_op117_call_state10, grp_KeccakP1600_Permute_s_fu_190_state_we0, ap_CS_fsm_state5, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            instance_state_we0 <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op117_call_state10 = ap_const_boolean_1)))) then 
            instance_state_we0 <= grp_KeccakP1600_Permute_s_fu_190_state_we0;
        else 
            instance_state_we0 <= ap_const_logic_0;
        end if; 
    end process;

    j_14_fu_370_p2 <= std_logic_vector(unsigned(j_0_reg_134) + unsigned(ap_const_lv64_FFFFFFFFFFFFFF58));
    j_fu_274_p2 <= std_logic_vector(unsigned(ap_const_lv34_20) - unsigned(i_32_fu_60));
    loop_49_fu_321_p2 <= std_logic_vector(unsigned(offset_assign_13_reg_156) + unsigned(ap_const_lv8_1));
    loop_fu_429_p2 <= std_logic_vector(unsigned(loop_1_reg_167) + unsigned(ap_const_lv32_1));
    p_2_rec_fu_494_p2 <= std_logic_vector(unsigned(ap_phi_mux_p_1_rec_pn_phi_fu_181_p6) + unsigned(p_01_rec_reg_122));
    partialBlock_12_fu_397_p2 <= std_logic_vector(unsigned(ap_const_lv32_A8) - unsigned(instance_byteIOIndex_fu_64));
    partialBlock_fu_288_p2 <= std_logic_vector(signed(ap_const_lv6_20) - signed(trunc_ln223_fu_284_p1));
    select_ln212_fu_215_p3 <= 
        ap_const_lv10_A6 when (data_offset1(0) = '1') else 
        ap_const_lv10_0;
    select_ln224_fu_403_p3 <= 
        partialBlock_12_fu_397_p2 when (icmp_ln224_fu_391_p2(0) = '1') else 
        zext_ln223_fu_382_p1;
        sext_ln212_fu_365_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln212_7_fu_360_p2),64));

        sext_ln232_fu_458_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln232_10_fu_453_p2),64));

    sub_ln216_fu_304_p2 <= std_logic_vector(unsigned(ap_const_lv34_20) - unsigned(trunc_ln216_fu_300_p1));
    tmp_fu_236_p4 <= i_32_fu_60(33 downto 5);
    trunc_ln194_7_fu_346_p1 <= p_01_rec_reg_122(9 - 1 downto 0);
    trunc_ln194_fu_439_p1 <= p_01_rec_reg_122(9 - 1 downto 0);
    trunc_ln195_fu_258_p1 <= i_32_fu_60(30 - 1 downto 0);
    trunc_ln206_fu_336_p1 <= p_1_rec_reg_144(9 - 1 downto 0);
    trunc_ln216_fu_300_p1 <= j_0_reg_134(34 - 1 downto 0);
    trunc_ln223_fu_284_p1 <= i_32_fu_60(6 - 1 downto 0);
    trunc_ln232_fu_435_p1 <= loop_1_reg_167(9 - 1 downto 0);
    zext_ln149_fu_469_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln232_11_fu_463_p2),64));
    zext_ln206_fu_280_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_fu_274_p2),64));
    zext_ln212_10_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(offset_assign_13_reg_156),9));
    zext_ln212_11_fu_356_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln212_1_fu_350_p2),10));
    zext_ln212_fu_327_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(offset_assign_13_reg_156),64));
    zext_ln223_fu_382_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(partialBlock_reg_543),32));
    zext_ln229_7_fu_415_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln224_fu_403_p3),34));
    zext_ln229_fu_411_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln224_fu_403_p3),64));
    zext_ln232_fu_449_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln232_fu_443_p2),10));
end behav;
