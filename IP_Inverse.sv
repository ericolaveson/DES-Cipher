/***********************************************************************************************************************
 * IP_Inverse
 * ---------------------------------------------------------------------------------------------------------------------
 * This module will perform the inverse of the initial permutation on a given 64-bit block of data.
 **********************************************************************************************************************/
module IP_Inverse #()(
	input  bit[63:0] wires_in,
	output bit[63:0] wires_out);
	
	always_comb
	begin
		wires_out[63] = wires_in[64-40];
		wires_out[62] = wires_in[64-8];
		wires_out[61] = wires_in[64-48];
		wires_out[60] = wires_in[64-16];
		wires_out[59] = wires_in[64-56];
		wires_out[58] = wires_in[64-24];
		wires_out[57] = wires_in[64-64];
		wires_out[56] = wires_in[64-32];
		wires_out[55] = wires_in[64-39];
		wires_out[54] = wires_in[64-7];
		wires_out[53] = wires_in[64-47];
		wires_out[52] = wires_in[64-15];
		wires_out[51] = wires_in[64-55];
		wires_out[50] = wires_in[64-23];
		wires_out[49] = wires_in[64-63];
		wires_out[48] = wires_in[64-31];
		wires_out[47] = wires_in[64-38];
		wires_out[46] = wires_in[64-6];
		wires_out[45] = wires_in[64-46];
		wires_out[44] = wires_in[64-14];
		wires_out[43] = wires_in[64-54];
		wires_out[42] = wires_in[64-22];
		wires_out[41] = wires_in[64-62];
		wires_out[40] = wires_in[64-30];
		wires_out[39] = wires_in[64-37];
		wires_out[38] = wires_in[64-5];
		wires_out[37] = wires_in[64-45];
		wires_out[36] = wires_in[64-13];
		wires_out[35] = wires_in[64-53];
		wires_out[34] = wires_in[64-21];
		wires_out[33] = wires_in[64-61];
		wires_out[32] = wires_in[64-29];
		wires_out[31] = wires_in[64-36];
		wires_out[30] = wires_in[64-4];
		wires_out[29] = wires_in[64-44];
		wires_out[28] = wires_in[64-12];
		wires_out[27] = wires_in[64-52];
		wires_out[26] = wires_in[64-20];
		wires_out[25] = wires_in[64-60];
		wires_out[24] = wires_in[64-28];
		wires_out[23] = wires_in[64-35];
		wires_out[22] = wires_in[64-3];
		wires_out[21] = wires_in[64-43];
		wires_out[20] = wires_in[64-11];
		wires_out[19] = wires_in[64-51];
		wires_out[18] = wires_in[64-19];
		wires_out[17] = wires_in[64-59];
		wires_out[16] = wires_in[64-27];
		wires_out[15] = wires_in[64-34];
		wires_out[14] = wires_in[64-2];
		wires_out[13] = wires_in[64-42];
		wires_out[12] = wires_in[64-10];
		wires_out[11] = wires_in[64-50];
		wires_out[10] = wires_in[64-18];
		wires_out[9]  = wires_in[64-58];
		wires_out[8]  = wires_in[64-26];
		wires_out[7]  = wires_in[64-33];
		wires_out[6]  = wires_in[64-1];
		wires_out[5]  = wires_in[64-41];
		wires_out[4]  = wires_in[64-9];
		wires_out[3]  = wires_in[64-49];
		wires_out[2]  = wires_in[64-17];
		wires_out[1]  = wires_in[64-57];
		wires_out[0]  = wires_in[64-25];
	end
	
endmodule