// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

module inverse (
	ifc_inverse.inverse_dut i
);

	// INSTANTIATE CHOLESKY BLOCK
	ifc_cholesky ifc_cholesky (i.clk);
	// inputs
	assign ifc_cholesky.en = i.en;
	assign ifc_cholesky.rst = i.rst;
	assign ifc_cholesky.count = i.count;
	assign ifc_cholesky.matrix = i.matrix;
	 // shared multiplier
	assign ifc_cholesky.array_mult_result = i.array_mult_result;
	cholesky cholesky (ifc_cholesky.cholesky);
	// outputs
	assign i.lt = ifc_cholesky.lt;

	// INSTANTIATE LT INVERSE BLOCK
	ifc_lt_inverse ifc_lt_inverse (i.clk);
	// inputs
	assign ifc_lt_inverse.en = i.en;
	assign ifc_lt_inverse.rst = i.rst;
	assign ifc_lt_inverse.count = i.count;
	// lower triangular matrix from cholesky block
	assign ifc_lt_inverse.lt = ifc_cholesky.lt;
	 // shared multiplier
	assign ifc_lt_inverse.array_mult_result = i.array_mult_result;
	lt_inverse lt_inverse (ifc_lt_inverse.lt_inverse_dut);
	// outputs
	assign i.lt_inverse = ifc_lt_inverse.lt_inverse;

	// INSTANTIATE SHARED ARRAY DIV
	ifc_array_div ifc_array_div (i.clk);
	// inputs
	assign ifc_array_div.en = i.en;
	assign ifc_array_div.rst = i.rst;
	// timing design prevents module outputs to shared dividers colliding
	assign ifc_array_div.dividends = ifc_cholesky.dividends | ifc_lt_inverse.dividends;
	assign ifc_array_div.divisor = ifc_cholesky.divisor;
	array_div array_div (ifc_array_div.array_div);
	assign ifc_cholesky.quotients = ifc_array_div.quotients;
	assign ifc_lt_inverse.quotients = ifc_array_div.quotients;

	// SHARED ARRAY MULT
	// timing design prevents module outputs to shared multipliers colliding
	assign i.array_mult_dataa = ifc_cholesky.array_mult_dataa | ifc_lt_inverse.array_mult_dataa;
	assign i.array_mult_datab = ifc_cholesky.array_mult_datab | ifc_lt_inverse.array_mult_datab;

	// MATRIX MULTIPLY FOR L^-T * L^-1
	// MAT_MULT INPUTS
	always_ff @(posedge i.clk) begin
		case (i.count)
			8'd0: begin
				i.mat_mult_dataa <= {36{36'b0}};
				i.mat_mult_datab <= {36{36'b0}};
			end
			8'd215: begin
				i.mat_mult_dataa <= {
					{ i.lt_inverse[5][5], i.lt_inverse[4][5], i.lt_inverse[3][5], i.lt_inverse[2][5], i.lt_inverse[1][5], i.lt_inverse[0][5] },
					{ i.lt_inverse[5][4], i.lt_inverse[4][4], i.lt_inverse[3][4], i.lt_inverse[2][4], i.lt_inverse[1][4], i.lt_inverse[0][4] },
					{ i.lt_inverse[5][3], i.lt_inverse[4][3], i.lt_inverse[3][3], i.lt_inverse[2][3], i.lt_inverse[1][3], i.lt_inverse[0][3] },
					{ i.lt_inverse[5][2], i.lt_inverse[4][2], i.lt_inverse[3][2], i.lt_inverse[2][2], i.lt_inverse[1][2], i.lt_inverse[0][2] },
					{ i.lt_inverse[5][1], i.lt_inverse[4][1], i.lt_inverse[3][1], i.lt_inverse[2][1], i.lt_inverse[1][1], i.lt_inverse[0][1] },
					{ i.lt_inverse[5][0], i.lt_inverse[4][0], i.lt_inverse[3][0], i.lt_inverse[2][0], i.lt_inverse[1][0], i.lt_inverse[0][0] }
				};
				i.mat_mult_datab <= i.lt_inverse;
			end
			8'd227: begin
				i.mat_mult_dataa <= {36{36'b0}};
				i.mat_mult_datab <= {36{36'b0}};
			end
			default: begin
				i.mat_mult_dataa <= i.mat_mult_dataa;
				i.mat_mult_datab <= i.mat_mult_datab;
			end
		endcase
	end

	// MAT_MULT OUTPUTS
	always_ff @(posedge i.clk)
		if ( i.count==8'd227 )
			i.inverse <= i.mat_mult_result;

endmodule