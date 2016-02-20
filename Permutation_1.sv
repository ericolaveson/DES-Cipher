/***********************************************************************************************************************
 * Permutation_1
 * ---------------------------------------------------------------------------------------------------------------------
 * This module will split up the key into each half and perform the initial key permutation.
 **********************************************************************************************************************/
 module Permutation_1 #()(
	input  bit[63:0] key,
	output bit[27:0] Ci,
	output bit[27:0] Di);
	
	// TODO : check for parity of key, maybe this should go before the permutation gets called
	// if (parity is good)
	always_comb
	begin
	
		// left key permutation
		Ci[27] = key[7];
		Ci[26] = key[15];
		Ci[25] = key[23];
		Ci[24] = key[31];
		Ci[23] = key[39];
		Ci[22] = key[47];
		Ci[21] = key[55];
		Ci[20] = key[63];
		Ci[19] = key[6];
		Ci[18] = key[14];
		Ci[17] = key[22];
		Ci[16] = key[30];
		Ci[15] = key[38];
		Ci[14] = key[46];
		Ci[13] = key[54];
		Ci[12] = key[62];
		Ci[11] = key[5];
		Ci[10] = key[13];
		Ci[9]  = key[21];
		Ci[8]  = key[29];
		Ci[7]  = key[37];
		Ci[6]  = key[45];
		Ci[5]  = key[53];
		Ci[4]  = key[61];
		Ci[3]  = key[4];
		Ci[2]  = key[12];
		Ci[1]  = key[20];
		Ci[0]  = key[28];
	
		// right key permutation
		Di[27] = key[1];
		Di[26] = key[9];
		Di[25] = key[17];
		Di[24] = key[25];
		Di[23] = key[33];
		Di[22] = key[41];
		Di[21] = key[49];
		Di[20] = key[57];
		Di[19] = key[2];
		Di[18] = key[10];
		Di[17] = key[18];
		Di[16] = key[26];
		Di[15] = key[34];
		Di[14] = key[42];
		Di[13] = key[50];
		Di[12] = key[58];
		Di[11] = key[3];
		Di[10] = key[11];
		Di[9]  = key[19];
		Di[8]  = key[27];
		Di[7]  = key[35];
		Di[6]  = key[43];
		Di[5]  = key[51];
		Di[4]  = key[59];
		Di[3]  = key[36];
		Di[2]  = key[44];
		Di[1]  = key[52];
		Di[0]  = key[60];
	end
	
endmodule