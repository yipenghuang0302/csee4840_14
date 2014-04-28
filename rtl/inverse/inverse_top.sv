module inverse_top(
	ifc_jacobian.jacobian i
);

  //parameter SQRT_COUNT = 5;
  //parameter DIV_COUNT = 5;
  //parameter MULT_ADD_COUNT = 6;

    logic [4:0] inv_step;
    logic [4:0] cholesky_step;



	// logic to calculate inv_step
	always_ff @(posedge i.clk)begin
		case(i.count)
			8'd0: inv_step <= 5'd0;
			8'd10: inv_step <= 5'd1;
			8'd16: inv_step <= 5'd2;
			8'd22: inv_step <= 5'd3;
            8'd34: inv_step <= 5'd4;
            8'd45: inv_step <= 5'd5;
            8'd51: inv_step <= 5'd6;
            8'd63: inv_step <= 5'd7;
            8'd69: inv_step <= 5'd8;
            8'd80: inv_step <= 5'd9;
            8'd86: inv_step <= 5'd10;
            8'd92: inv_step <= 5'd11;
            default: inv_step <= inv_step;
		endcase
	end

    // logic to calculate cholesky_step
    always_ff @(posedge i.clk)begin
		case(i.count)
			8'd0: cholesky_step <= 5'd0;
            8'd1: cholesky_step <= 5'd1;
            8'd5: cholesky_step <= 5'd2;
			8'd10: cholesky_step <= 5'd3;
			8'd16: cholesky_step <= 5'd4;
			8'd22: cholesky_step <= 5'd5;
			8'd28: cholesky_step <= 5'd6;
            8'd34: cholesky_step <= 5'd7;
            8'd40: cholesky_step <= 5'd8;
            8'd45: cholesky_step <= 5'd9;
            8'd51: cholesky_step <= 5'd10;
            8'd57: cholesky_step <= 5'd11;
            8'd63: cholesky_step <= 5'd12;
            8'd69: cholesky_step <= 5'd13;
            8'd75: cholesky_step <= 5'd14;
            8'd80: cholesky_step <= 5'd15;
            8'd86: cholesky_step <= 5'd16;
            default: cholesky_step <= cholesky_step;
		endcase
	end
   
    logic div_en;
    logic div_rst;
    logic [4:0][26:0] dividends, quotients;
    logic [26:0] divisor;

	logic [5:0][5:0] [26:0] inverse_in;

	logic [5:0][5:0][26:0] inv_mult_a;
	logic [5:0][5:0][26:0] inv_mult_b;

    logic [4:0][26:0] inv_dividends;
    logic [26:0] inv_divisor;
  
    inverse inv(clk, inverse_in, inverse, inv_step, 
           inv_mult_a, inv_mult_b, array_mult_result,
          inv_dividends, inv_divisor, quotients);

    logic [5:0][5:0][26:0] chol_mult_a;
    logic [5:0][5:0][26:0] chol_mult_b;

    logic [4:0][26:0] chol_dividends;
    logic [26:0] chol_divisor;

	cholesky chol(clk, cholesky_step, matrix, inverse_in, 
                 chol_mult_a, chol_mult_b, result,
                 chol_dividends, chol_divisor, quotients);

    assign div_en = 1;
    assign div_rst = 0;

 	array_div div(clk, div_en, div_rst, dividends, divisor, 
		 quotients);
 
    always_ff @(posedge i.clk)begin
        if(i.count==8'd5 || i.count==8'd22 || 
           i.count==8'd40 || i.count==8'd57 ||
           i.count==8'd75) begin
            dividends <= chol_dividends;
            divisor <= chol_divisor;
        end
        else if(i.count==8'd10 || i.count==8'd28 ||
                i.count==8'd45 || i.count==8'd63 || 
                i.count==8'80) begin
            dividends <= inv_dividends;
            divisor <= inv_divisor;
        end
        else begin
            dividends <= {5{27'b0}};
        end
    end

    always_ff @(posedge i.clk)begin
        if(i.count==8'd10 || i.count==8'd28 || 
           i.count==8'd45 || i.count==8'd63 ||
           i.count==8'd80) begin
            i.array_mult_dataa <= chol_mult_a;
            i.array_mult_datab <= chol_mult_b;
        end
        else if(i.count==8'd16 || i.count==8'd34 ||
                i.count==8'd51 || i.count==8'd69 || 
                i.count==8'86) begin
            i.array_mult_dataa <= inv_mult_a;
            i.array_mult_datab <= inv_mult_b;
        end
        else begin
            i.array_mult_dataa <= {9{27'b0}};
            i.array_mult_datab <= {9{27'b0}};
        end
    end
endmodule
