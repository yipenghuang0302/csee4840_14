/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */
module lt_block (
	ifc_lt_block.lt_block_dut i
);

	// LOWER TEMP MATRIX
	// logic [5:0] [5:0] [35:0] temp;

	// LOGIC GOVERNING ARRAY DIV DIVIDENDS
	always_ff @(posedge i.clk)
		if (i.en)
			case (i.count)
				8'd118: begin
					i.dividends[0] <= 27'd65536; // K_00 = 1 / L_00
					i.dividends[1] <= 27'b0;
					i.dividends[2] <= 27'b0;
					i.dividends[3] <= 27'b0;
					i.dividends[4] <= 27'b0;
					i.dividends[5] <= 27'b0;
				end
				8'd136: begin
					i.dividends[0] <= i.lt_inverse[1][0]; // K_10 = K_10 / L_11
					i.dividends[1] <= 27'd65536; // K_11 = 1 / L_11
					i.dividends[2] <= 27'b0;
					i.dividends[3] <= 27'b0;
					i.dividends[4] <= 27'b0;
					i.dividends[5] <= 27'b0;
				end
				8'd154: begin
					i.dividends[0] <= i.lt_inverse[2][0]; // K_20 = K_20 / L_22
					i.dividends[1] <= i.lt_inverse[2][1]; // K_21 = K_21 / L_22
					i.dividends[2] <= 27'd65536; // K_22 = 1 / L_22
					i.dividends[3] <= 27'b0;
					i.dividends[4] <= 27'b0;
					i.dividends[5] <= 27'b0;
				end
				8'd172: begin
					i.dividends[0] <= i.lt_inverse[3][0]; // K_30 = K_30 / L_33
					i.dividends[1] <= i.lt_inverse[3][1]; // K_31 = K_31 / L_33
					i.dividends[2] <= i.lt_inverse[3][2]; // K_32 = K_32 / L_33
					i.dividends[3] <= 27'd65536; // K_33 = 1 / L_33
					i.dividends[4] <= 27'b0;
					i.dividends[5] <= 27'b0;
				end
				8'd190: begin
					i.dividends[0] <= i.lt_inverse[4][0]; // K_40 = K_40 / L_44
					i.dividends[1] <= i.lt_inverse[4][1]; // K_41 = K_41 / L_44
					i.dividends[2] <= i.lt_inverse[4][2]; // K_42 = K_42 / L_44
					i.dividends[3] <= i.lt_inverse[4][3]; // K_43 = K_43 / L_44
					i.dividends[4] <= 27'd65536; // K_44 = 1 / L_44
					i.dividends[5] <= 27'b0;
				end
				8'd208: begin
					i.dividends[0] <= i.lt_inverse[5][0]; // K_50 = K_50 / L_55
					i.dividends[1] <= i.lt_inverse[5][1]; // K_51 = K_51 / L_55
					i.dividends[2] <= i.lt_inverse[5][2]; // K_52 = K_52 / L_55
					i.dividends[3] <= i.lt_inverse[5][3]; // K_53 = K_53 / L_55
					i.dividends[4] <= i.lt_inverse[5][4]; // K_54 = K_54 / L_55
					i.dividends[5] <= 27'd65536; // K_55 = 1 / L_55
				end
				default: begin
					i.dividends[0] <= 27'b0;
					i.dividends[1] <= 27'b0;
					i.dividends[2] <= 27'b0;
					i.dividends[3] <= 27'b0;
					i.dividends[4] <= 27'b0;
					i.dividends[5] <= 27'b0;
				end
			endcase

	// LOGIC GOVERNING ARRAY DIV DIVISOR
	// remove during integration to enable
	// fast forwarding from sqrt
	always_ff @(posedge i.clk)
		if (i.en)
			case (i.count)
				8'd118: i.divisor <= i.lt[0][0]; // i.lt[row][row]; // L_00
				8'd136: i.divisor <= i.lt[1][1]; // i.lt[row][row]; // L_11
				8'd154: i.divisor <= i.lt[2][2]; // i.lt[row][row]; // L_22
				8'd172: i.divisor <= i.lt[3][3]; // i.lt[row][row]; // L_33
				8'd190: i.divisor <= i.lt[4][4]; // i.lt[row][row]; // L_44
				8'd208: i.divisor <= i.lt[5][5]; // i.lt[row][row]; // L_55
				default: i.divisor <= 27'b0;
			endcase

	// LOGIC GOVERNING ARRAY MULT DATAA
	always_ff @(posedge i.clk)
		if (i.en)
			case (i.count)
				8'd130: begin
					i.array_mult_dataa[0] <= i.lt[1][0]; // K_10 = K_10 - L_10 * K_00
					i.array_mult_dataa[1] <= i.lt[2][0]; // K_20 = K_20 - L_20 * K_00
					i.array_mult_dataa[2] <= i.lt[3][0]; // K_30 = K_30 - L_30 * K_00
					i.array_mult_dataa[3] <= i.lt[4][0]; // K_40 = K_40 - L_40 * K_00
					i.array_mult_dataa[4] <= i.lt[5][0]; // K_50 = K_50 - L_50 * K_00
				end
				8'd148: begin
					i.array_mult_dataa[0] <= i.lt[2][1]; // K_20 = K_20 - L_21 * K_10
					i.array_mult_dataa[1] <= i.lt[3][1]; // K_30 = K_30 - L_31 * K_10
					i.array_mult_dataa[2] <= i.lt[4][1]; // K_40 = K_40 - L_41 * K_10
					i.array_mult_dataa[3] <= i.lt[5][1]; // K_50 = K_50 - L_51 * K_10
					i.array_mult_dataa[4] <= i.lt[2][1]; // K_21 = K_21 - L_21 * K_11
					i.array_mult_dataa[5] <= i.lt[3][1]; // K_31 = K_31 - L_31 * K_11
					i.array_mult_dataa[6] <= i.lt[4][1]; // K_41 = K_41 - L_41 * K_11
					i.array_mult_dataa[7] <= i.lt[5][1]; // K_51 = K_51 - L_51 * K_11
				end
				8'd166: begin
					i.array_mult_dataa[0] <= i.lt[3][2]; // K_30 = K_30 - L_32 * K_20
					i.array_mult_dataa[1] <= i.lt[4][2]; // K_40 = K_40 - L_42 * K_20
					i.array_mult_dataa[2] <= i.lt[5][2]; // K_50 = K_50 - L_52 * K_20
					i.array_mult_dataa[3] <= i.lt[3][2]; // K_31 = K_31 - L_32 * K_21
					i.array_mult_dataa[4] <= i.lt[4][2]; // K_41 = K_41 - L_42 * K_21
					i.array_mult_dataa[5] <= i.lt[5][2]; // K_51 = K_51 - L_52 * K_21
					i.array_mult_dataa[6] <= i.lt[3][2]; // K_32 = K_32 - L_32 * K_22
					i.array_mult_dataa[7] <= i.lt[4][2]; // K_42 = K_42 - L_42 * K_22
					i.array_mult_dataa[8] <= i.lt[5][2]; // K_52 = K_52 - L_52 * K_22
				end
				8'd184: begin
					i.array_mult_dataa[0] <= i.lt[4][3]; // K_40 = K_40 - L_43 * K_30
					i.array_mult_dataa[1] <= i.lt[5][3]; // K_50 = K_50 - L_53 * K_30
					i.array_mult_dataa[2] <= i.lt[4][3]; // K_41 = K_41 - L_43 * K_31
					i.array_mult_dataa[3] <= i.lt[5][3]; // K_51 = K_51 - L_53 * K_31
					i.array_mult_dataa[4] <= i.lt[4][3]; // K_42 = K_42 - L_43 * K_32
					i.array_mult_dataa[5] <= i.lt[5][3]; // K_52 = K_52 - L_53 * K_32
					i.array_mult_dataa[6] <= i.lt[4][3]; // K_43 = K_43 - L_43 * K_33
					i.array_mult_dataa[7] <= i.lt[5][3]; // K_53 = K_53 - L_53 * K_33
				end
				8'd202: begin
					i.array_mult_dataa[0] <= i.lt[5][4]; // K_50 = K_50 - L_54 * K_40
					i.array_mult_dataa[1] <= i.lt[5][4]; // K_51 = K_51 - L_54 * K_41
					i.array_mult_dataa[2] <= i.lt[5][4]; // K_52 = K_52 - L_54 * K_42
					i.array_mult_dataa[3] <= i.lt[5][4]; // K_53 = K_53 - L_54 * K_43
					i.array_mult_dataa[4] <= i.lt[5][4]; // K_54 = K_54 - L_54 * K_44
				end
				default: begin
					i.array_mult_dataa <= {15{27'b0}};
				end
			endcase

	// LOGIC GOVERNING ARRAY MULT DATAB
	always_ff @(posedge i.clk)
		if (i.en)
			case (i.count)
				8'd130: begin
					i.array_mult_datab[0] <= i.lt_inverse[0][0]; // K_10 = K_10 - L_10 * K_00
					i.array_mult_datab[1] <= i.lt_inverse[0][0]; // K_20 = K_20 - L_20 * K_00
					i.array_mult_datab[2] <= i.lt_inverse[0][0]; // K_30 = K_30 - L_30 * K_00
					i.array_mult_datab[3] <= i.lt_inverse[0][0]; // K_40 = K_40 - L_40 * K_00
					i.array_mult_datab[4] <= i.lt_inverse[0][0]; // K_50 = K_50 - L_50 * K_00
				end
				8'd148: begin
					i.array_mult_datab[0] <= i.lt_inverse[1][0]; // K_20 = K_20 - L_21 * K_10
					i.array_mult_datab[1] <= i.lt_inverse[1][0]; // K_30 = K_30 - L_31 * K_10
					i.array_mult_datab[2] <= i.lt_inverse[1][0]; // K_40 = K_40 - L_41 * K_10
					i.array_mult_datab[3] <= i.lt_inverse[1][0]; // K_50 = K_50 - L_51 * K_10
					i.array_mult_datab[4] <= i.lt_inverse[1][1]; // K_21 = K_21 - L_21 * K_11
					i.array_mult_datab[5] <= i.lt_inverse[1][1]; // K_31 = K_31 - L_31 * K_11
					i.array_mult_datab[6] <= i.lt_inverse[1][1]; // K_41 = K_41 - L_41 * K_11
					i.array_mult_datab[7] <= i.lt_inverse[1][1]; // K_51 = K_51 - L_51 * K_11
				end
				8'd166: begin
					i.array_mult_datab[0] <= i.lt_inverse[2][0]; // K_30 = K_30 - L_32 * K_20
					i.array_mult_datab[1] <= i.lt_inverse[2][0]; // K_40 = K_40 - L_42 * K_20
					i.array_mult_datab[2] <= i.lt_inverse[2][0]; // K_50 = K_50 - L_52 * K_20
					i.array_mult_datab[3] <= i.lt_inverse[2][1]; // K_31 = K_31 - L_32 * K_21
					i.array_mult_datab[4] <= i.lt_inverse[2][1]; // K_41 = K_41 - L_42 * K_21
					i.array_mult_datab[5] <= i.lt_inverse[2][1]; // K_51 = K_51 - L_52 * K_21
					i.array_mult_datab[6] <= i.lt_inverse[2][2]; // K_32 = K_32 - L_32 * K_22
					i.array_mult_datab[7] <= i.lt_inverse[2][2]; // K_42 = K_42 - L_42 * K_22
					i.array_mult_datab[8] <= i.lt_inverse[2][2]; // K_52 = K_52 - L_52 * K_22
				end
				8'd184: begin
					i.array_mult_datab[0] <= i.lt_inverse[3][0]; // K_40 = K_40 - L_43 * K_30
					i.array_mult_datab[1] <= i.lt_inverse[3][0]; // K_50 = K_50 - L_53 * K_30
					i.array_mult_datab[2] <= i.lt_inverse[3][1]; // K_41 = K_41 - L_43 * K_31
					i.array_mult_datab[3] <= i.lt_inverse[3][1]; // K_51 = K_51 - L_53 * K_31
					i.array_mult_datab[4] <= i.lt_inverse[3][2]; // K_42 = K_42 - L_43 * K_32
					i.array_mult_datab[5] <= i.lt_inverse[3][2]; // K_52 = K_52 - L_53 * K_32
					i.array_mult_datab[6] <= i.lt_inverse[3][3]; // K_43 = K_43 - L_43 * K_33
					i.array_mult_datab[7] <= i.lt_inverse[3][3]; // K_53 = K_53 - L_53 * K_33
				end
				8'd202: begin
					i.array_mult_datab[0] <= i.lt_inverse[4][0]; // K_50 = K_50 - L_54 * K_40
					i.array_mult_datab[1] <= i.lt_inverse[4][1]; // K_51 = K_51 - L_54 * K_41
					i.array_mult_datab[2] <= i.lt_inverse[4][2]; // K_52 = K_52 - L_54 * K_42
					i.array_mult_datab[3] <= i.lt_inverse[4][3]; // K_53 = K_53 - L_54 * K_43
					i.array_mult_datab[4] <= i.lt_inverse[4][4]; // K_54 = K_54 - L_54 * K_44
				end
				default: begin
					i.array_mult_datab <= {15{27'b0}};
				end
			endcase

	// LOGIC GOVERNING ARRAY DIV QUOTIENTS
	// LOGIC GOVERNING ARRAY MULT RESULT
	always_ff @(posedge i.clk)
		if (i.en)
			case (i.count)
				8'd111: begin
					// INITIALIZE LOWER TRIANGULAR INVERSE MATRIX
					i.lt_inverse <= {36{27'b0}};
				end
				8'd124: begin
					i.lt_inverse[0][0] <= i.quotients[0][26:0]; // K_00 = 1 / L_00
				end
				8'd135: begin
					i.lt_inverse[1][0] <= i.lt_inverse[1][0] - i.array_mult_result[0]; // K_10 = K_10 - L_10 * K_00
					i.lt_inverse[2][0] <= i.lt_inverse[2][0] - i.array_mult_result[1]; // K_20 = K_20 - L_20 * K_00
					i.lt_inverse[3][0] <= i.lt_inverse[3][0] - i.array_mult_result[2]; // K_30 = K_30 - L_30 * K_00
					i.lt_inverse[4][0] <= i.lt_inverse[4][0] - i.array_mult_result[3]; // K_40 = K_40 - L_40 * K_00
					i.lt_inverse[5][0] <= i.lt_inverse[5][0] - i.array_mult_result[4]; // K_50 = K_50 - L_50 * K_00
				end
				8'd142: begin
					i.lt_inverse[1][0] <= i.quotients[0]; // K_10 = K_10 / L_11
					i.lt_inverse[1][1] <= i.quotients[1]; // K_11 = 1 / L_11
				end
				8'd153: begin
					i.lt_inverse[2][0] <= i.lt_inverse[2][0] - i.array_mult_result[0]; // K_20 = K_20 - L_21 * K_10
					i.lt_inverse[3][0] <= i.lt_inverse[3][0] - i.array_mult_result[1]; // K_30 = K_30 - L_31 * K_10
					i.lt_inverse[4][0] <= i.lt_inverse[4][0] - i.array_mult_result[2]; // K_40 = K_40 - L_41 * K_10
					i.lt_inverse[5][0] <= i.lt_inverse[5][0] - i.array_mult_result[3]; // K_50 = K_50 - L_51 * K_10
					i.lt_inverse[2][1] <= i.lt_inverse[2][1] - i.array_mult_result[4]; // K_21 = K_21 - L_21 * K_11
					i.lt_inverse[3][1] <= i.lt_inverse[3][1] - i.array_mult_result[5]; // K_31 = K_31 - L_31 * K_11
					i.lt_inverse[4][1] <= i.lt_inverse[4][1] - i.array_mult_result[6]; // K_41 = K_41 - L_41 * K_11
					i.lt_inverse[5][1] <= i.lt_inverse[5][1] - i.array_mult_result[7]; // K_51 = K_51 - L_51 * K_11
				end
				8'd160: begin
					i.lt_inverse[2][0] <= i.quotients[0]; // K_20 = K_20 / L_22
					i.lt_inverse[2][1] <= i.quotients[1]; // K_21 = K_21 / L_22
					i.lt_inverse[2][2] <= i.quotients[2]; // K_22 = 1 / L_22
				end
				8'd171: begin
					i.lt_inverse[3][0] <= i.lt_inverse[3][0] - i.array_mult_result[0]; // K_30 = K_30 - L_32 * K_20
					i.lt_inverse[4][0] <= i.lt_inverse[4][0] - i.array_mult_result[1]; // K_40 = K_40 - L_42 * K_20
					i.lt_inverse[5][0] <= i.lt_inverse[5][0] - i.array_mult_result[2]; // K_50 = K_50 - L_52 * K_20
					i.lt_inverse[3][1] <= i.lt_inverse[3][1] - i.array_mult_result[3]; // K_31 = K_31 - L_32 * K_21
					i.lt_inverse[4][1] <= i.lt_inverse[4][1] - i.array_mult_result[4]; // K_41 = K_41 - L_42 * K_21
					i.lt_inverse[5][1] <= i.lt_inverse[5][1] - i.array_mult_result[5]; // K_51 = K_51 - L_52 * K_21
					i.lt_inverse[3][2] <= i.lt_inverse[3][2] - i.array_mult_result[6]; // K_32 = K_32 - L_32 * K_22
					i.lt_inverse[4][2] <= i.lt_inverse[4][2] - i.array_mult_result[7]; // K_42 = K_42 - L_42 * K_22
					i.lt_inverse[5][2] <= i.lt_inverse[5][2] - i.array_mult_result[8]; // K_52 = K_52 - L_52 * K_22
				end
				8'd178: begin
					i.lt_inverse[3][0] <= i.quotients[0]; // K_30 = K_30 / L_33
					i.lt_inverse[3][1] <= i.quotients[1]; // K_31 = K_31 / L_33
					i.lt_inverse[3][2] <= i.quotients[2]; // K_32 = K_32 / L_33
					i.lt_inverse[3][3] <= i.quotients[3]; // K_33 = 1 / L_33
				end
				8'd189: begin
					i.lt_inverse[4][0] <= i.lt_inverse[4][0] - i.array_mult_result[0]; // K_40 = K_40 - L_43 * K_30
					i.lt_inverse[5][0] <= i.lt_inverse[5][0] - i.array_mult_result[1]; // K_50 = K_50 - L_53 * K_30
					i.lt_inverse[4][1] <= i.lt_inverse[4][1] - i.array_mult_result[2]; // K_41 = K_41 - L_43 * K_31
					i.lt_inverse[5][1] <= i.lt_inverse[5][1] - i.array_mult_result[3]; // K_51 = K_51 - L_53 * K_31
					i.lt_inverse[4][2] <= i.lt_inverse[4][2] - i.array_mult_result[4]; // K_42 = K_42 - L_43 * K_32
					i.lt_inverse[5][2] <= i.lt_inverse[5][2] - i.array_mult_result[5]; // K_52 = K_52 - L_53 * K_32
					i.lt_inverse[4][3] <= i.lt_inverse[4][3] - i.array_mult_result[6]; // K_43 = K_43 - L_43 * K_33
					i.lt_inverse[5][3] <= i.lt_inverse[5][3] - i.array_mult_result[7]; // K_53 = K_53 - L_53 * K_33
				end
				8'd196: begin
					i.lt_inverse[4][0] <= i.quotients[0]; // K_40 = K_40 / L_44
					i.lt_inverse[4][1] <= i.quotients[1]; // K_41 = K_41 / L_44
					i.lt_inverse[4][2] <= i.quotients[2]; // K_42 = K_42 / L_44
					i.lt_inverse[4][3] <= i.quotients[3]; // K_43 = K_43 / L_44
					i.lt_inverse[4][4] <= i.quotients[4]; // K_44 = 1 / L_44
				end
				8'd207: begin
					i.lt_inverse[5][0] <= i.lt_inverse[5][0] - i.array_mult_result[0]; // K_50 = K_50 - L_54 * K_40
					i.lt_inverse[5][1] <= i.lt_inverse[5][1] - i.array_mult_result[1]; // K_51 = K_51 - L_54 * K_41
					i.lt_inverse[5][2] <= i.lt_inverse[5][2] - i.array_mult_result[2]; // K_52 = K_52 - L_54 * K_42
					i.lt_inverse[5][3] <= i.lt_inverse[5][3] - i.array_mult_result[3]; // K_53 = K_53 - L_54 * K_43
					i.lt_inverse[5][4] <= i.lt_inverse[5][4] - i.array_mult_result[4]; // K_54 = K_54 - L_54 * K_44
				end
				8'd214: begin
					i.lt_inverse[5][0] <= i.quotients[0]; // K_50 = K_50 / L_55
					i.lt_inverse[5][1] <= i.quotients[1]; // K_51 = K_51 / L_55
					i.lt_inverse[5][2] <= i.quotients[2]; // K_52 = K_52 / L_55
					i.lt_inverse[5][3] <= i.quotients[3]; // K_53 = K_53 / L_55
					i.lt_inverse[5][4] <= i.quotients[4]; // K_54 = K_54 / L_55
					i.lt_inverse[5][5] <= i.quotients[5]; // K_55 = 1 / L_55
				end
				default: begin
				end
			endcase

endmodule