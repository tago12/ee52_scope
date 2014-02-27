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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Wed Feb 26 22:15:00 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY vram_ctrl IS 
	PORT
	(
		CS :  IN  STD_LOGIC;
		WE :  IN  STD_LOGIC;
		RESET :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		UREQ :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(17 DOWNTO 0);
		RAS :  OUT  STD_LOGIC;
		CAS :  OUT  STD_LOGIC;
		TRG :  OUT  STD_LOGIC;
		UACK :  OUT  STD_LOGIC;
		RDY :  OUT  STD_LOGIC;
		WELU :  OUT  STD_LOGIC;
		VADDR :  OUT  STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END vram_ctrl;

ARCHITECTURE bdf_type OF vram_ctrl IS 

COMPONENT lpm_mux0
	PORT(data0x : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 data3x : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT vram_cnt
	PORT(clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT vramctrl
	PORT(we : IN STD_LOGIC;
		 cs : IN STD_LOGIC;
		 ureq : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 Reset : IN STD_LOGIC;
		 ras : OUT STD_LOGIC;
		 cas : OUT STD_LOGIC;
		 trg : OUT STD_LOGIC;
		 welu : OUT STD_LOGIC;
		 asrc : OUT STD_LOGIC;
		 arow : OUT STD_LOGIC;
		 uack : OUT STD_LOGIC;
		 rdy : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	ADDR_mux_sel :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	COL0 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(8 DOWNTO 0);


BEGIN 



b2v_addr_mux : lpm_mux0
PORT MAP(data0x => COL0,
		 data1x => SYNTHESIZED_WIRE_0,
		 data2x => A(8 DOWNTO 0),
		 data3x => A(17 DOWNTO 9),
		 sel => ADDR_mux_sel,
		 result => VADDR);



b2v_VRAM_addr_cnt : vram_cnt
PORT MAP(clock => UREQ,
		 aclr => RESET,
		 q => SYNTHESIZED_WIRE_0);


b2v_VRAM_ctrl : vramctrl
PORT MAP(we => WE,
		 cs => CS,
		 ureq => UREQ,
		 clk => CLK,
		 Reset => RESET,
		 ras => RAS,
		 cas => CAS,
		 trg => TRG,
		 welu => WELU,
		 asrc => ADDR_mux_sel(1),
		 arow => ADDR_mux_sel(0),
		 uack => UACK,
		 rdy => RDY);


COL0 <= "000000000";
END bdf_type;