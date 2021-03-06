/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module full_mat (
	ifc_full_mat.full_mat i
);

	parameter THETA = 0;
	parameter A_PARAM = 1;
	parameter D_PARAM = 2;
	parameter ALPHA = 3;

	// each transformation matrix
	logic [5:0] [3:0] [3:0] [26:0] t_matrix_array;

	// instantiate t_block
	ifc_t_block ifc_t_block (i.clk);
	assign ifc_t_block.en = i.en;
	assign ifc_t_block.rst = i.rst;
	assign ifc_t_block.count = i.count;
	assign ifc_t_block.array_mult_result = i.array_mult_result;
	t_block t_block (ifc_t_block.t_block);
	assign i.array_mult_dataa = ifc_t_block.array_mult_dataa;
	assign i.array_mult_datab = ifc_t_block.array_mult_datab;

	// LOGIC GOVERNING T_BLOCK INPUTS
	always_ff @(posedge i.clk)
		if (i.en)
			if ( 8'd0 <= i.count && i.count < 8'd6 ) begin
				ifc_t_block.a <= i.dh_param[i.count][A_PARAM];
				ifc_t_block.d <= i.dh_param[i.count][D_PARAM];
				ifc_t_block.alpha <= i.dh_param[i.count][ALPHA];
				ifc_t_block.theta <= i.dh_param[i.count][THETA];
			end else begin
				ifc_t_block.a <= 21'b0;
				ifc_t_block.d <= 21'b0;
				ifc_t_block.alpha <= 21'b0;
				ifc_t_block.theta <= 21'b0;
			end

	// LOGIC GOVERNING T_BLOCK OUTPUTS
	always_ff @(posedge i.clk)
		if (i.en)
			if ( 8'd28 <= i.count && i.count < 8'd34 ) begin
				t_matrix_array[i.count-8'd28] <= ifc_t_block.t_matrix;
			end else begin
				// do nothing
			end

	// LOGIC GOVERNING MAT_MULT INPUTS
	always_ff @(posedge i.clk)
		if (i.en)
			case(i.count)
				8'd29: begin // t_02
					i.mat_mult_dataa <=
					{
						{6{27'b0}},
						{27'b0,t_matrix_array[0][3],27'b0},
						{27'b0,t_matrix_array[0][2],27'b0},
						{27'b0,t_matrix_array[0][1],27'b0},
						{27'b0,t_matrix_array[0][0],27'b0},
						{6{27'b0}}
					};
					i.mat_mult_datab <= // FAST FORWARD
					{
						{6{27'b0}},
						{27'b0,ifc_t_block.t_matrix[3],27'b0},
						{27'b0,ifc_t_block.t_matrix[2],27'b0},
						{27'b0,ifc_t_block.t_matrix[1],27'b0},
						{27'b0,ifc_t_block.t_matrix[0],27'b0},
						{6{27'b0}}
					};
				end
				8'd41: begin // t_03
					i.mat_mult_dataa <= i.mat_mult_result;
					i.mat_mult_datab <=
					{
						{6{27'b0}},
						{27'b0,t_matrix_array[2][3],27'b0},
						{27'b0,t_matrix_array[2][2],27'b0},
						{27'b0,t_matrix_array[2][1],27'b0},
						{27'b0,t_matrix_array[2][0],27'b0},
						{6{27'b0}}
					};
				end
				8'd53: begin // t_04
					i.mat_mult_dataa <= i.mat_mult_result;
					i.mat_mult_datab <=
					{
						{6{27'b0}},
						{27'b0,t_matrix_array[3][3],27'b0},
						{27'b0,t_matrix_array[3][2],27'b0},
						{27'b0,t_matrix_array[3][1],27'b0},
						{27'b0,t_matrix_array[3][0],27'b0},
						{6{27'b0}}
					};
				end
				8'd65: begin // t_05
					i.mat_mult_dataa <= i.mat_mult_result;
					i.mat_mult_datab <=
					{
						{6{27'b0}},
						{27'b0,t_matrix_array[4][3],27'b0},
						{27'b0,t_matrix_array[4][2],27'b0},
						{27'b0,t_matrix_array[4][1],27'b0},
						{27'b0,t_matrix_array[4][0],27'b0},
						{6{27'b0}}
					};
				end
				8'd77: begin // t_06
					i.mat_mult_dataa <= i.mat_mult_result;
					i.mat_mult_datab <=
					{
						{6{27'b0}},
						{27'b0,t_matrix_array[5][3],27'b0},
						{27'b0,t_matrix_array[5][2],27'b0},
						{27'b0,t_matrix_array[5][1],27'b0},
						{27'b0,t_matrix_array[5][0],27'b0},
						{6{27'b0}}
					};
				end
				8'd89: begin // clear
					i.mat_mult_dataa <= {36{27'b0}};
					i.mat_mult_datab <= {36{27'b0}};
				end
				default: begin
					i.mat_mult_dataa <= i.mat_mult_dataa;
					i.mat_mult_datab <= i.mat_mult_datab;
				end
			endcase

	// LOGIC GOVERNING MAT_MULT OUTPUTS
	always_ff @(posedge i.clk)
		if (i.en)
			case(i.count)
				8'd28: begin // t_01
					i.full_matrix[0] <= ifc_t_block.t_matrix;
				end
				8'd41: begin // t_02
					i.full_matrix[1][3] <= i.mat_mult_result[4][4:1];
					i.full_matrix[1][2] <= i.mat_mult_result[3][4:1];
					i.full_matrix[1][1] <= i.mat_mult_result[2][4:1];
					i.full_matrix[1][0] <= i.mat_mult_result[1][4:1];
				end
				8'd53: begin // t_03
					i.full_matrix[2][3] <= i.mat_mult_result[4][4:1];
					i.full_matrix[2][2] <= i.mat_mult_result[3][4:1];
					i.full_matrix[2][1] <= i.mat_mult_result[2][4:1];
					i.full_matrix[2][0] <= i.mat_mult_result[1][4:1];
				end
				8'd65: begin // t_04
					i.full_matrix[3][3] <= i.mat_mult_result[4][4:1];
					i.full_matrix[3][2] <= i.mat_mult_result[3][4:1];
					i.full_matrix[3][1] <= i.mat_mult_result[2][4:1];
					i.full_matrix[3][0] <= i.mat_mult_result[1][4:1];
				end
				8'd77: begin // t_05
					i.full_matrix[4][3] <= i.mat_mult_result[4][4:1];
					i.full_matrix[4][2] <= i.mat_mult_result[3][4:1];
					i.full_matrix[4][1] <= i.mat_mult_result[2][4:1];
					i.full_matrix[4][0] <= i.mat_mult_result[1][4:1];
				end
				8'd89: begin // t_06
					i.full_matrix[5][3] <= i.mat_mult_result[4][4:1];
					i.full_matrix[5][2] <= i.mat_mult_result[3][4:1];
					i.full_matrix[5][1] <= i.mat_mult_result[2][4:1];
					i.full_matrix[5][0] <= i.mat_mult_result[1][4:1];
				end
				default: begin
					// do nothing
				end
			endcase

endmodule