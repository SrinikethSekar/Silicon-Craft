module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);	
    wire cout1;   //for the connection of the two adder module 
    wire [15:0] sum1,sum2; //sum of the two combined adders
    add16 (a[15:0],b[15:0],0,sum1[15:0],cout1);  //given represented way the instantiation is done for the inputs and outputs
    add16 (a[31:16],b[31:16],cout1,sum2[15:0],0);
    assign sum = {sum2,sum1};
endmodule
