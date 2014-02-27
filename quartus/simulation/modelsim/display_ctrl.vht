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
                                                            
-- Vhdl Test Bench template for design  :  display_ctrl
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                                
USE ieee.std_logic_misc.all;
USE ieee.math_real.all;                               

ENTITY display_ctrl_vhd_tst IS
END display_ctrl_vhd_tst;
ARCHITECTURE display_ctrl_arch OF display_ctrl_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DCLK : STD_LOGIC;
SIGNAL HSYNC : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL SCLK : STD_LOGIC;
SIGNAL UREQ : STD_LOGIC;
SIGNAL UACK : STD_LOGIC;
SIGNAL VSYNC : STD_LOGIC;
COMPONENT display_ctrl
	PORT (
	CLK : IN STD_LOGIC;
	DCLK : OUT STD_LOGIC;
	HSYNC : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	SCLK : OUT STD_LOGIC;
	UREQ : OUT STD_LOGIC;
	UACK : IN STD_LOGIC;
	VSYNC : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : display_ctrl
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DCLK => DCLK,
	HSYNC => HSYNC,
	RESET => RESET,
	SCLK => SCLK,
	UREQ => UREQ,
	UACK => UACK,
	VSYNC => VSYNC
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
        RESET <= '1';
        wait for 100 ps;
        RESET <= '0';      
wait;                                                       
END PROCESS init;     


always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations
variable ureq_pending : boolean := false;  
variable first_cycle : boolean := true;                                    
BEGIN             

		if (first_cycle) then
        	UACK <= '0';    
        	first_cycle := false;

        	-- wait for reset
        	wait for 500 ps;
        end if;

		----------------------------------------          
		-- test beginning of cycle
		----------------------------------------  

		-- first clock                                
        assert (VSYNC = '0') report "VSYNC incorrect";
        assert (HSYNC = '1') report "HSYNC incorrect";
        assert (DCLK = '1') report "DCLK incorrect";
        assert (SCLK = '0') report "SCLK incorrect";
        assert (UREQ = '0') report "UREQ incorrect";

        wait for 100 ps;

        -- second clock                                
        assert (VSYNC = '0') report "VSYNC incorrect";
        assert (HSYNC = '0') report "HSYNC incorrect";
        assert (DCLK = '1') report "DCLK incorrect";
        assert (SCLK = '0') report "SCLK incorrect";
        assert (UREQ = '0') report "UREQ incorrect";

        wait for 100 ps;

        -- third clock                                
        assert (VSYNC = '0') report "VSYNC incorrect";
        assert (HSYNC = '0') report "HSYNC incorrect";
        assert (DCLK = '0') report "DCLK incorrect";
        assert (SCLK = '0') report "SCLK incorrect";
        assert (UREQ = '0') report "UREQ incorrect";

        wait for 200 ps;

        -- fifth clock                                
        assert (VSYNC = '0') report "VSYNC incorrect";
        assert (HSYNC = '0') report "HSYNC incorrect";
        assert (DCLK = '1') report "DCLK incorrect";
        assert (SCLK = '0') report "SCLK incorrect";
        assert (UREQ = '0') report "UREQ incorrect";

        ----------------------------------------          
		-- end test beginning of cycle
		---------------------------------------- 

		-- test hsync low period
		-- hsync stays low for thp * 4 = 41 * 4 clocks
		-- subtract 4 clocks at end of previous test + 2 clocks at beginning of next
		for i in 0 to ((41 * 4) - 4 - 2) loop
			wait for 100 ps;
			assert (SCLK = '0') report "SCLK incorrect";
			assert (VSYNC = '0') report "VSYNC incorrect";
			assert (HSYNC = '0') report "HSYNC incorrect";
			assert (UREQ = '0') report "UREQ incorrect";
		end loop;

		----------------------------------------          
		-- test end of hsync low
		---------------------------------------- 

        assert (DCLK = '0') report "DCLK incorrect";

        wait for 100 ps;

        assert (VSYNC = '0') report "VSYNC incorrect";
        assert (HSYNC = '0') report "HSYNC incorrect";
        assert (DCLK = '1') report "DCLK incorrect";
        assert (SCLK = '0') report "SCLK incorrect";
        assert (UREQ = '0') report "UREQ incorrect";

        wait for 100 ps;

        assert (VSYNC = '0') report "VSYNC incorrect";
        assert (HSYNC = '1') report "HSYNC incorrect";
        assert (DCLK = '1') report "DCLK incorrect";
        assert (SCLK = '0') report "SCLK incorrect";
        assert (UREQ = '0') report "UREQ incorrect";

        wait for 100 ps;

        assert (VSYNC = '0') report "VSYNC incorrect";
        assert (HSYNC = '1') report "HSYNC incorrect";
        assert (DCLK = '0') report "DCLK incorrect";
        assert (SCLK = '0') report "SCLK incorrect";
        assert (UREQ = '0') report "UREQ incorrect";

        ----------------------------------------          
		-- end test end of hsync low
		---------------------------------------- 

		-- test vsync low period
		-- vsync stays low, from this point, for
		-- ((thb + thd + thf) + (tvp - 1) * H)   * 4 clocks
		-- (( 2  + 480 +  2 ) + ( 10 - 1) * 525) * 4 clocks
		-- subtract 3 clocks at end of previous test + 1 clock at beginning of next
		for i in 0 to ((((2 + 480 + 2) + (10 - 1) * 525) * 4) - 3 - 1) loop
			wait for 100 ps;
			assert (SCLK = '0') report "SCLK incorrect";
			assert (VSYNC = '0') report "VSYNC incorrect";
			assert (UREQ = '0') report "UREQ incorrect";
		end loop;

		----------------------------------------          
		-- test end of vsync low
		---------------------------------------- 

        assert (HSYNC = '1') report "HSYNC incorrect";
        assert (DCLK = '0') report "DCLK incorrect";

        wait for 100 ps;

        assert (VSYNC = '1') report "VSYNC incorrect";
        assert (HSYNC = '1') report "HSYNC incorrect";
        assert (DCLK = '1') report "DCLK incorrect";
        assert (SCLK = '0') report "SCLK incorrect";
        assert (UREQ = '0') report "UREQ incorrect";

        wait for 100 ps;

        assert (VSYNC = '1') report "VSYNC incorrect";
        assert (HSYNC = '0') report "HSYNC incorrect";
        assert (DCLK = '1') report "DCLK incorrect";
        assert (SCLK = '0') report "SCLK incorrect";
        assert (UREQ = '0') report "UREQ incorrect";

        wait for 100 ps;

        assert (VSYNC = '1') report "VSYNC incorrect";
        assert (HSYNC = '0') report "HSYNC incorrect";
        assert (DCLK = '0') report "DCLK incorrect";
        assert (SCLK = '0') report "SCLK incorrect";
        assert (UREQ = '0') report "UREQ incorrect";

        ----------------------------------------          
		-- end test end of vsync low
		---------------------------------------- 

		-- test vertical back porch
		-- porch lasts, from this point, for
		-- ((H * tvp) * 4 clocks
		-- ((525 * 2) * 4 clocks
		-- subtract 3 clocks at end of previous test + 1 clock at beginning of next
		for i in 0 to (((525 * 2) * 4) - 3 - 1) loop
			wait for 100 ps;
			assert (SCLK = '0') report "SCLK incorrect";
			assert (VSYNC = '1') report "VSYNC incorrect";
			assert (UREQ = '0') report "UREQ incorrect";
		end loop;

		----------------------------------------          
		-- test valid vertical area
		---------------------------------------- 	

		-- valid vertical area lasts 272 rows
		for j in 0 to (272 - 1) loop

			wait for 100 ps;

			assert (SCLK = '0') report "SCLK incorrect";
			assert (VSYNC = '1') report "VSYNC incorrect";
			assert (HSYNC = '1') report "HSYNC incorrect";
			if (ureq_pending = true) then
				assert (UREQ = '1') report "UREQ incorrect";
				-- return UACK to simulate late update
				UACK <= '1';
			else
				assert (UREQ = '0') report "UREQ incorrect";
			end if;

			wait for 100 ps;

			-- remove uack
			UACK <= '0';
			ureq_pending := false;

			assert (SCLK = '0') report "SCLK incorrect";
			assert (VSYNC = '1') report "VSYNC incorrect";
			assert (HSYNC = '0') report "HSYNC incorrect";
			assert (UREQ = '0') report "UREQ incorrect";

			-- test hsync low period
			-- hsync stays low for thp * 4 = 41 * 4 clocks
			-- subtract 2 clocks at end of previous test
			for i in 0 to (41 * 4 - 2) loop
				wait for 100 ps;
				assert (SCLK = '0') report "SCLK incorrect";
				assert (VSYNC = '1') report "VSYNC incorrect";
				assert (HSYNC = '0') report "HSYNC incorrect";
				assert (UREQ = '0') report "UREQ incorrect";
			end loop;

			-- test horizontal back porch
			-- horizontal back porch lasts thb * 4 = 2 * 4 clocks
			-- subtract 3 clocks at beginning of next test
			for i in 0 to ((2 * 4) - 3) loop
				wait for 100 ps;
				assert (SCLK = '0') report "SCLK incorrect";
				assert (VSYNC = '1') report "VSYNC incorrect";
				assert (HSYNC = '1') report "HSYNC incorrect";
				assert (UREQ = '0') report "UREQ incorrect";
			end loop;

			wait for 100 ps;

			----------------------------------------          
			-- test pixel and serial clocks in display area
			---------------------------------------- 

        	assert (VSYNC = '1') report "VSYNC incorrect";
        	assert (HSYNC = '1') report "HSYNC incorrect";
        	assert (DCLK = '0') report "DCLK incorrect";
        	assert (SCLK = '0') report "SCLK incorrect";
        	assert (UREQ = '0') report "UREQ incorrect";

        	wait for 100 ps;

        	assert (VSYNC = '1') report "VSYNC incorrect";
        	assert (HSYNC = '1') report "HSYNC incorrect";
        	assert (DCLK = '1') report "DCLK incorrect";
        	assert (SCLK = '1') report "SCLK incorrect";
        	assert (UREQ = '0') report "UREQ incorrect";

        	wait for 200 ps;

        	assert (VSYNC = '1') report "VSYNC incorrect";
        	assert (HSYNC = '1') report "HSYNC incorrect";
        	assert (DCLK = '0') report "DCLK incorrect";
        	assert (SCLK = '0') report "SCLK incorrect";
        	assert (UREQ = '0') report "UREQ incorrect";

        	-- length of display area = thd * 4 = 480 * 4
        	-- subtract the previous 2 clocks + next 3 clocks
        	-- total = 480 * 4 - 2 - 3 = 1915 clocks
        	wait for 191500 ps;

        	assert (VSYNC = '1') report "VSYNC incorrect";
        	assert (HSYNC = '1') report "HSYNC incorrect";
        	assert (DCLK = '1') report "DCLK incorrect";
        	assert (SCLK = '1') report "SCLK incorrect";
        	assert (UREQ = '0') report "UREQ incorrect";

        	wait for 100 ps;

        	assert (VSYNC = '1') report "VSYNC incorrect";
        	assert (HSYNC = '1') report "HSYNC incorrect";
        	assert (DCLK = '0') report "DCLK incorrect";
        	assert (SCLK = '0') report "SCLK incorrect";
        	assert (UREQ = '0') report "UREQ incorrect";


        	----------------------------------------          
			-- end test pixel and serial clocks in display area
			---------------------------------------- 

			----------------------------------------          
			-- test ureq and horizontal front porch
			---------------------------------------- 

			wait for 200 ps;

        	assert (VSYNC = '1') report "VSYNC incorrect";
        	assert (HSYNC = '1') report "HSYNC incorrect";
        	assert (DCLK = '1') report "DCLK incorrect";
        	assert (SCLK = '0') report "SCLK incorrect";
        	assert (UREQ = '1') report "UREQ incorrect";

        	ureq_pending := true;

        	-- test horizontal front porch
			-- horizontal front porch is thf * 4 = 2 * 4 clocks
			-- subtract 2 clocks for end of previous test
			for i in 0 to ((2 * 4) - 2) loop
				wait for 100 ps;
				assert (SCLK = '0') report "SCLK incorrect";
				assert (VSYNC = '1') report "VSYNC incorrect";
				assert (HSYNC = '1') report "HSYNC incorrect";
				assert (UREQ = '1') report "UREQ incorrect";
			end loop;
        	
        	----------------------------------------          
			-- end test ureq and horizontal front porch
			---------------------------------------- 

		end loop;

		----------------------------------------          
		-- end test valid vertical area
		---------------------------------------- 

		assert (SCLK = '0') report "SCLK incorrect";
		assert (VSYNC = '1') report "VSYNC incorrect";

		if (ureq_pending = true) then
			assert (UREQ = '1') report "UREQ incorrect";
			-- return UACK to simulate late update
			UACK <= '1';
		else
			assert (UREQ = '0') report "UREQ incorrect";
		end if;

		wait for 100 ps;

		UACK <= '0';
		ureq_pending := false;


		-- test vertical front porch
		-- front porch lasts (525 * 2) * 4 clocks
		-- subtract 1 clock for previous test
		for i in 0 to ((525 * 2) * 4 - 1) loop
			assert (SCLK = '0') report "SCLK incorrect";
			assert (VSYNC = '1') report "VSYNC incorrect";
			assert (UREQ = '0') report "UREQ incorrect";
			wait for 100 ps;
		end loop;

		-- done: end of cycle is tested at beginning of cycle

                                                        
END PROCESS always;                                          
END display_ctrl_arch;
