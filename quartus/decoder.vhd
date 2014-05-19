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
-- CREATED		"Sat May 10 15:13:44 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY decoder IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		DECODE_CLK :  IN  STD_LOGIC;
		LEFT :  OUT  STD_LOGIC;
		RIGHT :  OUT  STD_LOGIC
	);
END decoder;

ARCHITECTURE bdf_type OF decoder IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	DFF_dffA4 :  STD_LOGIC;
SIGNAL	DFF_dffB3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



PROCESS(DECODE_CLK)
BEGIN
IF (RISING_EDGE(DECODE_CLK)) THEN
	DFF_dffA4 <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_4)
BEGIN
IF (RISING_EDGE(SYNTHESIZED_WIRE_4)) THEN
	SYNTHESIZED_WIRE_5 <= DFF_dffA4;
END IF;
END PROCESS;


PROCESS(DECODE_CLK)
BEGIN
IF (RISING_EDGE(DECODE_CLK)) THEN
	DFF_dffB3 <= B;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= A XOR DFF_dffB3;


SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_5);



SYNTHESIZED_WIRE_2 <= B AND A;


LEFT <= NOT(SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_1);


RIGHT <= NOT(SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_5);


PROCESS(DECODE_CLK)
VARIABLE synthesized_var_for_SYNTHESIZED_WIRE_4 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(DECODE_CLK)) THEN
	synthesized_var_for_SYNTHESIZED_WIRE_4 := (NOT(synthesized_var_for_SYNTHESIZED_WIRE_4) AND SYNTHESIZED_WIRE_2) OR (synthesized_var_for_SYNTHESIZED_WIRE_4 AND (NOT(SYNTHESIZED_WIRE_3)));
END IF;
	SYNTHESIZED_WIRE_4 <= synthesized_var_for_SYNTHESIZED_WIRE_4;
END PROCESS;


SYNTHESIZED_WIRE_3 <= NOT(A OR B);


END bdf_type;