/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`include "mult_array.sv"

module mat_mult (
	ifc_mat_mult.mat_mult i
);

	parameter n = 6;
	parameter MAX = 10;

	logic [n*n-1:0] [26:0] mult_array_dataa;
	logic [n*n-1:0] [26:0] mult_array_datab;
	logic [n*n-1:0] [26:0] mult_array_result;

	mult_array #(n) mult_array (
		.clk(i.clk),
		.en(i.en),
		.dataa(mult_array_dataa),
		.datab(mult_array_datab),
		.result(mult_array_result)
	);

	logic [3:0] count;
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
			4'd0: begin
				mult_array_dataa = {{6{i.dataa[35-0]}}, {6{i.dataa[35-6]}}, {6{i.dataa[35-12]}}, {6{i.dataa[35-18]}}, {6{i.dataa[35-24]}}, {6{i.dataa[35-30]}}};
				mult_array_datab = {6{i.datab[35-0], i.datab[35-1], i.datab[35-2], i.datab[35-3], i.datab[35-4], i.datab[35-5]}};
			end
			4'd1: begin
				mult_array_dataa = {{6{i.dataa[35-1]}}, {6{i.dataa[35-7]}}, {6{i.dataa[35-13]}}, {6{i.dataa[35-19]}}, {6{i.dataa[35-25]}}, {6{i.dataa[35-31]}}};
				mult_array_datab = {6{i.datab[35-6], i.datab[35-7], i.datab[35-8], i.datab[35-9], i.datab[35-10], i.datab[35-11]}};
			end
			4'd2: begin
				mult_array_dataa = {{6{i.dataa[35-2]}}, {6{i.dataa[35-8]}}, {6{i.dataa[35-14]}}, {6{i.dataa[35-20]}}, {6{i.dataa[35-26]}}, {6{i.dataa[35-32]}}};
				mult_array_datab = {6{i.datab[35-12], i.datab[35-13], i.datab[35-14], i.datab[35-15], i.datab[35-16], i.datab[35-17]}};
			end
			4'd3: begin
				mult_array_dataa = {{6{i.dataa[35-3]}}, {6{i.dataa[35-9]}}, {6{i.dataa[35-15]}}, {6{i.dataa[35-21]}}, {6{i.dataa[35-27]}}, {6{i.dataa[35-33]}}};
				mult_array_datab = {6{i.datab[35-18], i.datab[35-19], i.datab[35-20], i.datab[35-21], i.datab[35-22], i.datab[35-23]}};
			end
			4'd4: begin
				mult_array_dataa = {{6{i.dataa[35-4]}}, {6{i.dataa[35-10]}}, {6{i.dataa[35-16]}}, {6{i.dataa[35-22]}}, {6{i.dataa[35-28]}}, {6{i.dataa[35-34]}}};
				mult_array_datab = {6{i.datab[35-24], i.datab[35-25], i.datab[35-26], i.datab[35-27], i.datab[35-28], i.datab[35-29]}};
			end
			4'd5: begin
				mult_array_dataa = {{6{i.dataa[35-5]}}, {6{i.dataa[35-11]}}, {6{i.dataa[35-17]}}, {6{i.dataa[35-23]}}, {6{i.dataa[35-29]}}, {6{i.dataa[35-35]}}};
				mult_array_datab = {6{i.datab[35-30], i.datab[35-31], i.datab[35-32], i.datab[35-33], i.datab[35-34], i.datab[35-35]}};
			end
		endcase
	end

	genvar index;
	generate
		for ( index=n*n-1 ; index>=0 ; index-- ) begin: adder_array
			always_ff @(posedge i.clk) begin
				if ( i.rst ) begin
					i.result[index] <= 27'b0;
				end else if ( i.en && (count==4'd3 || count==4'd4 || count==4'd5 || count==4'd6 || count==4'd7 || count==4'd8) ) begin
					i.result[index] <= i.result[index] + mult_array_result[index];
				end
			end
		end
	endgenerate

endmodule