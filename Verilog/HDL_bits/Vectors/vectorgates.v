module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    assign out_or_bitwise= a|b;   //bitwise or Operator 
    assign out_or_logical= a||b; //logical or operator 
    assign out_not[5:3]=~(b); //assign the output to the input by inverted
    assign out_not[2:0]=~(a);

endmodule
