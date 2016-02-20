//**********************************************************************************************************************
//* 
//* --------------------------------------------------------------------------------------------------------------------
//* 
//**********************************************************************************************************************
module S_Box_8 #()(
	input  bit [5:0] wires_in,
	output bit [3:0] wires_out);
	
	always_comb
	begin
		unique casez (wires_in)
			6'b000000: wires_out = 'd13;
			6'b000001: wires_out = 'd1;
			6'b000010: wires_out = 'd2;
			6'b000011: wires_out = 'd15;
			6'b000100: wires_out = 'd8;
			6'b000101: wires_out = 'd13;
			6'b000110: wires_out = 'd4;
			6'b000111: wires_out = 'd8;
			6'b001000: wires_out = 'd6;
			6'b001001: wires_out = 'd10;
			6'b001010: wires_out = 'd15;
			6'b001011: wires_out = 'd3;
			6'b001100: wires_out = 'd11;
			6'b001101: wires_out = 'd7;
			6'b001110: wires_out = 'd1;
			6'b001111: wires_out = 'd4;
			6'b010000: wires_out = 'd10;
			6'b010001: wires_out = 'd12;
			6'b010010: wires_out = 'd9;
			6'b010011: wires_out = 'd5;
			6'b010100: wires_out = 'd3;
			6'b010101: wires_out = 'd6;
			6'b010110: wires_out = 'd14;
			6'b010111: wires_out = 'd11;
			6'b011000: wires_out = 'd5;
			6'b011001: wires_out = 'd0;
			6'b011010: wires_out = 'd0;
			6'b011011: wires_out = 'd14;
			6'b011100: wires_out = 'd12;
			6'b011101: wires_out = 'd9;
			6'b011110: wires_out = 'd7;
			6'b011111: wires_out = 'd2;
			6'b100000: wires_out = 'd7;
			6'b100001: wires_out = 'd2;
			6'b100010: wires_out = 'd11;
			6'b100011: wires_out = 'd1;
			6'b100100: wires_out = 'd4;
			6'b100101: wires_out = 'd14;
			6'b100110: wires_out = 'd1;
			6'b100111: wires_out = 'd7;
			6'b101000: wires_out = 'd9;
			6'b101001: wires_out = 'd4;
			6'b101010: wires_out = 'd12;
			6'b101011: wires_out = 'd10;
			6'b101100: wires_out = 'd14;
			6'b101101: wires_out = 'd8;
			6'b101110: wires_out = 'd2;
			6'b101111: wires_out = 'd13;
			6'b110000: wires_out = 'd0;
			6'b110001: wires_out = 'd15;
			6'b110010: wires_out = 'd6;
			6'b110011: wires_out = 'd12;
			6'b110100: wires_out = 'd10;
			6'b110101: wires_out = 'd9;
			6'b110110: wires_out = 'd13;
			6'b110111: wires_out = 'd0;
			6'b111000: wires_out = 'd15;
			6'b111001: wires_out = 'd3;
			6'b111010: wires_out = 'd3;
			6'b111011: wires_out = 'd5;
			6'b111100: wires_out = 'd5;
			6'b111101: wires_out = 'd6;
			6'b111110: wires_out = 'd8;
			6'b111111: wires_out = 'd11;
			default: begin end
		endcase
	end
	
endmodule