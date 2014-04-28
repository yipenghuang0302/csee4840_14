/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module cholesky (
	ifc_cholesky.cholesky i
);

	logic sqrt_ena;
	assign sqrt_ena = 1;
	
	logic [26:0] radical;
	logic [13:0] q;
	logic [14:0] remainder;

	logic [3:0] row_count;
    logic [3:0] old;

    logic [3:0] add_counter;

	sqrt_27 sqrt(clk, sqrt_ena, radical, q, remainder);

	always_ff @(posedge i.clk) begin
		if(step==0)begin
			i.lt <= i.matrix;
		end
		else begin
			i.lt <= i.lt;
		end
	end

    always_ff @(posedge i.clk)begin
        if(step == 0)
            old <= 0;
            add_counter <= 0;
        else if(old != row_counter)begin
            old <= row_counter;
            add_counter <= 0;
        end else begin
            old <= old;
            add_counter <= add_counter +1'b1;
        end
    end

	always_ff @(posedge i.clk) begin
		case(step)
			5'd1: row_count <= 0;
			5'd4: row_count <= 1;
			5'd7: row_count <= 2;
			5'd10: row_count <= 3;
			5'd13: row_count <= 4;
			5'd16: row_count <= 5;
			default: row_count <= row_count;
		endcase
	end

	always_ff @(posedge i.clk) begin
		if(step== 4'd1 || step== 4'd4 || step== 4'd7 ||
           step==4'd10 || step==4'd13 || step==4'd16)
			i.radical <= i.lt[row_count][row_count];
		else 
			i.radical <= 27'b0;
	end

	always_ff @(posedge i.clk) begin
		if(step== 4'd2)begin
			i.dividends[0] <= i.lt[1][0];
            i.dividends[1] <= i.lt[2][0];
            i.dividends[2] <= i.lt[3][0];
            i.dividends[3] <= i.lt[4][0];
            i.dividends[4] <= i.lt[5][0];
            i.divisor <= i.lt[0][0];
		end else if(step == 4'd5) begin
			i.dividends[0] <= i.lt[2][1];
            i.dividends[1] <= i.lt[3][1];
            i.dividends[2] <= i.lt[4][1];
            i.dividends[3] <= i.lt[5][1];	
            i.dividends[4] <= 27'b0;
            i.divisor <= i.lt[1][1];
		end else if(step == 4'd8) begin
			i.dividends[0] <= i.lt[3][2];
            i.dividends[1] <= i.lt[4][2];
            i.dividends[2] <= i.lt[5][2];
            i.dividends[3] <= 27'b0;
            i.dividends[4] <= 27'b0;
            i.divisor <= i.lt[2][2];
		end else if(step == 4'd11) begin
			i.dividends[0] <= i.lt[4][3];
            i.dividends[1] <= i.lt[5][3];
            i.dividends[2] <= 27'b0;
            i.dividends[3] <= 27'b0;
            i.dividends[4] <= 27'b0;
            i.divisor <= i.lt[3][3];
		end else if(step == 4'd14) begin
			i.dividends[0] <= i.lt[5][4];
            i.dividends[1] <= 27'b0;
            i.dividends[2] <= 27'b0;
            i.dividends[3] <= 27'b0;
            i.dividends[4] <= 27'b0;
            i.divisor <= i.lt[3][3];
		end else begin
			i.dividends[0] <= 27'
            i.dividends[1] <= 27'b0;
            i.dividends[2] <= 27'b0;
            i.dividends[3] <= 27'b0;
            i.dividends[4] <= 27'b0;
            i.divisor <= 27'b0;
		end
	end

	always_ff @(posedge i.clk) begin
		if(step==4'd3)begin
 			i.mat_mult_dataa[1][1] <= i.lt[1][0]
			i.mat_mult_dataa[1][2] <= i.lt[1][0]
			i.mat_mult_dataa[1][3] <= i.lt[1][0]
			i.mat_mult_dataa[1][4] <= i.lt[1][0]
			i.mat_mult_dataa[1][5] <= i.lt[1][0]
			i.mat_mult_dataa[2][2] <= i.lt[2][0]
			i.mat_mult_dataa[2][3] <= i.lt[2][0]
			i.mat_mult_dataa[2][4] <= i.lt[2][0]
			i.mat_mult_dataa[2][5] <= i.lt[2][0]
			i.mat_mult_dataa[3][3] <= i.lt[3][0]
			i.mat_mult_dataa[3][4] <= i.lt[3][0]
			i.mat_mult_dataa[3][5] <= i.lt[3][0]
			i.mat_mult_dataa[4][4] <= i.lt[4][0]
			i.mat_mult_dataa[4][5] <= i.lt[4][0]
			i.mat_mult_dataa[5][5] <= i.lt[5][0]
		end else if(step ==4'd6) begin
			i.mat_mult_dataa[2][2] <= i.lt[2][1]
            i.mat_mult_dataa[2][3] <= i.lt[2][1]
            i.mat_mult_dataa[2][4] <= i.lt[2][1]
            i.mat_mult_dataa[2][5] <= i.lt[2][1]
            i.mat_mult_dataa[3][3] <= i.lt[3][1]
            i.mat_mult_dataa[3][4] <= i.lt[3][1]
            i.mat_mult_dataa[3][5] <= i.lt[3][1]
            i.mat_mult_dataa[4][4] <= i.lt[4][1]
            i.mat_mult_dataa[4][5] <= i.lt[4][1]
            i.mat_mult_dataa[5][5] <= i.lt[5][1]
		end else if(step==4'd9) begin
			i.mat_mult_dataa[3][3] <= i.lt[3][2]
            i.mat_mult_dataa[3][4] <= i.lt[3][2]
            i.mat_mult_dataa[3][5] <= i.lt[3][2]
            i.mat_mult_dataa[4][4] <= i.lt[4][2]
            i.mat_mult_dataa[4][5] <= i.lt[4][2]
            i.mat_mult_dataa[5][5] <= i.lt[5][2]
		end	else if(step==4'd12) begin
			i.mat_mult_dataa[4][4] <= i.lt[4][3]
            i.mat_mult_dataa[4][5] <= i.lt[4][3]
            i.mat_mult_dataa[5][5] <= i.lt[5][3]
		end else if(step==4'd15) begin
			i.mat_mult_dataa[5][5] <= i.lt[5][3]
		end else
			i.mat_mult_dataa = {5{5{27'b0}}};
	end
	
	always_ff @(posedge i.clk) begin
		if(step==4'd3)begin
 			i.mat_mult_datab[1][1] <= i.lt[1][0]
			i.mat_mult_datab[1][2] <= i.lt[2][0]
			i.mat_mult_datab[1][3] <= i.lt[3][0]
			i.mat_mult_datab[1][4] <= i.lt[4][0]
			i.mat_mult_datab[1][5] <= i.lt[5][0]
			i.mat_mult_datab[2][2] <= i.lt[2][0]
			i.mat_mult_datab[2][3] <= i.lt[3][0]
			i.mat_mult_datab[2][4] <= i.lt[4][0]
			i.mat_mult_datab[2][5] <= i.lt[5][0]
			i.mat_mult_datab[3][3] <= i.lt[3][0]
			i.mat_mult_datab[3][4] <= i.lt[4][0]
			i.mat_mult_datab[3][5] <= i.lt[5][0]
			i.mat_mult_datab[4][4] <= i.lt[4][0]
			i.mat_mult_datab[4][5] <= i.lt[5][0]
			i.mat_mult_datab[5][5] <= i.lt[5][0]
		end else if(step ==4'd6) begin
			i.mat_mult_datab[2][2] <= i.lt[2][1]
            i.mat_mult_datab[2][3] <= i.lt[3][1]
            i.mat_mult_datab[2][4] <= i.lt[4][1]
            i.mat_mult_datab[2][5] <= i.lt[5][1]
            i.mat_mult_datab[3][3] <= i.lt[3][1]
            i.mat_mult_datab[3][4] <= i.lt[4][1]
            i.mat_mult_datab[3][5] <= i.lt[5][1]
            i.mat_mult_datab[4][4] <= i.lt[4][1]
            i.mat_mult_datab[4][5] <= i.lt[5][1]
            i.mat_mult_datab[5][5] <= i.lt[5][1]
		end else if(step==4'd9) begin
			i.mat_mult_datab[3][3] <= i.lt[3][2]
            i.mat_mult_datab[3][4] <= i.lt[4][2]
            i.mat_mult_datab[3][5] <= i.lt[5][2]
            i.mat_mult_datab[4][4] <= i.lt[4][2]
            i.mat_mult_datab[4][5] <= i.lt[5][2]
            i.mat_mult_datab[5][5] <= i.lt[5][2]
		end	else if(step==4'd12) begin
			i.mat_mult_datab[4][4] <= i.lt[4][3]
            i.mat_mult_datab[4][5] <= i.lt[5][3]
            i.mat_mult_datab[5][5] <= i.lt[5][3]
		end else if(step==4'd15) begin
			i.mat_mult_datab[5][5] <= i.lt[5][3]
		end else
			i.mat_mult_dataa = {5{5{27'b0}}};
	end

	always_ff @(posedge i.clk) begin
        i.lt[0][1] <= 27'b0;
        i.lt[0][2] <= 27'b0;
        i.lt[0][3] <= 27'b0;
        i.lt[0][4] <= 27'b0;
        i.lt[0][5] <= 27'b0;
        i.lt[1][2] <= 27'b0;
        i.lt[1][3] <= 27'b0;
        i.lt[1][4] <= 27'b0;
        i.lt[1][5] <= 27'b0;
        i.lt[2][3] <= 27'b0;
        i.lt[2][4] <= 27'b0;
        i.lt[2][5] <= 27'b0;
        i.lt[3][4] <= 27'b0;
        i.lt[4][5] <= 27'b0;
		if(step== 4'd1 || step== 4'd4 || step== 4'd7 || 
		   step==4'd10 || step==4'd13 || step==4'd16) 
			i.lt[row_count][row_count] <= {13'b0, q};
		else if(step==4'd2)begin
			i.lt[1][0] <= i.quotients[0];
			i.lt[2][0] <= i.quotients[1];
			i.lt[3][0] <= i.quotients[2];
			i.lt[4][0] <= i.quotients[3];
			i.lt[5][0] <= i.quotients[4];
		end else if(step==4'd3)begin
	        if(add_counter > 4) begin
                i.lt[1][1] <= i.lt[1][1] + mat_mult_result[1][1];
                i.lt[1][2] <= i.lt[1][2] + mat_mult_result[1][2];
                i.lt[1][3] <= i.lt[1][3] + mat_mult_result[1][3];
                i.lt[1][4] <= i.lt[1][4] + mat_mult_result[1][4];
                i.lt[1][5] <= i.lt[1][5] + mat_mult_result[1][5];

                i.lt[2][2] <= i.lt[2][2] + mat_mult_result[2][2];
                i.lt[2][3] <= i.lt[2][3] + mat_mult_result[2][3];
                i.lt[2][4] <= i.lt[2][4] + mat_mult_result[2][4];
                i.lt[2][5] <= i.lt[2][5] + mat_mult_result[2][5];

                i.lt[3][3] <= i.lt[3][3] + mat_mult_result[3][3];
                i.lt[3][4] <= i.lt[3][4] + mat_mult_result[3][4];
                i.lt[3][5] <= i.lt[3][5] + mat_mult_result[3][5];
                
                i.lt[4][4] <= i.lt[4][4] + mat_mult_result[4][4];
                i.lt[4][5] <= i.lt[4][5] + mat_mult_result[4][5];
                
                i.lt[5][5] <= i.lt[5][5] + mat_mult_result[5][5];
                
            end else begin
                i.lt <= i.lt;
            end 
		end else if(step==4'd5) begin
			i.lt[2][1] <= i.quotients[0];
            i.lt[3][1] <= i.quotients[1];
            i.lt[4][1] <= i.quotients[2];
            i.lt[5][1] <= i.quotients[3];			
        end else if(step==4'd6) begin
            if(add_counter > 4) begin
                i.lt[2][2] <= i.lt[2][2] + mat_mult_result[2][2];
                i.lt[2][3] <= i.lt[2][3] + mat_mult_result[2][3];
                i.lt[2][4] <= i.lt[2][4] + mat_mult_result[2][4];
                i.lt[2][5] <= i.lt[2][5] + mat_mult_result[2][5];

                i.lt[3][3] <= i.lt[3][3] + mat_mult_result[3][3];
                i.lt[3][4] <= i.lt[3][4] + mat_mult_result[3][4];
                i.lt[3][5] <= i.lt[3][5] + mat_mult_result[3][5];
                
                i.lt[4][4] <= i.lt[4][4] + mat_mult_result[4][4];
                i.lt[4][5] <= i.lt[4][5] + mat_mult_result[4][5];
                
                i.lt[5][5] <= i.lt[5][5] + mat_mult_result[5][5];
            end else begin
                i.lt <= i.lt;
            end 
        end else if(step==4'd8) begin
            i.lt[3][2] <= i.quotients[0];
            i.lt[4][2] <= i.quotients[1];
            i.lt[5][2] <= i.quotients[2];
        end else if(step==4'd9) begin
            if(add_counter > 4) begin
                i.lt[3][3] <= i.lt[3][3] + mat_mult_result[3][3];
                i.lt[3][4] <= i.lt[3][4] + mat_mult_result[3][4];
                i.lt[3][5] <= i.lt[3][5] + mat_mult_result[3][5];
                
                i.lt[4][4] <= i.lt[4][4] + mat_mult_result[4][4];
                i.lt[4][5] <= i.lt[4][5] + mat_mult_result[4][5];
                
                i.lt[5][5] <= i.lt[5][5] + mat_mult_result[5][5];

            end else begin
                i.lt <= i.lt;
            end 
        end else if(step==4'd11) begin
            i.lt[4][3] <= i.quotients[0];
            i.lt[5][3] <= i.quotients[1];
        end else if(step==4'd12) begin
            if(add_counter > 4) begin
                i.lt[4][4] <= i.lt[4][4] + mat_mult_result[4][4];
                i.lt[4][5] <= i.lt[4][5] + mat_mult_result[4][5];
                
                i.lt[5][5] <= i.lt[5][5] + mat_mult_result[5][5];


            end else begin
                i.lt <= i.lt;
            end 
        end else if(step==4'd14) begin
            i.lt[5][3] <= i.quotients[1];
        end else if(step==4'd15) begin
            if(add_counter > 4) begin
                i.lt[5][5] <= i.lt[5][5] + mat_mult_result[5][5];
            end else begin
                i.lt <= i.lt;
            end 
        end else begin
            i.lt <= {5{5{27'b0}}};
        end
    end

	

endmodule
