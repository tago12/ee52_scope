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



  
`timescale 1 ns / 1 ns

			 
module sopc_scope_sys_pin_sharer_pin_sharer (
 // ** Clock and Reset Connections
    input  logic clk
   ,input  logic reset

 // ** Arbiter Connections

 // *** Arbiter Grant Interface
   ,output logic ack
   ,input  logic [ 3 - 1 : 0 ] next_grant

// *** Arbiter Request Interface

    ,output logic arb_vram_tcm 
    ,output logic arb_rom_tcm 
    ,output logic arb_ram_tcm 
		
		     // ** Avalon TC Slave Interfaces




  // Slave Interface tcs2

    ,input  logic tcs2_request 
    ,output logic tcs2_grant   

  //vram.tcm signals
    ,input  logic[ 19 :0 ] tcs2_tcm_address_out
    ,output logic[ 0 :0 ] tcs2_tcm_waitrequest_in
    ,input  logic[ 0 :0 ] tcs2_tcm_write_n_out
    ,output logic[ 31 :0 ]  tcs2_tcm_data_in
    ,input  logic[ 31 :0 ]  tcs2_tcm_data_out
    ,input  logic tcs2_tcm_data_outen
    ,input  logic[ 0 :0 ] tcs2_tcm_chipselect_n_out



  // Slave Interface tcs1

    ,input  logic tcs1_request 
    ,output logic tcs1_grant   

  //rom.tcm signals
    ,input  logic[ 18 :0 ] tcs1_tcm_address_out
    ,input  logic[ 0 :0 ] tcs1_tcm_read_out
    ,output logic[ 7 :0 ]  tcs1_tcm_data_in
    ,input  logic[ 7 :0 ]  tcs1_tcm_data_out
    ,input  logic tcs1_tcm_data_outen
    ,input  logic[ 0 :0 ] tcs1_tcm_chipselect_n_out



  // Slave Interface tcs0

    ,input  logic tcs0_request 
    ,output logic tcs0_grant   

  //ram.tcm signals
    ,input  logic[ 16 :0 ] tcs0_tcm_address_out
    ,input  logic[ 0 :0 ] tcs0_tcm_write_n_out
    ,input  logic[ 0 :0 ] tcs0_tcm_read_out
    ,output logic[ 7 :0 ]  tcs0_tcm_data_in
    ,input  logic[ 7 :0 ]  tcs0_tcm_data_out
    ,input  logic tcs0_tcm_data_outen
    ,input  logic[ 0 :0 ] tcs0_tcm_chipselect_n_out
		     
		     // ** Avalon TC Master Interface
    ,output logic request
    ,input  logic grant

		     // *** Passthrough Signals
		     
    ,output  logic[ 19 :0 ] vram_tcm_address_out
    ,input   logic[ 0 :0 ] vram_tcm_waitrequest_in
    ,output  logic[ 0 :0 ] vram_tcm_chipselect_n_out
    ,output  logic[ 0 :0 ] rom_tcm_read_out
    ,output  logic[ 0 :0 ] rom_tcm_chipselect_n_out
    ,output  logic[ 0 :0 ] ram_tcm_read_out
    ,output  logic[ 0 :0 ] ram_tcm_chipselect_n_out
		     
                     // *** Shared Signals
		      	     
    ,output  logic[ 0 :0 ] we
    ,input   logic[ 31  :0 ]  data_in
    ,output  logic[ 31  :0 ]  data
    ,output  logic data_outen
    ,output  logic[ 18 :0 ] addr

		     );

   function [3-1:0] getIndex;
      
      input [3-1:0] select;
      
      getIndex = 'h0;
      
      for(int i=0; i < 3; i = i + 1) begin
	 if( select[i] == 1'b1 )
           getIndex = i;
      end
      
   endfunction // getIndex

   logic[ 3 - 1 : 0 ] selected_grant;


   // Request Assignments

    assign arb_vram_tcm = tcs2_request;
    assign arb_rom_tcm = tcs1_request;
    assign arb_ram_tcm = tcs0_request;
   
   logic [ 3 - 1 : 0 ] concated_incoming_requests;
   
   
   assign 			      concated_incoming_requests = {						    
         tcs2_request 
        ,tcs1_request 
        ,tcs0_request 
				};
   
				       
   assign 			      request = | concated_incoming_requests;
  assign        tcs0_grant = selected_grant[0];
  assign        tcs1_grant = selected_grant[1];
  assign        tcs2_grant = selected_grant[2];

   
    // Perform Grant Selection						  
   always@(posedge clk, posedge reset) begin
     if(reset) begin
	selected_grant<=0;
	ack <= 0;
     end 
     else begin
       if(grant && (concated_incoming_requests[getIndex(selected_grant)] == 0 || selected_grant == 0 )) begin
	  if(~request)
	    selected_grant <= '0;
	  else
	    selected_grant <= next_grant;
	  
          ack<=1;
       end
       else begin
         ack<=0;
         selected_grant <= selected_grant;
       end
     end
   end // always@ (posedge clk, posedge reset)

// Passthrough Signals

    assign vram_tcm_address_out = tcs2_tcm_address_out;
    assign tcs2_tcm_waitrequest_in = vram_tcm_waitrequest_in;
    assign vram_tcm_chipselect_n_out = tcs2_tcm_chipselect_n_out;
    assign rom_tcm_read_out = tcs1_tcm_read_out;
    assign rom_tcm_chipselect_n_out = tcs1_tcm_chipselect_n_out;
    assign ram_tcm_read_out = tcs0_tcm_read_out;
    assign ram_tcm_chipselect_n_out = tcs0_tcm_chipselect_n_out;
  
// Renamed Signals
  
// Shared Signals
  sopc_scope_sys_pin_sharer_pin_sharer_multiplexor_2 #(.WIDTH(1) )
    we_mux (
                              {
                                tcs2_grant
                               ,tcs0_grant
                              }
                              ,tcs2_tcm_write_n_out
                              ,tcs0_tcm_write_n_out
                              , we
                             );
  assign tcs0_tcm_data_in = data_in[7:0]; 
  assign tcs2_tcm_data_in = data_in[31:0]; 
  assign tcs1_tcm_data_in = data_in[7:0]; 
  sopc_scope_sys_pin_sharer_pin_sharer_multiplexor_3 #(.WIDTH(1) )
    data_outen_mux (
                              {
                                tcs2_grant
                               ,tcs1_grant
                               ,tcs0_grant
                              }
                              ,tcs2_tcm_data_outen
                              ,tcs1_tcm_data_outen
                              ,tcs0_tcm_data_outen
                              , data_outen
                             );
  sopc_scope_sys_pin_sharer_pin_sharer_multiplexor_3 #(.WIDTH(32) )
    data_mux (
                              {
                                tcs2_grant
                               ,tcs1_grant
                               ,tcs0_grant
                              }
                              ,tcs2_tcm_data_out
                              ,{24'h0,tcs1_tcm_data_out}
                              ,{24'h0,tcs0_tcm_data_out}
                              , data
                             );
  sopc_scope_sys_pin_sharer_pin_sharer_multiplexor_2 #(.WIDTH(19) )
    addr_mux (
                              {
                                tcs1_grant
                               ,tcs0_grant
                              }
                              ,tcs1_tcm_address_out
                              ,{2'h0,tcs0_tcm_address_out}
                              , addr
                             );
  
endmodule   
					    

  
module sopc_scope_sys_pin_sharer_pin_sharer_multiplexor_3
  #( parameter WIDTH      = 8
    ) (
    input logic  [ 3 -1 : 0]                       SelectVector,
    input logic  [ WIDTH - 1 : 0 ]                Input_2,
    input logic  [ WIDTH - 1 : 0 ]                Input_1,
    input logic  [ WIDTH - 1 : 0 ]                Input_0,
    output logic [ WIDTH - 1 : 0 ]                OutputSignal
       );


function [3-1:0] getIndex;
      
    input [3-1:0] select;
   
    getIndex = 'h0;
    
    for(int i=0; i < 3; i = i + 1) begin
      if( select[i] == 1'b1 )
        getIndex = i;
    end
			      				
endfunction
								 
   always @* begin
     case(getIndex(SelectVector))
       default: OutputSignal = Input_0;
       0 : OutputSignal = Input_0;									   
       1 : OutputSignal = Input_1;									   
       2 : OutputSignal = Input_2;									   
     endcase
   end
   
endmodule

  
module sopc_scope_sys_pin_sharer_pin_sharer_multiplexor_2
  #( parameter WIDTH      = 8
    ) (
    input logic  [ 2 -1 : 0]                       SelectVector,
    input logic  [ WIDTH - 1 : 0 ]                Input_1,
    input logic  [ WIDTH - 1 : 0 ]                Input_0,
    output logic [ WIDTH - 1 : 0 ]                OutputSignal
       );


function [2-1:0] getIndex;
      
    input [2-1:0] select;
   
    getIndex = 'h0;
    
    for(int i=0; i < 2; i = i + 1) begin
      if( select[i] == 1'b1 )
        getIndex = i;
    end
			      				
endfunction
								 
   always @* begin
     case(getIndex(SelectVector))
       default: OutputSignal = Input_0;
       0 : OutputSignal = Input_0;									   
       1 : OutputSignal = Input_1;									   
     endcase
   end
   
endmodule



