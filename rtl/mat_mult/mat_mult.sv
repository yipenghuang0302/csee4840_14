module mat_mult (
	input clk, en, rst,
	input dataa,
	input datab,
	output result
);

	parameter n = 6;
	parameter MAX = 6;

	input logic clk, en;
	input logic [n*n-1:0] [26:0] dataa;
	input logic [n*n-1:0] [26:0] datab;
	output logic [n*n-1:0] [26:0] result;

	logic [n*n-1:0] [26:0] mult_array_dataa;
	logic [n*n-1:0] [26:0] mult_array_datab;

	mult_array #(n) mult_array (
		.clk(clk),
		.en(en),
		.dataa(mult_array_dataa),
		.datab(mult_array_datab),
		.result(mult_array_result)
	);

	logic [2:0] count;
	always_ff @(posedge clk) begin
		if ( rst ) begin
			count <= 0;
		end else if ( en ) begin
			if ( count==MAX-1'b1 ) begin
				count <= 0;
			end else begin
				count <= count + 1'b1;
			end
		end
	end

	always_comb begin
		case(count)
			3'd0: begin
				mult_array_dataa = {6{dataa[0]}, 6{dataa[6]}, 6{dataa[12]}, 6{dataa[18]}, 6{dataa[24]}, 6{dataa[30]}};
				mult_array_datab = {6{datab[0], datab[1], datab[2], datab[3], datab[4], datab[5]}};
			end
			3'd1: begin
				mult_array_dataa = {6{dataa[1]}, 6{dataa[7]}, 6{dataa[13]}, 6{dataa[19]}, 6{dataa[25]}, 6{dataa[31]}};
				mult_array_datab = {6{datab[6], datab[7], datab[8], datab[9], datab[10], datab[11]}};
			end
			3'd2: begin
				mult_array_dataa = {6{dataa[2]}, 6{dataa[8]}, 6{dataa[14]}, 6{dataa[20]}, 6{dataa[26]}, 6{dataa[32]}};
				mult_array_datab = {6{datab[12], datab[13], datab[14], datab[15], datab[16], datab[17]}};
			end
			3'd3: begin
				mult_array_dataa = {6{dataa[3]}, 6{dataa[9]}, 6{dataa[15]}, 6{dataa[21]}, 6{dataa[27]}, 6{dataa[33]}};
				mult_array_datab = {6{datab[18], datab[19], datab[20], datab[21], datab[22], datab[23]}};
			end
			3'd4: begin
				mult_array_dataa = {6{dataa[4]}, 6{dataa[10]}, 6{dataa[16]}, 6{dataa[22]}, 6{dataa[28]}, 6{dataa[34]}};
				mult_array_datab = {6{datab[24], datab[25], datab[26], datab[27], datab[28], datab[29]}};
			end
			3'd5: begin
				mult_array_dataa = {6{dataa[5]}, 6{dataa[11]}, 6{dataa[17]}, 6{dataa[23]}, 6{dataa[29]}, 6{dataa[35]}};
				mult_array_datab = {6{datab[30], datab[31], datab[32], datab[33], datab[34], datab[35]}};
			end
		endcase
	end

	always_ff @(posedge clk) begin
		if ( rst ) begin
			result <= 'd0;
		end else if ( en ) begin
			result[0] <= result[0] + mult_array_result[0];
			result[1] <= result[1] + mult_array_result[1];
			result[2] <= result[2] + mult_array_result[2];
			result[3] <= result[3] + mult_array_result[3];
			result[4] <= result[4] + mult_array_result[4];
			result[5] <= result[5] + mult_array_result[5];
			result[6] <= result[6] + mult_array_result[6];
			result[7] <= result[7] + mult_array_result[7];
			result[8] <= result[8] + mult_array_result[8];
			result[9] <= result[9] + mult_array_result[9];
			result[10] <= result[10] + mult_array_result[10];
			result[11] <= result[11] + mult_array_result[11];
			result[12] <= result[12] + mult_array_result[12];
			result[13] <= result[13] + mult_array_result[13];
			result[14] <= result[14] + mult_array_result[14];
			result[15] <= result[15] + mult_array_result[15];
			result[16] <= result[16] + mult_array_result[16];
			result[17] <= result[17] + mult_array_result[17];
			result[18] <= result[18] + mult_array_result[18];
			result[19] <= result[19] + mult_array_result[19];
			result[20] <= result[20] + mult_array_result[20];
			result[21] <= result[21] + mult_array_result[21];
			result[22] <= result[22] + mult_array_result[22];
			result[23] <= result[23] + mult_array_result[23];
			result[24] <= result[24] + mult_array_result[24];
			result[25] <= result[25] + mult_array_result[25];
			result[26] <= result[26] + mult_array_result[26];
			result[27] <= result[27] + mult_array_result[27];
			result[28] <= result[28] + mult_array_result[28];
			result[29] <= result[29] + mult_array_result[29];
			result[30] <= result[30] + mult_array_result[30];
			result[31] <= result[31] + mult_array_result[31];
			result[32] <= result[32] + mult_array_result[32];
			result[33] <= result[33] + mult_array_result[33];
			result[34] <= result[34] + mult_array_result[34];
			result[35] <= result[35] + mult_array_result[35];
		end
	end

endmodule