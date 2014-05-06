// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps
`include "ik_swift_interface.sv"
`include "ik_swift.sv"
`include "bench.sv"

`include "full_jacobian/full_jacobian_interface.sv"
`include "full_jacobian/full_jacobian.sv"
`include "full_jacobian/jacobian/jacobian_interface.sv"
`include "full_jacobian/jacobian/jacobian.sv"
`include "full_jacobian/full_mat/full_mat_interface.sv"
`include "full_jacobian/full_mat/full_mat.sv"
`include "full_jacobian/full_mat/t_block/t_block_interface.sv"
`include "full_jacobian/full_mat/t_block/t_block.sv"
`include "full_jacobian/full_mat/t_block/sincos/sincos_interface.sv"
`include "full_jacobian/full_mat/t_block/sincos/sincos.sv"
`include "full_jacobian/full_mat/t_block/sincos/sin.sv"
`include "full_jacobian/full_mat/t_block/sincos/cos.sv"
`include "full_jacobian/full_mat/t_block/sincos/mult_36_coeff_26561/mult_36_coeff_26561.v"
`include "full_jacobian/full_mat/t_block/sincos/mult_36_coeff_83443/mult_36_coeff_83443.v"
`include "full_jacobian/full_mat/t_block/sincos/mult_36_coeff_14746/mult_36_coeff_14746.v"

`include "inverse/inverse_interface.sv"
`include "inverse/inverse.sv"
`include "inverse/cholesky_block/cholesky_block_interface.sv"
`include "inverse/cholesky_block/cholesky_block.sv"
`include "inverse/cholesky_block/sqrt_52/sqrt_52_interface.sv"
`include "inverse/cholesky_block/sqrt_52/sqrt_52.v"
`include "inverse/lt_block/lt_block_interface.sv"
`include "inverse/lt_block/lt_block.sv"
`include "inverse/array_div/array_div_interface.sv"
`include "inverse/array_div/array_div.sv"
`include "inverse/array_div/div_52/div_52.v"

`include "mat_mult/mat_mult_interface.sv"
`include "mat_mult/mat_mult.sv"
`include "mat_mult/mult_array.sv"
`include "array_mult/array_mult_interface.sv"
`include "array_mult/array_mult.sv"

`include "mult_36/mult_36.v"
`include "sim_models/lpm_mult.v"
`include "sim_models/mult_block.v"
`include "sim_models/addsub_block.v"
`include "sim_models/pipeline_internal_fv.v"
`include "sim_models/dffep.v"
`include "sim_models/altera_mf.v"
`include "sim_models/220model.v"

module ik_swift_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_ik_swift ifc_ik_swift (clk);
	ik_swift_tb ik_swift_tb (ifc_ik_swift.ik_swift_tb);
	ik_swift ik_swift (ifc_ik_swift.ik_swift);

endmodule