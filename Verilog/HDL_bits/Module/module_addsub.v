module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);	
    wire [15:0] sum1,sum2;
    wire cout;
    wire [31:0]subbit;
    assign subbit = b[31:0]^{32{sub}};
    add16 inst1(a[15:0],subbit[15:0],sub,sum1,cout);
    add16 inst2(a[31:16],subbit[31:16],cout,sum2,0);
    assign sum = {sum2,sum1};
endmodule
