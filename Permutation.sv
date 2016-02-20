/***********************************************************************************************************************
 * 
 * ---------------------------------------------------------------------------------------------------------------------
 * 
 **********************************************************************************************************************/
`include "Definitions.sv"

module Permutation #()(
	input  bit [31:0] wires_in,
	output bit [31:0] wires_out);
	
	always_comb
	begin
		wires_out[31-0]  = wires_in[31-15];
		wires_out[31-1]  = wires_in[31-6];
		wires_out[31-2]  = wires_in[31-19];
		wires_out[31-3]  = wires_in[31-20];
		wires_out[31-4]  = wires_in[31-28];
		wires_out[31-5]  = wires_in[31-11];
		wires_out[31-6]  = wires_in[31-27];
		wires_out[31-7]  = wires_in[31-16];
		
		wires_out[31-8]  = wires_in[31-0];
		wires_out[31-9]  = wires_in[31-14];
		wires_out[31-10] = wires_in[31-22];
		wires_out[31-11] = wires_in[31-25];
		wires_out[31-12] = wires_in[31-4];
		wires_out[31-13] = wires_in[31-17];
		wires_out[31-14] = wires_in[31-30];
		wires_out[31-15] = wires_in[31-9];
		
		wires_out[31-16] = wires_in[31-1];
		wires_out[31-17] = wires_in[31-7];
		wires_out[31-18] = wires_in[31-23];
		wires_out[31-19] = wires_in[31-13];
		wires_out[31-20] = wires_in[31-31];
		wires_out[31-21] = wires_in[31-26];
		wires_out[31-22] = wires_in[31-2];
		wires_out[31-23] = wires_in[31-8];
		
		wires_out[31-24] = wires_in[31-18];
		wires_out[31-25] = wires_in[31-12];
		wires_out[31-26] = wires_in[31-29];
		wires_out[31-27] = wires_in[31-5];
		wires_out[31-28] = wires_in[31-21];
		wires_out[31-29] = wires_in[31-10];
		wires_out[31-30] = wires_in[31-3];
		wires_out[31-31] = wires_in[31-24];
	end
	
endmodule

















