`timescale 1ns / 1ps
module bitmul(
input [3:0]a,
input [3:0]b,
output reg [8:0] product);
always@(*)begin
product=a*b;
end
endmodule
