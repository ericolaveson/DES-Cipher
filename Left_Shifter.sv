/***********************************************************************************************************************
 * Left_Shifter
 * ---------------------------------------------------------------------------------------------------------------------
 * This module will perform the key rotations for the corresponding DES round.
 **********************************************************************************************************************/
module Left_Shifter #()(
	input  bit[3:0]  round,
	input  bit[27:0] Ci,
	input  bit[27:0] Di,
	output bit[27:0] Ci_shift,
	output bit[27:0] Di_shift);
	
	
	always_comb
	begin
		unique casez (round)
		
			//  1st     2nd     9th    16th
			4'b0000,4'b0001,4'b1000,4'b1111:
			begin
				// left rotate once (both Ci & Di)
				Ci_shift[0+:1]  = Ci[27+:1];
				Ci_shift[1+:27] = Ci[0+:27];
				
				Di_shift[0+:1]  = Di[27+:1];
				Di_shift[1+:27] = Di[0+:27];
			end
			
			//  3rd     4th     5th     6th     7th     8th    10th    11th    12th    13th    14th    15th
			4'b0010,4'b0011,4'b0100,4'b0101,4'b0110,4'b0111,4'b1001,4'b1010,4'b1011,4'b1100,4'b1101,4'b1110:
			begin
				// left rotate twice (both Ci & Di)
				Ci_shift[0+:2]  = Ci[26+:2];
				Ci_shift[2+:26] = Ci[0+:26];
				
				Di_shift[0+:2]  = Di[26+:2];
				Di_shift[2+:26] = Di[0+:26];
			end
			
			default: begin end
		endcase
	end
	
endmodule