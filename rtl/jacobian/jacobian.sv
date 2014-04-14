/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

//`include "../sim_models/lpm_mult.v"
//`include "../sim_models/mult_block.v"
//`include "../sim_models/addsub_block.v"
//`include "../sim_models/pipeline_internal_fv.v"
//`include "../sim_models/dffep.v"
//`include "../sim_models/altera_mf.v"


`include "sincos/mult_27_square/mult_27_square.v"
`include "sincos/mult_27_coeff_104/mult_27_coeff_104.v"
`include "sincos/mult_27_coeff_326/mult_27_coeff_326.v"
`include "sincos/mult_27_coeff_58/mult_27_coeff_58.v"

`include "../mult_27/mult_27.v"

module jacobian (
	ifc_jacobian.jacobian i
);

	//used for synchronization
	logic [3:0] local_count;

	//Rotation block
	logic [2:0] [2:0] [26:0] rot_block;	

	//Axis of rotation/translation for joints 1...6
	logic [2:0] [26:0] v_1;
	logic [2:0] [26:0] v_2;
	logic [2:0] [26:0] v_3;
	logic [2:0] [26:0] v_4;
	logic [2:0] [26:0] v_5;
	logic [2:0] [26:0] v_6;

	//Location of joints 1...6
	logic [2:0] [26:0] p_1;
	logic [2:0] [26:0] p_2;
	logic [2:0] [26:0] p_3;
	logic [2:0] [26:0] p_4;
	logic [2:0] [26:0] p_5;
	logic [2:0] [26:0] p_6;

	//Used to transfer rotation block and z vector to matrix multiplier
	logic [8:0] [26:0] mult_array_rot_block;
	logic [2:0] [26:0] mult_array_z;
	
	//Deal with local count
	always_ff @(posedge i.clk) begin
		if ( i.count == 9'd44 || i.count == 9'd64 || i.count == 9'd84 || i.count == 9'd104 || i.count == 9'd124 || i.count == 9'd144 ) begin
			local_count <= 0;
		end else begin
			if ( local_count==4'd15 ) begin
				count <= 0;
			end else begin
				count <= count + 1'b1;
			end
		end
	end

	//Get rotation block
	always_comb begin
	 rot_block[0][0] = i.t_matrix[0][0]
	 rot_block[0][1] = i.t_matrix[0][1]
	 rot_block[0][2] = i.t_matrix[0][2]

	 rot_block[1][0] = i.t_matrix[1][0]
	 rot_block[1][1] = i.t_matrix[1][1]
	 rot_block[1][2] = i.t_matrix[1][2]

	 rot_block[2][0] = i.t_matrix[2][0]
	 rot_block[2][1] = i.t_matrix[2][1]
	 rot_block[2][2] = i.t_matrix[2][2]

	 mult_array_rot_block = {rot_block[0], 3{28'd0},
													 rot_block[1], 3{28'd0},
													 rot_block[2], 3{28'd0},
													 6{28'd0},
													 6{28'd0}, 
													 6{28'd0}};
	end



	//Set up z vector for matrix multiplication
	assign mult_array_z = {i.z[0], 5{28'd0},
												i.z[1], 5{28'd0},
											  i.z[2], 5{28'd0},
														 6{28'd0}, 
														 6{28'd0},
														 6{28'd0}};

	//Get position and axis of rotation/translation of each joint
	always_ff @(posedge i.clk) begin
		case(joint)
			3'd0: begin
				//get position
				p_1[0] <= i.t_matrix[0][3];
				p_1[1] <= i.t_matrix[1][3];
				p_1[2] <= i.t_matrix[2][3];
				//get axis 
				case(local_count)
					4'd0: begin
						i.dataa <= mult_array_rot_block;
						i.datab <= mult_array_z;
					end
					//Should this be 5 cycles later b/c of 3 cycles for multiplication and 2 for accumulation?
					4'd3: begin
						v_1[0] <= i.result[0][0];
						v_1[1] <= i.result[1][0];
						v_1[2] <= i.result[2][0];
					end
				endcase
			end
			3'd1: begin
				//get position
				p_2[0] <= i.t_matrix[0][3];
				p_2[1] <= i.t_matrix[1][3];
				p_2[2] <= i.t_matrix[2][3];
				//get axis 
				case(local_count)
					4'd0: begin
						i.dataa <= mult_array_rot_block;
						i.datab <= mult_array_z;
					end
					//Should this be 5 cycles later b/c of 3 cycles for multiplication and 2 for accumulation?
					4'd3: begin
						v_2[0] <= i.result[0][0];
						v_2[1] <= i.result[1][0];
						v_2[2] <= i.result[2][0];
					end
				endcase
			end
			3'd2: begin
				//get position
				p_3[0] <= i.t_matrix[0][3];
				p_3[1] <= i.t_matrix[1][3];
				p_3[2] <= i.t_matrix[2][3];
				//get axis 
				case(local_count)
					4'd0: begin
						i.dataa <= mult_array_rot_block;
						i.datab <= mult_array_z;
					end
					//Should this be 5 cycles later b/c of 3 cycles for multiplication and 2 for accumulation?
					4'd3: begin
						v_3[0] <= i.result[0][0];
						v_3[1] <= i.result[1][0];
						v_3[2] <= i.result[2][0];
					end
				endcase
			end
			3'd3: begin
				//get position
				p_4[0] <= i.t_matrix[0][3];
				p_4[1] <= i.t_matrix[1][3];
				p_4[2] <= i.t_matrix[2][3];
				//get axis 
				case(local_count)
					4'd0: begin
						i.dataa <= mult_array_rot_block;
						i.datab <= mult_array_z;
					end
					//Should this be 5 cycles later b/c of 3 cycles for multiplication and 2 for accumulation?
					4'd3: begin
						v_4[0] <= i.result[0][0];
						v_4[1] <= i.result[1][0];
						v_4[2] <= i.result[2][0];
					end
				endcase
			end
			3'd4: begin
				//get position
				p_5[0] <= i.t_matrix[0][3];
				p_5[1] <= i.t_matrix[1][3];
				p_5[2] <= i.t_matrix[2][3];
				//get axis 
				case(local_count)
					4'd0: begin
						i.dataa <= mult_array_rot_block;
						i.datab <= mult_array_z;
					end
					//Should this be 5 cycles later b/c of 3 cycles for multiplication and 2 for accumulation?
					4'd3: begin
						v_5[0] <= i.result[0][0];
						v_5[1] <= i.result[1][0];
						v_5[2] <= i.result[2][0];
					end
				endcase
			end
			3'd5: begin
				case(local_count)
					//Do all subtractions in parallel (2 cycles?)
					4'd0: begin
									p_1[0] <= i.s_0 - p_1[0];
									p_1[1] <= i.s_1 - p_1[1];
									p_1[2] <= i.s_2 - p_1[2];

									p_2[0] <= i.s_0 - p_2[0];
									p_2[1] <= i.s_1 - p_2[1];
									p_2[2] <= i.s_2 - p_2[2];
									
									p_3[0] <= i.s_0 - p_3[0];
									p_3[1] <= i.s_1 - p_3[1];
									p_3[2] <= i.s_2 - p_3[2];

									p_4[0] <= i.s_0 - p_4[0];
									p_4[1] <= i.s_1 - p_4[1];
									p_4[2] <= i.s_2 - p_4[2];

									p_5[0] <= i.s_0 - p_5[0];
									p_5[1] <= i.s_1 - p_5[1];
									p_5[2] <= i.s_2 - p_5[2];

									p_6[0] <= i.s_0 - i.t_matrix[0][3];
									p_6[1] <= i.s_1 - i.t_matrix[1][3];
									p_6[2] <= i.s_2 - i.t_matrix[2][3];
					end
					//Then do all cross-multiplies in a pipeline
					4'd2: begin
						i.dataa <= {v_1[1],v_1[2],4{27'd0},v_1[2],v_1[0],4{27'd0},v_1[0],v_1[1]}
						i.datab <= {p_1[2],p_1[1],4{27'd0},p_1[0],v_1[2],4{27'd0},p_1[1],p_1[0]}
					end
					4'd3: begin
						i.dataa <= {v_2[1],v_2[2],4{27'd0},v_2[2],v_2[0],4{27'd0},v_2[0],v_2[1]}
						i.datab <= {p_2[2],p_2[1],4{27'd0},p_2[0],v_2[2],4{27'd0},p_2[1],p_2[0]}
					end
					4'd4: begin
						i.dataa <= {v_3[1],v_3[2],4{27'd0},v_3[2],v_3[0],4{27'd0},v_3[0],v_3[1]}
						i.datab <= {p_3[2],p_3[1],4{27'd0},p_3[0],v_3[2],4{27'd0},p_3[1],p_3[0]}
					end
					4'd5: begin
						i.dataa <= {v_4[1],v_4[2],4{27'd0},v_4[2],v_4[0],4{27'd0},v_4[0],v_4[1]}
						i.datab <= {p_4[2],p_4[1],4{27'd0},p_4[0],v_4[2],4{27'd0},p_4[1],p_4[0]}
						if (joint_type[0] == 1'b1) begin//rotational
							jacobian_matrix[0][0] <= i.result[0][0] - i.result[0][1];
							jacobian_matrix[1][0] <= i.result[1][0] - i.result[1][1];
							jacobian_matrix[2][0] <= i.result[2][0] - i.result[2][1];
							jacobian_matrix[3][0] <= v_1[0];
							jacobian_matrix[4][0] <= v_1[1];
							jacobian_matrix[5][0] <= v_1[2];
						end else if (joint_type[0] == 1'b0) begin//translational
							jacobian_matrix[0][0] <= v_1[0];
							jacobian_matrix[1][0] <= v_1[1];
							jacobian_matrix[2][0] <= v_1[2];
							jacobian_matrix[3][0] <= 27'b0 ;
							jacobian_matrix[4][0] <= 27'b0;
							jacobian_matrix[5][0] <= 27'b0;
						end
					end
					4'd6: begin
						i.dataa <= {v_5[1],v_5[2],4{27'd0},v_5[2],v_5[0],4{27'd0},v_5[0],v_5[1]}
						i.datab <= {p_5[2],p_5[1],4{27'd0},p_5[0],v_5[2],4{27'd0},p_5[1],p_5[0]}
						if (joint_type[1] == 1'b1) begin//rotational
							jacobian_matrix[0][1] <= i.result[0][0] - i.result[0][1];
							jacobian_matrix[1][1] <= i.result[1][0] - i.result[1][1];
							jacobian_matrix[2][1] <= i.result[2][0] - i.result[2][1];
							jacobian_matrix[3][1] <= v_2[0];
							jacobian_matrix[4][1] <= v_2[1];
							jacobian_matrix[5][1] <= v_2[2];
						end else if (joint_type[1] == 1'b0) begin//translational
							jacobian_matrix[0][1] <= v_2[0];
							jacobian_matrix[1][1] <= v_2[1];
							jacobian_matrix[2][1] <= v_2[2];
							jacobian_matrix[3][1] <= 27'b0 ;
							jacobian_matrix[4][1] <= 27'b0;
							jacobian_matrix[5][1] <= 27'b0;
						end
					end
					4'd7: begin
						i.dataa <= {v_6[1],v_6[2],4{27'd0},v_6[2],v_6[0],4{27'd0},v_6[0],v_6[1]}
						i.datab <= {p_6[2],p_6[1],4{27'd0},p_6[0],v_6[2],4{27'd0},p_6[1],p_6[0]}
						if (joint_type[2] == 1'b1) begin//rotational
							jacobian_matrix[0][2] <= i.result[0][0] - i.result[0][1];
							jacobian_matrix[1][2] <= i.result[1][0] - i.result[1][1];
							jacobian_matrix[2][2] <= i.result[2][0] - i.result[2][1];
							jacobian_matrix[3][2] <= v_3[0];
							jacobian_matrix[4][2] <= v_3[1];
							jacobian_matrix[5][2] <= v_3[2];
						end else if (joint_type[2] == 1'b0) begin//translational
							jacobian_matrix[0][2] <= v_3[0];
							jacobian_matrix[1][2] <= v_3[1];
							jacobian_matrix[2][2] <= v_3[2];
							jacobian_matrix[3][2] <= 27'b0 ;
							jacobian_matrix[4][2] <= 27'b0;
							jacobian_matrix[5][2] <= 27'b0;
						end
					end
					4'd8: begin
						if (joint_type[3] == 1'b1) begin//rotational
							jacobian_matrix[0][3] <= i.result[0][0] - i.result[0][1];
							jacobian_matrix[1][3] <= i.result[1][0] - i.result[1][1];
							jacobian_matrix[2][3] <= i.result[2][0] - i.result[2][1];
							jacobian_matrix[3][3] <= v_4[0];
							jacobian_matrix[4][3] <= v_4[1];
							jacobian_matrix[5][3] <= v_4[2];
						end else if (joint_type[3] == 1'b0) begin//translational
							jacobian_matrix[0][3] <= v_4[0];
							jacobian_matrix[1][3] <= v_4[1];
							jacobian_matrix[2][3] <= v_4[2];
							jacobian_matrix[3][3] <= 27'b0 ;
							jacobian_matrix[4][3] <= 27'b0;
							jacobian_matrix[5][3] <= 27'b0;
						end
					end
					4'd9: begin
						if (joint_type[4] == 1'b1) begin//rotational
							jacobian_matrix[0][4] <= i.result[0][0] - i.result[0][1];
							jacobian_matrix[1][4] <= i.result[1][0] - i.result[1][1];
							jacobian_matrix[2][4] <= i.result[2][0] - i.result[2][1];
							jacobian_matrix[3][4] <= v_5[0];
							jacobian_matrix[4][4] <= v_5[1];
							jacobian_matrix[5][4] <= v_5[2];
						end else if (joint_type[4] == 1'b0) begin//translational
							jacobian_matrix[0][4] <= v_5[0];
							jacobian_matrix[1][4] <= v_5[1];
							jacobian_matrix[2][4] <= v_5[2];
							jacobian_matrix[3][4] <= 27'b0 ;
							jacobian_matrix[4][4] <= 27'b0;
							jacobian_matrix[5][4] <= 27'b0;
						end
					end
					4'd10: begin
						if (joint_type[5] == 1'b1) begin//rotational
							jacobian_matrix[0][5] <= i.result[0][0] - i.result[0][1];
							jacobian_matrix[1][5] <= i.result[1][0] - i.result[1][1];
							jacobian_matrix[2][5] <= i.result[2][0] - i.result[2][1];
							jacobian_matrix[3][5] <= v_6[0];
							jacobian_matrix[4][5] <= v_6[1];
							jacobian_matrix[5][5] <= v_6[2];
						end else if (joint_type[5] == 1'b0) begin//translational
							jacobian_matrix[0][5] <= v_6[0];
							jacobian_matrix[1][5] <= v_6[1];
							jacobian_matrix[2][5] <= v_6[2];
							jacobian_matrix[3][5] <= 27'b0 ;
							jacobian_matrix[4][5] <= 27'b0;
							jacobian_matrix[5][5] <= 27'b0;
						end
					end
				endcase
			end
		endcase
	end

endmodule
