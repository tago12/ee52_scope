// (C) 2001-2013 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/rel/13.1/ip/merlin/altera_tristate_conduit_bridge/altera_tristate_conduit_bridge.sv.terp#1 $
// $Revision: #1 $
// $Date: 2013/08/11 $
// $Author: swbranch $

//Defined Terp Parameters


			    

`timescale 1 ns / 1 ns
  				      
module sopc_scope_sys_bridge (
     input  logic clk
    ,input  logic reset
    ,input  logic request
    ,output logic grant
    ,input  logic[ 18 :0 ] tcs_addr_out
    ,output  wire [ 18 :0 ] addr_out
    ,input  logic[ 0 :0 ] tcs_rom_tcm_chipselect_n_out
    ,output  wire [ 0 :0 ] rom_tcm_chipselect_n_out
    ,input  logic[ 0 :0 ] tcs_ram_tcm_read_out
    ,output  wire [ 0 :0 ] ram_tcm_read_out
    ,input  logic[ 0 :0 ] tcs_ram_tcm_write_n_out
    ,output  wire [ 0 :0 ] ram_tcm_write_n_out
    ,output logic[ 7 :0 ] tcs_data_outen_in
    ,input  logic[ 7 :0 ] tcs_data_outen
    ,input  logic tcs_data_outen_outen
    ,inout  wire [ 7 :0 ]  data_outen
    ,input  logic[ 0 :0 ] tcs_rom_tcm_read_out
    ,output  wire [ 0 :0 ] rom_tcm_read_out
    ,input  logic[ 0 :0 ] tcs_ram_tcm_chipselect_n_out
    ,output  wire [ 0 :0 ] ram_tcm_chipselect_n_out
		     
   );
   reg grant_reg;
   assign grant = grant_reg;
   
   always@(posedge clk) begin
      if(reset)
	grant_reg <= 0;
      else
	grant_reg <= request;      
   end
   


 // ** Output Pin addr_out 
 
    reg                       addr_outen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   addr_outen_reg <= 'b0;
	 end
	 else begin
	   addr_outen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 18 : 0 ] addr_out_reg;   

     always@(posedge clk) begin
	 addr_out_reg   <= tcs_addr_out[ 18 : 0 ];
      end
          
 
    assign 	addr_out[ 18 : 0 ] = addr_outen_reg ? addr_out_reg : 'z ;
        


 // ** Output Pin rom_tcm_chipselect_n_out 
 
    reg                       rom_tcm_chipselect_n_outen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   rom_tcm_chipselect_n_outen_reg <= 'b0;
	 end
	 else begin
	   rom_tcm_chipselect_n_outen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 0 : 0 ] rom_tcm_chipselect_n_out_reg;   

     always@(posedge clk) begin
	 rom_tcm_chipselect_n_out_reg   <= tcs_rom_tcm_chipselect_n_out[ 0 : 0 ];
      end
          
 
    assign 	rom_tcm_chipselect_n_out[ 0 : 0 ] = rom_tcm_chipselect_n_outen_reg ? rom_tcm_chipselect_n_out_reg : 'z ;
        


 // ** Output Pin ram_tcm_read_out 
 
    reg                       ram_tcm_read_outen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   ram_tcm_read_outen_reg <= 'b0;
	 end
	 else begin
	   ram_tcm_read_outen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 0 : 0 ] ram_tcm_read_out_reg;   

     always@(posedge clk) begin
	 ram_tcm_read_out_reg   <= tcs_ram_tcm_read_out[ 0 : 0 ];
      end
          
 
    assign 	ram_tcm_read_out[ 0 : 0 ] = ram_tcm_read_outen_reg ? ram_tcm_read_out_reg : 'z ;
        


 // ** Output Pin ram_tcm_write_n_out 
 
    reg                       ram_tcm_write_n_outen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   ram_tcm_write_n_outen_reg <= 'b0;
	 end
	 else begin
	   ram_tcm_write_n_outen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 0 : 0 ] ram_tcm_write_n_out_reg;   

     always@(posedge clk) begin
	 ram_tcm_write_n_out_reg   <= tcs_ram_tcm_write_n_out[ 0 : 0 ];
      end
          
 
    assign 	ram_tcm_write_n_out[ 0 : 0 ] = ram_tcm_write_n_outen_reg ? ram_tcm_write_n_out_reg : 'z ;
        


 // ** Bidirectional Pin data_outen 
   
    reg                       data_outen_outen_reg;
  
    always@(posedge clk) begin
	 data_outen_outen_reg <= tcs_data_outen_outen;
     end
  
  
    reg [ 7 : 0 ] data_outen_reg;   

     always@(posedge clk) begin
	 data_outen_reg   <= tcs_data_outen[ 7 : 0 ];
      end
         
  
    assign 	data_outen[ 7 : 0 ] = data_outen_outen_reg ? data_outen_reg : 'z ;
       
  
    reg [ 7 : 0 ] 	data_outen_in_reg;
								    
    always@(posedge clk) begin
	 data_outen_in_reg <= data_outen[ 7 : 0 ];
    end
    
  
    assign      tcs_data_outen_in[ 7 : 0 ] = data_outen_in_reg[ 7 : 0 ];
        


 // ** Output Pin rom_tcm_read_out 
 
    reg                       rom_tcm_read_outen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   rom_tcm_read_outen_reg <= 'b0;
	 end
	 else begin
	   rom_tcm_read_outen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 0 : 0 ] rom_tcm_read_out_reg;   

     always@(posedge clk) begin
	 rom_tcm_read_out_reg   <= tcs_rom_tcm_read_out[ 0 : 0 ];
      end
          
 
    assign 	rom_tcm_read_out[ 0 : 0 ] = rom_tcm_read_outen_reg ? rom_tcm_read_out_reg : 'z ;
        


 // ** Output Pin ram_tcm_chipselect_n_out 
 
    reg                       ram_tcm_chipselect_n_outen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   ram_tcm_chipselect_n_outen_reg <= 'b0;
	 end
	 else begin
	   ram_tcm_chipselect_n_outen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 0 : 0 ] ram_tcm_chipselect_n_out_reg;   

     always@(posedge clk) begin
	 ram_tcm_chipselect_n_out_reg   <= tcs_ram_tcm_chipselect_n_out[ 0 : 0 ];
      end
          
 
    assign 	ram_tcm_chipselect_n_out[ 0 : 0 ] = ram_tcm_chipselect_n_outen_reg ? ram_tcm_chipselect_n_out_reg : 'z ;
        

endmodule


