/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module jacobian (
	ifc_jacobian.jacobian i
);

	// Axis of rotation / translation for joints 1...6
	// logic [5:0] [2:0] [26:0] i.axis;
	
	// Location of joints 1...6
	// logic [5:0] [2:0] [26:0] i.dist_to_end;

	// LOGIC GOVERNING JOINT COUNT FOR AXIS
	//Which joint we're on
	logic [2:0] joint;
	always_ff @(posedge i.clk)
		if (i.en)
			case (i.count)
				8'd28: joint <= 3'd0;
				8'd41: joint <= 3'd1;
				8'd53: joint <= 3'd2;
				8'd65: joint <= 3'd3;
				8'd77: joint <= 3'd4;
				8'd89: joint <= 3'd5;
				default: joint <= joint;
			endcase

	// LOGIC GOVERNING ARRAY MULT INPUT
	always_ff @(posedge i.clk)
		if (i.en)
			if (
				i.count==8'd29 || i.count==8'd30 ||
				i.count==8'd42 || i.count==8'd43 ||
				i.count==8'd54 || i.count==8'd55 ||
				i.count==8'd66 || i.count==8'd67 ||
				i.count==8'd78 || i.count==8'd79 ||
				i.count==8'd90 || i.count==8'd91 ) begin 
				// || i.count==8'd90 
				i.array_mult_dataa[0] <= i.full_matrix[joint][0][0];
				i.array_mult_dataa[1] <= i.full_matrix[joint][0][1];
				i.array_mult_dataa[2] <= i.full_matrix[joint][0][2];
				i.array_mult_dataa[3] <= i.full_matrix[joint][1][0];
				i.array_mult_dataa[4] <= i.full_matrix[joint][1][1];
				i.array_mult_dataa[5] <= i.full_matrix[joint][1][2];
				i.array_mult_dataa[6] <= i.full_matrix[joint][2][0];
				i.array_mult_dataa[7] <= i.full_matrix[joint][2][1];
				i.array_mult_dataa[8] <= i.full_matrix[joint][2][2];

				i.array_mult_datab[0] <= {{9{i.z[0][17]}}, i.z[0]};
				i.array_mult_datab[1] <= {{9{i.z[1][17]}}, i.z[1]};
				i.array_mult_datab[2] <= {{9{i.z[2][17]}}, i.z[2]};
				i.array_mult_datab[3] <= {{9{i.z[0][17]}}, i.z[0]};
				i.array_mult_datab[4] <= {{9{i.z[1][17]}}, i.z[1]};
				i.array_mult_datab[5] <= {{9{i.z[2][17]}}, i.z[2]};
				i.array_mult_datab[6] <= {{9{i.z[0][17]}}, i.z[0]};
				i.array_mult_datab[7] <= {{9{i.z[1][17]}}, i.z[1]};
				i.array_mult_datab[8] <= {{9{i.z[2][17]}}, i.z[2]};
			end else begin
				i.array_mult_dataa <= {9{27'b0}};
				i.array_mult_datab <= {9{27'b0}};
			end

	// LOGIC GOVERNING ARRAY MULT OUTPUT
	// axis[5:0] (axis of rotation/translation)
	always_ff @(posedge i.clk) begin
		if (i.en)
			if ( i.count==8'd34 || i.count==8'd47 || i.count==8'd59 || i.count==8'd71 || i.count==8'd83 || i.count==8'd95 ) begin 
				// || i.count==8'd95 
				i.axis[joint+1][0] <= i.array_mult_result[0] + i.array_mult_result[1];
				i.axis[joint+1][1] <= i.array_mult_result[3] + i.array_mult_result[4];
				i.axis[joint+1][2] <= i.array_mult_result[6] + i.array_mult_result[7];
			end else if ( i.count==8'd35 || i.count==8'd48 || i.count==8'd60 || i.count==8'd72 || i.count==8'd84 || i.count==8'd96 ) begin 
				// || i.count==8'd96 
				i.axis[joint+1][0] <= i.axis[joint+1][0] + i.array_mult_result[2];
				i.axis[joint+1][1] <= i.axis[joint+1][1] + i.array_mult_result[5];
				i.axis[joint+1][2] <= i.axis[joint+1][2] + i.array_mult_result[8];
			end
		i.axis[0] <= {
			{{9{i.z[2][17]}}, i.z[2]},
			{{9{i.z[1][17]}}, i.z[1]},
			{{9{i.z[0][17]}}, i.z[0]}
		};

	end

	// LOGIC GOVERNING dist_to_end[0]/2/3/4/5/6 (dist_to_end of joint)
	always_ff @(posedge i.clk)
		if (i.en)
			if ( i.count==8'd90 ) begin
				i.dist_to_end[1][0] <= i.full_matrix[5][0][3] - i.full_matrix[0][0][3];
				i.dist_to_end[1][1] <= i.full_matrix[5][1][3] - i.full_matrix[0][1][3];
				i.dist_to_end[1][2] <= i.full_matrix[5][2][3] - i.full_matrix[0][2][3];
				i.dist_to_end[2][0] <= i.full_matrix[5][0][3] - i.full_matrix[1][0][3];
				i.dist_to_end[2][1] <= i.full_matrix[5][1][3] - i.full_matrix[1][1][3];
				i.dist_to_end[2][2] <= i.full_matrix[5][2][3] - i.full_matrix[1][2][3];
				i.dist_to_end[3][0] <= i.full_matrix[5][0][3] - i.full_matrix[2][0][3];
				i.dist_to_end[3][1] <= i.full_matrix[5][1][3] - i.full_matrix[2][1][3];
				i.dist_to_end[3][2] <= i.full_matrix[5][2][3] - i.full_matrix[2][2][3];
				i.dist_to_end[4][0] <= i.full_matrix[5][0][3] - i.full_matrix[3][0][3];
				i.dist_to_end[4][1] <= i.full_matrix[5][1][3] - i.full_matrix[3][1][3];
				i.dist_to_end[4][2] <= i.full_matrix[5][2][3] - i.full_matrix[3][2][3];
				i.dist_to_end[5][0] <= i.full_matrix[5][0][3] - i.full_matrix[4][0][3];
				i.dist_to_end[5][1] <= i.full_matrix[5][1][3] - i.full_matrix[4][1][3];
				i.dist_to_end[5][2] <= i.full_matrix[5][2][3] - i.full_matrix[4][2][3];
			end
	assign i.dist_to_end[0] = {
		i.full_matrix[5][2][3],
		i.full_matrix[5][1][3],
		i.full_matrix[5][0][3]
	};

	// LOGIC GOVERNING MAT MULT INPUT
	// LOGIC GOVERNING dataa/datab (multiplications for cross-products)
	always_ff @(posedge i.clk)
		if (i.en)
			case (i.count)
				8'd0: begin
					i.mat_mult_dataa <= {36{27'b0}};
					i.mat_mult_datab <= {36{27'b0}};
				end
				8'd91: begin
					i.mat_mult_dataa <= {
						i.axis[0][1],i.axis[0][2],i.axis[0][2],i.axis[0][0],i.axis[0][0],i.axis[0][1],
						i.axis[1][1],i.axis[1][2],i.axis[1][2],i.axis[1][0],i.axis[1][0],i.axis[1][1],
						i.axis[2][1],i.axis[2][2],i.axis[2][2],i.axis[2][0],i.axis[2][0],i.axis[2][1],
						i.axis[3][1],i.axis[3][2],i.axis[3][2],i.axis[3][0],i.axis[3][0],i.axis[3][1],
						i.axis[4][1],i.axis[4][2],i.axis[4][2],i.axis[4][0],i.axis[4][0],i.axis[4][1],
						i.axis[5][1],i.axis[5][2],i.axis[5][2],i.axis[5][0],i.axis[5][0],i.axis[5][1]
					};
					i.mat_mult_datab <= {
						i.dist_to_end[0][2],i.dist_to_end[0][1],i.dist_to_end[0][0],i.dist_to_end[0][2],i.dist_to_end[0][1],i.dist_to_end[0][0],
						i.dist_to_end[1][2],i.dist_to_end[1][1],i.dist_to_end[1][0],i.dist_to_end[1][2],i.dist_to_end[1][1],i.dist_to_end[1][0],
						i.dist_to_end[2][2],i.dist_to_end[2][1],i.dist_to_end[2][0],i.dist_to_end[2][2],i.dist_to_end[2][1],i.dist_to_end[2][0],
						i.dist_to_end[3][2],i.dist_to_end[3][1],i.dist_to_end[3][0],i.dist_to_end[3][2],i.dist_to_end[3][1],i.dist_to_end[3][0],
						i.dist_to_end[4][2],i.dist_to_end[4][1],i.dist_to_end[4][0],i.dist_to_end[4][2],i.dist_to_end[4][1],i.dist_to_end[4][0],
						i.dist_to_end[5][2],i.dist_to_end[5][1],i.dist_to_end[5][0],i.dist_to_end[5][2],i.dist_to_end[5][1],i.dist_to_end[5][0]
					};
				end
				8'd98: begin // clear
					i.mat_mult_dataa <= {36{27'b0}};
					i.mat_mult_datab <= {36{27'b0}};
				end
				default: begin
					i.mat_mult_dataa <= i.mat_mult_dataa;
					i.mat_mult_datab <= i.mat_mult_datab;
				end
			endcase

	// LOGIC GOVERNING RESULT (Jacobian matrix)
	parameter MAX = 6;
	genvar col;
	generate
		for ( col=0 ; col<MAX ; col++ ) begin: jacobian_col
			always_ff @(posedge i.clk)
				if (i.en)
					if ( i.count==8'd98 )
						if ( i.joint_type[col]==1'b1 ) begin // rotational
							i.jacobian_matrix[0][col] <= i.mat_mult_result[5-col][5] - i.mat_mult_result[5-col][4];
							i.jacobian_matrix[1][col] <= i.mat_mult_result[5-col][3] - i.mat_mult_result[5-col][2];
							i.jacobian_matrix[2][col] <= i.mat_mult_result[5-col][1] - i.mat_mult_result[5-col][0];
							i.jacobian_matrix[3][col] <= i.axis[col][0];
							i.jacobian_matrix[4][col] <= i.axis[col][1];
							i.jacobian_matrix[5][col] <= i.axis[col][2];
						end else if ( i.joint_type[col]==1'b0 ) begin
							i.jacobian_matrix[0][col] <= i.axis[col][0];
							i.jacobian_matrix[1][col] <= i.axis[col][1];
							i.jacobian_matrix[2][col] <= i.axis[col][2];
							i.jacobian_matrix[3][col] <= 27'b0;
							i.jacobian_matrix[4][col] <= 27'b0;
							i.jacobian_matrix[5][col] <= 27'b0;
						end
		end // end col loop
	endgenerate
endmodule