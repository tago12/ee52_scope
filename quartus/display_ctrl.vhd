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
-- CREATED		"Thu Feb 27 12:53:00 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY display_ctrl IS 
	PORT
	(
		RESET :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		UACK :  IN  STD_LOGIC;
		SCLK :  OUT  STD_LOGIC;
		HSYNC :  OUT  STD_LOGIC;
		UREQ :  OUT  STD_LOGIC;
		VSYNC :  OUT  STD_LOGIC;
		DCLK :  OUT  STD_LOGIC
	);
END display_ctrl;

ARCHITECTURE bdf_type OF display_ctrl IS 

COMPONENT lpm_counter0
	PORT(clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_compare1
	PORT(dataa : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 ageb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_counter2
	PORT(clock : IN STD_LOGIC;
		 aset : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_compare5
	PORT(dataa : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 ageb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_compare6
	PORT(dataa : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 alb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_compare3
	PORT(dataa : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		 ageb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_compare4
	PORT(dataa : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		 alb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_compare2
	PORT(dataa : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 aeb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_compare0
	PORT(dataa : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		 ageb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_counter1
	PORT(clock : IN STD_LOGIC;
		 aset : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	dclk_out :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	DFF_HSYNC_delay :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_0 <= '1';
SYNTHESIZED_WIRE_1 <= '1';
SYNTHESIZED_WIRE_2 <= '1';
SYNTHESIZED_WIRE_3 <= '1';
SYNTHESIZED_WIRE_5 <= '1';
SYNTHESIZED_WIRE_7 <= '1';
SYNTHESIZED_WIRE_8 <= '1';
SYNTHESIZED_WIRE_9 <= '1';
SYNTHESIZED_WIRE_14 <= '1';
SYNTHESIZED_WIRE_18 <= '1';
SYNTHESIZED_WIRE_20 <= '1';
SYNTHESIZED_WIRE_26 <= '1';
SYNTHESIZED_WIRE_27 <= '1';
SYNTHESIZED_WIRE_31 <= '1';
SYNTHESIZED_WIRE_33 <= '1';



b2v_DCLK_cnt : lpm_counter0
PORT MAP(clock => CLK,
		 aclr => RESET,
		 q => dclk_out);


PROCESS(CLK,SYNTHESIZED_WIRE_0,SYNTHESIZED_WIRE_1)
BEGIN
IF (SYNTHESIZED_WIRE_0 = '0') THEN
	DCLK <= '0';
ELSIF (SYNTHESIZED_WIRE_1 = '0') THEN
	DCLK <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DCLK <= SYNTHESIZED_WIRE_34;
END IF;
END PROCESS;


PROCESS(CLK,SYNTHESIZED_WIRE_2,SYNTHESIZED_WIRE_3)
BEGIN
IF (SYNTHESIZED_WIRE_2 = '0') THEN
	SYNTHESIZED_WIRE_34 <= '0';
ELSIF (SYNTHESIZED_WIRE_3 = '0') THEN
	SYNTHESIZED_WIRE_34 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_34 <= dclk_out(1);
END IF;
END PROCESS;


b2v_HSYNC_cmp : lpm_compare1
PORT MAP(dataa => SYNTHESIZED_WIRE_35,
		 ageb => SYNTHESIZED_WIRE_6);


b2v_HSYNC_cnt : lpm_counter2
PORT MAP(clock => SYNTHESIZED_WIRE_34,
		 aset => RESET,
		 q => SYNTHESIZED_WIRE_35);


PROCESS(CLK,SYNTHESIZED_WIRE_5,SYNTHESIZED_WIRE_7)
BEGIN
IF (SYNTHESIZED_WIRE_5 = '0') THEN
	DFF_HSYNC_delay <= '0';
ELSIF (SYNTHESIZED_WIRE_7 = '0') THEN
	DFF_HSYNC_delay <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_HSYNC_delay <= SYNTHESIZED_WIRE_6;
END IF;
END PROCESS;


PROCESS(CLK,SYNTHESIZED_WIRE_8,SYNTHESIZED_WIRE_9)
BEGIN
IF (SYNTHESIZED_WIRE_8 = '0') THEN
	HSYNC <= '0';
ELSIF (SYNTHESIZED_WIRE_9 = '0') THEN
	HSYNC <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	HSYNC <= DFF_HSYNC_delay;
END IF;
END PROCESS;



SYNTHESIZED_WIRE_29 <= UACK OR RESET;
















SYNTHESIZED_WIRE_28 <= SYNTHESIZED_WIRE_36 AND SYNTHESIZED_WIRE_37 AND SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_19 <= SYNTHESIZED_WIRE_37 AND SYNTHESIZED_WIRE_14 AND SYNTHESIZED_WIRE_34 AND SYNTHESIZED_WIRE_36 AND SYNTHESIZED_WIRE_16 AND SYNTHESIZED_WIRE_17;


PROCESS(CLK,SYNTHESIZED_WIRE_18,SYNTHESIZED_WIRE_20)
BEGIN
IF (SYNTHESIZED_WIRE_18 = '0') THEN
	SCLK <= '0';
ELSIF (SYNTHESIZED_WIRE_20 = '0') THEN
	SCLK <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	SCLK <= SYNTHESIZED_WIRE_19;
END IF;
END PROCESS;


b2v_SCLK_HSYNC_cmp0 : lpm_compare5
PORT MAP(dataa => SYNTHESIZED_WIRE_35,
		 ageb => SYNTHESIZED_WIRE_16);


b2v_SCLK_HSYNC_cmp1 : lpm_compare6
PORT MAP(dataa => SYNTHESIZED_WIRE_35,
		 alb => SYNTHESIZED_WIRE_17);


b2v_SCLK_VSYNC_cmp0 : lpm_compare3
PORT MAP(dataa => SYNTHESIZED_WIRE_38,
		 ageb => SYNTHESIZED_WIRE_36);


b2v_SCLK_VSYNC_cmp1 : lpm_compare4
PORT MAP(dataa => SYNTHESIZED_WIRE_38,
		 alb => SYNTHESIZED_WIRE_37);


b2v_UREQ_cmp : lpm_compare2
PORT MAP(dataa => SYNTHESIZED_WIRE_35,
		 aeb => SYNTHESIZED_WIRE_12);


PROCESS(CLK,SYNTHESIZED_WIRE_27,SYNTHESIZED_WIRE_26)
VARIABLE synthesized_var_for_UREQ : STD_LOGIC;
BEGIN
IF (SYNTHESIZED_WIRE_27 = '0') THEN
	synthesized_var_for_UREQ := '0';
ELSIF (SYNTHESIZED_WIRE_26 = '0') THEN
	synthesized_var_for_UREQ := '1';
ELSIF (RISING_EDGE(CLK)) THEN
	synthesized_var_for_UREQ := (NOT(synthesized_var_for_UREQ) AND SYNTHESIZED_WIRE_28) OR (synthesized_var_for_UREQ AND (NOT(SYNTHESIZED_WIRE_29)));
END IF;
	UREQ <= synthesized_var_for_UREQ;
END PROCESS;


b2v_VSYNC_cmp : lpm_compare0
PORT MAP(dataa => SYNTHESIZED_WIRE_38,
		 ageb => SYNTHESIZED_WIRE_32);


b2v_VSYNC_cnt : lpm_counter1
PORT MAP(clock => SYNTHESIZED_WIRE_34,
		 aset => RESET,
		 q => SYNTHESIZED_WIRE_38);


PROCESS(CLK,SYNTHESIZED_WIRE_31,SYNTHESIZED_WIRE_33)
BEGIN
IF (SYNTHESIZED_WIRE_31 = '0') THEN
	VSYNC <= '0';
ELSIF (SYNTHESIZED_WIRE_33 = '0') THEN
	VSYNC <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	VSYNC <= SYNTHESIZED_WIRE_32;
END IF;
END PROCESS;


END bdf_type;