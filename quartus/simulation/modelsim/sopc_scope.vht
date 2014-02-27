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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/26/2014 13:00:37"
                                                            
-- Vhdl Test Bench template for design  :  sopc_scope
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sopc_scope_vhd_tst IS
END sopc_scope_vhd_tst;
ARCHITECTURE sopc_scope_arch OF sopc_scope_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CAS : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL DCLK : STD_LOGIC;
SIGNAL HSYNC : STD_LOGIC;
SIGNAL RAS : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL SCLK : STD_LOGIC;
SIGNAL TEMP_ADDR : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL TRG : STD_LOGIC;
SIGNAL VADDR : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL VSYNC : STD_LOGIC;
SIGNAL WEL/U : STD_LOGIC;
COMPONENT sopc_scope
	PORT (
	CAS : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	DCLK : OUT STD_LOGIC;
	HSYNC : OUT STD_LOGIC;
	RAS : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	SCLK : OUT STD_LOGIC;
	TEMP_ADDR : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
	TRG : OUT STD_LOGIC;
	VADDR : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	VSYNC : OUT STD_LOGIC;
	\WEL/U\ : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sopc_scope
	PORT MAP (
-- list connections between master ports and signals
	CAS => CAS,
	CLK => CLK,
	DCLK => DCLK,
	HSYNC => HSYNC,
	RAS => RAS,
	RESET => RESET,
	SCLK => SCLK,
	TEMP_ADDR => TEMP_ADDR,
	TRG => TRG,
	VADDR => VADDR,
	VSYNC => VSYNC,
	\WEL/U\ => WEL/U
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END sopc_scope_arch;
