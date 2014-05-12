// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

parameter THETA = 0;
parameter A_PARAM = 1;
parameter D_PARAM = 2;
parameter ALPHA = 3;

module ik_swift (
	ifc_ik_swift.ik_swift i
);

	// LOGIC GOVERNING COUNT
	logic [7:0] count;
	parameter MAX = 250;
	always_ff @(posedge i.clk) begin
		if ( i.rst ) begin
			count <= 8'b0;
		end else if ( i.en && !i.done ) begin
			if ( count==MAX-1'b1 ) begin
				count <= 8'b0;
			end else begin
				count <= count + 1'b1;
			end
		end
	end

	// LOGIC GOVERNING DONE
	always_ff @(posedge i.clk) begin
		if ( i.rst || !i.en ) begin // at begin, clear done
			i.done <= 1'b0;
		end else if ( i.en && count==8'd248 ) begin
			i.done <= 1'b1;
		end
	end

	// INSTANTIATE FULL JACOBIAN BLOCK
	ifc_full_jacobian i_jac (i.clk);
	// inputs
	assign i_jac.en = i.en && !i.done;
	assign i_jac.rst = i.rst;
	assign i_jac.count = count;
	assign i_jac.z = i.z;
	assign i_jac.joint_type = i.joint_type;
	// GENERATE DH_PARAMS
	assign i_jac.dh_param = {
		{
			21'd205887,		// trans.dh_data[5][ALPHA] = 3.14159265359;
			-21'd52429,		// trans.dh_data[5][D_PARAM] = -0.8;
			21'd0,			// trans.dh_data[5][A_PARAM] = 0.0;
			i.dh_dyn_in[5]	// trans.dh_data[5][THETA] = 0.0;
		},
		{
			21'd102944,		// trans.dh_data[4][ALPHA] = 3.14159265359/2;
			21'd0,			// trans.dh_data[4][D_PARAM] = 0.0;
			21'd0,			// trans.dh_data[4][A_PARAM] = 0.0;
			i.dh_dyn_in[4]	// trans.dh_data[4][THETA] = 0.0;
		},
		{
			-21'd102944,	// trans.dh_data[3][ALPHA] = -3.14159265359/2;
			-21'd193331,	// trans.dh_data[3][D_PARAM] = -2.95;
			21'd0,			// trans.dh_data[3][A_PARAM] = 0.0;
			i.dh_dyn_in[3]	// trans.dh_data[3][THETA] = 0.0;
		},
		{
			21'd102944,		// trans.dh_data[2][ALPHA] = 3.14159265359/2;
			21'd0,			// trans.dh_data[2][D_PARAM] = 0.0;
			21'd58982,		// trans.dh_data[2][A_PARAM] = 0.9;
			i.dh_dyn_in[2]	// trans.dh_data[2][THETA] = 0.0;
		},
		{
			21'd0,			// trans.dh_data[1][ALPHA] = 0.0;
			21'd0,			// trans.dh_data[1][D_PARAM] = 0.0;
			21'd176947,		// trans.dh_data[1][A_PARAM] = 2.7;
			i.dh_dyn_in[1]	// trans.dh_data[1][THETA] = 0.0;
		},
		{
			-21'd102944,	// trans.dh_data[0][ALPHA] = -3.14159265359/2;
			21'd219546,		// trans.dh_data[0][D_PARAM] = 3.35;
			21'd49152,		// trans.dh_data[0][A_PARAM] = 0.75;
			i.dh_dyn_in[0]	// trans.dh_data[0][THETA] = 0.0;
		}
	};
	full_jacobian full_jacobian (i_jac.full_jacobian);
	// outputs
	assign i.jacobian_matrix = i_jac.jacobian_matrix;
	assign i.jjt_bias = i_jac.jjt_bias;

	// INSTANTIATE FULL INVERSE BLOCK
	ifc_inverse ifc_inverse (i.clk);
	// inputs
	assign ifc_inverse.en = i.en && !i.done;
	assign ifc_inverse.rst = i.rst;
	assign ifc_inverse.count = count;
	assign ifc_inverse.matrix = i_jac.jjt_bias;
	inverse inverse (ifc_inverse.inverse_dut);
	// ouptuts
	assign i.lt = ifc_inverse.lt;
	assign i.lt_inverse = ifc_inverse.lt_inverse;
	assign i.inverse = ifc_inverse.inverse;

	// MATRIX MULTIPLY FOR JT * INVERSE
	logic [5:0] [5:0] [26:0] dls_mat_mult_dataa;
	logic [5:0] [5:0] [26:0] dls_mat_mult_datab;

	// shared multipliers
	// INSTANTIATE MAT MULT
	ifc_mat_mult ifc_mat_mult (i.clk);
	assign ifc_mat_mult.en = i.en && !i.done;
	// delay rst for mat_mult by four
	always_ff @(posedge i.clk)
		if (i.en && !i.done)
			ifc_mat_mult.rst <= count==8'd28 || count==8'd98 || count==8'd214 || count==8'd227;

	// two periods mat_mult in parallel mode
	assign ifc_mat_mult.mat_mode = (8'd91<=count&&count<8'd99)||(8'd240<=count&&count<8'd248) ? 1'b0 : 1'b1;
	// Output to matrix multipliers
	assign ifc_mat_mult.dataa = i_jac.mat_mult_dataa | ifc_inverse.mat_mult_dataa | dls_mat_mult_dataa;
	assign ifc_mat_mult.datab = i_jac.mat_mult_datab | ifc_inverse.mat_mult_datab | dls_mat_mult_datab;
	mat_mult mat_mult (ifc_mat_mult.mat_mult);
	assign i_jac.mat_mult_result = ifc_mat_mult.result;
	assign ifc_inverse.mat_mult_result = ifc_mat_mult.result;

	// INSTANTIATE ARRAY MULT
	ifc_array_mult ifc_array_mult (i.clk);
	assign ifc_array_mult.en = i.en && !i.done;
	assign ifc_array_mult.rst = i.rst;
	// Output to array multipliers
	assign ifc_array_mult.dataa = { {6{27'b0}}, i_jac.array_mult_dataa } | ifc_inverse.array_mult_dataa;
	assign ifc_array_mult.datab = { {6{27'b0}}, i_jac.array_mult_datab } | ifc_inverse.array_mult_datab;
	assign i_jac.array_mult_result = ifc_array_mult.result[8:0];
	assign ifc_inverse.array_mult_result = ifc_array_mult.result;
	array_mult array_mult (ifc_array_mult.array_mult);

	// MATRIX MULTIPLY FOR JT * INVERSE
	// MAT_MULT INPUTS
	always_ff @(posedge i.clk)
		if (i.en && !i.done)
			case (count)
				8'd0: begin
					dls_mat_mult_dataa <= {36{27'b0}};
					dls_mat_mult_datab <= {36{27'b0}};
				end
				8'd228: begin
					dls_mat_mult_dataa <= {
						{ i_jac.jacobian_matrix[5][5], i_jac.jacobian_matrix[4][5], i_jac.jacobian_matrix[3][5], i_jac.jacobian_matrix[2][5], i_jac.jacobian_matrix[1][5], i_jac.jacobian_matrix[0][5] },
						{ i_jac.jacobian_matrix[5][4], i_jac.jacobian_matrix[4][4], i_jac.jacobian_matrix[3][4], i_jac.jacobian_matrix[2][4], i_jac.jacobian_matrix[1][4], i_jac.jacobian_matrix[0][4] },
						{ i_jac.jacobian_matrix[5][3], i_jac.jacobian_matrix[4][3], i_jac.jacobian_matrix[3][3], i_jac.jacobian_matrix[2][3], i_jac.jacobian_matrix[1][3], i_jac.jacobian_matrix[0][3] },
						{ i_jac.jacobian_matrix[5][2], i_jac.jacobian_matrix[4][2], i_jac.jacobian_matrix[3][2], i_jac.jacobian_matrix[2][2], i_jac.jacobian_matrix[1][2], i_jac.jacobian_matrix[0][2] },
						{ i_jac.jacobian_matrix[5][1], i_jac.jacobian_matrix[4][1], i_jac.jacobian_matrix[3][1], i_jac.jacobian_matrix[2][1], i_jac.jacobian_matrix[1][1], i_jac.jacobian_matrix[0][1] },
						{ i_jac.jacobian_matrix[5][0], i_jac.jacobian_matrix[4][0], i_jac.jacobian_matrix[3][0], i_jac.jacobian_matrix[2][0], i_jac.jacobian_matrix[1][0], i_jac.jacobian_matrix[0][0] }
					};
					dls_mat_mult_datab <= ifc_inverse.inverse;
				end
				8'd240: begin
					// dls matrix * error vector
					dls_mat_mult_dataa <= ifc_mat_mult.result; // DLS matrix
					dls_mat_mult_datab <= {6{
						// axis of rotation / translation for joints 1...6
						i.target[5] - i_jac.axis[6][2], // k unit vector
						i.target[4] - i_jac.axis[6][1], // j unit vector
						i.target[3] - i_jac.axis[6][0], // i unit vector
						// multiplied results of transformation matrices
						i.target[2] - i_jac.full_matrix[5][2][3], // z coordinate
						i.target[1] - i_jac.full_matrix[5][1][3], // y coordinate
						i.target[0] - i_jac.full_matrix[5][0][3] // x coordinate
					}};
				end
				8'd247: begin
					dls_mat_mult_dataa <= {36{27'b0}};
					dls_mat_mult_datab <= {36{27'b0}};
				end
				default: begin
					dls_mat_mult_dataa <= dls_mat_mult_dataa;
					dls_mat_mult_datab <= dls_mat_mult_datab;
				end
			endcase

	// MAT_MULT OUTPUTS
	always_ff @(posedge i.clk)
		if (i.en && !i.done)
			case (count)
				8'd240: i.dls <= ifc_mat_mult.result;
				8'd247: i.delta <= {
					ifc_mat_mult.result[5][5] + ifc_mat_mult.result[5][4] + ifc_mat_mult.result[5][3] + ifc_mat_mult.result[5][2] + ifc_mat_mult.result[5][1] + ifc_mat_mult.result[5][0],
					ifc_mat_mult.result[4][5] + ifc_mat_mult.result[4][4] + ifc_mat_mult.result[4][3] + ifc_mat_mult.result[4][2] + ifc_mat_mult.result[4][1] + ifc_mat_mult.result[4][0],
					ifc_mat_mult.result[3][5] + ifc_mat_mult.result[3][4] + ifc_mat_mult.result[3][3] + ifc_mat_mult.result[3][2] + ifc_mat_mult.result[3][1] + ifc_mat_mult.result[3][0],
					ifc_mat_mult.result[2][5] + ifc_mat_mult.result[2][4] + ifc_mat_mult.result[2][3] + ifc_mat_mult.result[2][2] + ifc_mat_mult.result[2][1] + ifc_mat_mult.result[2][0],
					ifc_mat_mult.result[1][5] + ifc_mat_mult.result[1][4] + ifc_mat_mult.result[1][3] + ifc_mat_mult.result[1][2] + ifc_mat_mult.result[1][1] + ifc_mat_mult.result[1][0],
					ifc_mat_mult.result[0][5] + ifc_mat_mult.result[0][4] + ifc_mat_mult.result[0][3] + ifc_mat_mult.result[0][2] + ifc_mat_mult.result[0][1] + ifc_mat_mult.result[0][0]
				};
			endcase

	// ADD BACK TO DH PARAMS
	genvar joint;
	generate
		for ( joint=0 ; joint<6 ; joint++ ) begin: add_dh_param
			always_ff @(posedge i.clk) begin
				if (i.en && !i.done) begin
					case (count)
						8'd0: i.dh_dyn_out[joint] <= i.dh_dyn_in[joint];
						8'd248: begin
							case (i.joint_type[joint])
								1'b0: begin // translational
									i.dh_dyn_out[joint]/*[D_PARAM]*/ <= i.dh_dyn_in[joint]/*[D_PARAM]*/ + i.delta[joint][20:0];
								end
								1'b1: begin // rotational
									i.dh_dyn_out[joint]/*[THETA]*/ <= i.dh_dyn_in[joint]/*[THETA]*/ + i.delta[joint][20:0];
								end
							endcase
						end
					endcase
				end
			end
		end
	endgenerate

endmodule