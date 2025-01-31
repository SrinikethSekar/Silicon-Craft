module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout1; 
    wire [15:0] sum1,sum2;
    add16 (a[15:0],b[15:0],0,sum1[15:0],cout1);
    add16 (a[31:16],b[31:16],cout1,sum2[15:0],0);
    assign sum = {sum2,sum1};
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );//this module is separate and created for the above code
    assign {cout,sum}=a+b+cin; // first module is called here for the output
    
endmodule
