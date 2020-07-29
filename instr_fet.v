`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:59 03/29/2020 
// Design Name: 
// Module Name:    instr_fet 
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
module instr_fet(
    input clk,
    input reset,
    output [31:0] instr
    );
reg [31:0]pc=0;
mem_unit  g9(pc,reset,instr);
always@(posedge clk,negedge reset)
begin
if(reset==0)
	begin
	pc<=0;
	end
else
	begin
	pc<=pc+4;
	end
end
endmodule
