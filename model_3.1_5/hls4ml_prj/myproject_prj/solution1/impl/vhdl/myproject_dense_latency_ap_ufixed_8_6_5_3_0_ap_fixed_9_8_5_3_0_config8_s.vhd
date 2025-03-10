-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s is
port (
    ap_ready : OUT STD_LOGIC;
    data_6_val : IN STD_LOGIC_VECTOR (7 downto 0);
    data_12_val : IN STD_LOGIC_VECTOR (7 downto 0);
    data_41_val : IN STD_LOGIC_VECTOR (7 downto 0);
    data_54_val : IN STD_LOGIC_VECTOR (6 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (8 downto 0);
    ap_rst : IN STD_LOGIC );
end;


architecture behav of myproject_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv14_300 : STD_LOGIC_VECTOR (13 downto 0) := "00001100000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal tmp_fu_84_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_shl6_fu_76_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln42_fu_92_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal mult_fu_96_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal mult_1_fu_106_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_21_fu_126_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_shl_fu_118_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln42_2_fu_134_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal mult_2_fu_138_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal mult_3_fu_148_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln17_fu_102_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln17_1_fu_114_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln17_3_fu_156_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln58_1_fu_166_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln58_fu_172_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln17_2_fu_144_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln58_2_fu_176_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln58_1_fu_182_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln58_fu_160_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln58_3_fu_186_p2 : STD_LOGIC_VECTOR (16 downto 0);


begin



    add_ln58_1_fu_166_p2 <= std_logic_vector(unsigned(zext_ln17_3_fu_156_p1) + unsigned(ap_const_lv14_300));
    add_ln58_2_fu_176_p2 <= std_logic_vector(unsigned(zext_ln58_fu_172_p1) + unsigned(zext_ln17_2_fu_144_p1));
    add_ln58_3_fu_186_p2 <= std_logic_vector(unsigned(zext_ln58_1_fu_182_p1) + unsigned(add_ln58_fu_160_p2));
    add_ln58_fu_160_p2 <= std_logic_vector(unsigned(zext_ln17_fu_102_p1) + unsigned(zext_ln17_1_fu_114_p1));
    ap_ready <= ap_const_logic_1;
    ap_return <= add_ln58_3_fu_186_p2(16 downto 8);
    mult_1_fu_106_p3 <= (data_12_val & ap_const_lv7_0);
    mult_2_fu_138_p2 <= std_logic_vector(unsigned(p_shl_fu_118_p3) - unsigned(zext_ln42_2_fu_134_p1));
    mult_3_fu_148_p3 <= (data_54_val & ap_const_lv6_0);
    mult_fu_96_p2 <= std_logic_vector(unsigned(p_shl6_fu_76_p3) - unsigned(zext_ln42_fu_92_p1));
    p_shl6_fu_76_p3 <= (data_6_val & ap_const_lv8_0);
    p_shl_fu_118_p3 <= (data_41_val & ap_const_lv7_0);
    tmp_21_fu_126_p3 <= (data_41_val & ap_const_lv5_0);
    tmp_fu_84_p3 <= (data_6_val & ap_const_lv6_0);
    zext_ln17_1_fu_114_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mult_1_fu_106_p3),17));
    zext_ln17_2_fu_144_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mult_2_fu_138_p2),16));
    zext_ln17_3_fu_156_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mult_3_fu_148_p3),14));
    zext_ln17_fu_102_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mult_fu_96_p2),17));
    zext_ln42_2_fu_134_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_21_fu_126_p3),15));
    zext_ln42_fu_92_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_84_p3),16));
    zext_ln58_1_fu_182_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln58_2_fu_176_p2),17));
    zext_ln58_fu_172_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln58_1_fu_166_p2),16));
end behav;
