/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`include "mult_array.sv"

module mat_mult (
	ifc_mat_mult.mat_mult i
);

	parameter n = 2;
	parameter MAX = 6; //10

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

	logic [2:0] count;
	always_ff @(posedge i.clk) begin
		if ( i.rst ) begin
			count <= 0;
		end else if ( i.en ) begin
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
				mult_array_dataa = {{2{i.dataa[1][1]}}, {2{i.dataa[0][1]}}};
				mult_array_datab = {2{i.datab[1][1], i.datab[1][0]}};
			end
			3'd1: begin
				mult_array_dataa = {{2{i.dataa[1][0]}}, {2{i.dataa[0][0]}}};
				mult_array_datab = {2{i.datab[0][1], i.datab[0][0]}};
			end
		endcase
	end

	genvar index, jndex;
	generate
		for ( index=n-1 ; index>=0 ; index-- ) begin: adder_row
			for ( jndex=n-1 ; jndex>=0 ; jndex-- ) begin: adder_col
				always_ff @(posedge i.clk) begin
					if ( i.rst ) begin
						i.result[index][jndex] <= 27'b0;
					end else if ( i.en && (count==4'd3 || count==4'd4) ) begin
						i.result[index][jndex] <= i.result[index][jndex] + mult_array_result[index][jndex];
					end
				end
			end
		end
	endgenerate

endmodule