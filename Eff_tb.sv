/***********************************************************************************************************************
 * Eff Test Bench
 * ---------------------------------------------------------------------------------------------------------------------
 * This module will test the entire DES f function which folds the key into the cipher text and computes the DES
 * inverse.
 **********************************************************************************************************************/
`timescale 1ns / 1ps
`include "Definitions.sv"

module Eff_tb #();

	logic clk; // clock signal
	
	// INITIALIZE - DES function lines
	logic [47:0] key;
	logic [31:0] f_reg_in;
	logic [31:0] f_reg_out;
	
	// INITIALIZE - modules for testing
	Eff  f_dut(f_reg_in, key, f_reg_out);
	
	
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
	initial begin : test_Eff
			clk       = 0;
			key       = 0;
			f_reg_in  = 0;
		
		// TEST - set the input wires for test modules
		@(negedge clk);
			key      = 48'b000000000000000000000000000000000000000000000000;
			f_reg_in = 32'b00000000000000001111111111111111;
		
		repeat(20) @(negedge clk);
		
		$stop;
		
	end : test_Eff
	
	
endmodule




















