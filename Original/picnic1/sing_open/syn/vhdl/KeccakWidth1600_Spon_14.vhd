-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity KeccakWidth1600_Spon_14 is
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
    data_address0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    data_ce0 : OUT STD_LOGIC;
    data_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    dataByteLen : IN STD_LOGIC_VECTOR (60 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of KeccakWidth1600_Spon_14 is 
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
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
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
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv64_A8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000010101000";
    constant ap_const_lv8_A8 : STD_LOGIC_VECTOR (7 downto 0) := "10101000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv17_4 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000100";
    constant ap_const_lv64_FFFFFFFFFFFFFF58 : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111101011000";
    constant ap_const_lv32_A8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010101000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal reg_198 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal dataByteLen_cast_fu_202_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal dataByteLen_cast_reg_449 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln223_fu_206_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln223_reg_456 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln195_fu_225_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_reg_464 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln194_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_1_fu_237_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_1_reg_468 : STD_LOGIC_VECTOR (0 downto 0);
    signal partialBlock_fu_246_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal partialBlock_reg_472 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln212_fu_265_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln212_reg_481 : STD_LOGIC_VECTOR (16 downto 0);
    signal icmp_ln206_fu_251_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_45_fu_277_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal loop_45_reg_489 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln211_fu_271_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal instance_state_addr_11_reg_499 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln214_fu_319_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_KeccakP1600_Permute_s_fu_160_ap_ready : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_160_ap_done : STD_LOGIC;
    signal select_ln224_fu_342_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln224_reg_509 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal zext_ln229_fu_349_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln229_reg_515 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_353_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_reg_521 : STD_LOGIC_VECTOR (63 downto 0);
    signal loop_fu_364_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal loop_reg_529 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal icmp_ln231_fu_359_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal instance_state_addr_reg_539 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln237_fu_411_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln237_reg_544 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_2_rec_fu_426_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal ap_predicate_op112_call_state10 : BOOLEAN;
    signal ap_block_state10_on_subcall_done : BOOLEAN;
    signal grp_KeccakP1600_Permute_s_fu_160_ap_start : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_160_ap_idle : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_160_state_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_KeccakP1600_Permute_s_fu_160_state_ce0 : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_160_state_we0 : STD_LOGIC;
    signal grp_KeccakP1600_Permute_s_fu_160_state_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_01_rec_reg_102 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_1_rec_reg_114 : STD_LOGIC_VECTOR (63 downto 0);
    signal offset_assign_14_reg_126 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal loop_1_reg_137 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_phi_mux_p_1_rec_pn_phi_fu_151_p6 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_1_rec_pn_reg_148 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_KeccakP1600_Permute_s_fu_160_ap_start_reg : STD_LOGIC := '0';
    signal zext_ln212_8_fu_303_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln212_fu_283_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln232_fu_390_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln149_fu_401_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_21_fu_40 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_176_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_11_fu_308_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal instance_byteIOIndex_fu_44 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln236_fu_406_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_191_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln195_fu_231_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln223_1_fu_242_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln206_fu_257_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal trunc_ln194_8_fu_261_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln212_14_fu_288_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln212_6_fu_292_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln212_5_fu_298_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln224_fu_325_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln224_fu_330_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal partialBlock_12_fu_336_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln232_fu_370_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln232_fu_374_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal trunc_ln194_fu_380_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln232_2_fu_384_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln232_12_fu_395_p2 : STD_LOGIC_VECTOR (31 downto 0);
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
    grp_KeccakP1600_Permute_s_fu_160 : component KeccakP1600_Permute_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_KeccakP1600_Permute_s_fu_160_ap_start,
        ap_done => grp_KeccakP1600_Permute_s_fu_160_ap_done,
        ap_idle => grp_KeccakP1600_Permute_s_fu_160_ap_idle,
        ap_ready => grp_KeccakP1600_Permute_s_fu_160_ap_ready,
        state_address0 => grp_KeccakP1600_Permute_s_fu_160_state_address0,
        state_ce0 => grp_KeccakP1600_Permute_s_fu_160_state_ce0,
        state_we0 => grp_KeccakP1600_Permute_s_fu_160_state_we0,
        state_d0 => grp_KeccakP1600_Permute_s_fu_160_state_d0,
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


    grp_KeccakP1600_Permute_s_fu_160_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_KeccakP1600_Permute_s_fu_160_ap_start_reg <= ap_const_logic_0;
            else
                if ((((icmp_ln211_fu_271_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln237_fu_411_p2 = ap_const_lv1_1) and (icmp_ln231_fu_359_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
                    grp_KeccakP1600_Permute_s_fu_160_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_KeccakP1600_Permute_s_fu_160_ap_ready = ap_const_logic_1)) then 
                    grp_KeccakP1600_Permute_s_fu_160_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_21_fu_40_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln231_fu_359_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                i_21_fu_40 <= i_reg_521;
            elsif (((icmp_ln211_fu_271_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i_21_fu_40 <= j_11_fu_308_p2;
            elsif ((((icmp_ln206_fu_251_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((icmp_ln195_1_fu_237_p2 = ap_const_lv1_0) and (icmp_ln194_fu_220_p2 = ap_const_lv1_1) and (icmp_ln195_fu_225_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
                i_21_fu_40 <= grp_fu_176_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_21_fu_40 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    instance_byteIOIndex_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln237_fu_411_p2 = ap_const_lv1_0) and (icmp_ln231_fu_359_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                instance_byteIOIndex_fu_44 <= add_ln236_fu_406_p2;
            elsif ((((icmp_ln206_fu_251_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((icmp_ln237_fu_411_p2 = ap_const_lv1_1) and (icmp_ln231_fu_359_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
                instance_byteIOIndex_fu_44 <= ap_const_lv32_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                instance_byteIOIndex_fu_44 <= instance_byteIOIndex_read;
            end if; 
        end if;
    end process;

    loop_1_reg_137_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                loop_1_reg_137 <= loop_reg_529;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                loop_1_reg_137 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    offset_assign_14_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln206_fu_251_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                offset_assign_14_reg_126 <= ap_const_lv8_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                offset_assign_14_reg_126 <= loop_45_reg_489;
            end if; 
        end if;
    end process;

    p_01_rec_reg_102_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_const_boolean_0 = ap_block_state10_on_subcall_done))) then 
                p_01_rec_reg_102 <= p_2_rec_fu_426_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_01_rec_reg_102 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    p_1_rec_pn_reg_148_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_const_boolean_0 = ap_block_state10_on_subcall_done) and (((icmp_ln237_reg_544 = ap_const_lv1_1) and (icmp_ln195_reg_464 = ap_const_lv1_0)) or ((icmp_ln195_1_reg_468 = ap_const_lv1_1) and (icmp_ln237_reg_544 = ap_const_lv1_1)))) or ((icmp_ln237_fu_411_p2 = ap_const_lv1_0) and (icmp_ln231_fu_359_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
                p_1_rec_pn_reg_148 <= zext_ln229_reg_515;
            elsif (((icmp_ln206_fu_251_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_1_rec_pn_reg_148 <= p_1_rec_reg_114;
            end if; 
        end if;
    end process;

    p_1_rec_reg_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_KeccakP1600_Permute_s_fu_160_ap_done = ap_const_logic_1))) then 
                p_1_rec_reg_114 <= add_ln214_fu_319_p2;
            elsif (((icmp_ln195_1_fu_237_p2 = ap_const_lv1_0) and (icmp_ln194_fu_220_p2 = ap_const_lv1_1) and (icmp_ln195_fu_225_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                p_1_rec_reg_114 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln206_fu_251_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                add_ln212_reg_481 <= add_ln212_fu_265_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    dataByteLen_cast_reg_449(60 downto 0) <= dataByteLen_cast_fu_202_p1(60 downto 0);
                trunc_ln223_reg_456 <= trunc_ln223_fu_206_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                i_reg_521 <= i_fu_353_p2;
                select_ln224_reg_509 <= select_ln224_fu_342_p3;
                    zext_ln229_reg_515(31 downto 0) <= zext_ln229_fu_349_p1(31 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln194_fu_220_p2 = ap_const_lv1_1) and (icmp_ln195_fu_225_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_ln195_1_reg_468 <= icmp_ln195_1_fu_237_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln194_fu_220_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_ln195_reg_464 <= icmp_ln195_fu_225_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln231_fu_359_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                icmp_ln237_reg_544 <= icmp_ln237_fu_411_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln211_fu_271_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                instance_state_addr_11_reg_499 <= zext_ln212_fu_283_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln231_fu_359_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                instance_state_addr_reg_539 <= zext_ln149_fu_401_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                loop_45_reg_489 <= loop_45_fu_277_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                loop_reg_529 <= loop_fu_364_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (((icmp_ln194_fu_220_p2 = ap_const_lv1_1) and (icmp_ln195_fu_225_p2 = ap_const_lv1_0)) or ((icmp_ln195_1_fu_237_p2 = ap_const_lv1_1) and (icmp_ln194_fu_220_p2 = ap_const_lv1_1))))) then
                partialBlock_reg_472 <= partialBlock_fu_246_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then
                reg_198 <= i_21_fu_40;
            end if;
        end if;
    end process;
    dataByteLen_cast_reg_449(63 downto 61) <= "000";
    zext_ln229_reg_515(63 downto 32) <= "00000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln195_fu_225_p2, icmp_ln194_fu_220_p2, icmp_ln195_1_fu_237_p2, icmp_ln206_fu_251_p2, ap_CS_fsm_state4, icmp_ln211_fu_271_p2, ap_CS_fsm_state6, grp_KeccakP1600_Permute_s_fu_160_ap_done, ap_CS_fsm_state8, icmp_ln231_fu_359_p2, ap_CS_fsm_state10, ap_block_state10_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln194_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((icmp_ln195_1_fu_237_p2 = ap_const_lv1_0) and (icmp_ln194_fu_220_p2 = ap_const_lv1_1) and (icmp_ln195_fu_225_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln206_fu_251_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln211_fu_271_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_KeccakP1600_Permute_s_fu_160_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if (((icmp_ln231_fu_359_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
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
    add_ln195_fu_231_p2 <= std_logic_vector(unsigned(i_21_fu_40) + unsigned(ap_const_lv64_A8));
    add_ln212_5_fu_298_p2 <= std_logic_vector(unsigned(add_ln212_reg_481) + unsigned(add_ln212_6_fu_292_p2));
    add_ln212_6_fu_292_p2 <= std_logic_vector(unsigned(zext_ln212_14_fu_288_p1) + unsigned(ap_const_lv17_4));
    add_ln212_fu_265_p2 <= std_logic_vector(unsigned(trunc_ln206_fu_257_p1) + unsigned(trunc_ln194_8_fu_261_p1));
    add_ln214_fu_319_p2 <= std_logic_vector(unsigned(p_1_rec_reg_114) + unsigned(ap_const_lv64_A8));
    add_ln224_fu_325_p2 <= std_logic_vector(unsigned(instance_byteIOIndex_fu_44) + unsigned(partialBlock_reg_472));
    add_ln232_12_fu_395_p2 <= std_logic_vector(unsigned(instance_byteIOIndex_fu_44) + unsigned(loop_1_reg_137));
    add_ln232_2_fu_384_p2 <= std_logic_vector(unsigned(add_ln232_fu_374_p2) + unsigned(trunc_ln194_fu_380_p1));
    add_ln232_fu_374_p2 <= std_logic_vector(unsigned(ap_const_lv17_4) + unsigned(trunc_ln232_fu_370_p1));
    add_ln236_fu_406_p2 <= std_logic_vector(unsigned(instance_byteIOIndex_fu_44) + unsigned(select_ln224_reg_509));
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

    ap_block_state10_on_subcall_done_assign_proc : process(grp_KeccakP1600_Permute_s_fu_160_ap_done, ap_predicate_op112_call_state10)
    begin
                ap_block_state10_on_subcall_done <= ((grp_KeccakP1600_Permute_s_fu_160_ap_done = ap_const_logic_0) and (ap_predicate_op112_call_state10 = ap_const_boolean_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln194_fu_220_p2)
    begin
        if ((((icmp_ln194_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_phi_mux_p_1_rec_pn_phi_fu_151_p6_assign_proc : process(icmp_ln195_reg_464, icmp_ln195_1_reg_468, zext_ln229_reg_515, icmp_ln237_reg_544, ap_CS_fsm_state10, p_1_rec_pn_reg_148)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) and (((icmp_ln237_reg_544 = ap_const_lv1_1) and (icmp_ln195_reg_464 = ap_const_lv1_0)) or ((icmp_ln195_1_reg_468 = ap_const_lv1_1) and (icmp_ln237_reg_544 = ap_const_lv1_1))))) then 
            ap_phi_mux_p_1_rec_pn_phi_fu_151_p6 <= zext_ln229_reg_515;
        else 
            ap_phi_mux_p_1_rec_pn_phi_fu_151_p6 <= p_1_rec_pn_reg_148;
        end if; 
    end process;


    ap_predicate_op112_call_state10_assign_proc : process(icmp_ln195_reg_464, icmp_ln195_1_reg_468, icmp_ln237_reg_544)
    begin
                ap_predicate_op112_call_state10 <= (((icmp_ln237_reg_544 = ap_const_lv1_1) and (icmp_ln195_reg_464 = ap_const_lv1_0)) or ((icmp_ln195_1_reg_468 = ap_const_lv1_1) and (icmp_ln237_reg_544 = ap_const_lv1_1)));
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln194_fu_220_p2)
    begin
        if (((icmp_ln194_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= instance_byteIOIndex_fu_44;
    dataByteLen_cast_fu_202_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(dataByteLen),64));

    data_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state8, zext_ln212_8_fu_303_p1, zext_ln232_fu_390_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            data_address0 <= zext_ln232_fu_390_p1(16 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            data_address0 <= zext_ln212_8_fu_303_p1(16 - 1 downto 0);
        else 
            data_address0 <= "XXXXXXXXXXXXXXXX";
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

    grp_KeccakP1600_Permute_s_fu_160_ap_start <= grp_KeccakP1600_Permute_s_fu_160_ap_start_reg;
    grp_fu_176_p2 <= std_logic_vector(unsigned(dataByteLen_cast_reg_449) - unsigned(i_21_fu_40));
    grp_fu_191_p2 <= (instance_state_q0 xor data_q0);
    i_fu_353_p2 <= std_logic_vector(unsigned(reg_198) + unsigned(zext_ln229_fu_349_p1));
    icmp_ln194_fu_220_p2 <= "1" when (unsigned(i_21_fu_40) < unsigned(dataByteLen_cast_reg_449)) else "0";
    icmp_ln195_1_fu_237_p2 <= "1" when (unsigned(add_ln195_fu_231_p2) > unsigned(dataByteLen_cast_reg_449)) else "0";
    icmp_ln195_fu_225_p2 <= "1" when (instance_byteIOIndex_fu_44 = ap_const_lv32_0) else "0";
    icmp_ln206_fu_251_p2 <= "1" when (unsigned(i_21_fu_40) < unsigned(ap_const_lv64_A8)) else "0";
    icmp_ln211_fu_271_p2 <= "1" when (offset_assign_14_reg_126 = ap_const_lv8_A8) else "0";
    icmp_ln224_fu_330_p2 <= "1" when (unsigned(add_ln224_fu_325_p2) > unsigned(ap_const_lv32_A8)) else "0";
    icmp_ln231_fu_359_p2 <= "1" when (loop_1_reg_137 = select_ln224_reg_509) else "0";
    icmp_ln237_fu_411_p2 <= "1" when (add_ln236_fu_406_p2 = ap_const_lv32_A8) else "0";

    instance_state_address0_assign_proc : process(ap_CS_fsm_state4, icmp_ln211_fu_271_p2, instance_state_addr_11_reg_499, ap_CS_fsm_state6, ap_CS_fsm_state8, icmp_ln231_fu_359_p2, instance_state_addr_reg_539, ap_CS_fsm_state10, ap_predicate_op112_call_state10, grp_KeccakP1600_Permute_s_fu_160_state_address0, ap_CS_fsm_state5, ap_CS_fsm_state9, zext_ln212_fu_283_p1, zext_ln149_fu_401_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            instance_state_address0 <= instance_state_addr_reg_539;
        elsif (((icmp_ln231_fu_359_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            instance_state_address0 <= zext_ln149_fu_401_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            instance_state_address0 <= instance_state_addr_11_reg_499;
        elsif (((icmp_ln211_fu_271_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            instance_state_address0 <= zext_ln212_fu_283_p1(8 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op112_call_state10 = ap_const_boolean_1)))) then 
            instance_state_address0 <= grp_KeccakP1600_Permute_s_fu_160_state_address0;
        else 
            instance_state_address0 <= "XXXXXXXX";
        end if; 
    end process;


    instance_state_ce0_assign_proc : process(ap_CS_fsm_state4, icmp_ln211_fu_271_p2, ap_CS_fsm_state6, ap_CS_fsm_state8, icmp_ln231_fu_359_p2, ap_CS_fsm_state10, ap_predicate_op112_call_state10, grp_KeccakP1600_Permute_s_fu_160_state_ce0, ap_CS_fsm_state5, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((icmp_ln211_fu_271_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln231_fu_359_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
            instance_state_ce0 <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op112_call_state10 = ap_const_boolean_1)))) then 
            instance_state_ce0 <= grp_KeccakP1600_Permute_s_fu_160_state_ce0;
        else 
            instance_state_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    instance_state_d0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state10, ap_predicate_op112_call_state10, grp_KeccakP1600_Permute_s_fu_160_state_d0, ap_CS_fsm_state5, ap_CS_fsm_state9, grp_fu_191_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            instance_state_d0 <= grp_fu_191_p2;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op112_call_state10 = ap_const_boolean_1)))) then 
            instance_state_d0 <= grp_KeccakP1600_Permute_s_fu_160_state_d0;
        else 
            instance_state_d0 <= "XXXXXXXX";
        end if; 
    end process;


    instance_state_we0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state10, ap_predicate_op112_call_state10, grp_KeccakP1600_Permute_s_fu_160_state_we0, ap_CS_fsm_state5, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            instance_state_we0 <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (ap_predicate_op112_call_state10 = ap_const_boolean_1)))) then 
            instance_state_we0 <= grp_KeccakP1600_Permute_s_fu_160_state_we0;
        else 
            instance_state_we0 <= ap_const_logic_0;
        end if; 
    end process;

    j_11_fu_308_p2 <= std_logic_vector(unsigned(reg_198) + unsigned(ap_const_lv64_FFFFFFFFFFFFFF58));
    loop_45_fu_277_p2 <= std_logic_vector(unsigned(offset_assign_14_reg_126) + unsigned(ap_const_lv8_1));
    loop_fu_364_p2 <= std_logic_vector(unsigned(loop_1_reg_137) + unsigned(ap_const_lv32_1));
    p_2_rec_fu_426_p2 <= std_logic_vector(unsigned(ap_phi_mux_p_1_rec_pn_phi_fu_151_p6) + unsigned(p_01_rec_reg_102));
    partialBlock_12_fu_336_p2 <= std_logic_vector(unsigned(ap_const_lv32_A8) - unsigned(instance_byteIOIndex_fu_44));
    partialBlock_fu_246_p2 <= std_logic_vector(unsigned(trunc_ln223_reg_456) - unsigned(trunc_ln223_1_fu_242_p1));
    select_ln224_fu_342_p3 <= 
        partialBlock_12_fu_336_p2 when (icmp_ln224_fu_330_p2(0) = '1') else 
        partialBlock_reg_472;
    trunc_ln194_8_fu_261_p1 <= p_01_rec_reg_102(17 - 1 downto 0);
    trunc_ln194_fu_380_p1 <= p_01_rec_reg_102(17 - 1 downto 0);
    trunc_ln206_fu_257_p1 <= p_1_rec_reg_114(17 - 1 downto 0);
    trunc_ln223_1_fu_242_p1 <= i_21_fu_40(32 - 1 downto 0);
    trunc_ln223_fu_206_p1 <= dataByteLen(32 - 1 downto 0);
    trunc_ln232_fu_370_p1 <= loop_1_reg_137(17 - 1 downto 0);
    zext_ln149_fu_401_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln232_12_fu_395_p2),64));
    zext_ln212_14_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(offset_assign_14_reg_126),17));
    zext_ln212_8_fu_303_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln212_5_fu_298_p2),64));
    zext_ln212_fu_283_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(offset_assign_14_reg_126),64));
    zext_ln229_fu_349_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln224_fu_342_p3),64));
    zext_ln232_fu_390_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln232_2_fu_384_p2),64));
end behav;
