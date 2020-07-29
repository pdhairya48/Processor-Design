`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:33:39 03/29/2020 
// Design Name: 
// Module Name:    alu 
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
module alu(

    input [31:0] a,
    input [31:0] b,
	 input [5:0] func,
	 input alusrc,
    output reg [31:0] out
    );
always@(*)
begin
if(alusrc==1)
begin
case(func)
	6'b100000:out=a+b;
	6'b100010:out=a-b;
	6'b100100:out=a&b;
	6'b100101:out=a|b;
	6'b000000:out=a<<b;
	6'b000010:out=a>>b;
	endcase
end
end

endmodule
