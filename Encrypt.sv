/***********************************************************************************************************************
 * Encrypt
 * ---------------------------------------------------------------------------------------------------------------------
 * This module will encrypt a 64-bit block of data with 16 rounds of DES.
 **********************************************************************************************************************/
module Encrypt #()(
	input  bit[63:0] plain_text,
	input  bit[63:0] key,
	output bit[63:0] cipher_text);
	
	logic [63:0] plain_text_ip;
	logic [63:0] cipher_text_round_16;
	logic [27:0] C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17;
	logic [27:0] D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17;
	logic [31:0] L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13, L14, L15, L16, L17;
	logic [31:0] R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17;
	
	IP ip_module(
		.wires_in (plain_text),
		.wires_out(plain_text_ip));
	
	Permutation_1 p1_module(
		.key(key),
		.Ci(C1),
		.Di(D1));
	
	DES_round round1(
		.mode   (1'b1),
		.round  (4'b0000),
		.Li     (plain_text_ip[32+:32]),
		.Ri     (plain_text_ip[0+:32]),
		.Ci     (C1),
		.Di     (D1),
		.Li_next(L2),
		.Ri_next(R2),
		.Ci_next(C2),
		.Di_next(D2));
		
	DES_round round2(
		.mode   (1'b1),
		.round  (4'b0001),
		.Li     (L2),
		.Ri     (R2),
		.Ci     (C2),
		.Di     (D2),
		.Li_next(L3),
		.Ri_next(R3),
		.Ci_next(C3),
		.Di_next(D3));
		
	DES_round round3(
		.mode   (1'b1),
		.round  (4'b0010),
		.Li     (L3),
		.Ri     (R3),
		.Ci     (C3),
		.Di     (D3),
		.Li_next(L4),
		.Ri_next(R4),
		.Ci_next(C4),
		.Di_next(D4));
		
	DES_round round4(
		.mode   (1'b1),
		.round  (4'b0011),
		.Li     (L4),
		.Ri     (R4),
		.Ci     (C4),
		.Di     (D4),
		.Li_next(L5),
		.Ri_next(R5),
		.Ci_next(C5),
		.Di_next(D5));
		
	DES_round round5(
		.mode   (1'b1),
		.round  (4'b0100),
		.Li     (L5),
		.Ri     (R5),
		.Ci     (C5),
		.Di     (D5),
		.Li_next(L6),
		.Ri_next(R6),
		.Ci_next(C6),
		.Di_next(D6));
		
	DES_round round6(
		.mode   (1'b1),
		.round  (4'b0101),
		.Li     (L6),
		.Ri     (R6),
		.Ci     (C6),
		.Di     (D6),
		.Li_next(L7),
		.Ri_next(R7),
		.Ci_next(C7),
		.Di_next(D7));
		
	DES_round round7(
		.mode   (1'b1),
		.round  (4'b0110),
		.Li     (L7),
		.Ri     (R7),
		.Ci     (C7),
		.Di     (D7),
		.Li_next(L8),
		.Ri_next(R8),
		.Ci_next(C8),
		.Di_next(D8));
		
	DES_round round8(
		.mode   (1'b1),
		.round  (4'b0111),
		.Li     (L8),
		.Ri     (R8),
		.Ci     (C8),
		.Di     (D8),
		.Li_next(L9),
		.Ri_next(R9),
		.Ci_next(C9),
		.Di_next(D9));
		
	DES_round round9(
		.mode   (1'b1),
		.round  (4'b1000),
		.Li     (L9),
		.Ri     (R9),
		.Ci     (C9),
		.Di     (D9),
		.Li_next(L10),
		.Ri_next(R10),
		.Ci_next(C10),
		.Di_next(D10));
		
	DES_round round10(
		.mode   (1'b1),
		.round  (4'b1001),
		.Li     (L10),
		.Ri     (R10),
		.Ci     (C10),
		.Di     (D10),
		.Li_next(L11),
		.Ri_next(R11),
		.Ci_next(C11),
		.Di_next(D11));
		
	DES_round round11(
		.mode   (1'b1),
		.round  (4'b1010),
		.Li     (L11),
		.Ri     (R11),
		.Ci     (C11),
		.Di     (D11),
		.Li_next(L12),
		.Ri_next(R12),
		.Ci_next(C12),
		.Di_next(D12));
		
	DES_round round12(
		.mode   (1'b1),
		.round  (4'b1011),
		.Li     (L12),
		.Ri     (R12),
		.Ci     (C12),
		.Di     (D12),
		.Li_next(L13),
		.Ri_next(R13),
		.Ci_next(C13),
		.Di_next(D13));
		
	DES_round round13(
		.mode   (1'b1),
		.round  (4'b1100),
		.Li     (L13),
		.Ri     (R13),
		.Ci     (C13),
		.Di     (D13),
		.Li_next(L14),
		.Ri_next(R14),
		.Ci_next(C14),
		.Di_next(D14));
		
	DES_round round14(
		.mode   (1'b1),
		.round  (4'b1101),
		.Li     (L14),
		.Ri     (R14),
		.Ci     (C14),
		.Di     (D14),
		.Li_next(L15),
		.Ri_next(R15),
		.Ci_next(C15),
		.Di_next(D15));
		
	DES_round round15(
		.mode   (1'b1),
		.round  (4'b1110),
		.Li     (L15),
		.Ri     (R15),
		.Ci     (C15),
		.Di     (D15),
		.Li_next(L16),
		.Ri_next(R16),
		.Ci_next(C16),
		.Di_next(D16));
		
	DES_round round16(
		.mode   (1'b1),
		.round  (4'b1111),
		.Li     (L16),
		.Ri     (R16),
		.Ci     (C16),
		.Di     (D16),
		.Li_next(L17),
		.Ri_next(R17),
		.Ci_next(C17),
		.Di_next(D17));

	// TODO : take the last cipher_text and assign each half in the output of the module above
	//        instead of having this combinational block below
	always_comb
	begin
		cipher_text_round_16[0+:32]  = L17;
		cipher_text_round_16[32+:32] = R17;
	end
	
	IP_Inverse ip_inverse_module(
		.wires_in (cipher_text_round_16),
		.wires_out(cipher_text));
	
	
endmodule