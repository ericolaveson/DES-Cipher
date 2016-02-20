/***********************************************************************************************************************
 * DES Test Bench
 * ---------------------------------------------------------------------------------------------------------------------
 * This module tests the effective encryption of the DES core.
 *
 * KEY  : A valid DES key consists of 56 random bits. Every 8th bit represents the parity of the 7 bits before it.
 * DATA : A string of data which will be encrypted.
 **********************************************************************************************************************/
`timescale 1ns / 1ps
`include "Definitions.sv"

module DES_core_tb #();

	logic          clk;  // clock signal
	logic [63:0]   key;  // DES key
	logic [3000:0] data; // data to be encrypted

	
	// INITIALIZE - test lines for Expansion
	logic e_good;
	t_wire [31:0] e_wires_in;
	t_wire [47:0] e_wires_out;
	t_wire [47:0] e_expected;
	
	// INITIALIZE - test lines for Permutation
	logic p_good;
	t_wire [31:0] p_wires_in;
	t_wire [31:0] p_wires_out;
	t_wire [31:0] p_expected;
	
	// INITIALIZE - test lines for S_Boxes
	t_wire [47:0] s_wires_in;
	t_wire [31:0] s_wires_out;

	
	// INITIALIZE - modules for testing
	Expansion   e_dut(e_wires_in, e_wires_out);
	Permutation p_dut(p_wires_in, p_wires_out);
	S_Boxes     s_dut(s_wires_in, s_wires_out);
	
	
	// toggle the clock
	always begin
		#50ps  clk = 1;
		#50ps  clk = 0;
	end
	
	
	/*******************************************************************************************************************
	 *  _______ ______  _____ _______    _____ ______ ____  _    _ ______ _   _  _____ ______ 
	 * |__   __|  ____|/ ____|__   __|  / ____|  ____/ __ \| |  | |  ____| \ | |/ ____|  ____|
     *    | |  | |__  | (___    | |    | (___ | |__ | |  | | |  | | |__  |  \| | |    | |__   
     *    | |  |  __|  \___ \   | |     \___ \|  __|| |  | | |  | |  __| | . ` | |    |  __|  
     *    | |  | |____ ____) |  | |     ____) | |___| |__| | |__| | |____| |\  | |____| |____ 
     *    |_|  |______|_____/   |_|    |_____/|______\___\_\\____/|______|_| \_|\_____|______|
	 ******************************************************************************************************************/
	initial begin : test_Expansion
			e_good     = 1;
			e_wires_in = 0;			
			e_expected = 0;
			
			p_good     = 1;
			p_wires_in = 0;
			p_expected = 0;
			
			s_wires_in = 0;
		
		// TEST - set the input wires for test modules
		@(negedge clk);
			e_wires_in = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32};
			e_expected = {32,1,2,3,4,5,4,5,6,7,8,9,8,9,10,11,12,13,12,13,14,15,16,17,16,17,18,19,20,21,20,21,22,23,24,25,24,25,26,27,28,29,28,29,30,31,32,1};
			
			p_wires_in = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32};
			p_expected = {16,7,20,21,29,12,28,17,1,15,23,26,5,18,31,10,2,8,24,14,32,27,3,9,19,13,30,6,22,11,4,25};
		
			s_wires_in = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48};
		
		
		// TEST - compare output of expansion module
		for(int i = 0; i < 48; ++i)
		begin
			@(negedge clk);
			e_good &= e_wires_out[i] == e_expected[i];
		end
		
		
		// TEST - compare output of permutation module
		for(int i = 0; i < 32; ++i)
		begin
			@(negedge clk)
			p_good &= p_wires_out[i] == p_expected[i];
		end
		
		$stop;
		
	end : test_Expansion
	
	
endmodule



























