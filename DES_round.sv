/***********************************************************************************************************************
 * DES_round
 * ---------------------------------------------------------------------------------------------------------------------
 * This module will accept the data and key segments to perform a single round of DES. The key will be shifted
 * according to the corresponding round. Once the key has been completed and the data has been expanded the key will be
 * folded into the DES F function. After this has happended the inverse and permutation of the data will be computed.
 **********************************************************************************************************************/
module DES_round #()(
	input  mode,
	input  bit[3:0]  round,
	input  bit[31:0] Li,       // IN  - left  data
	input  bit[31:0] Ri,       // IN  - right data
	input  bit[27:0] Ci,       // IN  - left  key
	input  bit[27:0] Di,       // IN  - right key
	output bit[31:0] Li_next,  // OUT - left  data
	output bit[31:0] Ri_next,  // OUT - right data
	output bit[27:0] Ci_next,  // OUT - left  key
	output bit[27:0] Di_next); // OUT - right key

	/* INTERMITTENT WIRES */
	logic [31:0] f_out; // encrypted right data
	logic [47:0] key_i; // shifted key
	
	// shift the key
	Key_Shifter ks_module(
		.mode   (mode),
		.round  (round),
		.Ci     (Ci),
		.Di     (Di),
		.Ci_next(Ci_next),
		.Di_next(Di_next),
		.key_i  (key_i));
	
	// encrypt right side of data
	Eff f_module(
		.wires_in (Ri),
		.key_i    (key_i),
		.wires_out(f_out));
	
	// switch and fold data
	always_comb
	begin
		Ri_next = f_out ^ Li;
		Li_next = Ri;
	end
	
endmodule