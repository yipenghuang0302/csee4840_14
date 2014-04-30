/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module cholesky (
	ifc_cholesky.cholesky i
);

	// LOGIC GOVERNING ROW COUNTER
	logic [2:0] row;
	always_ff @(posedge i.clk) begin
		case (i.count)
			8'd111: row <= 3'd0;
			8'd129: row <= 3'd1;
			8'd147: row <= 3'd2;
			8'd165: row <= 3'd3;
			8'd183: row <= 3'd4;
			8'd201: row <= 3'd5;
			default: row <= row;
		endcase
	end

	// LOWER TEMP MATRIX
	logic [5:0] [5:0] [26:0] temp;

	// INSTANTITATE THE SQRT
	ifc_sqrt_27 ifc_sqrt_27 (i.clk);
	assign ifc_sqrt_27.en = i.en;
	assign ifc_sqrt_27.rst = i.rst;
	assign ifc_sqrt_27.q[26:14] = 13'b0;
	logic [14:0] remainder;
	sqrt_27 sqrt_27_inst (
		.clk ( ifc_sqrt_27.clk ),
		.ena ( ifc_sqrt_27.en ),
		.radical ( { ifc_sqrt_27.radical[18:0], 8'b0 } ),
		.q ( ifc_sqrt_27.q[13:0] ),
		.remainder ( remainder )
	);

	// LOGIC GOVERNING SQRT RADICAL
	// L_xx = sqrt(A_xx)
	always_ff @(posedge i.clk) begin
		if (
			i.count==8'd112 || i.count==8'd130 || i.count==8'd148 ||
			i.count==8'd166 || i.count==8'd184 || i.count==8'd202
		)
			ifc_sqrt_27.radical <= temp[row][row];
		else 
		 	ifc_sqrt_27.radical <= 27'b0;
	end

	// LOGIC GOVERNING SQRT Q
	// L_xx = sqrt(A_xx)
	// LOGIC GOVERNING ARRAY DIV QUOTIENTS
	always_ff @(posedge i.clk) begin
		case (i.count)
			8'd111: begin
				// INITIALIZE LOWER TRIANGULAR MATRIX
				i.lt <= {36{27'b0}};
			end
			8'd118: begin
				i.lt[0][0] <= ifc_sqrt_27.q;
			end
			8'd124: begin
				i.lt[1][0] <= i.quotients[1]; // L_10 = A_10 / L_00
				i.lt[2][0] <= i.quotients[2]; // L_20 = A_20 / L_00
				i.lt[3][0] <= i.quotients[3]; // L_30 = A_30 / L_00
				i.lt[4][0] <= i.quotients[4]; // L_40 = A_40 / L_00
				i.lt[5][0] <= i.quotients[5]; // L_50 = A_50 / L_00
			end
			8'd136: begin
				i.lt[1][1] <= ifc_sqrt_27.q;
			end
			8'd142: begin
				i.lt[2][1] <= i.quotients[2]; // L_21 = A_21 / L_11
				i.lt[3][1] <= i.quotients[3]; // L_31 = A_31 / L_11
				i.lt[4][1] <= i.quotients[4]; // L_41 = A_41 / L_11
				i.lt[5][1] <= i.quotients[5]; // L_51 = A_51 / L_11
			end
			8'd154: begin
				i.lt[2][2] <= ifc_sqrt_27.q;
			end
			8'd160: begin
				i.lt[3][2] <= i.quotients[3]; // L_32 = A_32 / L_22
				i.lt[4][2] <= i.quotients[4]; // L_42 = A_42 / L_22
				i.lt[5][2] <= i.quotients[5]; // L_52 = A_52 / L_22
			end
			8'd172: begin
				i.lt[3][3] <= ifc_sqrt_27.q;
			end
			8'd178: begin
				i.lt[4][3] <= i.quotients[4]; // L_43 = A_43 / L_33
				i.lt[5][3] <= i.quotients[5]; // L_53 = A_53 / L_33
			end
			8'd190: begin
				i.lt[4][4] <= ifc_sqrt_27.q;
			end
			8'd196: begin
				i.lt[5][4] <= i.quotients[5]; // L_54 = A_54 / L_44
			end
			8'd208: begin
				i.lt[5][5] <= ifc_sqrt_27.q;
			end
			default: begin
			end
		endcase
	end

	// LOGIC GOVERNING ARRAY DIV DIVIDENDS
	always_ff @(posedge i.clk) begin
		case (i.count)
			8'd118: begin
				i.dividends[0] <= 27'b0;
				i.dividends[1] <= temp[1][0]; // L_10 = A_10 / L_00
				i.dividends[2] <= temp[2][0]; // L_20 = A_20 / L_00
				i.dividends[3] <= temp[3][0]; // L_30 = A_30 / L_00
				i.dividends[4] <= temp[4][0]; // L_40 = A_40 / L_00
				i.dividends[5] <= temp[5][0]; // L_50 = A_50 / L_00
			end
			8'd136: begin
				i.dividends[0] <= 27'b0;
				i.dividends[1] <= 27'b0;
				i.dividends[2] <= temp[2][1]; // L_21 = A_21 / L_11
				i.dividends[3] <= temp[3][1]; // L_31 = A_31 / L_11
				i.dividends[4] <= temp[4][1]; // L_41 = A_41 / L_11
				i.dividends[5] <= temp[5][1]; // L_51 = A_51 / L_11
			end
			8'd154: begin
				i.dividends[0] <= 27'b0;
				i.dividends[1] <= 27'b0;
				i.dividends[2] <= 27'b0;
				i.dividends[3] <= temp[3][2]; // L_32 = A_32 / L_22
				i.dividends[4] <= temp[4][2]; // L_42 = A_42 / L_22
				i.dividends[5] <= temp[5][2]; // L_52 = A_52 / L_22
			end
			8'd172: begin
				i.dividends[0] <= 27'b0;
				i.dividends[1] <= 27'b0;
				i.dividends[2] <= 27'b0;
				i.dividends[3] <= 27'b0;
				i.dividends[4] <= temp[4][3]; // L_43 = A_43 / L_33
				i.dividends[5] <= temp[5][3]; // L_53 = A_53 / L_33
			end
			8'd190: begin
				i.dividends[0] <= 27'b0;
				i.dividends[1] <= 27'b0;
				i.dividends[2] <= 27'b0;
				i.dividends[3] <= 27'b0;
				i.dividends[4] <= 27'b0;
				i.dividends[5] <= temp[5][4]; // L_54 = A_54 / L_44
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
	end

	// LOGIC GOVERNING ARRAY DIV DIVISOR
	// fast forwarding from sqrt
	always_ff @(posedge i.clk) begin
		case (i.count)
			8'd118: i.divisor <= ifc_sqrt_27.q; // i.lt[row][row]; // L_00
			8'd136: i.divisor <= ifc_sqrt_27.q; // i.lt[row][row]; // L_11
			8'd154: i.divisor <= ifc_sqrt_27.q; // i.lt[row][row]; // L_22
			8'd172: i.divisor <= ifc_sqrt_27.q; // i.lt[row][row]; // L_33
			8'd190: i.divisor <= ifc_sqrt_27.q; // i.lt[row][row]; // L_44
			default: i.divisor <= 27'b0;
		endcase
	end

	// LOGIC GOVERNING ARRAY MULT DATAA
	// fast forwarding from array div
	always_ff @(posedge i.clk) begin
		case (i.count)
			8'd124: begin
	 			i.array_mult_dataa[0] <= i.quotients[1]; // A_11 = A_11 - L_10 * L_01 = A_11 - L_10 * L_10
				i.array_mult_dataa[1] <= i.quotients[2]; // A_21 = A_21 - L_20 * L_01 = A_21 - L_20 * L_10
				i.array_mult_dataa[2] <= i.quotients[2]; // A_22 = A_22 - L_20 * L_02 = A_22 - L_20 * L_20
				i.array_mult_dataa[3] <= i.quotients[3]; // A_31 = A_31 - L_30 * L_01 = A_31 - L_30 * L_10
				i.array_mult_dataa[4] <= i.quotients[3]; // A_32 = A_32 - L_30 * L_02 = A_32 - L_30 * L_20
				i.array_mult_dataa[5] <= i.quotients[3]; // A_33 = A_33 - L_30 * L_03 = A_33 - L_30 * L_30
				i.array_mult_dataa[6] <= i.quotients[4]; // A_41 = A_41 - L_40 * L_01 = A_41 - L_40 * L_10
				i.array_mult_dataa[7] <= i.quotients[4]; // A_42 = A_42 - L_40 * L_02 = A_42 - L_40 * L_20
				i.array_mult_dataa[8] <= i.quotients[4]; // A_43 = A_43 - L_40 * L_03 = A_43 - L_40 * L_30
				i.array_mult_dataa[9] <= i.quotients[4]; // A_44 = A_44 - L_40 * L_04 = A_44 - L_40 * L_40
				i.array_mult_dataa[10] <= i.quotients[5]; // A_51 = A_51 - L_50 * L_01 = A_51 - L_50 * L_10
				i.array_mult_dataa[11] <= i.quotients[5]; // A_52 = A_52 - L_50 * L_02 = A_52 - L_50 * L_20
				i.array_mult_dataa[12] <= i.quotients[5]; // A_53 = A_53 - L_50 * L_03 = A_53 - L_50 * L_30
				i.array_mult_dataa[13] <= i.quotients[5]; // A_54 = A_54 - L_50 * L_04 = A_54 - L_50 * L_40
				i.array_mult_dataa[14] <= i.quotients[5]; // A_55 = A_55 - L_50 * L_05 = A_55 - L_50 * L_50
			end
			8'd142: begin
				i.array_mult_dataa[0] <= i.quotients[2]; // A_22 = A_22 - L_21 * L_12 = A_22 - L_21 * L_21
				i.array_mult_dataa[1] <= i.quotients[3]; // A_32 = A_32 - L_31 * L_12 = A_32 - L_31 * L_21
				i.array_mult_dataa[2] <= i.quotients[3]; // A_33 = A_33 - L_31 * L_13 = A_33 - L_31 * L_31
				i.array_mult_dataa[3] <= i.quotients[4]; // A_42 = A_42 - L_41 * L_12 = A_42 - L_41 * L_21
				i.array_mult_dataa[4] <= i.quotients[4]; // A_43 = A_43 - L_41 * L_13 = A_43 - L_41 * L_31
				i.array_mult_dataa[5] <= i.quotients[4]; // A_44 = A_44 - L_41 * L_14 = A_44 - L_41 * L_41
				i.array_mult_dataa[6] <= i.quotients[5]; // A_52 = A_52 - L_51 * L_12 = A_52 - L_51 * L_21
				i.array_mult_dataa[7] <= i.quotients[5]; // A_53 = A_53 - L_51 * L_13 = A_53 - L_51 * L_31
				i.array_mult_dataa[8] <= i.quotients[5]; // A_54 = A_54 - L_51 * L_14 = A_54 - L_51 * L_41
				i.array_mult_dataa[9] <= i.quotients[5]; // A_55 = A_55 - L_51 * L_15 = A_55 - L_51 * L_51
			end
			8'd160: begin
				i.array_mult_dataa[0] <= i.quotients[3]; // A_33 = A_33 - L_32 * L_23 = A_33 - L_32 * L_32
				i.array_mult_dataa[1] <= i.quotients[4]; // A_43 = A_43 - L_42 * L_23 = A_43 - L_42 * L_32
				i.array_mult_dataa[2] <= i.quotients[4]; // A_44 = A_44 - L_42 * L_24 = A_44 - L_42 * L_42
				i.array_mult_dataa[3] <= i.quotients[5]; // A_53 = A_53 - L_52 * L_23 = A_53 - L_52 * L_32
				i.array_mult_dataa[4] <= i.quotients[5]; // A_54 = A_54 - L_52 * L_24 = A_54 - L_52 * L_42
				i.array_mult_dataa[5] <= i.quotients[5]; // A_55 = A_55 - L_52 * L_25 = A_55 - L_52 * L_52 
			end
			8'd178: begin
				i.array_mult_dataa[0] <= i.quotients[4]; // A_44 = A_44 - L_43 * L_34 = A_44 - L_43 * L_43
				i.array_mult_dataa[1] <= i.quotients[5]; // A_54 = A_54 - L_53 * L_34 = A_54 - L_53 * L_43
				i.array_mult_dataa[2] <= i.quotients[5]; // A_55 = A_55 - L_53 * L_35 = A_55 - L_53 * L_53
			end
			8'd196: begin
				i.array_mult_dataa[0] <= i.quotients[5]; // A_55 = A_55 - L_54 * L_45 = A_55 - L_54 * L_54
			end
			default: begin
				i.array_mult_dataa <= {15{27'b0}};
			end
		endcase
	end

	// LOGIC GOVERNING ARRAY MULT DATAB
	// fast forwarding from array div
	always_ff @(posedge i.clk) begin
		case (i.count)
			8'd124: begin
	 			i.array_mult_datab[0] <= i.quotients[1]; // A_11 = A_11 - L_10 * L_01 = A_11 - L_10 * L_10
				i.array_mult_datab[1] <= i.quotients[1]; // A_21 = A_21 - L_20 * L_01 = A_21 - L_20 * L_10
				i.array_mult_datab[2] <= i.quotients[2]; // A_22 = A_22 - L_20 * L_02 = A_22 - L_20 * L_20
				i.array_mult_datab[3] <= i.quotients[1]; // A_31 = A_31 - L_30 * L_01 = A_31 - L_30 * L_10
				i.array_mult_datab[4] <= i.quotients[2]; // A_32 = A_32 - L_30 * L_02 = A_32 - L_30 * L_20
				i.array_mult_datab[5] <= i.quotients[3]; // A_33 = A_33 - L_30 * L_03 = A_33 - L_30 * L_30
				i.array_mult_datab[6] <= i.quotients[1]; // A_41 = A_41 - L_40 * L_01 = A_41 - L_40 * L_10
				i.array_mult_datab[7] <= i.quotients[2]; // A_42 = A_42 - L_40 * L_02 = A_42 - L_40 * L_20
				i.array_mult_datab[8] <= i.quotients[3]; // A_43 = A_43 - L_40 * L_03 = A_43 - L_40 * L_30
				i.array_mult_datab[9] <= i.quotients[4]; // A_44 = A_44 - L_40 * L_04 = A_44 - L_40 * L_40
				i.array_mult_datab[10] <= i.quotients[1]; // A_51 = A_51 - L_50 * L_01 = A_51 - L_50 * L_10
				i.array_mult_datab[11] <= i.quotients[2]; // A_52 = A_52 - L_50 * L_02 = A_52 - L_50 * L_20
				i.array_mult_datab[12] <= i.quotients[3]; // A_53 = A_53 - L_50 * L_03 = A_53 - L_50 * L_30
				i.array_mult_datab[13] <= i.quotients[4]; // A_54 = A_54 - L_50 * L_04 = A_54 - L_50 * L_40
				i.array_mult_datab[14] <= i.quotients[5]; // A_55 = A_55 - L_50 * L_05 = A_55 - L_50 * L_50
			end
			8'd142: begin
				i.array_mult_datab[0] <= i.quotients[2]; // A_22 = A_22 - L_21 * L_12 = A_22 - L_21 * L_21
				i.array_mult_datab[1] <= i.quotients[2]; // A_32 = A_32 - L_31 * L_12 = A_32 - L_31 * L_21
				i.array_mult_datab[2] <= i.quotients[3]; // A_33 = A_33 - L_31 * L_13 = A_33 - L_31 * L_31
				i.array_mult_datab[3] <= i.quotients[2]; // A_42 = A_42 - L_41 * L_12 = A_42 - L_41 * L_21
				i.array_mult_datab[4] <= i.quotients[3]; // A_43 = A_43 - L_41 * L_13 = A_43 - L_41 * L_31
				i.array_mult_datab[5] <= i.quotients[4]; // A_44 = A_44 - L_41 * L_14 = A_44 - L_41 * L_41
				i.array_mult_datab[6] <= i.quotients[2]; // A_52 = A_52 - L_51 * L_12 = A_52 - L_51 * L_21
				i.array_mult_datab[7] <= i.quotients[3]; // A_53 = A_53 - L_51 * L_13 = A_53 - L_51 * L_31
				i.array_mult_datab[8] <= i.quotients[4]; // A_54 = A_54 - L_51 * L_14 = A_54 - L_51 * L_41
				i.array_mult_datab[9] <= i.quotients[5]; // A_55 = A_55 - L_51 * L_15 = A_55 - L_51 * L_51
			end
			8'd160: begin
				i.array_mult_datab[0] <= i.quotients[3]; // A_33 = A_33 - L_32 * L_23 = A_33 - L_32 * L_32
				i.array_mult_datab[1] <= i.quotients[3]; // A_43 = A_43 - L_42 * L_23 = A_43 - L_42 * L_32
				i.array_mult_datab[2] <= i.quotients[4]; // A_44 = A_44 - L_42 * L_24 = A_44 - L_42 * L_42
				i.array_mult_datab[3] <= i.quotients[3]; // A_53 = A_53 - L_52 * L_23 = A_53 - L_52 * L_32
				i.array_mult_datab[4] <= i.quotients[4]; // A_54 = A_54 - L_52 * L_24 = A_54 - L_52 * L_42
				i.array_mult_datab[5] <= i.quotients[5]; // A_55 = A_55 - L_52 * L_25 = A_55 - L_52 * L_52 
			end
			8'd178: begin
				i.array_mult_datab[0] <= i.quotients[4]; // A_44 = A_44 - L_43 * L_34 = A_44 - L_43 * L_43
				i.array_mult_datab[1] <= i.quotients[4]; // A_54 = A_54 - L_53 * L_34 = A_54 - L_53 * L_43
				i.array_mult_datab[2] <= i.quotients[5]; // A_55 = A_55 - L_53 * L_35 = A_55 - L_53 * L_53
			end
			8'd196: begin
				i.array_mult_datab[0] <= i.quotients[5]; // A_55 = A_55 - L_54 * L_45 = A_55 - L_54 * L_54
			end
			default: begin
				i.array_mult_datab <= {15{27'b0}};
			end
		endcase
	end

	// LOGIC GOVERNING ARRAY MULT RESULT
	always_ff @(posedge i.clk) begin
		case (i.count)
			8'd111: begin
				// INITIALIZE LOWER TEMP MATRIX
				temp <= i.matrix;
			end
			8'd129: begin
				temp[1][1] <= temp[1][1] - i.array_mult_result[0]; // A_11 = A_11 - L_10 * L_01 = A_11 - L_10 * L_10
				temp[2][1] <= temp[2][1] - i.array_mult_result[1]; // A_21 = A_21 - L_20 * L_01 = A_21 - L_20 * L_10
				temp[2][2] <= temp[2][2] - i.array_mult_result[2]; // A_22 = A_22 - L_20 * L_02 = A_22 - L_20 * L_20
				temp[3][1] <= temp[3][1] - i.array_mult_result[3]; // A_31 = A_31 - L_30 * L_01 = A_31 - L_30 * L_10
				temp[3][2] <= temp[3][2] - i.array_mult_result[4]; // A_32 = A_32 - L_30 * L_02 = A_32 - L_30 * L_20
				temp[3][3] <= temp[3][3] - i.array_mult_result[5]; // A_33 = A_33 - L_30 * L_03 = A_33 - L_30 * L_30
				temp[4][1] <= temp[4][1] - i.array_mult_result[6]; // A_41 = A_41 - L_40 * L_01 = A_41 - L_40 * L_10
				temp[4][2] <= temp[4][2] - i.array_mult_result[7]; // A_42 = A_42 - L_40 * L_02 = A_42 - L_40 * L_20
				temp[4][3] <= temp[4][3] - i.array_mult_result[8]; // A_43 = A_43 - L_40 * L_03 = A_43 - L_40 * L_30
				temp[4][4] <= temp[4][4] - i.array_mult_result[9]; // A_44 = A_44 - L_40 * L_04 = A_44 - L_40 * L_40
				temp[5][1] <= temp[5][1] - i.array_mult_result[10]; // A_51 = A_51 - L_50 * L_01 = A_51 - L_50 * L_10
				temp[5][2] <= temp[5][2] - i.array_mult_result[11]; // A_52 = A_52 - L_50 * L_02 = A_52 - L_50 * L_20
				temp[5][3] <= temp[5][3] - i.array_mult_result[12]; // A_53 = A_53 - L_50 * L_03 = A_53 - L_50 * L_30
				temp[5][4] <= temp[5][4] - i.array_mult_result[13]; // A_54 = A_54 - L_50 * L_04 = A_54 - L_50 * L_40
				temp[5][5] <= temp[5][5] - i.array_mult_result[14]; // A_55 = A_55 - L_50 * L_05 = A_55 - L_50 * L_50
			end
			8'd147: begin
				temp[2][2] <= temp[2][2] - i.array_mult_result[0]; // A_22 = A_22 - L_21 * L_12 = A_22 - L_21 * L_21
				temp[3][2] <= temp[3][2] - i.array_mult_result[1]; // A_32 = A_32 - L_31 * L_12 = A_32 - L_31 * L_21
				temp[3][3] <= temp[3][3] - i.array_mult_result[2]; // A_33 = A_33 - L_31 * L_13 = A_33 - L_31 * L_31
				temp[4][2] <= temp[4][2] - i.array_mult_result[3]; // A_42 = A_42 - L_41 * L_12 = A_42 - L_41 * L_21
				temp[4][3] <= temp[4][3] - i.array_mult_result[4]; // A_43 = A_43 - L_41 * L_13 = A_43 - L_41 * L_31
				temp[4][4] <= temp[4][4] - i.array_mult_result[5]; // A_44 = A_44 - L_41 * L_14 = A_44 - L_41 * L_41
				temp[5][2] <= temp[5][2] - i.array_mult_result[6]; // A_52 = A_52 - L_51 * L_12 = A_52 - L_51 * L_21
				temp[5][3] <= temp[5][3] - i.array_mult_result[7]; // A_53 = A_53 - L_51 * L_13 = A_53 - L_51 * L_31
				temp[5][4] <= temp[5][4] - i.array_mult_result[8]; // A_54 = A_54 - L_51 * L_14 = A_54 - L_51 * L_41
				temp[5][5] <= temp[5][5] - i.array_mult_result[9]; // A_55 = A_55 - L_51 * L_15 = A_55 - L_51 * L_51
			end
			8'd165: begin
				temp[3][3] <= temp[3][3] - i.array_mult_result[0]; // A_33 = A_33 - L_32 * L_23 = A_33 - L_32 * L_32
				temp[4][3] <= temp[4][3] - i.array_mult_result[1]; // A_43 = A_43 - L_42 * L_23 = A_43 - L_42 * L_32
				temp[4][4] <= temp[4][4] - i.array_mult_result[2]; // A_44 = A_44 - L_42 * L_24 = A_44 - L_42 * L_42
				temp[5][3] <= temp[5][3] - i.array_mult_result[3]; // A_53 = A_53 - L_52 * L_23 = A_53 - L_52 * L_32
				temp[5][4] <= temp[5][4] - i.array_mult_result[4]; // A_54 = A_54 - L_52 * L_24 = A_54 - L_52 * L_42
				temp[5][5] <= temp[5][5] - i.array_mult_result[5]; // A_55 = A_55 - L_52 * L_25 = A_55 - L_52 * L_52 
			end
			8'd183: begin
				temp[4][4] <= temp[4][4] - i.array_mult_result[0]; // A_44 = A_44 - L_43 * L_34 = A_44 - L_43 * L_43
				temp[5][4] <= temp[5][4] - i.array_mult_result[1]; // A_54 = A_54 - L_53 * L_34 = A_54 - L_53 * L_43
				temp[5][5] <= temp[5][5] - i.array_mult_result[2]; // A_55 = A_55 - L_53 * L_35 = A_55 - L_53 * L_53
			end
			8'd201: begin
				temp[5][5] <= temp[5][5] - i.array_mult_result[0]; // A_55 = A_55 - L_54 * L_45 = A_55 - L_54 * L_54
			end
			default: begin
			end
		endcase
	end

endmodule