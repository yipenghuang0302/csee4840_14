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


	always@(posedge clk)begin
		if(en && count == 0) begin  // 1
			cholesky_step = 1;
			inv_step = 0;
      curr_mat_en = 0;
      curr_rst = 1;
      div_en = 0;
		end
		else if(en && count == SQRT_COUNT) begin  // 2
			cholesky_step = 2;
      inv_step = 0;
			curr_mat_en = 0;
      curr_rst = 1;
      div_en = chol_div_en;
       dividends = chol_ dividends;
      divisor = chol_divisor;
		end
		else if(en && count == SQRT_COUNT + DIV_COUNT) begin  // 3
			cholesky_step = 3;
			inv_step = 1;
      curr_mat_en = chol_mat_en;
      curr_rst = chol_rst;
      curr_mult_a = chol_mult_a;
      curr_mult_b = chol_mult_b;
      div_en = inv_div_en;
       dividends = inv_ dividends;
      divisor = inv_divisor;
    end
		else if(en && count == SQRT_COUNT + DIV_COUNT + MULT_ADD_COUNT)begin// 4
      cholesky_step = 4;
      inv_step = 2;
      curr_mat_en = inv_mat_en;
      curr_rst = inv_rst;
      curr_mult_a = inv_mult_a;
      curr_mult_b = inv_mult_b;
      div_en = 0;
    end 
		else if(en && 
      count == SQRT_COUNT + DIV_COUNT + 2*MULT_ADD_COUNT)begin // 5
      cholesky_step = 5;
      inverse_step = 2;
      curr_mat_en = 0;
      curr_rst = 1;
      div_en = chol_div_en;
       dividends = chol_ dividends;
      divisor = chol_divisor;
    end
		else if(en && 
			count == (SQRT_COUNT + 2*DIV_COUNT + 2*MULT_ADD_COUNT))begin // 6
      cholesky_step = 6;
      inv_step = 3;
      curr_mat_en = chol_mat_en;
      curr_rst = chol_rst;
      curr_mult_a = chol_mult_a;
      curr_mult_b = chol_mult_b;
      div_en = inv_div_en;
       dividends = inv_ dividends;
      divisor = inv_divisor;
    end
		else if(en && 
      count == (SQRT_COUNT + 2*DIV_COUNT + 3*MULT_ADD_COUNT)) begin // 7
      cholesky_step = 7;
      inv_step = 4;
      curr_mat_en = inv_mat_en;
      curr_rst = inv_rst;
      curr_mult_a = inv_mult_a;
      curr_mult_b = inv_mult_b;
      div_en = 0;
    end
		else if(en && 
      count == (SQRT_COUNT + 2*DIV_COUNT + 4*MULT_ADD_COUNT)) begin // 8
      cholesky_step = 8;
      inv_step = 4;
      curr_mat_en = 0;
      curr_rst = 1;
      div_en = chol_div_en;
       dividends = chol_ dividends;
      divisor = chol_divisor;
    end
    else if( en && 
      count == (SQRT_COUNT + 3*DIV_COUNT + 4*MULT_ADD_COUNT)) begin // 9
      cholesky_step = 9;
      inv_step = 5;
      curr_mat_en = chol_mat_en;
      curr_rst = chol_rst;
      curr_mult_a = chol_mult_a;
      curr_mult_b = chol_mult_b;
      div_en = inv_div_en;
       dividends = inv_ dividends;
      divisor = inv_divisor;
    end
    else if( en && 
      count == (SQRT_COUNT + 3*DIV_COUNT + 5*MULT_ADD_COUNT)) begin // 10
      cholesky_step = 10;
      inv_step = 6;
      curr_mat_en = inv_mat_en;
      curr_rst = inv_rst;
      curr_mult_a = inv_mult_a;
      curr_mult_b = inv_mult_b;
      div_en = 0;
    end 
    else if ( en && 
      count == (SQRT_COUNT + 3*DIV_COUNT + 6*MULT_ADD_COUNT)) begin // 11
      cholesky_step = 11;
      inv_step = 6;
      curr_mat_en = 0;
      curr_rst = 1;
      div_en = chol_div_en;
       dividends = chol_ dividends;
      divisor = chol_divisor;
    end
    else if (en && 
      count == (SQRT_COUNT + 4*DIV_COUNT + 6*MULT_ADD_COUNT)) begin // 12
      cholesky_step = 12;
      inv_step = 7;
      curr_mat_en = chol_mat_en;
      curr_rst = chol_rst;
      curr_mult_a = chol_mult_a;
      curr_mult_b = chol_mult_b;
      div_en = inv_div_en;
       dividends = inv_dividesn;
      divisor = inv_divisor;
    end
    else if( en && 
      count == (SQRT_COUNT + 4*DIV_COUNT + 7*MULT_ADD_COUNT)) begin // 13
      cholesky_step = 13;
      inv_step = 8;
      curr_mat_en = inv_mat_en;
      curr_rst = inv_rst;
      curr_mult_a = inv_mult_a;
      curr_mult_b = inv_mult_b;
			div_en = 0;
    end
    else if(en && 
      count == (SQRT_COUNT + 4*DIV_COUNT + 8*MULT_ADD_COUNT)) begin // 14
      cholesky_step = 14;
      inv_step = 8;
      curr_mat_en = 0;
      curr_rst = 1;
      div_en = chol_div_en;
       dividends = chol_ dividends;
      divisor = chol_divisor;
    end 
    else if(en && 
      count == (SQRT_COUNT + 5*DIV_COUNT + 8*MULT_ADD_COUNT)) begin // 15
      cholesky_step = 15;
      inv_step = 9;
      curr_mat_en = chol_mat_en;
      curr_rst = chol_rst;
      curr_mult_a = chol_mult_a;
      curr_mult_b = chol_mult_b;
      div_en = inv_div_en;
       dividends = inv_ dividends;
      divisor = inv_divisor;
    end 
    else if(en && 
      count == (SQRT_COUNT + 5*DIV_COUNT + 9*MULT_ADD_COUNT)) begin // 16
      cholesky_step = 16;
      inv_step = 10;
      curr_mat_en = inv_mat_en;
      curr_rst = inv_rst;
      curr_mult_a = inv_mult_a;
      curr_mult_b = inv_mult_b;
      div_en = 0;
    end 
    else if(en && 
      count == (SQRT_COUNT + 5*DIV_COUNT + 10*MULT_ADD_COUNT)) begin // 17
      cholesky_step = 16;
      inv_step = 11;
      curr_mat_en = 0;
      curr_rst = 1;
      div_en = inv_div_en;
      dividends = inv_ dividends;
      divisor = inv_divisor;
		end

    if(en)
			count = count +1;
    else begin
			count = 0;
      cholesky_step = 0;
      inv_step = 0;
		end

		
	end

endmodule
