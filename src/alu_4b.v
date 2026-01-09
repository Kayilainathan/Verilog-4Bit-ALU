`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2026 21:10:51
// Design Name: 
// Module Name: alu_4b
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_4b(
input [3:0] a, //4 bit input
input [3:0] b, //4bit input
input [2:0] select, //3bit select
output reg [3:0] result //4bit result
    );
    always @(*) begin //@(*) - wave up and runs the block whenever the input changes
    // combinational logic no clock memory
    case(select)
    3'b000: result = a + b;  //Addition
    3'b001: result = a - b;  //Subtraction
    3'b010: result = a & b;  //Bitwise AND
    3'b011: result = a | b;  //Bitwise OR
    3'b100: result = a ^ b;  //Bitwise XOR
    3'b101: result = ~a;     //Bitwise NOT
    3'b110: result = a >> 1; //Right Shift - divides a by 2
    3'b111: result = a << 1; //Left Shift  - multiplies a by 2
    default: result = 4'b0000; //sets the result to 0000 if the input is not in select range
    endcase
   end
endmodule
