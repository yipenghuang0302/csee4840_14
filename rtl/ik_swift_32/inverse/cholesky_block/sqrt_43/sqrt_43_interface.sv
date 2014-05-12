/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_sqrt_43 (
	input logic clk
);

logic en, rst;
logic [26:0] radical;
logic [26:0] q;

// clocking cb @(posedge clk);
// 	output en;
// 	output rst;
// 
// 	output radical;
// 	input q;
// endclocking
// 
// modport sqrt_43_tb (clocking cb);

// restrict directions
modport sqrt_43 (
	input clk,
	input en,
	input rst,

	input radical,
	output q
);

endinterface