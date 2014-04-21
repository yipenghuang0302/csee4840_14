module cholesky(input clk,
								input [4:0] step
								input [5:0][5:0][26:0] a,
								output logic [5:0][5:0][26:0] lt,
								output mat_en,
                output rst,
                output [5:0][5:0][26:0] mult_a,
                output [5:0][5:0][26:0] mult_b,
                input [5:0][5:0][26:0] result,
								output div_en,
                output [4:0][26:0] dividends,
                output [26:0] divisor,
                input [4:0][26:0] quotients);

	logic [5:0][5:0][26:0] internal;

	always @(posedge clk) begin
		case (step)
		endcase
	end

endmodule
