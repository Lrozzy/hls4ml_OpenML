-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s is
port (
    ap_ready : OUT STD_LOGIC;
    data_0_val : IN STD_LOGIC_VECTOR (4 downto 0);
    data_5_val : IN STD_LOGIC_VECTOR (3 downto 0);
    data_11_val : IN STD_LOGIC_VECTOR (7 downto 0);
    data_12_val : IN STD_LOGIC_VECTOR (5 downto 0);
    data_13_val : IN STD_LOGIC_VECTOR (3 downto 0);
    data_17_val : IN STD_LOGIC_VECTOR (4 downto 0);
    data_21_val : IN STD_LOGIC_VECTOR (5 downto 0);
    data_28_val : IN STD_LOGIC_VECTOR (5 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ap_return_4 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ap_rst : IN STD_LOGIC );
end;


architecture behav of myproject_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv4_E : STD_LOGIC_VECTOR (3 downto 0) := "1110";
    constant ap_const_lv12_F9E : STD_LOGIC_VECTOR (11 downto 0) := "111110011110";
    constant ap_const_lv11_35 : STD_LOGIC_VECTOR (10 downto 0) := "00000110101";
    constant ap_const_lv11_16 : STD_LOGIC_VECTOR (10 downto 0) := "00000010110";
    constant ap_const_lv11_32 : STD_LOGIC_VECTOR (10 downto 0) := "00000110010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal tmp_42_fu_174_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl1_fu_166_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln42_fu_182_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sub_ln42_fu_186_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_43_fu_196_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln42_2_fu_204_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln42_3_fu_214_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal sub_ln42_2_fu_218_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal shl_ln_fu_228_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln42_2_fu_244_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal shl_ln42_3_fu_256_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_44_fu_280_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl2_fu_272_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln42_8_fu_288_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln42_3_fu_292_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_45_fu_302_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln42_11_fu_314_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal sub_ln42_4_fu_318_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal shl_ln42_1_fu_328_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_46_fu_348_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln42_13_fu_356_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal sub_ln42_5_fu_360_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_47_fu_370_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_48_fu_382_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln42_15_fu_390_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln42_14_fu_378_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal sub_ln42_6_fu_394_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_49_fu_404_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln42_16_fu_412_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sub_ln42_7_fu_416_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_50_fu_426_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_51_fu_438_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln42_19_fu_446_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln42_18_fu_434_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_52_fu_456_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln42_21_fu_468_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sub_ln42_9_fu_472_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal shl_ln42_4_fu_482_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl3_fu_494_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln42_17_fu_490_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_53_fu_508_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln42_22_fu_516_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal sub_ln42_11_fu_520_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal shl_ln42_5_fu_530_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal sub_ln42_1_fu_208_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_fu_542_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln_fu_552_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal data_13_val_cast22_fu_564_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp8_fu_568_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_s_fu_574_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln42_9_fu_298_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal sext_ln42_1_fu_422_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln58_fu_586_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln42_4_fu_236_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal sext_ln42_2_fu_526_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_16_fu_598_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln58_fu_582_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_17_fu_604_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln58_23_fu_610_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln58_15_fu_592_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln42_1_fu_192_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln42_6_fu_252_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln58_19_fu_620_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln73_14_fu_340_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln42_10_fu_310_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal sub_ln58_9_fu_630_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal sext_ln58_11_fu_636_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln58_fu_626_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln58_20_fu_640_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal sext_ln42_fu_366_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal sub_ln42_8_fu_450_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln58_21_fu_650_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal sub_ln58_10_fu_660_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal sext_ln58_14_fu_666_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln58_13_fu_656_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_22_fu_670_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln58_12_fu_646_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln42_12_fu_344_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal data_21_val_cast24_fu_682_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp65_fu_686_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_28_fu_692_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal or_ln58_cast_fu_560_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln73_fu_264_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_24_fu_704_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln42_7_fu_268_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln58_fu_710_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln42_23_fu_538_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln58_24_fu_700_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_25_fu_720_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln58_25_fu_726_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal sext_ln58_15_fu_716_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal sext_ln73_1_fu_324_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln73_2_fu_400_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_27_fu_736_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln42_5_fu_240_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_28_fu_742_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln42_20_fu_464_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal sub_ln58_11_fu_752_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln58_29_fu_762_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln58_3_fu_768_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln58_17_fu_758_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_30_fu_772_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln58_18_fu_778_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal sext_ln58_16_fu_748_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal sext_ln73_fu_224_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln73_13_fu_336_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln58_33_fu_794_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal sext_ln58_19_fu_800_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_32_fu_788_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_34_fu_804_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln73_15_fu_478_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal sub_ln42_10_fu_502_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln58_35_fu_814_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal sub_ln58_12_fu_824_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal sext_ln58_21_fu_830_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln58_4_fu_820_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_36_fu_834_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln58_22_fu_840_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal sext_ln58_20_fu_810_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln58_18_fu_614_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln58_23_fu_676_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln111_7_fu_860_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln58_26_fu_730_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln58_31_fu_782_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln58_37_fu_844_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal sext_ln111_fu_870_p1 : STD_LOGIC_VECTOR (11 downto 0);


begin



    add_ln58_15_fu_592_p2 <= std_logic_vector(unsigned(add_ln58_fu_586_p2) + unsigned(zext_ln42_4_fu_236_p1));
    add_ln58_16_fu_598_p2 <= std_logic_vector(signed(sext_ln42_2_fu_526_p1) + signed(ap_const_lv12_F9E));
    add_ln58_17_fu_604_p2 <= std_logic_vector(unsigned(add_ln58_16_fu_598_p2) + unsigned(sext_ln58_fu_582_p1));
    add_ln58_18_fu_614_p2 <= std_logic_vector(signed(sext_ln58_23_fu_610_p1) + signed(add_ln58_15_fu_592_p2));
    add_ln58_19_fu_620_p2 <= std_logic_vector(unsigned(zext_ln42_1_fu_192_p1) + unsigned(zext_ln42_6_fu_252_p1));
    add_ln58_20_fu_640_p2 <= std_logic_vector(signed(sext_ln58_11_fu_636_p1) + signed(zext_ln58_fu_626_p1));
    add_ln58_21_fu_650_p2 <= std_logic_vector(signed(sext_ln42_fu_366_p1) + signed(sub_ln42_8_fu_450_p2));
    add_ln58_22_fu_670_p2 <= std_logic_vector(signed(sext_ln58_14_fu_666_p1) + signed(sext_ln58_13_fu_656_p1));
    add_ln58_23_fu_676_p2 <= std_logic_vector(unsigned(add_ln58_22_fu_670_p2) + unsigned(sext_ln58_12_fu_646_p1));
    add_ln58_24_fu_704_p2 <= std_logic_vector(signed(or_ln58_cast_fu_560_p1) + signed(zext_ln73_fu_264_p1));
    add_ln58_25_fu_720_p2 <= std_logic_vector(unsigned(zext_ln42_23_fu_538_p1) + unsigned(sext_ln58_24_fu_700_p1));
    add_ln58_26_fu_730_p2 <= std_logic_vector(signed(sext_ln58_25_fu_726_p1) + signed(sext_ln58_15_fu_716_p1));
    add_ln58_27_fu_736_p2 <= std_logic_vector(signed(sext_ln73_1_fu_324_p1) + signed(sext_ln73_2_fu_400_p1));
    add_ln58_28_fu_742_p2 <= std_logic_vector(unsigned(add_ln58_27_fu_736_p2) + unsigned(zext_ln42_5_fu_240_p1));
    add_ln58_29_fu_762_p2 <= std_logic_vector(unsigned(zext_ln42_22_fu_516_p1) + unsigned(ap_const_lv11_16));
    add_ln58_30_fu_772_p2 <= std_logic_vector(unsigned(zext_ln58_3_fu_768_p1) + unsigned(sext_ln58_17_fu_758_p1));
    add_ln58_31_fu_782_p2 <= std_logic_vector(signed(sext_ln58_18_fu_778_p1) + signed(sext_ln58_16_fu_748_p1));
    add_ln58_32_fu_788_p2 <= std_logic_vector(signed(sext_ln73_fu_224_p1) + signed(sext_ln73_1_fu_324_p1));
    add_ln58_33_fu_794_p2 <= std_logic_vector(unsigned(zext_ln73_13_fu_336_p1) + unsigned(sub_ln42_6_fu_394_p2));
    add_ln58_34_fu_804_p2 <= std_logic_vector(signed(sext_ln58_19_fu_800_p1) + signed(add_ln58_32_fu_788_p2));
    add_ln58_35_fu_814_p2 <= std_logic_vector(unsigned(zext_ln73_15_fu_478_p1) + unsigned(sub_ln42_10_fu_502_p2));
    add_ln58_36_fu_834_p2 <= std_logic_vector(signed(sext_ln58_21_fu_830_p1) + signed(zext_ln58_4_fu_820_p1));
    add_ln58_37_fu_844_p2 <= std_logic_vector(signed(sext_ln58_22_fu_840_p1) + signed(sext_ln58_20_fu_810_p1));
    add_ln58_fu_586_p2 <= std_logic_vector(unsigned(zext_ln42_9_fu_298_p1) + unsigned(sext_ln42_1_fu_422_p1));
    ap_ready <= ap_const_logic_1;
    ap_return_0 <= add_ln58_18_fu_614_p2(12 downto 1);
    ap_return_1 <= sext_ln111_fu_870_p1;
    ap_return_2 <= add_ln58_26_fu_730_p2(12 downto 1);
    ap_return_3 <= add_ln58_31_fu_782_p2(12 downto 1);
    ap_return_4 <= add_ln58_37_fu_844_p2(12 downto 1);
    data_13_val_cast22_fu_564_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_13_val),6));
    data_21_val_cast24_fu_682_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_21_val),7));
        or_ln58_cast_fu_560_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(or_ln_fu_552_p3),12));

    or_ln_fu_552_p3 <= (tmp_fu_542_p4 & ap_const_lv4_E);
    p_shl1_fu_166_p3 <= (data_0_val & ap_const_lv4_0);
    p_shl2_fu_272_p3 <= (data_11_val & ap_const_lv4_0);
    p_shl3_fu_494_p3 <= (data_21_val & ap_const_lv5_0);
        sext_ln111_fu_870_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln111_7_fu_860_p4),12));

        sext_ln42_1_fu_422_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln42_7_fu_416_p2),13));

        sext_ln42_2_fu_526_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln42_11_fu_520_p2),12));

        sext_ln42_fu_366_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln42_5_fu_360_p2),10));

        sext_ln58_11_fu_636_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln58_9_fu_630_p2),11));

        sext_ln58_12_fu_646_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln58_20_fu_640_p2),12));

        sext_ln58_13_fu_656_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln58_21_fu_650_p2),12));

        sext_ln58_14_fu_666_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln58_10_fu_660_p2),12));

        sext_ln58_15_fu_716_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln58_fu_710_p2),13));

        sext_ln58_16_fu_748_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln58_28_fu_742_p2),13));

        sext_ln58_17_fu_758_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln58_11_fu_752_p2),12));

        sext_ln58_18_fu_778_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln58_30_fu_772_p2),13));

        sext_ln58_19_fu_800_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln58_33_fu_794_p2),12));

        sext_ln58_20_fu_810_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln58_34_fu_804_p2),13));

        sext_ln58_21_fu_830_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln58_12_fu_824_p2),12));

        sext_ln58_22_fu_840_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln58_36_fu_834_p2),13));

        sext_ln58_23_fu_610_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln58_17_fu_604_p2),13));

        sext_ln58_24_fu_700_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_28_fu_692_p3),12));

        sext_ln58_25_fu_726_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln58_25_fu_720_p2),13));

        sext_ln58_fu_582_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_s_fu_574_p3),12));

        sext_ln73_1_fu_324_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln42_4_fu_318_p2),12));

        sext_ln73_2_fu_400_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln42_6_fu_394_p2),12));

        sext_ln73_fu_224_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln42_2_fu_218_p2),12));

    shl_ln42_1_fu_328_p3 <= (data_12_val & ap_const_lv3_0);
    shl_ln42_2_fu_244_p3 <= (data_5_val & ap_const_lv3_0);
    shl_ln42_3_fu_256_p3 <= (data_5_val & ap_const_lv5_0);
    shl_ln42_4_fu_482_p3 <= (data_21_val & ap_const_lv3_0);
    shl_ln42_5_fu_530_p3 <= (data_28_val & ap_const_lv2_0);
    shl_ln_fu_228_p3 <= (data_5_val & ap_const_lv4_0);
    sub_ln42_10_fu_502_p2 <= std_logic_vector(unsigned(p_shl3_fu_494_p3) - unsigned(zext_ln42_17_fu_490_p1));
    sub_ln42_11_fu_520_p2 <= std_logic_vector(unsigned(ap_const_lv11_0) - unsigned(zext_ln42_22_fu_516_p1));
    sub_ln42_1_fu_208_p2 <= std_logic_vector(unsigned(ap_const_lv11_0) - unsigned(zext_ln42_2_fu_204_p1));
    sub_ln42_2_fu_218_p2 <= std_logic_vector(unsigned(ap_const_lv7_0) - unsigned(zext_ln42_3_fu_214_p1));
    sub_ln42_3_fu_292_p2 <= std_logic_vector(unsigned(p_shl2_fu_272_p3) - unsigned(zext_ln42_8_fu_288_p1));
    sub_ln42_4_fu_318_p2 <= std_logic_vector(unsigned(ap_const_lv11_0) - unsigned(zext_ln42_11_fu_314_p1));
    sub_ln42_5_fu_360_p2 <= std_logic_vector(unsigned(ap_const_lv7_0) - unsigned(zext_ln42_13_fu_356_p1));
    sub_ln42_6_fu_394_p2 <= std_logic_vector(unsigned(zext_ln42_15_fu_390_p1) - unsigned(zext_ln42_14_fu_378_p1));
    sub_ln42_7_fu_416_p2 <= std_logic_vector(unsigned(ap_const_lv9_0) - unsigned(zext_ln42_16_fu_412_p1));
    sub_ln42_8_fu_450_p2 <= std_logic_vector(unsigned(zext_ln42_19_fu_446_p1) - unsigned(zext_ln42_18_fu_434_p1));
    sub_ln42_9_fu_472_p2 <= std_logic_vector(unsigned(tmp_50_fu_426_p3) - unsigned(zext_ln42_21_fu_468_p1));
    sub_ln42_fu_186_p2 <= std_logic_vector(unsigned(p_shl1_fu_166_p3) - unsigned(zext_ln42_fu_182_p1));
    sub_ln58_10_fu_660_p2 <= std_logic_vector(unsigned(ap_const_lv11_35) - unsigned(zext_ln42_22_fu_516_p1));
    sub_ln58_11_fu_752_p2 <= std_logic_vector(unsigned(zext_ln42_17_fu_490_p1) - unsigned(zext_ln42_20_fu_464_p1));
    sub_ln58_12_fu_824_p2 <= std_logic_vector(unsigned(ap_const_lv11_32) - unsigned(zext_ln42_22_fu_516_p1));
    sub_ln58_9_fu_630_p2 <= std_logic_vector(unsigned(zext_ln73_14_fu_340_p1) - unsigned(zext_ln42_10_fu_310_p1));
    sub_ln58_fu_710_p2 <= std_logic_vector(unsigned(add_ln58_24_fu_704_p2) - unsigned(zext_ln42_7_fu_268_p1));
    tmp65_fu_686_p2 <= std_logic_vector(unsigned(zext_ln42_12_fu_344_p1) - unsigned(data_21_val_cast24_fu_682_p1));
    tmp8_fu_568_p2 <= std_logic_vector(unsigned(data_13_val_cast22_fu_564_p1) - unsigned(data_12_val));
    tmp_28_fu_692_p3 <= (tmp65_fu_686_p2 & ap_const_lv4_0);
    tmp_42_fu_174_p3 <= (data_0_val & ap_const_lv1_0);
    tmp_43_fu_196_p3 <= (data_0_val & ap_const_lv5_0);
    tmp_44_fu_280_p3 <= (data_11_val & ap_const_lv2_0);
    tmp_45_fu_302_p3 <= (data_11_val & ap_const_lv1_0);
    tmp_46_fu_348_p3 <= (data_13_val & ap_const_lv2_0);
    tmp_47_fu_370_p3 <= (data_13_val & ap_const_lv6_0);
    tmp_48_fu_382_p3 <= (data_13_val & ap_const_lv4_0);
    tmp_49_fu_404_p3 <= (data_17_val & ap_const_lv3_0);
    tmp_50_fu_426_p3 <= (data_17_val & ap_const_lv4_0);
    tmp_51_fu_438_p3 <= (data_17_val & ap_const_lv2_0);
    tmp_52_fu_456_p3 <= (data_17_val & ap_const_lv5_0);
    tmp_53_fu_508_p3 <= (data_28_val & ap_const_lv4_0);
    tmp_fu_542_p4 <= sub_ln42_1_fu_208_p2(10 downto 4);
    tmp_s_fu_574_p3 <= (tmp8_fu_568_p2 & ap_const_lv2_0);
    trunc_ln111_7_fu_860_p4 <= add_ln58_23_fu_676_p2(11 downto 1);
    zext_ln42_10_fu_310_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_45_fu_302_p3),10));
    zext_ln42_11_fu_314_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_44_fu_280_p3),11));
    zext_ln42_12_fu_344_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_13_val),7));
    zext_ln42_13_fu_356_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_46_fu_348_p3),7));
    zext_ln42_14_fu_378_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_47_fu_370_p3),11));
    zext_ln42_15_fu_390_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_48_fu_382_p3),11));
    zext_ln42_16_fu_412_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_49_fu_404_p3),9));
    zext_ln42_17_fu_490_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln42_4_fu_482_p3),11));
    zext_ln42_18_fu_434_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_50_fu_426_p3),10));
    zext_ln42_19_fu_446_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_51_fu_438_p3),10));
    zext_ln42_1_fu_192_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln42_fu_186_p2),10));
    zext_ln42_20_fu_464_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_52_fu_456_p3),11));
    zext_ln42_21_fu_468_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_51_fu_438_p3),9));
    zext_ln42_22_fu_516_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_53_fu_508_p3),11));
    zext_ln42_23_fu_538_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln42_5_fu_530_p3),12));
    zext_ln42_2_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_43_fu_196_p3),11));
    zext_ln42_3_fu_214_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_42_fu_174_p3),7));
    zext_ln42_4_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_228_p3),13));
    zext_ln42_5_fu_240_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_228_p3),12));
    zext_ln42_6_fu_252_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln42_2_fu_244_p3),10));
    zext_ln42_7_fu_268_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_11_val),12));
    zext_ln42_8_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_44_fu_280_p3),12));
    zext_ln42_9_fu_298_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln42_3_fu_292_p2),13));
    zext_ln42_fu_182_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_42_fu_174_p3),9));
    zext_ln58_3_fu_768_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln58_29_fu_762_p2),12));
    zext_ln58_4_fu_820_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln58_35_fu_814_p2),12));
    zext_ln58_fu_626_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln58_19_fu_620_p2),11));
    zext_ln73_13_fu_336_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln42_1_fu_328_p3),11));
    zext_ln73_14_fu_340_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln42_1_fu_328_p3),10));
    zext_ln73_15_fu_478_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln42_9_fu_472_p2),11));
    zext_ln73_fu_264_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln42_3_fu_256_p3),12));
end behav;
