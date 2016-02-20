/***********************************************************************************************************************
 * Right_Shifter
 * ---------------------------------------------------------------------------------------------------------------------
 * This module will perform the key rotations for the corresponding DES round.
 **********************************************************************************************************************/
module Right_Shifter #()(
	input  bit[3:0]  round,
	input  bit[27:0] Ci,
	input  bit[27:0] Di,
	output bit[27:0] Ci_shift,
	output bit[27:0] Di_shift);
	
	
	always_comb
	begin
		unique casez (round)
		
			4'b1111:
			begin
				Ci_shift = Ci;
				Di_shift = Di;
			end
		
			4'b1110, 4'b0111, 4'b0000:
			begin
				// right rotate once (both Ci & Di)
				Ci_shift[27+:1] = Ci[0+:1];
				Ci_shift[0+:27] = Ci[1+:27];
				
				Di_shift[27+:1] = Di[0+:1];
				Di_shift[0+:27] = Di[1+:27];
			end
			
			4'b1101, 4'b1100, 4'b1011, 4'b1010, 4'b1001, 4'b1000, 4'b0110, 4'b0101, 4'b0100, 4'b0011, 4'b0010, 4'b0001:
			begin
				// right rotate twice (both Ci & Di)
				Ci_shift[26+:2] = Ci[0+:2];
				Ci_shift[0+:26] = Ci[2+:26];
				
				Di_shift[26+:2] = Di[0+:2];
				Di_shift[0+:26] = Di[2+:26];
			end
			
			default: begin end
		endcase
	end
	
	
endmodule