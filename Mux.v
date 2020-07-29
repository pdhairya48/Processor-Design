`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:46 03/29/2020 
// Design Name: 
// Module Name:    Mux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux(
    input [31:0]a,
    input [31:0]b,
    input s,
    output reg [31:0]o
    );
always@(*)
begin
	if(s==0)
		o=a;
	else
		o=b;
end

endmodule
