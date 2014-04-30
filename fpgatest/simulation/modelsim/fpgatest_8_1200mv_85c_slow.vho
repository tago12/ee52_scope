-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/22/2014 19:30:33"

-- 
-- Device: Altera EP3C25Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fpgatest IS
    PORT (
	\GND\ : OUT std_logic;
	GND3 : OUT std_logic;
	GND4 : OUT std_logic;
	GND5 : OUT std_logic;
	GND6 : OUT std_logic;
	GND7 : OUT std_logic;
	GND8 : OUT std_logic;
	GND9 : OUT std_logic;
	cnt : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	cnt10 : OUT std_logic_vector(7 DOWNTO 0);
	cnt11 : OUT std_logic_vector(7 DOWNTO 0);
	cnt12 : OUT std_logic_vector(7 DOWNTO 0);
	cnt13 : OUT std_logic_vector(7 DOWNTO 0);
	cnt14 : OUT std_logic_vector(7 DOWNTO 0);
	cnt15 : OUT std_logic_vector(7 DOWNTO 0);
	cnt8 : OUT std_logic_vector(7 DOWNTO 0);
	cnt9 : OUT std_logic_vector(7 DOWNTO 0);
	cnta : OUT std_logic_vector(7 DOWNTO 0);
	cntb : OUT std_logic_vector(7 DOWNTO 0);
	cntc : OUT std_logic_vector(7 DOWNTO 0);
	cntd : OUT std_logic_vector(7 DOWNTO 0)
	);
END fpgatest;

-- Design Ports Information
-- GND	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GND3	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GND4	=>  Location: PIN_214,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GND5	=>  Location: PIN_216,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GND6	=>  Location: PIN_5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GND7	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GND8	=>  Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GND9	=>  Location: PIN_159,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[7]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[6]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[5]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[4]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt10[7]	=>  Location: PIN_168,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt10[6]	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt10[5]	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt10[4]	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt10[3]	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt10[2]	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt10[1]	=>  Location: PIN_181,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt10[0]	=>  Location: PIN_182,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt11[7]	=>  Location: PIN_183,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt11[6]	=>  Location: PIN_184,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt11[5]	=>  Location: PIN_185,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt11[4]	=>  Location: PIN_186,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt11[3]	=>  Location: PIN_187,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt11[2]	=>  Location: PIN_188,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt11[1]	=>  Location: PIN_189,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt11[0]	=>  Location: PIN_194,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt12[7]	=>  Location: PIN_195,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt12[6]	=>  Location: PIN_196,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt12[5]	=>  Location: PIN_197,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt12[4]	=>  Location: PIN_200,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt12[3]	=>  Location: PIN_201,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt12[2]	=>  Location: PIN_202,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt12[1]	=>  Location: PIN_203,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt12[0]	=>  Location: PIN_207,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt13[7]	=>  Location: PIN_217,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt13[6]	=>  Location: PIN_223,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt13[5]	=>  Location: PIN_224,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt13[4]	=>  Location: PIN_230,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt13[3]	=>  Location: PIN_233,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt13[2]	=>  Location: PIN_234,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt13[1]	=>  Location: PIN_235,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt13[0]	=>  Location: PIN_236,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt14[7]	=>  Location: PIN_218,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt14[6]	=>  Location: PIN_219,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt14[5]	=>  Location: PIN_221,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt14[4]	=>  Location: PIN_226,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt14[3]	=>  Location: PIN_231,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt14[2]	=>  Location: PIN_232,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt14[1]	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt14[0]	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt15[7]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt15[6]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt15[5]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt15[4]	=>  Location: PIN_237,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt15[3]	=>  Location: PIN_238,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt15[2]	=>  Location: PIN_239,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt15[1]	=>  Location: PIN_240,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt15[0]	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt8[7]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt8[6]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt8[5]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt8[4]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt8[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt8[2]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt8[1]	=>  Location: PIN_139,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt8[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt9[7]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt9[6]	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt9[5]	=>  Location: PIN_147,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt9[4]	=>  Location: PIN_148,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt9[3]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt9[2]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt9[1]	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt9[0]	=>  Location: PIN_167,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnta[7]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnta[6]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnta[5]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnta[4]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnta[3]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnta[2]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnta[1]	=>  Location: PIN_82,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnta[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntb[7]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntb[6]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntb[5]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntb[4]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntb[3]	=>  Location: PIN_94,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntb[2]	=>  Location: PIN_95,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntb[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntb[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntc[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntc[6]	=>  Location: PIN_107,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntc[5]	=>  Location: PIN_108,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntc[4]	=>  Location: PIN_109,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntc[3]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntc[2]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntc[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntc[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntd[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntd[6]	=>  Location: PIN_117,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntd[5]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntd[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntd[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntd[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntd[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntd[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fpgatest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_GND\ : std_logic;
SIGNAL ww_GND3 : std_logic;
SIGNAL ww_GND4 : std_logic;
SIGNAL ww_GND5 : std_logic;
SIGNAL ww_GND6 : std_logic;
SIGNAL ww_GND7 : std_logic;
SIGNAL ww_GND8 : std_logic;
SIGNAL ww_GND9 : std_logic;
SIGNAL ww_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_cnt10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnt11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnt12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnt13 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnt14 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnt15 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnt8 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnt9 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnta : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cntb : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cntc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cntd : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GND~output_o\ : std_logic;
SIGNAL \GND3~output_o\ : std_logic;
SIGNAL \GND4~output_o\ : std_logic;
SIGNAL \GND5~output_o\ : std_logic;
SIGNAL \GND6~output_o\ : std_logic;
SIGNAL \GND7~output_o\ : std_logic;
SIGNAL \GND8~output_o\ : std_logic;
SIGNAL \GND9~output_o\ : std_logic;
SIGNAL \cnt[7]~output_o\ : std_logic;
SIGNAL \cnt[6]~output_o\ : std_logic;
SIGNAL \cnt[5]~output_o\ : std_logic;
SIGNAL \cnt[4]~output_o\ : std_logic;
SIGNAL \cnt[3]~output_o\ : std_logic;
SIGNAL \cnt[2]~output_o\ : std_logic;
SIGNAL \cnt[1]~output_o\ : std_logic;
SIGNAL \cnt[0]~output_o\ : std_logic;
SIGNAL \cnt10[7]~output_o\ : std_logic;
SIGNAL \cnt10[6]~output_o\ : std_logic;
SIGNAL \cnt10[5]~output_o\ : std_logic;
SIGNAL \cnt10[4]~output_o\ : std_logic;
SIGNAL \cnt10[3]~output_o\ : std_logic;
SIGNAL \cnt10[2]~output_o\ : std_logic;
SIGNAL \cnt10[1]~output_o\ : std_logic;
SIGNAL \cnt10[0]~output_o\ : std_logic;
SIGNAL \cnt11[7]~output_o\ : std_logic;
SIGNAL \cnt11[6]~output_o\ : std_logic;
SIGNAL \cnt11[5]~output_o\ : std_logic;
SIGNAL \cnt11[4]~output_o\ : std_logic;
SIGNAL \cnt11[3]~output_o\ : std_logic;
SIGNAL \cnt11[2]~output_o\ : std_logic;
SIGNAL \cnt11[1]~output_o\ : std_logic;
SIGNAL \cnt11[0]~output_o\ : std_logic;
SIGNAL \cnt12[7]~output_o\ : std_logic;
SIGNAL \cnt12[6]~output_o\ : std_logic;
SIGNAL \cnt12[5]~output_o\ : std_logic;
SIGNAL \cnt12[4]~output_o\ : std_logic;
SIGNAL \cnt12[3]~output_o\ : std_logic;
SIGNAL \cnt12[2]~output_o\ : std_logic;
SIGNAL \cnt12[1]~output_o\ : std_logic;
SIGNAL \cnt12[0]~output_o\ : std_logic;
SIGNAL \cnt13[7]~output_o\ : std_logic;
SIGNAL \cnt13[6]~output_o\ : std_logic;
SIGNAL \cnt13[5]~output_o\ : std_logic;
SIGNAL \cnt13[4]~output_o\ : std_logic;
SIGNAL \cnt13[3]~output_o\ : std_logic;
SIGNAL \cnt13[2]~output_o\ : std_logic;
SIGNAL \cnt13[1]~output_o\ : std_logic;
SIGNAL \cnt13[0]~output_o\ : std_logic;
SIGNAL \cnt14[7]~output_o\ : std_logic;
SIGNAL \cnt14[6]~output_o\ : std_logic;
SIGNAL \cnt14[5]~output_o\ : std_logic;
SIGNAL \cnt14[4]~output_o\ : std_logic;
SIGNAL \cnt14[3]~output_o\ : std_logic;
SIGNAL \cnt14[2]~output_o\ : std_logic;
SIGNAL \cnt14[1]~output_o\ : std_logic;
SIGNAL \cnt14[0]~output_o\ : std_logic;
SIGNAL \cnt15[7]~output_o\ : std_logic;
SIGNAL \cnt15[6]~output_o\ : std_logic;
SIGNAL \cnt15[5]~output_o\ : std_logic;
SIGNAL \cnt15[4]~output_o\ : std_logic;
SIGNAL \cnt15[3]~output_o\ : std_logic;
SIGNAL \cnt15[2]~output_o\ : std_logic;
SIGNAL \cnt15[1]~output_o\ : std_logic;
SIGNAL \cnt15[0]~output_o\ : std_logic;
SIGNAL \cnt8[7]~output_o\ : std_logic;
SIGNAL \cnt8[6]~output_o\ : std_logic;
SIGNAL \cnt8[5]~output_o\ : std_logic;
SIGNAL \cnt8[4]~output_o\ : std_logic;
SIGNAL \cnt8[3]~output_o\ : std_logic;
SIGNAL \cnt8[2]~output_o\ : std_logic;
SIGNAL \cnt8[1]~output_o\ : std_logic;
SIGNAL \cnt8[0]~output_o\ : std_logic;
SIGNAL \cnt9[7]~output_o\ : std_logic;
SIGNAL \cnt9[6]~output_o\ : std_logic;
SIGNAL \cnt9[5]~output_o\ : std_logic;
SIGNAL \cnt9[4]~output_o\ : std_logic;
SIGNAL \cnt9[3]~output_o\ : std_logic;
SIGNAL \cnt9[2]~output_o\ : std_logic;
SIGNAL \cnt9[1]~output_o\ : std_logic;
SIGNAL \cnt9[0]~output_o\ : std_logic;
SIGNAL \cnta[7]~output_o\ : std_logic;
SIGNAL \cnta[6]~output_o\ : std_logic;
SIGNAL \cnta[5]~output_o\ : std_logic;
SIGNAL \cnta[4]~output_o\ : std_logic;
SIGNAL \cnta[3]~output_o\ : std_logic;
SIGNAL \cnta[2]~output_o\ : std_logic;
SIGNAL \cnta[1]~output_o\ : std_logic;
SIGNAL \cnta[0]~output_o\ : std_logic;
SIGNAL \cntb[7]~output_o\ : std_logic;
SIGNAL \cntb[6]~output_o\ : std_logic;
SIGNAL \cntb[5]~output_o\ : std_logic;
SIGNAL \cntb[4]~output_o\ : std_logic;
SIGNAL \cntb[3]~output_o\ : std_logic;
SIGNAL \cntb[2]~output_o\ : std_logic;
SIGNAL \cntb[1]~output_o\ : std_logic;
SIGNAL \cntb[0]~output_o\ : std_logic;
SIGNAL \cntc[7]~output_o\ : std_logic;
SIGNAL \cntc[6]~output_o\ : std_logic;
SIGNAL \cntc[5]~output_o\ : std_logic;
SIGNAL \cntc[4]~output_o\ : std_logic;
SIGNAL \cntc[3]~output_o\ : std_logic;
SIGNAL \cntc[2]~output_o\ : std_logic;
SIGNAL \cntc[1]~output_o\ : std_logic;
SIGNAL \cntc[0]~output_o\ : std_logic;
SIGNAL \cntd[7]~output_o\ : std_logic;
SIGNAL \cntd[6]~output_o\ : std_logic;
SIGNAL \cntd[5]~output_o\ : std_logic;
SIGNAL \cntd[4]~output_o\ : std_logic;
SIGNAL \cntd[3]~output_o\ : std_logic;
SIGNAL \cntd[2]~output_o\ : std_logic;
SIGNAL \cntd[1]~output_o\ : std_logic;
SIGNAL \cntd[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);

BEGIN

\GND\ <= \ww_GND\;
GND3 <= ww_GND3;
GND4 <= ww_GND4;
GND5 <= ww_GND5;
GND6 <= ww_GND6;
GND7 <= ww_GND7;
GND8 <= ww_GND8;
GND9 <= ww_GND9;
cnt <= ww_cnt;
ww_CLK <= CLK;
cnt10 <= ww_cnt10;
cnt11 <= ww_cnt11;
cnt12 <= ww_cnt12;
cnt13 <= ww_cnt13;
cnt14 <= ww_cnt14;
cnt15 <= ww_cnt15;
cnt8 <= ww_cnt8;
cnt9 <= ww_cnt9;
cnta <= ww_cnta;
cntb <= ww_cntb;
cntc <= ww_cntc;
cntd <= ww_cntd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X0_Y5_N23
\GND~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GND~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\GND3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GND3~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\GND4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GND4~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\GND5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GND5~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\GND6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GND6~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\GND7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GND7~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\GND8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GND8~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\GND9~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GND9~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\cnt[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cnt[7]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\cnt[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cnt[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\cnt[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cnt[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\cnt[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cnt[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\cnt[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cnt[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\cnt[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cnt[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\cnt[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cnt[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\cnt[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cnt[0]~output_o\);

-- Location: IOOBUF_X53_Y23_N16
\cnt10[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cnt10[7]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\cnt10[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cnt10[6]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\cnt10[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cnt10[5]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\cnt10[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cnt10[4]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\cnt10[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cnt10[3]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\cnt10[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cnt10[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\cnt10[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cnt10[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\cnt10[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cnt10[0]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\cnt11[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cnt11[7]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\cnt11[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cnt11[6]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\cnt11[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cnt11[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\cnt11[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cnt11[4]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\cnt11[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cnt11[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\cnt11[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cnt11[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N23
\cnt11[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cnt11[1]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\cnt11[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cnt11[0]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\cnt12[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cnt12[7]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\cnt12[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cnt12[6]~output_o\);

-- Location: IOOBUF_X38_Y34_N23
\cnt12[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cnt12[5]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\cnt12[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cnt12[4]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\cnt12[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cnt12[3]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\cnt12[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cnt12[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\cnt12[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cnt12[1]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\cnt12[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cnt12[0]~output_o\);

-- Location: IOOBUF_X20_Y34_N2
\cnt13[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cnt13[7]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\cnt13[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cnt13[6]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\cnt13[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cnt13[5]~output_o\);

-- Location: IOOBUF_X14_Y34_N9
\cnt13[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cnt13[4]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\cnt13[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cnt13[3]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\cnt13[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cnt13[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\cnt13[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cnt13[1]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\cnt13[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cnt13[0]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\cnt14[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cnt14[7]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\cnt14[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cnt14[6]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\cnt14[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cnt14[5]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\cnt14[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cnt14[4]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\cnt14[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cnt14[3]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\cnt14[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cnt14[2]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\cnt14[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cnt14[1]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\cnt14[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cnt14[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\cnt15[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cnt15[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\cnt15[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cnt15[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\cnt15[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cnt15[5]~output_o\);

-- Location: IOOBUF_X3_Y34_N9
\cnt15[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cnt15[4]~output_o\);

-- Location: IOOBUF_X3_Y34_N16
\cnt15[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cnt15[3]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\cnt15[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cnt15[2]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\cnt15[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cnt15[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\cnt15[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cnt15[0]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\cnt8[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cnt8[7]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\cnt8[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cnt8[6]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\cnt8[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cnt8[5]~output_o\);

-- Location: IOOBUF_X53_Y10_N23
\cnt8[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cnt8[4]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\cnt8[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cnt8[3]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\cnt8[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cnt8[2]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\cnt8[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cnt8[1]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\cnt8[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cnt8[0]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\cnt9[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cnt9[7]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\cnt9[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cnt9[6]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\cnt9[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cnt9[5]~output_o\);

-- Location: IOOBUF_X53_Y16_N2
\cnt9[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cnt9[4]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\cnt9[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cnt9[3]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\cnt9[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cnt9[2]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\cnt9[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cnt9[1]~output_o\);

-- Location: IOOBUF_X53_Y23_N23
\cnt9[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cnt9[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\cnta[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cnta[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\cnta[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cnta[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\cnta[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cnta[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\cnta[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cnta[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\cnta[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cnta[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\cnta[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cnta[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\cnta[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cnta[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\cnta[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cnta[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\cntb[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cntb[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\cntb[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cntb[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\cntb[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cntb[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\cntb[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cntb[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\cntb[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cntb[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\cntb[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cntb[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\cntb[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cntb[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\cntb[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cntb[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\cntc[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cntc[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\cntc[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cntc[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\cntc[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cntc[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\cntc[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cntc[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\cntc[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cntc[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\cntc[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cntc[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\cntc[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cntc[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\cntc[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cntc[0]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\cntd[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \cntd[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\cntd[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \cntd[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\cntd[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \cntd[5]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\cntd[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \cntd[4]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\cntd[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \cntd[3]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\cntd[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \cntd[2]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\cntd[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \cntd[1]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\cntd[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \cntd[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y29_N4
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X29_Y29_N5
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X29_Y29_N6
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X29_Y29_N7
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X29_Y29_N8
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X29_Y29_N9
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X29_Y29_N10
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X29_Y29_N11
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X29_Y29_N12
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X29_Y29_N13
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X29_Y29_N14
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X29_Y29_N15
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X29_Y29_N16
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X29_Y29_N17
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X29_Y29_N18
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ $ (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\);

-- Location: FF_X29_Y29_N19
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

\ww_GND\ <= \GND~output_o\;

ww_GND3 <= \GND3~output_o\;

ww_GND4 <= \GND4~output_o\;

ww_GND5 <= \GND5~output_o\;

ww_GND6 <= \GND6~output_o\;

ww_GND7 <= \GND7~output_o\;

ww_GND8 <= \GND8~output_o\;

ww_GND9 <= \GND9~output_o\;

ww_cnt(7) <= \cnt[7]~output_o\;

ww_cnt(6) <= \cnt[6]~output_o\;

ww_cnt(5) <= \cnt[5]~output_o\;

ww_cnt(4) <= \cnt[4]~output_o\;

ww_cnt(3) <= \cnt[3]~output_o\;

ww_cnt(2) <= \cnt[2]~output_o\;

ww_cnt(1) <= \cnt[1]~output_o\;

ww_cnt(0) <= \cnt[0]~output_o\;

ww_cnt10(7) <= \cnt10[7]~output_o\;

ww_cnt10(6) <= \cnt10[6]~output_o\;

ww_cnt10(5) <= \cnt10[5]~output_o\;

ww_cnt10(4) <= \cnt10[4]~output_o\;

ww_cnt10(3) <= \cnt10[3]~output_o\;

ww_cnt10(2) <= \cnt10[2]~output_o\;

ww_cnt10(1) <= \cnt10[1]~output_o\;

ww_cnt10(0) <= \cnt10[0]~output_o\;

ww_cnt11(7) <= \cnt11[7]~output_o\;

ww_cnt11(6) <= \cnt11[6]~output_o\;

ww_cnt11(5) <= \cnt11[5]~output_o\;

ww_cnt11(4) <= \cnt11[4]~output_o\;

ww_cnt11(3) <= \cnt11[3]~output_o\;

ww_cnt11(2) <= \cnt11[2]~output_o\;

ww_cnt11(1) <= \cnt11[1]~output_o\;

ww_cnt11(0) <= \cnt11[0]~output_o\;

ww_cnt12(7) <= \cnt12[7]~output_o\;

ww_cnt12(6) <= \cnt12[6]~output_o\;

ww_cnt12(5) <= \cnt12[5]~output_o\;

ww_cnt12(4) <= \cnt12[4]~output_o\;

ww_cnt12(3) <= \cnt12[3]~output_o\;

ww_cnt12(2) <= \cnt12[2]~output_o\;

ww_cnt12(1) <= \cnt12[1]~output_o\;

ww_cnt12(0) <= \cnt12[0]~output_o\;

ww_cnt13(7) <= \cnt13[7]~output_o\;

ww_cnt13(6) <= \cnt13[6]~output_o\;

ww_cnt13(5) <= \cnt13[5]~output_o\;

ww_cnt13(4) <= \cnt13[4]~output_o\;

ww_cnt13(3) <= \cnt13[3]~output_o\;

ww_cnt13(2) <= \cnt13[2]~output_o\;

ww_cnt13(1) <= \cnt13[1]~output_o\;

ww_cnt13(0) <= \cnt13[0]~output_o\;

ww_cnt14(7) <= \cnt14[7]~output_o\;

ww_cnt14(6) <= \cnt14[6]~output_o\;

ww_cnt14(5) <= \cnt14[5]~output_o\;

ww_cnt14(4) <= \cnt14[4]~output_o\;

ww_cnt14(3) <= \cnt14[3]~output_o\;

ww_cnt14(2) <= \cnt14[2]~output_o\;

ww_cnt14(1) <= \cnt14[1]~output_o\;

ww_cnt14(0) <= \cnt14[0]~output_o\;

ww_cnt15(7) <= \cnt15[7]~output_o\;

ww_cnt15(6) <= \cnt15[6]~output_o\;

ww_cnt15(5) <= \cnt15[5]~output_o\;

ww_cnt15(4) <= \cnt15[4]~output_o\;

ww_cnt15(3) <= \cnt15[3]~output_o\;

ww_cnt15(2) <= \cnt15[2]~output_o\;

ww_cnt15(1) <= \cnt15[1]~output_o\;

ww_cnt15(0) <= \cnt15[0]~output_o\;

ww_cnt8(7) <= \cnt8[7]~output_o\;

ww_cnt8(6) <= \cnt8[6]~output_o\;

ww_cnt8(5) <= \cnt8[5]~output_o\;

ww_cnt8(4) <= \cnt8[4]~output_o\;

ww_cnt8(3) <= \cnt8[3]~output_o\;

ww_cnt8(2) <= \cnt8[2]~output_o\;

ww_cnt8(1) <= \cnt8[1]~output_o\;

ww_cnt8(0) <= \cnt8[0]~output_o\;

ww_cnt9(7) <= \cnt9[7]~output_o\;

ww_cnt9(6) <= \cnt9[6]~output_o\;

ww_cnt9(5) <= \cnt9[5]~output_o\;

ww_cnt9(4) <= \cnt9[4]~output_o\;

ww_cnt9(3) <= \cnt9[3]~output_o\;

ww_cnt9(2) <= \cnt9[2]~output_o\;

ww_cnt9(1) <= \cnt9[1]~output_o\;

ww_cnt9(0) <= \cnt9[0]~output_o\;

ww_cnta(7) <= \cnta[7]~output_o\;

ww_cnta(6) <= \cnta[6]~output_o\;

ww_cnta(5) <= \cnta[5]~output_o\;

ww_cnta(4) <= \cnta[4]~output_o\;

ww_cnta(3) <= \cnta[3]~output_o\;

ww_cnta(2) <= \cnta[2]~output_o\;

ww_cnta(1) <= \cnta[1]~output_o\;

ww_cnta(0) <= \cnta[0]~output_o\;

ww_cntb(7) <= \cntb[7]~output_o\;

ww_cntb(6) <= \cntb[6]~output_o\;

ww_cntb(5) <= \cntb[5]~output_o\;

ww_cntb(4) <= \cntb[4]~output_o\;

ww_cntb(3) <= \cntb[3]~output_o\;

ww_cntb(2) <= \cntb[2]~output_o\;

ww_cntb(1) <= \cntb[1]~output_o\;

ww_cntb(0) <= \cntb[0]~output_o\;

ww_cntc(7) <= \cntc[7]~output_o\;

ww_cntc(6) <= \cntc[6]~output_o\;

ww_cntc(5) <= \cntc[5]~output_o\;

ww_cntc(4) <= \cntc[4]~output_o\;

ww_cntc(3) <= \cntc[3]~output_o\;

ww_cntc(2) <= \cntc[2]~output_o\;

ww_cntc(1) <= \cntc[1]~output_o\;

ww_cntc(0) <= \cntc[0]~output_o\;

ww_cntd(7) <= \cntd[7]~output_o\;

ww_cntd(6) <= \cntd[6]~output_o\;

ww_cntd(5) <= \cntd[5]~output_o\;

ww_cntd(4) <= \cntd[4]~output_o\;

ww_cntd(3) <= \cntd[3]~output_o\;

ww_cntd(2) <= \cntd[2]~output_o\;

ww_cntd(1) <= \cntd[1]~output_o\;

ww_cntd(0) <= \cntd[0]~output_o\;
END structure;


