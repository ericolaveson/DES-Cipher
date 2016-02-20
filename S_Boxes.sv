//**********************************************************************************************************************
//* 
//* --------------------------------------------------------------------------------------------------------------------
//* 
//**********************************************************************************************************************
`include "Definitions.sv"

module S_Boxes #()(
	input  bit [47:0] wires_in,
	output bit [31:0] wires_out);

	
	S_Box_1 box1(
		.wires_in (wires_in [42-0+:6]),
		.wires_out(wires_out[28-0+:4]));
		
	S_Box_2 box2(
		.wires_in (wires_in [42-6+:6]),
		.wires_out(wires_out[28-4+:4]));
		
	S_Box_3 box3(
		.wires_in (wires_in [42-12+:6]),
		.wires_out(wires_out[28-8+:4]));
		
	S_Box_4 box4(
		.wires_in (wires_in [42-18+:6]),
		.wires_out(wires_out[28-12+:4]));
		
	S_Box_5 box5(
		.wires_in (wires_in [42-24+:6]),
		.wires_out(wires_out[28-16+:4]));
		
	S_Box_6 box6(
		.wires_in (wires_in [42-30+:6]),
		.wires_out(wires_out[28-20+:4]));
		
	S_Box_7 box7(
		.wires_in (wires_in [42-36+:6]),
		.wires_out(wires_out[28-24+:4]));
		
	S_Box_8 box8(
		.wires_in (wires_in [42-42+:6]),
		.wires_out(wires_out[28-28+:4]));

		
endmodule