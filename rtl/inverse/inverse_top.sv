module inverse_top(input clk,
                   input [5:0][5:0][26:0] matrix,
                   input en,
                   output [5:0][5:0][26:0] inverse,
                   output mat_en,
                   output rst,
                   output mat_mode,
                   output [5:0][5:0][26:0] mult_a,
                   output [5:0][5:0][26:0] mult_b,
                   input [5:0][5:0][26:0] result);

	parameter SQRT_COUNT = 5;
  parameter DIV_COUNT = 5;
  parameter MULT_ADD_COUNT = 7;

	logic [6:0] count;
	logic [4:0] inv_step;
	logic [4:0] cholesky_step;

	logic curr_mat_en, curr_rst;
	logic [5:0][5:0][26:0] curr_mult_a;
  logic [5:0][5:0][26:0] curr_mult_b;

  assign mat_en = curr_mat_en;
  assign rst = curr_rst;
	assign mult_a = curr_mult_a;
	assign mult_b = curr_mult_b;
	assign mat_mode = 0;

  logic div_en;
  logic [4:0][26:0] dividends, quotients;
  logic [26:0] divisor;

	logic [5:0][5:0] [26:0] inverse_in;

	logic inv_mat_en, inv_rst;
	logic [5:0][5:0][26:0] inv_mult_a;
	logic [5:0][5:0][26:0] inv_mult_b;

  logic inv_div_en;
  logic [4:0][26:0] inv_dividends;
  logic [26:0] inv_divisor;
  
  inverse inv(clk, inverse_in, inverse, inv_step, 
          inv_mat_en, inv_rst, inv_mult_a, inv_mult_b, result,
          inv_div_en, inv_dividends, inv_divisor, quotients);

  logic chol_mat_en, chol_rst;
  logic [5:0][5:0][26:0] chol_mult_a;
  logic [5:0][5:0][26:0] chol_mult_b;

	logic chol_div_en;
  logic [4:0][26:0] chol_dividends;
  logic [26:0] chol_divisor;

	cholesky chol(clk, cholesky_step, matrix, inverse_in, 
                chol_mat_en, chol_rst, chol_mult_a, chol_mult_b, result,
                chol_div_en, chol_ dividends, chol_divisor, quotients);

 	divider div(clk, div_en, [4:0][26:0] dividends, [26:0] divisor, 
		[4:0][26:0] quotients);

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
