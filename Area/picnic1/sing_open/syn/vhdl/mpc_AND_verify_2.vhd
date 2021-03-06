-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mpc_AND_verify_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in1_0_read : IN STD_LOGIC_VECTOR (7 downto 0);
    in1_1_read : IN STD_LOGIC_VECTOR (7 downto 0);
    in2_0_read : IN STD_LOGIC_VECTOR (7 downto 0);
    in2_1_read : IN STD_LOGIC_VECTOR (7 downto 0);
    rand_0_tape_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    rand_0_tape_ce0 : OUT STD_LOGIC;
    rand_0_tape_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    rand_0_tape_address1 : OUT STD_LOGIC_VECTOR (8 downto 0);
    rand_0_tape_ce1 : OUT STD_LOGIC;
    rand_0_tape_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    rand_0_pos_read : IN STD_LOGIC_VECTOR (31 downto 0);
    view1_communicatedBi_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    view1_communicatedBi_ce0 : OUT STD_LOGIC;
    view1_communicatedBi_we0 : OUT STD_LOGIC;
    view1_communicatedBi_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    view1_communicatedBi_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    view1_communicatedBits_offset : IN STD_LOGIC_VECTOR (7 downto 0);
    view2_communicatedBi_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    view2_communicatedBi_ce0 : OUT STD_LOGIC;
    view2_communicatedBi_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    view2_communicatedBits_offset : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of mpc_AND_verify_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv10_A6 : STD_LOGIC_VECTOR (9 downto 0) := "0010100110";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv16_4B : STD_LOGIC_VECTOR (15 downto 0) := "0000000001001011";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal zext_ln54_cast1_reg_372 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln54_fu_193_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln54_reg_388 : STD_LOGIC_VECTOR (2 downto 0);
    signal view1_communicatedBi_2_reg_393 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln54_11_fu_218_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln54_11_reg_403 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln752_3_fu_282_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln752_3_reg_410 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln54_fu_157_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln54_fu_188_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln66_fu_205_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln54_1_fu_209_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal lshr_ln_fu_147_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal zext_ln54_cast_fu_172_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln54_fu_182_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_359_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_351_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal xor_ln54_fu_213_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal lshr_ln54_fu_222_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal lshr_ln54_6_fu_232_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln752_fu_238_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln52_fu_228_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln752_fu_260_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln752_fu_242_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln752_1_fu_248_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln752_fu_266_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln752_2_fu_254_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln752_2_fu_276_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln752_1_fu_270_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln66_fu_288_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln66_fu_293_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln66_fu_303_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln66_9_fu_299_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal lshr_ln54_7_fu_316_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln54_7_fu_321_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln756_fu_329_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln54_12_fu_325_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_351_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_351_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_359_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_359_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_return_0_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_1_preg : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal ap_return_2_preg : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_fu_351_p10 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_359_p10 : STD_LOGIC_VECTOR (15 downto 0);

    component crypto_sign_open_g8j IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    crypto_sign_open_g8j_U71 : component crypto_sign_open_g8j
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => grp_fu_351_p0,
        din1 => grp_fu_351_p1,
        din2 => zext_ln54_cast1_reg_372,
        dout => grp_fu_351_p3);

    crypto_sign_open_g8j_U72 : component crypto_sign_open_g8j
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => grp_fu_359_p0,
        din1 => grp_fu_359_p1,
        din2 => zext_ln54_cast1_reg_372,
        dout => grp_fu_359_p3);





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


    ap_return_0_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_0_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    ap_return_0_preg <= add_ln756_fu_329_p2;
                end if; 
            end if;
        end if;
    end process;


    ap_return_1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_1_preg <= ap_const_lv8_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    ap_return_1_preg <= xor_ln752_3_reg_410;
                end if; 
            end if;
        end if;
    end process;


    ap_return_2_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_2_preg(0) <= '0';
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                                        ap_return_2_preg(0) <= zext_ln54_12_fu_325_p1(0);
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                trunc_ln54_reg_388 <= trunc_ln54_fu_193_p1;
                zext_ln54_cast1_reg_372 <= rand_0_pos_read(18 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                view1_communicatedBi_2_reg_393 <= sext_ln66_fu_205_p1(15 - 1 downto 0);
                xor_ln752_3_reg_410 <= xor_ln752_3_fu_282_p2;
                    zext_ln54_11_reg_403(2 downto 0) <= zext_ln54_11_fu_218_p1(2 downto 0);
            end if;
        end if;
    end process;
    zext_ln54_11_reg_403(7 downto 3) <= "00000";
    ap_return_2_preg(7 downto 1) <= "0000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln54_fu_182_p2 <= std_logic_vector(unsigned(ap_const_lv10_A6) + unsigned(zext_ln54_cast_fu_172_p4));
    add_ln756_fu_329_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(rand_0_pos_read));
    and_ln66_fu_303_p2 <= (xor_ln66_fu_293_p2 and view1_communicatedBi_q0);
    and_ln752_1_fu_248_p2 <= (in2_0_read and in1_1_read);
    and_ln752_2_fu_254_p2 <= (in2_0_read and in1_0_read);
    and_ln752_fu_242_p2 <= (in2_1_read and in1_0_read);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_0_assign_proc : process(ap_CS_fsm_state3, add_ln756_fu_329_p2, ap_return_0_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_return_0 <= add_ln756_fu_329_p2;
        else 
            ap_return_0 <= ap_return_0_preg;
        end if; 
    end process;


    ap_return_1_assign_proc : process(xor_ln752_3_reg_410, ap_CS_fsm_state3, ap_return_1_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_return_1 <= xor_ln752_3_reg_410;
        else 
            ap_return_1 <= ap_return_1_preg;
        end if; 
    end process;


    ap_return_2_assign_proc : process(ap_CS_fsm_state3, zext_ln54_12_fu_325_p1, ap_return_2_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_return_2 <= zext_ln54_12_fu_325_p1;
        else 
            ap_return_2 <= ap_return_2_preg;
        end if; 
    end process;

    grp_fu_351_p0 <= ap_const_lv16_4B(8 - 1 downto 0);
    grp_fu_351_p1 <= grp_fu_351_p10(8 - 1 downto 0);
    grp_fu_351_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(view2_communicatedBits_offset),16));
    grp_fu_359_p0 <= ap_const_lv16_4B(8 - 1 downto 0);
    grp_fu_359_p1 <= grp_fu_359_p10(8 - 1 downto 0);
    grp_fu_359_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(view1_communicatedBits_offset),16));
    lshr_ln54_6_fu_232_p2 <= std_logic_vector(shift_right(unsigned(rand_0_tape_q1),to_integer(unsigned('0' & zext_ln54_11_fu_218_p1(8-1 downto 0)))));
    lshr_ln54_7_fu_316_p2 <= std_logic_vector(shift_right(unsigned(view2_communicatedBi_q0),to_integer(unsigned('0' & zext_ln54_11_reg_403(8-1 downto 0)))));
    lshr_ln54_fu_222_p2 <= std_logic_vector(shift_right(unsigned(rand_0_tape_q0),to_integer(unsigned('0' & zext_ln54_11_fu_218_p1(8-1 downto 0)))));
    lshr_ln_fu_147_p4 <= rand_0_pos_read(31 downto 3);
    rand_0_tape_address0 <= zext_ln54_fu_157_p1(9 - 1 downto 0);
    rand_0_tape_address1 <= sext_ln54_fu_188_p1(9 - 1 downto 0);

    rand_0_tape_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rand_0_tape_ce0 <= ap_const_logic_1;
        else 
            rand_0_tape_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    rand_0_tape_ce1_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rand_0_tape_ce1 <= ap_const_logic_1;
        else 
            rand_0_tape_ce1 <= ap_const_logic_0;
        end if; 
    end process;

        sext_ln54_1_fu_209_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(grp_fu_351_p3),64));

        sext_ln54_fu_188_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln54_fu_182_p2),64));

        sext_ln66_fu_205_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(grp_fu_359_p3),64));

    shl_ln66_9_fu_299_p2 <= std_logic_vector(shift_left(unsigned(xor_ln752_3_reg_410),to_integer(unsigned('0' & zext_ln54_11_reg_403(8-1 downto 0)))));
    shl_ln66_fu_288_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv8_1),to_integer(unsigned('0' & zext_ln54_11_reg_403(8-1 downto 0)))));
    trunc_ln52_fu_228_p1 <= lshr_ln54_fu_222_p2(1 - 1 downto 0);
    trunc_ln54_7_fu_321_p1 <= lshr_ln54_7_fu_316_p2(1 - 1 downto 0);
    trunc_ln54_fu_193_p1 <= rand_0_pos_read(3 - 1 downto 0);
    trunc_ln752_fu_238_p1 <= lshr_ln54_6_fu_232_p2(1 - 1 downto 0);

    view1_communicatedBi_address0_assign_proc : process(view1_communicatedBi_2_reg_393, ap_CS_fsm_state2, sext_ln66_fu_205_p1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            view1_communicatedBi_address0 <= view1_communicatedBi_2_reg_393;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            view1_communicatedBi_address0 <= sext_ln66_fu_205_p1(15 - 1 downto 0);
        else 
            view1_communicatedBi_address0 <= "XXXXXXXXXXXXXXX";
        end if; 
    end process;


    view1_communicatedBi_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            view1_communicatedBi_ce0 <= ap_const_logic_1;
        else 
            view1_communicatedBi_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    view1_communicatedBi_d0 <= (shl_ln66_9_fu_299_p2 or and_ln66_fu_303_p2);

    view1_communicatedBi_we0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            view1_communicatedBi_we0 <= ap_const_logic_1;
        else 
            view1_communicatedBi_we0 <= ap_const_logic_0;
        end if; 
    end process;

    view2_communicatedBi_address0 <= sext_ln54_1_fu_209_p1(15 - 1 downto 0);

    view2_communicatedBi_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            view2_communicatedBi_ce0 <= ap_const_logic_1;
        else 
            view2_communicatedBi_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln54_fu_213_p2 <= (trunc_ln54_reg_388 xor ap_const_lv3_7);
    xor_ln66_fu_293_p2 <= (shl_ln66_fu_288_p2 xor ap_const_lv8_FF);
    xor_ln752_1_fu_270_p2 <= (and_ln752_fu_242_p2 xor and_ln752_1_fu_248_p2);
    xor_ln752_2_fu_276_p2 <= (zext_ln752_fu_266_p1 xor and_ln752_2_fu_254_p2);
    xor_ln752_3_fu_282_p2 <= (xor_ln752_2_fu_276_p2 xor xor_ln752_1_fu_270_p2);
    xor_ln752_fu_260_p2 <= (trunc_ln752_fu_238_p1 xor trunc_ln52_fu_228_p1);
    zext_ln54_11_fu_218_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln54_fu_213_p2),8));
    zext_ln54_12_fu_325_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln54_7_fu_321_p1),8));
    zext_ln54_cast_fu_172_p4 <= rand_0_pos_read(12 downto 3);
    zext_ln54_fu_157_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lshr_ln_fu_147_p4),64));
    zext_ln752_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln752_fu_260_p2),8));
end behav;
