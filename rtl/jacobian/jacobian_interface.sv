/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_jacobian (
	input logic clk
);

parameter MAX = 6;

//Global clock cycle counter
logic [8:0] count;

//Which joint we're on
logic [2:0] joint;

//Base joint's axis of rotation/translation
logic [2:0] [26:0] z;

//Current position of end effector
logic [2:0] [26:0] s;

//T block
logic [3:0] [3:0] [26:0] t_matrix;

//Jacobian
logic [5:0] [5:0] [26:0] jacobian_matrix;

//Output to multipliers
logic [5:0] [5:0] [26:0] dataa;
logic [5:0] [5:0] [26:0] datab;

//Input from multipliers
logic [5:0] [5:0] [26:0] result;

clocking cb @(posedge clk);
	output en;
	output z;
	output s;
	output t_matrix;
	output result;

	input jacobian_matrix;
	input dataa;
	input datab;
endclocking

modport jacobian_tb (clocking cb);

// restrict directions
modport jacobian (
	input clk,
	input en,

	input z,

	input s,

	input t_matrix,

	input result,

	output jacobian_matrix,

	output dataa,
	output datab
);

endinterface
