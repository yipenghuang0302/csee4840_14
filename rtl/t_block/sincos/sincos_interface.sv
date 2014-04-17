/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_sincos (
	input logic clk
);

logic en, rst;
logic [26:0] angle;
logic [26:0] sin;
logic [26:0] cos;

//clocking cb @(posedge clk);
//	output en;
//	output rst;
//	output angle;
//	input sin;
//	input cos;
//endclocking
//
//modport sincos_tb (clocking cb);

// restrict directions
modport sincos (
	input clk,
	input en,
	input rst,
	input angle,
	output sin,
	output cos
);

endinterface