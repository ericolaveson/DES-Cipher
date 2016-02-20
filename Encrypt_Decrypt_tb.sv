/***********************************************************************************************************************
 * MODULE - Encrypt_Decrypt_tb
 * ---------------------------------------------------------------------------------------------------------------------
 * This module tests that the DES cipher is encrypting and decrypting properly. Encryption and decryption should each
 * take 1 clock cycle to complete. This was accomplished by using loop unrolling.
 **********************************************************************************************************************/
`timescale 1ns / 1ps
`include "Definitions.sv"

module Encrypt_Decrypt_tb #();

	logic clk; // clock signal
	
	// INITIALIZE - DES function lines
	logic [63:0] key;
	logic [63:0] plain_text;  // encryption
	logic [63:0] encrypted;   // encryption
	logic [63:0] cipher_text; // decryption
	logic [63:0] decrypted;   // decryption
	
	
	// INITIALIZE - modules for testing
	Encrypt encrypt_module(plain_text,key,encrypted);
	Decrypt decrypt_module(cipher_text,key,decrypted);
	
	// toggle the clock
	always begin
		#50ps  clk = 1;
		#50ps  clk = 0;
	end
	
	initial begin : test_Encrypt
			clk         = 0;
			key         = 0;
			plain_text  = 0;
			cipher_text = 0;
		
		// TEST - set the input wires for test modules
		@(negedge clk);
			key         = 64'b0110000011010010100101011011100000011011110110110011001111001111;
			plain_text  = 64'b1111111111111111111111111111111100000000000000000000000000000000;
			cipher_text = 64'b0110110000010110110111101000101000001001011000000101100000011000;
		
		@(negedge clk);
			plain_text  = 64'b0000000011111111000000001111111100000000111111110000000011111111;
			cipher_text = 64'b1001101001100100110111001000001001110010011111110011101001110011;
		
		repeat(20) @(negedge clk);
		
		$display("TEST RESULTS:\n %b",encrypted);
		$stop;
		
	end : test_Encrypt
	
	
endmodule