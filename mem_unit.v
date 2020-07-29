`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:06:46 03/29/2020 
// Design Name: 
// Module Name:    mem_unit 
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
module mem_unit(
    input [31:0] pc,
    input reset,
    output [31:0] instr
    );
reg [7:0]mem[19:0];
assign instr={mem[pc],mem[pc+1],mem[pc+2],mem[pc+3]};
always@(reset)
begin 
if(reset==1)
begin
//li r1,8
mem[0]=8'b11111100;
mem[1]=8'b00100000;
mem[2]=8'b00000000;
mem[3]=8'b00001000;
//li r2,2
mem[4]=8'b11111100;
mem[5]=8'b01000000;
mem[6]=8'b00000000;
mem[7]=8'b00000010;
//add r0,r2,r1
mem[8]=8'b00000000;
mem[9]=8'b00000010; 	
mem[10]=8'b00001000;
mem[11]=8'b00100000;
//sub r4,r1,r2
mem[12]=8'b00000000;  
mem[13]=8'b10000001;
mem[14]=8'b00010000;
mem[15]=8'b00100010;
//sll r5,r1,8
mem[16]=8'b00000000;
mem[17]=8'b10100010;
mem[18]=8'b00000010;
mem[19]=8'b00000000;
end
end


endmodule
