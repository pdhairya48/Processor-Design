`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:42:45 03/29/2020 
// Design Name: 
// Module Name:    reg_file 
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
module reg_file(
	
    input [4:0] read_r1,
    input [4:0] read_r2,
	 input [4:0] write_reg,
    input [31:0] write_d,
    output  [31:0] read_o1,
    output  [31:0] read_o2, 
	 input reg_write
    );

reg [31:0]mem[31:0];

assign read_o1=mem[read_r1];
assign read_o2=mem[read_r2];

always@(*)
begin
if(reg_write==1)
begin
mem[write_reg]=write_d;
end

end

endmodule
