module cholesky(input clk,
								input [1:0] mode,
								input [2:0] column,
								input [35:0][15:0] a,
								output [35:0][15:0] lt,
								input reset);

	logic [35:0][15:0] internal;
	logic sqrt_en;
	logic zero;
	logic nan;
	logic [15:0] sqrt_out; 

	ALTFP_SQRT sqrt(internal[column*6+column], 
									sqrt_en, 
									clk, 
									sqrt_out,
									zero,
									nan);

	always @(posedge clk) begin
		if(reset)begin
			intern = 35'b0;
			sqrt_en = 0;
		end
		if(0 == mode) 
			sqrt_en = 0;
		if(1 == mode) begin \\ sqrt step
			if(0 == column)
				internal = a;
			sqrt_en = 1;
		end
		else if( 2 == mode) begin \\ div step
			sqrt_en = 0;
			internal[column*6+column] = sqrt_out;
			// for(i = 0; i+column+1 < 6; i++)
			// for(j = 0; j+column+1 < 6; j++)
			// internal[(column+1+i)*6 + column+j+1)]
			// = internal[(column+1+i)*6 + column+j+1)] - 
			//  internal[(column+i+1)*6 + column]*
			//   internal[(column+j+1)*6+column];
		end
		else if( 3 == mode) begin \\ mult and add step
			sqrt_en = 0;
		end 
	end

endmodule
