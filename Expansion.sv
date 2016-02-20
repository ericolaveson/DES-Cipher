/***********************************************************************************************************************
 * Expansion Module
 * ---------------------------------------------------------------------------------------------------------------------
 * This module will perform the expansion function of the DES algorithm.
 **********************************************************************************************************************/
`include "Definitions.sv"

module Expansion #()(
	input  bit [31:0] wires_in,
	output bit [47:0] wires_out);
	
	always_comb
	begin
		wires_out[47-0]  = wires_in[31-31];
		wires_out[47-1]  = wires_in[31-0];
		wires_out[47-2]  = wires_in[31-1];
		wires_out[47-3]  = wires_in[31-2];
		wires_out[47-4]  = wires_in[31-3];
		wires_out[47-5]  = wires_in[31-4];
		
		wires_out[47-6]  = wires_in[31-3];
		wires_out[47-7]  = wires_in[31-4];
		wires_out[47-8]  = wires_in[31-5];
		wires_out[47-9]  = wires_in[31-6];
		wires_out[47-10] = wires_in[31-7];
		wires_out[47-11] = wires_in[31-8];
		
		wires_out[47-12] = wires_in[31-7];
		wires_out[47-13] = wires_in[31-8];
		wires_out[47-14] = wires_in[31-9];
		wires_out[47-15] = wires_in[31-10];
		wires_out[47-16] = wires_in[31-11];
		wires_out[47-17] = wires_in[31-12];
		
		wires_out[47-18] = wires_in[31-11];
		wires_out[47-19] = wires_in[31-12];
		wires_out[47-20] = wires_in[31-13];
		wires_out[47-21] = wires_in[31-14];
		wires_out[47-22] = wires_in[31-15];
		wires_out[47-23] = wires_in[31-16];
		
		wires_out[47-24] = wires_in[31-15];
		wires_out[47-25] = wires_in[31-16];
		wires_out[47-26] = wires_in[31-17];
		wires_out[47-27] = wires_in[31-18];
		wires_out[47-28] = wires_in[31-19];
		wires_out[47-29] = wires_in[31-20];
		
		wires_out[47-30] = wires_in[31-19];
		wires_out[47-31] = wires_in[31-20];
		wires_out[47-32] = wires_in[31-21];
		wires_out[47-33] = wires_in[31-22];
		wires_out[47-34] = wires_in[31-23];
		wires_out[47-35] = wires_in[31-24];
		
		wires_out[47-36] = wires_in[31-23];
		wires_out[47-37] = wires_in[31-24];
		wires_out[47-38] = wires_in[31-25];
		wires_out[47-39] = wires_in[31-26];
		wires_out[47-40] = wires_in[31-27];
		wires_out[47-41] = wires_in[31-28];
		
		wires_out[47-42] = wires_in[31-27];
		wires_out[47-43] = wires_in[31-28];
		wires_out[47-44] = wires_in[31-29];
		wires_out[47-45] = wires_in[31-30];
		wires_out[47-46] = wires_in[31-31];
		wires_out[47-47] = wires_in[31-0];
	end
	
endmodule

















