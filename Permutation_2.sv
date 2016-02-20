/***********************************************************************************************************************
 * Permutation_2
 * ---------------------------------------------------------------------------------------------------------------------
 * This module performs the DES permutation choice 2 for the key. Once scrambled, the key will be folded into the data
 * being encrypted by the current DES round.
 **********************************************************************************************************************/
module Permutation_2 #()(
	input  bit[27:0] Ci, // left key
	input  bit[27:0] Di, // right key
	output bit[47:0] key_i);


	always_comb
	begin
		// left key permutation
		key_i[47] = Ci[14];
		key_i[46] = Ci[11];
		key_i[45] = Ci[17];
		key_i[44] = Ci[4];
		key_i[43] = Ci[27];
		key_i[42] = Ci[23];
		key_i[41] = Ci[25];
		key_i[40] = Ci[0];
		key_i[39] = Ci[13];
		key_i[38] = Ci[22];
		key_i[37] = Ci[7];
		key_i[36] = Ci[18];
		key_i[35] = Ci[5];
		key_i[34] = Ci[9];
		key_i[33] = Ci[16];
		key_i[32] = Ci[24];
		key_i[31] = Ci[2];
		key_i[30] = Ci[20];
		key_i[29] = Ci[12];
		key_i[28] = Ci[21];
		key_i[27] = Ci[1];
		key_i[26] = Ci[8];
		key_i[25] = Ci[15];
		key_i[24] = Ci[26];

		// right key permutation
		key_i[23] = Di[15];
		key_i[22] = Di[4];
		key_i[21] = Di[25];
		key_i[20] = Di[19];
		key_i[19] = Di[9];
		key_i[18] = Di[1];
		key_i[17] = Di[26];
		key_i[16] = Di[16];
		key_i[15] = Di[5];
		key_i[14] = Di[11];
		key_i[13] = Di[23];
		key_i[12] = Di[8];
		key_i[11] = Di[12];
		key_i[10] = Di[7];
		key_i[9]  = Di[17];
		key_i[8]  = Di[0];
		key_i[7]  = Di[22];
		key_i[6]  = Di[3];
		key_i[5]  = Di[10];
		key_i[4]  = Di[14];
		key_i[3]  = Di[6];
		key_i[2]  = Di[20];
		key_i[1]  = Di[27];
		key_i[0]  = Di[24];
	end

endmodule