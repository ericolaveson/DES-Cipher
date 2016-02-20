/***********************************************************************************************************************
 * MODULE - Eff
 * ---------------------------------------------------------------------------------------------------------------------
 * This is the inner F function of DES. It computes a cipher text on only one half of the input data. This is will then
 * be folded into the first half of the input data by Feistel methodology.
 **********************************************************************************************************************/
`include "Definitions.sv"

module Eff #()(
	input  bit [31:0] wires_in,
	input  bit [47:0] key_i,
	output bit [31:0] wires_out);

	bit [47:0] expansion;
	bit [47:0] key_xor;
	bit [31:0] des_inverse;

	Expansion e_module(
		.wires_in  (wires_in),
		.wires_out (expansion));

		
	// $$$ look into always@(key_i) to only apply the key once it has finished being shifted or changed
	// or possibly look into always@(round) when the round is incremented(really just MUXin it)
	always_comb
	begin
		key_xor = expansion ^ key_i;
	end

	
	S_Boxes s_module(
		.wires_in  (key_xor),
		.wires_out (des_inverse));

	Permutation p_module(
		.wires_in  (des_inverse),
		.wires_out (wires_out));
	
	
endmodule