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
    ,output logic[ 0 :0 ] tcs_vram_tcm_waitrequest_in
    ,input  logic[ 0 :0 ] vram_tcm_waitrequest_in
    ,input  logic[ 0 :0 ] tcs_ram_tcm_chipselect_n_out
    ,output  wire [ 0 :0 ] ram_tcm_chipselect_n_out
    ,input  logic[ 0 :0 ] tcs_we
    ,output  wire [ 0 :0 ] we
    ,output logic[ 31 :0 ] tcs_data_in
    ,input  logic[ 31 :0 ] tcs_data
    ,input  logic tcs_data_outen
    ,inout  wire [ 31 :0 ]  data
    ,input  logic[ 0 :0 ] tcs_vram_tcm_chipselect_n_out
    ,output  wire [ 0 :0 ] vram_tcm_chipselect_n_out
    ,input  logic[ 0 :0 ] tcs_rom_tcm_read_out
    ,output  wire [ 0 :0 ] rom_tcm_read_out
    ,input  logic[ 18 :0 ] tcs_addr
    ,output  wire [ 18 :0 ] addr
    ,input  logic[ 0 :0 ] tcs_rom_tcm_chipselect_n_out
    ,output  wire [ 0 :0 ] rom_tcm_chipselect_n_out
    ,input  logic[ 19 :0 ] tcs_vram_tcm_address_out
    ,output  wire [ 19 :0 ] vram_tcm_address_out
    ,input  logic[ 0 :0 ] tcs_ram_tcm_read_out
    ,output  wire [ 0 :0 ] ram_tcm_read_out
		     
   );
   reg grant_reg;
   assign grant = grant_reg;
   
   always@(posedge clk) begin
      if(reset)
	grant_reg <= 0;
      else
	grant_reg <= request;      
   end
   


 // ** Input Pin vram_tcm_waitrequest_in 
 
    reg [ 0 : 0 ] 	vram_tcm_waitrequest_in_reg;
								    
    always@(posedge clk) begin
	 vram_tcm_waitrequest_in_reg <= vram_tcm_waitrequest_in;
    end
           
 
    assign      tcs_vram_tcm_waitrequest_in[ 0 : 0 ] = vram_tcm_waitrequest_in_reg[ 0 : 0 ];
         


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
        


 // ** Output Pin we 
 
    reg                       ween_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   ween_reg <= 'b0;
	 end
	 else begin
	   ween_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 0 : 0 ] we_reg;   

     always@(posedge clk) begin
	 we_reg   <= tcs_we[ 0 : 0 ];
      end
          
 
    assign 	we[ 0 : 0 ] = ween_reg ? we_reg : 'z ;
        


 // ** Bidirectional Pin data 
   
    reg                       data_outen_reg;
  
    always@(posedge clk) begin
	 data_outen_reg <= tcs_data_outen;
     end
  
  
    reg [ 31 : 0 ] data_reg;   

     always@(posedge clk) begin
	 data_reg   <= tcs_data[ 31 : 0 ];
      end
         
  
    assign 	data[ 31 : 0 ] = data_outen_reg ? data_reg : 'z ;
       
  
    reg [ 31 : 0 ] 	data_in_reg;
								    
    always@(posedge clk) begin
	 data_in_reg <= data[ 31 : 0 ];
    end
    
  
    assign      tcs_data_in[ 31 : 0 ] = data_in_reg[ 31 : 0 ];
        


 // ** Output Pin vram_tcm_chipselect_n_out 
 
    reg                       vram_tcm_chipselect_n_outen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   vram_tcm_chipselect_n_outen_reg <= 'b0;
	 end
	 else begin
	   vram_tcm_chipselect_n_outen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 0 : 0 ] vram_tcm_chipselect_n_out_reg;   

     always@(posedge clk) begin
	 vram_tcm_chipselect_n_out_reg   <= tcs_vram_tcm_chipselect_n_out[ 0 : 0 ];
      end
          
 
    assign 	vram_tcm_chipselect_n_out[ 0 : 0 ] = vram_tcm_chipselect_n_outen_reg ? vram_tcm_chipselect_n_out_reg : 'z ;
        


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
        


 // ** Output Pin addr 
 
    reg                       addren_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   addren_reg <= 'b0;
	 end
	 else begin
	   addren_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 18 : 0 ] addr_reg;   

     always@(posedge clk) begin
	 addr_reg   <= tcs_addr[ 18 : 0 ];
      end
          
 
    assign 	addr[ 18 : 0 ] = addren_reg ? addr_reg : 'z ;
        


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
        


 // ** Output Pin vram_tcm_address_out 
 
    reg                       vram_tcm_address_outen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   vram_tcm_address_outen_reg <= 'b0;
	 end
	 else begin
	   vram_tcm_address_outen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 19 : 0 ] vram_tcm_address_out_reg;   

     always@(posedge clk) begin
	 vram_tcm_address_out_reg   <= tcs_vram_tcm_address_out[ 19 : 0 ];
      end
          
 
    assign 	vram_tcm_address_out[ 19 : 0 ] = vram_tcm_address_outen_reg ? vram_tcm_address_out_reg : 'z ;
        


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
        

endmodule


