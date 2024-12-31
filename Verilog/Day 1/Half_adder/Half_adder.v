`timescale 1ns / 1ps
module Half_Adder(
input a,b,          //Input of the half adder circuit
output sum,carry   //Half adder output
    );
assign sum=a^b;    //sum of the two input
assign carry=a&b; //carry of the two input
endmodule
