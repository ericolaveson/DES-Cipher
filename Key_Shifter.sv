/***********************************************************************************************************************
 * Key_Shifter Module
 * ---------------------------------------------------------------------------------------------------------------------
 * This module will handle all key rotations and permutations in order to compute the round key which will be applied
 * to the corresponding DES encryption round. The key partitions for the next round of key rotations will be output as
 * well.
 **********************************************************************************************************************/
module Key_Shifter #()(
	input  mode,
	input  bit[3:0]  round,
	input  bit[27:0] Ci,
	input  bit[27:0] Di,
	output bit[27:0] Ci_next,
	output bit[27:0] Di_next,
	output bit[47:0] key_i);
	
	
	logic [27:0] Ci_left_shift;
	logic [27:0] Di_left_shift;
	logic [27:0] Ci_right_shift;
	logic [27:0] Di_right_shift;
	
	
	Left_Shifter l_shift(
		.round   (round),
		.Ci      (Ci),
		.Di      (Di),
		.Ci_shift(Ci_left_shift),
		.Di_shift(Di_left_shift));
		
	Right_Shifter r_shift(
		.round   (round),
		.Ci      (Ci),
		.Di      (Di),
		.Ci_shift(Ci_right_shift),
		.Di_shift(Di_right_shift));
	
	
	always_comb
	begin
		if (mode)
		begin
			Ci_next = Ci_left_shift;
			Di_next = Di_left_shift;
		end
		else
		begin
			Ci_next = Ci_right_shift;
			Di_next = Di_right_shift;
		end
	end
	
	
	Permutation_2 permutation2(
		.Ci   (Ci_next),
		.Di   (Di_next),
		.key_i(key_i));
	
	
endmodule