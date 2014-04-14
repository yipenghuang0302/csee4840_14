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

	logic step;

	//Rotation block
	logic [26:0] rot_block_00;	
	logic [26:0] rot_block_01;	
	logic [26:0] rot_block_02;	

	logic [26:0] rot_block_10;	
	logic [26:0] rot_block_11;	
	logic [26:0] rot_block_12;	

	logic [26:0] rot_block_20;	
	logic [26:0] rot_block_21;	
	logic [26:0] rot_block_22;	

	//Axis of rotation/translation for joints 1...6
	logic [26:0] v_10;
	logic [26:0] v_11;
	logic [26:0] v_12;

	logic [26:0] v_20;
	logic [26:0] v_21;
	logic [26:0] v_22;

	logic [26:0] v_30;
	logic [26:0] v_31;
	logic [26:0] v_32;

	logic [26:0] v_40;
	logic [26:0] v_41;
	logic [26:0] v_42;

	logic [26:0] v_50;
	logic [26:0] v_51;
	logic [26:0] v_52;

	logic [26:0] v_60;
	logic [26:0] v_61;
	logic [26:0] v_62;

	//Location of joints 1...6
	logic [26:0] p_10;
	logic [26:0] p_11;
	logic [26:0] p_12;

	logic [26:0] p_20;
	logic [26:0] p_21;
	logic [26:0] p_22;

	logic [26:0] p_30;
	logic [26:0] p_31;
	logic [26:0] p_32;

	logic [26:0] p_40;
	logic [26:0] p_41;
	logic [26:0] p_42;

	logic [26:0] p_50;
	logic [26:0] p_51;
	logic [26:0] p_52;

	logic [26:0] p_60;
	logic [26:0] p_61;
	logic [26:0] p_62;

	logic [8:0] [26:0] mult_array_rot_block;
	logic [2:0] [26:0] mult_array_z;
	
	//Need to instantiate Matrix Multiply once Yipeng has figured it out


	//Get rotation block
	always_comb begin
	 rot_block_00 = i.t_matrix_00;
	 rot_block_01 = i.t_matrix_01;
	 rot_block_02 = i.t_matrix_02;

	 rot_block_10 = i.t_matrix_10;
	 rot_block_11 = i.t_matrix_11;
	 rot_block_12 = i.t_matrix_12;

	 rot_block_20 = i.t_matrix_20;
	 rot_block_21 = i.t_matrix_21;
	 rot_block_22 = i.t_matrix_22;
	end

	//Get this joint's position

	assign mult_array_rot_block = {rot_block_00, rot_block_01, rot_block_02, 3{28'd0},
																 rot_block_10, rot_block_11, rot_block_12, 3{28'd0},
																 rot_block_20, rot_block_21, rot_block_22, 3{28'd0},
																 6{28'd0},
																 6{28'd0}, 
																 6{28'd0}};

	assign mult_array_datab = {z_0, 5{28'd0},
													   z_1, 5{28'd0},
														 z_2, 5{28'd0},
														 6{28'd0}, 
														 6{28'd0},
														 6{28'd0}};

	//Get position and axis of rotation/translation of each joint
	always_ff @(posedge i.clk) begin
		case(joint)
			3'd0: begin
				//get position
				p_10 <= i.t_matrix_03;
				p_11 <= i.t_matrix_13;
				p_12 <= i.t_matrix_23;
				//get axis (once matrix mult stuff is working)
				if (count == ?
			end
			3'd1: begin
				p_20 <= i.t_matrix_03;
				p_21 <= i.t_matrix_13;
				p_22 <= i.t_matrix_23;
			end
			3'd2: begin
				p_30 <= i.t_matrix_03;
				p_31 <= i.t_matrix_13;
				p_32 <= i.t_matrix_23;
			end
			3'd3: begin
				p_40 <= i.t_matrix_03;
				p_41 <= i.t_matrix_13;
				p_42 <= i.t_matrix_23;
			end
			3'd4: begin
				p_50 <= i.t_matrix_03;
				p_51 <= i.t_matrix_13;
				p_52 <= i.t_matrix_23;
			end
			3'd5: begin
				//Do all subtractions here?

				if (step == "subtraction") begin
				p_10 <= i.s_0 - p_10;
				p_11 <= i.s_1 - p_11;
				p_12 <= i.s_2 - p_12;

				p_20 <= i.s_0 - p_20;
				p_21 <= i.s_1 - p_21;
				p_22 <= i.s_2 - p_22;
				
				p_30 <= i.s_0 - p_30;
				p_31 <= i.s_1 - p_31;
				p_32 <= i.s_2 - p_32;

				p_40 <= i.s_0 - p_40;
				p_41 <= i.s_1 - p_41;
				p_42 <= i.s_2 - p_42;

				p_50 <= i.s_0 - p_50;
				p_51 <= i.s_1 - p_51;
				p_52 <= i.s_2 - p_52;

				p_60 <= i.s_0 - i.t_matrix_03;
				p_61 <= i.s_1 - i.t_matrix_13;
				p_62 <= i.s_2 - i.t_matrix_23;
				end else if (step == "corss-multpily") begin
					if step2 == "first cycle"
				end


				//Then do cross mult? or do this in different clock cycle?
			end
		endcase
	end

endmodule
