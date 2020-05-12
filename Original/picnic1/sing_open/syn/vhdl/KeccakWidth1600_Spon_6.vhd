-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity KeccakWidth1600_Spon_6 is
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
    data_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    data_ce0 : OUT STD_LOGIC;
    data_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    data_offset : IN STD_LOGIC_VECTOR (7 downto 0);
    data_offset1 : IN STD_LOGIC_VECTOR (1 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of KeccakWidth1600_Spon_6 is 
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
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
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
    signal tmp_39_cast_fu_261_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_39_cast_reg_562 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_15_load_reg_568 : STD_LOGIC_VECTOR (33 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln195_fu_298_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_reg_576 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln194_fu_292_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_1_fu_314_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_1_reg_580 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln206_fu_326_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal partialBlock_fu_334_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal partialBlock_reg_589 : STD_LOGIC_VECTOR (5 downto 0);
    signal loop_39_fu_367_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal loop_39_reg_600 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln211_fu_361_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal instance_state_addr_4_reg_610 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_5_fu_416_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_5_reg_615 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln214_fu_422_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_KeccakP1600_Permute_s_fu_204_ap_ready : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_204_ap_done : STD_LOGIC;
    signal select_ln224_fu_449_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln224_reg_625 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal zext_ln229_fu_457_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln229_reg_631 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_465_p2 : STD_LOGIC_VECTOR (33 downto 0);
    signal i_reg_637 : STD_LOGIC_VECTOR (33 downto 0);
    signal loop_fu_475_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal loop_reg_645 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal icmp_ln231_fu_470_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal instance_state_addr_reg_655 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln237_fu_525_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln237_reg_660 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_2_rec_fu_540_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal ap_predicate_op124_call_state10 : BOOLEAN;
    signal ap_block_state10_on_subcall_done : BOOLEAN;
    signal grp_KeccakP1600_Permute_s_fu_204_ap_start : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_204_ap_idle : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_204_state_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_KeccakP1600_Permute_s_fu_204_state_ce0 : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_204_state_we0 : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_204_state_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_01_rec_reg_136 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_0_reg_148 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_1_rec_reg_158 : STD_LOGIC_VECTOR (63 downto 0);
    signal offset_assign_6_reg_170 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln206_fu_340_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_1_reg_181 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_phi_mux_p_1_rec_pn_phi_fu_195_p6 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_1_rec_pn_reg_192 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_KeccakP1600_Permute_s_fu_204_ap_start_reg : STD_LOGIC := '0';
    signal zext_ln212_9_fu_411_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln212_fu_373_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln232_1_fu_504_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln149_fu_515_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_15_fu_68 : STD_LOGIC_VECTOR (33 downto 0);
    signal sub_ln216_fu_350_p2 : STD_LOGIC_VECTOR (33 downto 0);
    signal instance_byteIOIndex_fu_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln236_fu_520_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_222_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_fu_237_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln212_7_fu_245_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln212_6_fu_233_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal sub_ln212_fu_249_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln212_5_fu_229_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln212_3_fu_255_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_48_fu_282_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal trunc_ln195_fu_304_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal add_ln195_fu_308_p2 : STD_LOGIC_VECTOR (29 downto 0);
    signal j_fu_320_p2 : STD_LOGIC_VECTOR (33 downto 0);
    signal trunc_ln223_fu_330_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln216_fu_346_p1 : STD_LOGIC_VECTOR (33 downto 0);
    signal trunc_ln212_fu_378_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal trunc_ln206_fu_382_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal trunc_ln194_4_fu_392_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln212_fu_386_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln212_1_fu_396_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln212_8_fu_402_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln212_4_fu_406_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln223_fu_428_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln224_fu_431_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln224_fu_437_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal partialBlock_4_fu_443_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln229_4_fu_461_p1 : STD_LOGIC_VECTOR (33 downto 0);
    signal trunc_ln232_fu_481_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal trunc_ln194_fu_485_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln232_fu_489_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln232_fu_495_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln232_5_fu_499_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln232_6_fu_509_p2 : STD_LOGIC_VECTOR (31 downto 0);
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
    grp_KeccakP1600_Permute_s_fu_204 : component KeccakP1600_Permute_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_KeccakP1600_Permute_s_fu_204_ap_start,
        ap_done => grp_KeccakP1600_Permute_s_fu_204_ap_done,
        ap_idle => grp_KeccakP1600_Permute_s_fu_204_ap_idle,
        ap_ready => grp_KeccakP1600_Permute_s_fu_204_ap_ready,
        state_address0 => grp_KeccakP1600_Permute_s_fu_204_state_address0,
        state_ce0 => grp_KeccakP1600_Permute_s_fu_204_state_ce0,
        state_we0 => grp_KeccakP1600_Permute_s_fu_204_state_we0,
        state_d0 => grp_KeccakP1600_Permute_s_fu_204_state_d0,
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


    grp_KeccakP1600_Permute_s_fu_204_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_KeccakP1600_Permute_s_fu_204_ap_start_reg <= ap_const_logic_0;
            else
                if ((((icmp_ln211_fu_361_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln237_fu_525_p2 = ap_const_lv1_1) and (icmp_ln231_fu_470_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
                    grp_KeccakP1600_Permute_s_fu_204_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_KeccakP1600_Permute_s_fu_204_ap_ready = ap_const_logic_1)) then 
                    grp_KeccakP1600_Permute_s_fu_204_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_15_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln231_fu_470_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                i_15_fu_68 <= i_reg_637;
            elsif (((icmp_ln206_fu_340_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_15_fu_68 <= sub_ln216_fu_350_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_15_fu_68 <= ap_const_lv34_0;
            end if; 
        end if;
    end process;

    instance_byteIOIndex_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln237_fu_525_p2 = ap_const_lv1_0) and (icmp_ln231_fu_470_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                instance_byteIOIndex_fu_72 <= add_ln236_fu_520_p2;
            elsif ((((icmp_ln206_fu_340_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((icmp_ln237_fu_525_p2 = ap_const_lv1_1) and (icmp_ln231_fu_470_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
                instance_byteIOIndex_fu_72 <= ap_const_lv32_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                instance_byteIOIndex_fu_72 <= instance_byteIOIndex_read;
            end if; 
        end if;
    end process;

    j_0_reg_148_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_KeccakP1600_Permute_s_fu_204_ap_done = ap_const_logic_1))) then 
                j_0_reg_148 <= j_5_reg_615;
            elsif (((icmp_ln195_1_fu_314_p2 = ap_const_lv1_0) and (icmp_ln194_fu_292_p2 = ap_const_lv1_1) and (icmp_ln195_fu_298_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_reg_148 <= zext_ln206_fu_326_p1;
            end if; 
        end if;
    end process;

    loop_1_reg_181_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                loop_1_reg_181 <= loop_reg_645;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                loop_1_reg_181 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    offset_assign_6_reg_170_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln206_fu_340_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                offset_assign_6_reg_170 <= ap_const_lv8_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                offset_assign_6_reg_170 <= loop_39_reg_600;
            end if; 
        end if;
    end process;

    p_01_rec_reg_136_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_const_boolean_0 = ap_block_state10_on_subcall_done))) then 
                p_01_rec_reg_136 <= p_2_rec_fu_540_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_01_rec_reg_136 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    p_1_rec_pn_reg_192_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_const_boolean_0 = ap_block_state10_on_subcall_done) and (((icmp_ln237_reg_660 = ap_const_lv1_1) and (icmp_ln195_reg_576 = ap_const_lv1_0)) or ((icmp_ln195_1_reg_580 = ap_const_lv1_1) and (icmp_ln237_reg_660 = ap_const_lv1_1)))) or ((icmp_ln237_fu_525_p2 = ap_const_lv1_0) and (icmp_ln231_fu_470_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
                p_1_rec_pn_reg_192 <= zext_ln229_reg_631;
            elsif (((icmp_ln206_fu_340_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_1_rec_pn_reg_192 <= p_1_rec_reg_158;
            end if; 
        end if;
    end process;

    p_1_rec_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_KeccakP1600_Permute_s_fu_204_ap_done = ap_const_logic_1))) then 
                p_1_rec_reg_158 <= add_ln214_fu_422_p2;
            elsif (((icmp_ln195_1_fu_314_p2 = ap_const_lv1_0) and (icmp_ln194_fu_292_p2 = ap_const_lv1_1) and (icmp_ln195_fu_298_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                p_1_rec_reg_158 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_15_load_reg_568 <= i_15_fu_68;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                i_reg_637 <= i_fu_465_p2;
                select_ln224_reg_625 <= select_ln224_fu_449_p3;
                    zext_ln229_reg_631(31 downto 0) <= zext_ln229_fu_457_p1(31 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln194_fu_292_p2 = ap_const_lv1_1) and (icmp_ln195_fu_298_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_ln195_1_reg_580 <= icmp_ln195_1_fu_314_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln194_fu_292_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_ln195_reg_576 <= icmp_ln195_fu_298_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln231_fu_470_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                icmp_ln237_reg_660 <= icmp_ln237_fu_525_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln211_fu_361_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                instance_state_addr_4_reg_610 <= zext_ln212_fu_373_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln231_fu_470_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                instance_state_addr_reg_655 <= zext_ln149_fu_515_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln211_fu_361_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                j_5_reg_615 <= j_5_fu_416_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                loop_39_reg_600 <= loop_39_fu_367_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                loop_reg_645 <= loop_fu_475_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (((icmp_ln194_fu_292_p2 = ap_const_lv1_1) and (icmp_ln195_fu_298_p2 = ap_const_lv1_0)) or ((icmp_ln195_1_fu_314_p2 = ap_const_lv1_1) and (icmp_ln194_fu_292_p2 = ap_const_lv1_1))))) then
                partialBlock_reg_589 <= partialBlock_fu_334_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    tmp_39_cast_reg_562(15 downto 5) <= tmp_39_cast_fu_261_p3(15 downto 5);
            end if;
        end if;
    end process;
    tmp_39_cast_reg_562(4 downto 0) <= "00000";
    zext_ln229_reg_631(63 downto 32) <= "00000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln195_fu_298_p2, icmp_ln194_fu_292_p2, icmp_ln195_1_fu_314_p2, ap_CS_fsm_state4, icmp_ln211_fu_361_p2, ap_CS_fsm_state6, grp_KeccakP1600_Permute_s_fu_204_ap_done, ap_CS_fsm_state8, icmp_ln231_fu_470_p2, ap_CS_fsm_state10, ap_block_state10_on_subcall_done, ap_CS_fsm_state3, icmp_ln206_fu_340_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln194_fu_292_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((icmp_ln195_1_fu_314_p2 = ap_const_lv1_0) and (icmp_ln194_fu_292_p2 = ap_const_lv1_1) and (icmp_ln195_fu_298_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln206_fu_340_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln211_fu_361_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_KeccakP1600_Permute_s_fu_204_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if (((icmp_ln231_fu_470_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
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
    add_ln195_fu_308_p2 <= std_logic_vector(unsigned(ap_const_lv30_A8) + unsigned(trunc_ln195_fu_304_p1));
    add_ln212_1_fu_396_p2 <= std_logic_vector(unsigned(trunc_ln194_4_fu_392_p1) + unsigned(add_ln212_fu_386_p2));
    add_ln212_3_fu_255_p2 <= std_logic_vector(unsigned(sub_ln212_fu_249_p2) + unsigned(zext_ln212_5_fu_229_p1));
    add_ln212_4_fu_406_p2 <= std_logic_vector(unsigned(tmp_39_cast_reg_562) + unsigned(zext_ln212_8_fu_402_p1));
    add_ln212_fu_386_p2 <= std_logic_vector(unsigned(trunc_ln212_fu_378_p1) + unsigned(trunc_ln206_fu_382_p1));
    add_ln214_fu_422_p2 <= std_logic_vector(unsigned(p_1_rec_reg_158) + unsigned(ap_const_lv64_A8));
    add_ln224_fu_431_p2 <= std_logic_vector(unsigned(zext_ln223_fu_428_p1) + unsigned(instance_byteIOIndex_fu_72));
    add_ln232_5_fu_499_p2 <= std_logic_vector(unsigned(tmp_39_cast_reg_562) + unsigned(zext_ln232_fu_495_p1));
    add_ln232_6_fu_509_p2 <= std_logic_vector(unsigned(loop_1_reg_181) + unsigned(instance_byteIOIndex_fu_72));
    add_ln232_fu_489_p2 <= std_logic_vector(unsigned(trunc_ln232_fu_481_p1) + unsigned(trunc_ln194_fu_485_p1));
    add_ln236_fu_520_p2 <= std_logic_vector(unsigned(instance_byteIOIndex_fu_72) + unsigned(select_ln224_reg_625));
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

    ap_block_state10_on_subcall_done_assign_proc : process(grp_KeccakP1600_Permute_s_fu_204_ap_done, ap_predicate_op124_call_state10)
    begin
                ap_block_state10_on_subcall_done <= ((grp_KeccakP1600_Permute_s_fu_204_ap_done = ap_const_logic_0) and (ap_predicate_op124_call_state10 = ap_const_boolean_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln194_fu_292_p2)
    begin
        if ((((icmp_ln194_fu_292_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_phi_mux_p_1_rec_pn_phi_fu_195_p6_assign_proc : process(icmp_ln195_reg_576, icmp_ln195_1_reg_580, zext_ln229_reg_631, icmp_ln237_reg_660, ap_CS_fsm_state10, p_1_rec_pn_reg_192)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) and (((icmp_ln237_reg_660 = ap_const_lv1_1) and (icmp_ln195_reg_576 = ap_const_lv1_0)) or ((icmp_ln195_1_reg_580 = ap_const_lv1_1) and (icmp_ln237_reg_660 = ap_const_lv1_1))))) then 
            ap_phi_mux_p_1_rec_pn_phi_fu_195_p6 <= zext_ln229_reg_631;
        else 
            ap_phi_mux_p_1_rec_pn_phi_fu_195_p6 <= p_1_rec_pn_reg_192;
        end if; 
    end process;


    ap_predicate_op124_call_state10_assign_proc : process(icmp_ln195_reg_576, icmp_ln195_1_reg_580, icmp_ln237_reg_660)
    begin
                ap_predicate_op124_call_state10 <= (((icmp_ln237_reg_660 = ap_const_lv1_1) and (icmp_ln195_reg_576 = ap_const_lv1_0)) or ((icmp_ln195_1_reg_580 = ap_const_lv1_1) and (icmp_ln237_reg_660 = ap_const_lv1_1)));
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln194_fu_292_p2)
    begin
        if (((icmp_ln194_fu_292_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= instance_byteIOIndex_fu_72;

    data_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state8, zext_ln212_9_fu_411_p1, zext_ln232_1_fu_504_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            data_address0 <= zext_ln232_1_fu_504_p1(15 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            data_address0 <= zext_ln212_9_fu_411_p1(15 - 1 downto 0);
        else 
            data_address0 <= "XXXXXXXXXXXXXXX";
        end if; 
    end process;


    data_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            data_ce0 <= ap_const_logic_1;
        else 
            data_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_KeccakP1600_Permute_s_fu_204_ap_start <= grp_KeccakP1600_Permute_s_fu_204_ap_start_reg;
    grp_fu_222_p2 <= (instance_state_q0 xor data_q0);
    i_fu_465_p2 <= std_logic_vector(unsigned(zext_ln229_4_fu_461_p1) + unsigned(i_15_load_reg_568));
    icmp_ln194_fu_292_p2 <= "1" when (tmp_48_fu_282_p4 = ap_const_lv29_0) else "0";
    icmp_ln195_1_fu_314_p2 <= "1" when (unsigned(add_ln195_fu_308_p2) > unsigned(ap_const_lv30_20)) else "0";
    icmp_ln195_fu_298_p2 <= "1" when (instance_byteIOIndex_fu_72 = ap_const_lv32_0) else "0";
    icmp_ln206_fu_340_p2 <= "1" when (unsigned(j_0_reg_148) < unsigned(ap_const_lv64_A8)) else "0";
    icmp_ln211_fu_361_p2 <= "1" when (offset_assign_6_reg_170 = ap_const_lv8_A8) else "0";
    icmp_ln224_fu_437_p2 <= "1" when (unsigned(add_ln224_fu_431_p2) > unsigned(ap_const_lv32_A8)) else "0";
    icmp_ln231_fu_470_p2 <= "1" when (loop_1_reg_181 = select_ln224_reg_625) else "0";
    icmp_ln237_fu_525_p2 <= "1" when (add_ln236_fu_520_p2 = ap_const_lv32_A8) else "0";

    instance_state_address0_assign_proc : process(ap_CS_fsm_state4, icmp_ln211_fu_361_p2, instance_state_addr_4_reg_610, ap_CS_fsm_state6, ap_CS_fsm_state8, icmp_ln231_fu_470_p2, instance_state_addr_reg_655, ap_CS_fsm_state10, ap_predicate_op124_call_state10, grp_KeccakP1600_Permute_s_fu_204_state_address0, ap_CS_fsm_state5, ap_CS_fsm_state9, zext_ln212_fu_373_p1, zext_ln149_fu_515_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            instance_state_address0 <= instance_state_addr_reg_655;
        elsif (((icmp_ln231_fu_470_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            instance_state_address0 <= zext_ln149_fu_515_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            instance_state_address0 <= instance_state_addr_4_reg_610;
        elsif (((icmp_ln211_fu_361_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            instance_state_address0 <= zext_ln212_fu_373_p1(8 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op124_call_state10 = ap_const_boolean_1)))) then 
            instance_state_address0 <= grp_KeccakP1600_Permute_s_fu_204_state_address0;
        else 
            instance_state_address0 <= "XXXXXXXX";
        end if; 
    end process;


    instance_state_ce0_assign_proc : process(ap_CS_fsm_state4, icmp_ln211_fu_361_p2, ap_CS_fsm_state6, ap_CS_fsm_state8, icmp_ln231_fu_470_p2, ap_CS_fsm_state10, ap_predicate_op124_call_state10, grp_KeccakP1600_Permute_s_fu_204_state_ce0, ap_CS_fsm_state5, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((icmp_ln211_fu_361_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln231_fu_470_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
            instance_state_ce0 <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op124_call_state10 = ap_const_boolean_1)))) then 
            instance_state_ce0 <= grp_KeccakP1600_Permute_s_fu_204_state_ce0;
        else 
            instance_state_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    instance_state_d0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state10, ap_predicate_op124_call_state10, grp_KeccakP1600_Permute_s_fu_204_state_d0, ap_CS_fsm_state5, ap_CS_fsm_state9, grp_fu_222_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            instance_state_d0 <= grp_fu_222_p2;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op124_call_state10 = ap_const_boolean_1)))) then 
            instance_state_d0 <= grp_KeccakP1600_Permute_s_fu_204_state_d0;
        else 
            instance_state_d0 <= "XXXXXXXX";
        end if; 
    end process;


    instance_state_we0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state10, ap_predicate_op124_call_state10, grp_KeccakP1600_Permute_s_fu_204_state_we0, ap_CS_fsm_state5, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            instance_state_we0 <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op124_call_state10 = ap_const_boolean_1)))) then 
            instance_state_we0 <= grp_KeccakP1600_Permute_s_fu_204_state_we0;
        else 
            instance_state_we0 <= ap_const_logic_0;
        end if; 
    end process;

    j_5_fu_416_p2 <= std_logic_vector(unsigned(j_0_reg_148) + unsigned(ap_const_lv64_FFFFFFFFFFFFFF58));
    j_fu_320_p2 <= std_logic_vector(unsigned(ap_const_lv34_20) - unsigned(i_15_fu_68));
    loop_39_fu_367_p2 <= std_logic_vector(unsigned(offset_assign_6_reg_170) + unsigned(ap_const_lv8_1));
    loop_fu_475_p2 <= std_logic_vector(unsigned(loop_1_reg_181) + unsigned(ap_const_lv32_1));
    p_2_rec_fu_540_p2 <= std_logic_vector(unsigned(ap_phi_mux_p_1_rec_pn_phi_fu_195_p6) + unsigned(p_01_rec_reg_136));
    partialBlock_4_fu_443_p2 <= std_logic_vector(unsigned(ap_const_lv32_A8) - unsigned(instance_byteIOIndex_fu_72));
    partialBlock_fu_334_p2 <= std_logic_vector(signed(ap_const_lv6_20) - signed(trunc_ln223_fu_330_p1));
    select_ln224_fu_449_p3 <= 
        partialBlock_4_fu_443_p2 when (icmp_ln224_fu_437_p2(0) = '1') else 
        zext_ln223_fu_428_p1;
    sub_ln212_fu_249_p2 <= std_logic_vector(unsigned(zext_ln212_7_fu_245_p1) - unsigned(zext_ln212_6_fu_233_p1));
    sub_ln216_fu_350_p2 <= std_logic_vector(unsigned(ap_const_lv34_20) - unsigned(trunc_ln216_fu_346_p1));
    tmp_39_cast_fu_261_p3 <= (add_ln212_3_fu_255_p2 & ap_const_lv5_0);
    tmp_48_fu_282_p4 <= i_15_fu_68(33 downto 5);
    tmp_fu_237_p3 <= (data_offset & ap_const_lv2_0);
    trunc_ln194_4_fu_392_p1 <= p_01_rec_reg_136(7 - 1 downto 0);
    trunc_ln194_fu_485_p1 <= p_01_rec_reg_136(7 - 1 downto 0);
    trunc_ln195_fu_304_p1 <= i_15_fu_68(30 - 1 downto 0);
    trunc_ln206_fu_382_p1 <= p_1_rec_reg_158(7 - 1 downto 0);
    trunc_ln212_fu_378_p1 <= offset_assign_6_reg_170(7 - 1 downto 0);
    trunc_ln216_fu_346_p1 <= j_0_reg_148(34 - 1 downto 0);
    trunc_ln223_fu_330_p1 <= i_15_fu_68(6 - 1 downto 0);
    trunc_ln232_fu_481_p1 <= loop_1_reg_181(7 - 1 downto 0);
    zext_ln149_fu_515_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln232_6_fu_509_p2),64));
    zext_ln206_fu_326_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_fu_320_p2),64));
    zext_ln212_5_fu_229_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_offset1),11));
    zext_ln212_6_fu_233_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_offset),11));
    zext_ln212_7_fu_245_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_237_p3),11));
    zext_ln212_8_fu_402_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln212_1_fu_396_p2),16));
    zext_ln212_9_fu_411_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln212_4_fu_406_p2),64));
    zext_ln212_fu_373_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(offset_assign_6_reg_170),64));
    zext_ln223_fu_428_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(partialBlock_reg_589),32));
    zext_ln229_4_fu_461_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln224_fu_449_p3),34));
    zext_ln229_fu_457_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln224_fu_449_p3),64));
    zext_ln232_1_fu_504_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln232_5_fu_499_p2),64));
    zext_ln232_fu_495_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln232_fu_489_p2),16));
end behav;