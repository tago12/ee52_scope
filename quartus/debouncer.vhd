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
-- CREATED		"Fri May 09 16:42:23 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY debouncer IS 
	PORT
	(
		BUTTON :  IN  STD_LOGIC;
		DEBOUNCE_CLK :  IN  STD_LOGIC;
		DEBOUNCED :  OUT  STD_LOGIC
	);
END debouncer;

ARCHITECTURE bdf_type OF debouncer IS 

COMPONENT lpm_counter3
	PORT(sclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_compare9
	PORT(dataa : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
		 ageb : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(18 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 
DEBOUNCED <= SYNTHESIZED_WIRE_2;



b2v_inst : lpm_counter3
PORT MAP(sclr => BUTTON,
		 clock => DEBOUNCE_CLK,
		 cnt_en => SYNTHESIZED_WIRE_0,
		 q => SYNTHESIZED_WIRE_1);


b2v_inst2 : lpm_compare9
PORT MAP(dataa => SYNTHESIZED_WIRE_1,
		 ageb => SYNTHESIZED_WIRE_3);


SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_2 OR BUTTON;


SYNTHESIZED_WIRE_2 <= NOT(SYNTHESIZED_WIRE_3);



END bdf_type;