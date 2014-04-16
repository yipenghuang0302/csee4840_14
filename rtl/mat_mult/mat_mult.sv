/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`include "mult_array.sv"

module mat_mult (
	ifc_mat_mult.mat_mult i
);

	parameter n = 2;
	// parameter MAX = 12;
	parameter MAX = 2;

	logic [n-1:0] [n-1:0] [26:0] mult_array_dataa;
	logic [n-1:0] [n-1:0] [26:0] mult_array_datab;
	logic [n-1:0] [n-1:0] [26:0] mult_array_result;

	mult_array #(n) mult_array (
		.clk(i.clk),
		.en(i.en),
		.dataa(mult_array_dataa),
		.datab(mult_array_datab),
		.result(mult_array_result)
	);

	// LOGIC GOVERNING COUNT
	logic [3:0] count;
	always_ff @(posedge i.clk) begin
		if ( i.rst || !i.mat_mode ) begin // if parallel multiplier mode, clear counter
			count <= 0;
		end else if ( i.en && i.mat_mode ) begin
			if ( count==MAX-1'b1 ) begin
				count <= 0;
			end else begin
				count <= count + 1'b1;
			end
		end
	end

	// LOGIC GOVERNING MULT_ARRAY_DATAA/B
	always_ff @(posedge i.clk) begin
		case(i.mat_mode)
			1'b0: begin // parallel multiplier mode
				mult_array_dataa <= i.dataa;
				mult_array_datab <= i.datab;
			end
			1'b1: begin // matrix multiplier mode
				case(count)
					// 4'd0: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][5]}}, {6{i.dataa[4][5]}}, {6{i.dataa[3][5]}}, {6{i.dataa[2][5]}}, {6{i.dataa[1][5]}}, {6{i.dataa[0][5]}}};
					// 	mult_array_datab <= {6{i.datab[5][5], i.datab[5][4], i.datab[5][3], i.datab[5][2], i.datab[5][1], i.datab[5][0]}};
					// end
					// 4'd1: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][4]}}, {6{i.dataa[4][4]}}, {6{i.dataa[3][4]}}, {6{i.dataa[2][4]}}, {6{i.dataa[1][4]}}, {6{i.dataa[0][4]}}};
					// 	mult_array_datab <= {6{i.datab[4][5], i.datab[4][4], i.datab[4][3], i.datab[4][2], i.datab[4][1], i.datab[4][0]}};
					// end
					// 4'd2: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][3]}}, {6{i.dataa[4][3]}}, {6{i.dataa[3][3]}}, {6{i.dataa[2][3]}}, {6{i.dataa[1][3]}}, {6{i.dataa[0][3]}}};
					// 	mult_array_datab <= {6{i.datab[3][5], i.datab[3][4], i.datab[3][3], i.datab[3][2], i.datab[3][1], i.datab[3][0]}};
					// end
					// 4'd3: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][2]}}, {6{i.dataa[4][2]}}, {6{i.dataa[3][2]}}, {6{i.dataa[2][2]}}, {6{i.dataa[1][2]}}, {6{i.dataa[0][2]}}};
					// 	mult_array_datab <= {6{i.datab[2][5], i.datab[2][4], i.datab[2][3], i.datab[2][2], i.datab[2][1], i.datab[2][0]}};
					// end
					// 4'd4: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][1]}}, {6{i.dataa[4][1]}}, {6{i.dataa[3][1]}}, {6{i.dataa[2][1]}}, {6{i.dataa[1][1]}}, {6{i.dataa[0][1]}}};
					// 	mult_array_datab <= {6{i.datab[1][5], i.datab[1][4], i.datab[1][3], i.datab[1][2], i.datab[1][1], i.datab[1][0]}};
					// end
					// 4'd5: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][0]}}, {6{i.dataa[4][0]}}, {6{i.dataa[3][0]}}, {6{i.dataa[2][0]}}, {6{i.dataa[1][0]}}, {6{i.dataa[0][0]}}};
					// 	mult_array_datab <= {6{i.datab[0][5], i.datab[0][4], i.datab[0][3], i.datab[0][2], i.datab[0][1], i.datab[0][0]}};
					// end
					// 4'd6: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][5]}}, {6{i.dataa[4][5]}}, {6{i.dataa[3][5]}}, {6{i.dataa[2][5]}}, {6{i.dataa[1][5]}}, {6{i.dataa[0][5]}}};
					// 	mult_array_datab <= {6{i.datab[5][5], i.datab[5][4], i.datab[5][3], i.datab[5][2], i.datab[5][1], i.datab[5][0]}};
					// end
					// 4'd7: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][4]}}, {6{i.dataa[4][4]}}, {6{i.dataa[3][4]}}, {6{i.dataa[2][4]}}, {6{i.dataa[1][4]}}, {6{i.dataa[0][4]}}};
					// 	mult_array_datab <= {6{i.datab[4][5], i.datab[4][4], i.datab[4][3], i.datab[4][2], i.datab[4][1], i.datab[4][0]}};
					// end
					// 4'd8: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][3]}}, {6{i.dataa[4][3]}}, {6{i.dataa[3][3]}}, {6{i.dataa[2][3]}}, {6{i.dataa[1][3]}}, {6{i.dataa[0][3]}}};
					// 	mult_array_datab <= {6{i.datab[3][5], i.datab[3][4], i.datab[3][3], i.datab[3][2], i.datab[3][1], i.datab[3][0]}};
					// end
					// 4'd9: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][2]}}, {6{i.dataa[4][2]}}, {6{i.dataa[3][2]}}, {6{i.dataa[2][2]}}, {6{i.dataa[1][2]}}, {6{i.dataa[0][2]}}};
					// 	mult_array_datab <= {6{i.datab[2][5], i.datab[2][4], i.datab[2][3], i.datab[2][2], i.datab[2][1], i.datab[2][0]}};
					// end
					// 4'd10: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][1]}}, {6{i.dataa[4][1]}}, {6{i.dataa[3][1]}}, {6{i.dataa[2][1]}}, {6{i.dataa[1][1]}}, {6{i.dataa[0][1]}}};
					// 	mult_array_datab <= {6{i.datab[1][5], i.datab[1][4], i.datab[1][3], i.datab[1][2], i.datab[1][1], i.datab[1][0]}};
					// end
					// 4'd11: begin
					// 	mult_array_dataa <= {{6{i.dataa[5][0]}}, {6{i.dataa[4][0]}}, {6{i.dataa[3][0]}}, {6{i.dataa[2][0]}}, {6{i.dataa[1][0]}}, {6{i.dataa[0][0]}}};
					// 	mult_array_datab <= {6{i.datab[0][5], i.datab[0][4], i.datab[0][3], i.datab[0][2], i.datab[0][1], i.datab[0][0]}};
					// end
					// default: begin
					// 	mult_array_dataa <= {36{27'b0}};
					// 	mult_array_datab <= {36{27'b0}};
					// end
					4'd0: begin
						mult_array_dataa <= {{2{i.dataa[1][1]}}, {2{i.dataa[0][1]}}};
						mult_array_datab <= {2{i.datab[1][1], i.datab[1][0]}};
					end
					4'd1: begin
						mult_array_dataa <= {{2{i.dataa[1][0]}}, {2{i.dataa[0][0]}}};
						mult_array_datab <= {2{i.datab[0][1], i.datab[0][0]}};
					end
					default: begin
						mult_array_dataa <= {4{27'b0}};
						mult_array_datab <= {4{27'b0}};
					end
				endcase
			end
			default: begin
				// mult_array_dataa <= {36{27'b0}};
				// mult_array_datab <= {36{27'b0}};
				mult_array_dataa <= {4{27'b0}};
				mult_array_datab <= {4{27'b0}};
			end
		endcase
	end

	// LOGIC GOVERNING RESULT
	genvar index, jndex;
	generate
		for ( index=n-1 ; index>=0 ; index-- ) begin: adder_row
			for ( jndex=n-1 ; jndex>=0 ; jndex-- ) begin: adder_col
				always_ff @(posedge i.clk) begin
					if ( i.rst ) begin
						i.result[index][jndex] <= 27'b0;
					end else begin
						if ( i.mat_mode ) begin // matrix multiplier mode
							// if ( i.en && (count==4'd5 || count==4'd11) ) begin
							if ( i.en && (count==4'd1) ) begin
								i.result[index][jndex] <= mult_array_result[index][jndex];
							end
							// if ( i.en && (count==4'd6 || count==4'd7 || count==4'd8 || count==4'd9 || count==4'd10 || count==4'd0 || count==4'd1 || count==4'd2 || count==4'd3 || count==4'd4) ) begin
							if ( i.en && (count==4'd0) ) begin
								i.result[index][jndex] <= i.result[index][jndex] + mult_array_result[index][jndex]; // accumulate
							end
						end else begin // parallel multiplier mode
							i.result[index][jndex] <= mult_array_result[index][jndex];
						end // end parallel multiplier mode
					end // end not reset
				end // end always_ff
			end // end col loop
		end // end row loop
	endgenerate

endmodule