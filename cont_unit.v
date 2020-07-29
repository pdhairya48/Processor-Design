`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:45:11 03/29/2020 
// Design Name: 
// Module Name:    cont_unit 
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
module cont_unit(
    input [5:0]opcode,
	 input [5:0]funct,
    output reg alusrc,
    output reg reg_write,
     output reg reg_data,
	 output reg regwrite_data
    );
always@(*)
begin
case(opcode)
6'b111111:
	begin
		alusrc=0;
		regwrite_data=0;
		reg_write=1;
	end
6'b000000:
	begin
		alusrc=1;
		regwrite_data=1;
		reg_write=1;
	case(funct)
	6'b100000:reg_data=0;
	6'b100010:reg_data=0;
	6'b100100:reg_data=0;
	6'b100101:reg_data=0;
	6'b100000:reg_data=1;
	6'b100010:reg_data=1;
	endcase
	end
endcase
end
endmodule
