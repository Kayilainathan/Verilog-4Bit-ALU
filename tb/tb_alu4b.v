`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2026 21:29:11
// Design Name: 
// Module Name: tb_alu4b
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


module tb_alu4b();
reg [3:0] a;
reg [3:0] b;
reg [2:0] select;

wire [3:0] result;

alu_4b ln (a,b,select,result);
initial begin
//to display the result in the tcl
$monitor("Time=%0t | Select=%b | a = %d | b = %d | Result=%b",$time, select, a, b, result);

a = 0; b = 0; select = 0; #10
a = 3; b = 5; 
select = 3'b000; #10 //addition 3 + 5 = 8
a = 5; b = 2;
select = 3'b001; #10 //subtraction 5 - 2 = 3
select = 3'b010; #10 //AND 0101 & 0010 = 0000
select = 3'b011; #10 //OR 0101 & 0010 = 0111
select = 3'b100; #10 //XOR 0101 & 0010 = 0111
select = 3'b101; #10 //NOT 0101 = 1010
select = 3'b110; #10 //Right Shift 0101 >> 1 5/2 = 2 - 0010
select = 3'b111; #10 //Left Shift 0101 << 1 5*2 = 10 - 1010
$finish;
end

endmodule
