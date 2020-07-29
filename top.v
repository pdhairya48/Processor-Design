`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:05 03/29/2020 
// Design Name: 
// Module Name:    top 
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
	module top(
    input clk,
    input reset
    );
	 wire [31:0]et; wire [31:0]et2;
	 wire [31:0]d1;	wire [31:0]d2;
	 wire [31:0]w1; wire [31:0]o;
	 wire [31:0]o2;	wire [31:0]instr;
	 wire reg_data,alusrc,reg_write,regwrite_data;

instr_fet g1(clk,reset,instr);

reg_file g2(instr[20:16],instr[15:11],instr[25:21],w1,d1,d2,reg_write);
assign et={21'b0,instr[10:6]};
Mux m1(d2,et,reg_data,o);
assign et2={{11{instr[20]}},instr[20:0]};
Mux m2(et2,o2,regwrite_data,w1);
cont_unit g3(instr[31:26],instr[5:0],alusrc,reg_write,reg_data,regwrite_data);
alu g4(d1,o,instr[5:0],alusrc,o2);
endmodule
