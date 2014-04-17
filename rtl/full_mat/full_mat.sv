/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`include "../mat_mult/mat_mult_interface.sv"
`include "../mat_mult/mat_mult.sv"
`include "../mat_mult/mult_array.sv"

`include "../t_block/t_block_interface.sv"
`include "../t_block/t_block.sv"

`include "../t_block/sincos/sincos_interface.sv"
`include "../t_block/sincos/sincos.sv"
`include "../t_block/sincos/sin.sv"
`include "../t_block/sincos/cos.sv"
`include "../t_block/sincos/mult_27_coeff_104/mult_27_coeff_104.v"
`include "../t_block/sincos/mult_27_coeff_326/mult_27_coeff_326.v"
`include "../t_block/sincos/mult_27_coeff_58/mult_27_coeff_58.v"


module full_mat (
	ifc_full_mat.full_mat i
);

	parameter THETA = 0;
	parameter L_OFFSET = 1;
	parameter L_DISTANCE = 2;
	parameter ALPHA = 3;
	parameter MAX = 90;

	// each transformation matrix
	logic [5:0] [3:0] [3:0] [26:0] t_matrix_array;

	// multiplied results of transformation matrices
	logic [5:0] [3:0] [3:0] [26:0] t_matrix_mult;

	// instantiate t_block
	ifc_t_block ifc_t_block (i.clk);
	assign ifc_t_block.en = i.en;
	assign ifc_t_block.rst = i.rst;
	t_block t_block (ifc_t_block.t_block);

	// instantiate mat_mult
	ifc_mat_mult ifc_mat_mult (i.clk);
	assign ifc_mat_mult.en = i.en;
	// delay rst for mat_mult by five
	logic rst_delay_1;
	logic rst_delay_2;
	logic rst_delay_3;
	logic rst_delay_4;
	logic rst_delay_5;
	always_ff @(posedge i.clk) begin
		rst_delay_1 <= i.rst;
		rst_delay_2 <= rst_delay_1;
		rst_delay_3 <= rst_delay_2;
		rst_delay_4 <= rst_delay_3;
		rst_delay_5 <= rst_delay_4;
	end
	assign ifc_mat_mult.rst = rst_delay_5;
	assign ifc_mat_mult.mat_mode = 1'b1;
	mat_mult mat_mult (ifc_mat_mult.mat_mult);

	// LOGIC GOVERNING COUNT
	logic [6:0] count;
	always_ff @(posedge i.clk) begin
		if ( i.rst ) begin // if parallel multiplier mode, clear counter
			count <= 6'b0;
		end else if ( i.en ) begin
			if ( count==MAX-1'b1 ) begin
				count <= 6'b0;
			end else begin
				count <= count + 1'b1;
			end
		end
	end

	// LOGIC GOVERNING T_BLOCK INPUTS
	always_ff @(posedge i.clk) begin
		if ( 7'd0 <= count && count < 7'd6 ) begin
			ifc_t_block.a <= i.dh_param[count][L_OFFSET];
			ifc_t_block.d <= i.dh_param[count][L_DISTANCE];
			ifc_t_block.alpha <= i.dh_param[count][ALPHA];
			ifc_t_block.theta <= i.dh_param[count][THETA];
		end else begin
			ifc_t_block.a <= 27'b0;
			ifc_t_block.d <= 27'b0;
			ifc_t_block.alpha <= 27'b0;
			ifc_t_block.theta <= 27'b0;
		end
	end

	// LOGIC GOVERNING T_BLOCK OUTPUTS
	always_ff @(posedge i.clk) begin
		if ( 7'd27 <= count && count < 7'd33 ) begin
			t_matrix_array[count-7'd27] <= ifc_t_block.t_matrix;
		end else begin
			// do nothing
		end
	end

	// LOGIC GOVERNING MAT_MULT INPUTS
	always_ff @(posedge i.clk) begin
		case(count)
			7'd28: begin // t_02
				ifc_mat_mult.dataa <=
				{
					{6{27'b0}},
					{27'b0,t_matrix_array[0][3],27'b0},
					{27'b0,t_matrix_array[0][2],27'b0},
					{27'b0,t_matrix_array[0][1],27'b0},
					{27'b0,t_matrix_array[0][0],27'b0},
					{6{27'b0}}
				};
				ifc_mat_mult.datab <= // FAST FORWARD
				{
					{6{27'b0}},
					{27'b0,ifc_t_block.t_matrix[3],27'b0},
					{27'b0,ifc_t_block.t_matrix[2],27'b0},
					{27'b0,ifc_t_block.t_matrix[1],27'b0},
					{27'b0,ifc_t_block.t_matrix[0],27'b0},
					{6{27'b0}}
				};
			end
			7'd40: begin // t_03
				ifc_mat_mult.dataa <= ifc_mat_mult.result;
				ifc_mat_mult.datab <=
				{
					{6{27'b0}},
					{27'b0,t_matrix_array[2][3],27'b0},
					{27'b0,t_matrix_array[2][2],27'b0},
					{27'b0,t_matrix_array[2][1],27'b0},
					{27'b0,t_matrix_array[2][0],27'b0},
					{6{27'b0}}
				};
			end
			7'd52: begin // t_04
				ifc_mat_mult.dataa <= ifc_mat_mult.result;
				ifc_mat_mult.datab <=
				{
					{6{27'b0}},
					{27'b0,t_matrix_array[3][3],27'b0},
					{27'b0,t_matrix_array[3][2],27'b0},
					{27'b0,t_matrix_array[3][1],27'b0},
					{27'b0,t_matrix_array[3][0],27'b0},
					{6{27'b0}}
				};
			end
			7'd64: begin // t_05
				ifc_mat_mult.dataa <= ifc_mat_mult.result;
				ifc_mat_mult.datab <=
				{
					{6{27'b0}},
					{27'b0,t_matrix_array[4][3],27'b0},
					{27'b0,t_matrix_array[4][2],27'b0},
					{27'b0,t_matrix_array[4][1],27'b0},
					{27'b0,t_matrix_array[4][0],27'b0},
					{6{27'b0}}
				};
			end
			7'd76: begin // t_06
				ifc_mat_mult.dataa <= ifc_mat_mult.result;
				ifc_mat_mult.datab <=
				{
					{6{27'b0}},
					{27'b0,t_matrix_array[5][3],27'b0},
					{27'b0,t_matrix_array[5][2],27'b0},
					{27'b0,t_matrix_array[5][1],27'b0},
					{27'b0,t_matrix_array[5][0],27'b0},
					{6{27'b0}}
				};
			end
			default: begin
				ifc_mat_mult.dataa <= ifc_mat_mult.dataa;
				ifc_mat_mult.datab <= ifc_mat_mult.datab;
			end
		endcase
	end

	// LOGIC GOVERNING MAT_MULT OUTPUTS
	always_ff @(posedge i.clk) begin
		case(count)
			7'd27: begin // t_01
				t_matrix_mult[0] <= ifc_t_block.t_matrix;
			end
			7'd40: begin // t_02
				t_matrix_mult[1][3] <= ifc_mat_mult.result[4][4:1];
				t_matrix_mult[1][2] <= ifc_mat_mult.result[3][4:1];
				t_matrix_mult[1][1] <= ifc_mat_mult.result[2][4:1];
				t_matrix_mult[1][0] <= ifc_mat_mult.result[1][4:1];
			end
			7'd52: begin // t_03
				t_matrix_mult[2][3] <= ifc_mat_mult.result[4][4:1];
				t_matrix_mult[2][2] <= ifc_mat_mult.result[3][4:1];
				t_matrix_mult[2][1] <= ifc_mat_mult.result[2][4:1];
				t_matrix_mult[2][0] <= ifc_mat_mult.result[1][4:1];
			end
			7'd64: begin // t_04
				t_matrix_mult[3][3] <= ifc_mat_mult.result[4][4:1];
				t_matrix_mult[3][2] <= ifc_mat_mult.result[3][4:1];
				t_matrix_mult[3][1] <= ifc_mat_mult.result[2][4:1];
				t_matrix_mult[3][0] <= ifc_mat_mult.result[1][4:1];
			end
			7'd76: begin // t_05
				t_matrix_mult[4][3] <= ifc_mat_mult.result[4][4:1];
				t_matrix_mult[4][2] <= ifc_mat_mult.result[3][4:1];
				t_matrix_mult[4][1] <= ifc_mat_mult.result[2][4:1];
				t_matrix_mult[4][0] <= ifc_mat_mult.result[1][4:1];
			end
			7'd88: begin // t_06
				t_matrix_mult[5][3] <= ifc_mat_mult.result[4][4:1];
				t_matrix_mult[5][2] <= ifc_mat_mult.result[3][4:1];
				t_matrix_mult[5][1] <= ifc_mat_mult.result[2][4:1];
				t_matrix_mult[5][0] <= ifc_mat_mult.result[1][4:1];
			end
			default: begin
				// do nothing
			end
		endcase
	end

	// OUTPUT
	assign i.full_matrix = t_matrix_mult[5];

endmodule