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
-- Generated on "02/26/2014 09:35:40"
                                                            
-- Vhdl Test Bench template for design  :  vram_ctrl
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                                
USE ieee.std_logic_misc.all;
USE ieee.math_real.all;                               

ENTITY vram_ctrl_vhd_tst IS
END vram_ctrl_vhd_tst;
ARCHITECTURE vram_ctrl_arch OF vram_ctrl_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CAS : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL RAS : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL A : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL CS : STD_LOGIC;
SIGNAL WE : STD_LOGIC;
SIGNAL UREQ : STD_LOGIC;
SIGNAL UACK : STD_LOGIC;
SIGNAL TRG : STD_LOGIC;
SIGNAL RDY : STD_LOGIC;
SIGNAL VADDR : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL WELU : STD_LOGIC;
COMPONENT vram_ctrl
	PORT (
	CAS : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	RAS : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	A : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
	CS : IN STD_LOGIC;
	WE : IN STD_LOGIC;
	UREQ : IN STD_LOGIC;
	UACK : OUT STD_LOGIC;
	RDY : OUT STD_LOGIC;
	TRG : OUT STD_LOGIC;
	VADDR : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	WELU : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : vram_ctrl
	PORT MAP (
-- list connections between master ports and signals
	CAS => CAS,
	CLK => CLK,
	RAS => RAS,
	RESET => RESET,
	A => A,
	CS => CS,
	WE => WE,
	UREQ => UREQ,
	UACK => UACK,
	RDY => RDY,
	TRG => TRG,
	VADDR => VADDR,
	WELU => WELU
	);

clock : PROCESS                                               
-- variable declarations                                     
BEGIN     

      CLK <= '0';
      wait for 50 ps;
      CLK <= '1';
      wait for 50 ps;  

END PROCESS clock; 


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
variable addr_cnt : integer := 0;                                    
BEGIN               
		
		-- setup signals
		RESET <= '0';
        UREQ <= '0';
        A <= "111100000000001111";
        CS <= '0';
        WE <= '1'; 

        wait for 100 ps;

        -- entered idle state

		--------------------------------------------                                          
        -- test read cycle
        -------------------------------------------- 

        wait for 100 ps;

         -- clock 1
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (VADDR = "111100000") report "address incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- clock 2
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (VADDR = "000001111") report "address incorrect";
        assert (TRG = '0') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- clock 3
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '0') report "CAS incorrect";
        assert (VADDR = "000001111") report "address incorrect";
        assert (TRG = '0') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- clock 4
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '0') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '1') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- clock 5
        CS <= '1';
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- clock 6
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

        --------------------------------------------                                          
        -- end read cycle
        --------------------------------------------    

         -- idle clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        --------------------------------------------                                          
        -- test write cycle
        --------------------------------------------    

         -- setup signals
        CS <= '0';
        WE <= '0';
        A <= "000011111111110000";

        wait for 100 ps;

         -- clock 1
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (VADDR = "000011111") report "address incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- clock 2
        assert (WELU = '0') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (VADDR = "111110000") report "address incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- clock 3
        assert (WELU = '0') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '0') report "CAS incorrect";
        assert (VADDR = "111110000") report "address incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '1') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- clock 4
        CS <= '1';
        WE <= '1';
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- clock 5
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

        --------------------------------------------                                          
        -- end write cycle
        --------------------------------------------    

         -- idle clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        --------------------------------------------                                          
        -- test update cycle
        --------------------------------------------    

         -- setup signals
        UREQ <= '1';
        addr_cnt := (addr_cnt + 1) mod 272;

        wait for 100 ps;

         -- first clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (addr_cnt = to_integer(unsigned(VADDR))) report "address incorrect";
        assert (TRG = '0') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- second clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (addr_cnt = to_integer(unsigned(VADDR))) report "address incorrect";
        assert (TRG = '0') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- third clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (VADDR = "000000000") report "address incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- fourth clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '0') report "CAS incorrect";
        assert (VADDR = "000000000") report "address incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- fifth clock
        UREQ <= '0';
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '1') report "UACK incorrect";

        wait for 100 ps;

         -- sixth clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

        --------------------------------------------                                          
        -- end update cycle
        --------------------------------------------    

         -- idle clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";


        --------------------------------------------                                          
        -- test refresh cycle
        --------------------------------------------    

        wait for 100 ps;

         -- first clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '0') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- second clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '0') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- third clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '0') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- fourth clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '0') report "RAS incorrect";
        assert (CAS = '0') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- fifth clock
        UREQ <= '0';
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

         -- sixth clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";

        wait for 100 ps;

        --------------------------------------------                                          
        -- end refresh cycle
        --------------------------------------------    

         -- idle clock
        assert (WELU = '1') report "WEL/U incorrect";
        assert (RAS = '1') report "RAS incorrect";
        assert (CAS = '1') report "CAS incorrect";
        assert (TRG = '1') report "TRG incorrect";
        assert (RDY = '0') report "RDY incorrect";
        assert (UACK = '0') report "UACK incorrect";


        --------------------------------------------                                          
        -- test successive cycles with refresh in between
        -- test cycle interruption
        --------------------------------------------    
        
        -- setup read cycle
        CS <= '0';
        WE <= '1';
        A <= "111100000000001111";

        -- let read cycle go through, verify that it works
        wait for 400 ps;
        assert (RDY = '1') report "RDY incorrect";
        CS <= '1';
        WE <= '1';

        -- let new refresh cycle start
        wait for 500 ps;

        -- second refresh clock: setup write cycle
        CS <= '0';
        WE <= '0';
        A <= "000011111111110000";
        assert (RDY = '0') report "RDY incorrect";

        -- let refresh cycle end and write begin
        wait for 800 ps;
        assert (RDY = '1') report "RDY incorrect";
        CS <= '1';
        WE <= '1';
        -- request update
        UREQ <= '1';
        assert (UACK = '0') report "UACK incorrect";

        -- let write cycle end and update cycle begin
        wait for 400 ps;
        addr_cnt := (addr_cnt + 1) mod 272;
        assert (addr_cnt = to_integer(unsigned(VADDR))) report "address incorrect";

        -- fifth update clock: check UACK
        wait for 400 ps;
        assert (UACK = '1') report "UACK incorrect";
        UREQ <= '0';

        -- let update cycle end
        wait for 200 ps;

        --------------------------------------------                                          
        -- end test successive cycles with refresh in between
        -- end test cycle interruption
        --------------------------------------------   

        --------------------------------------------                                          
        -- test cycle priority: read and update during refresh
        --------------------------------------------   

        wait for 200 ps; -- let a new refresh cycle start

         -- second refresh clock: request both read and update
        CS <= '0';
        WE <= '1';
        UREQ <= '1';
        assert (UACK = '0') report "UACK incorrect";
        assert (RDY = '0') report "RDY incorrect";

        -- let refresh cycle end and update begin
        -- second update clock: check address
        wait for 700 ps; 
        addr_cnt := (addr_cnt + 1) mod 272;
        assert (addr_cnt = to_integer(unsigned(VADDR))) report "address incorrect";

        -- fifth update clock: check UACK
        wait for 300 ps;
        assert (UACK = '1') report "UACK incorrect";
        UREQ <= '0';

        -- let update cycle end and read begin
        wait for 600 ps;
        assert (RDY = '1') report "RDY incorrect";
        CS <= '1';

wait;                                                        
END PROCESS always;                                          
END vram_ctrl_arch;
