module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]sum1,sum2,sum3;
    wire cout;
    add16 inst1(a[15:0],b[15:0],1'b0,sum1[15:0],cout);
    add16 inst2(a[31:16],b[31:16],1'b0,sum2[15:0],0);
    add16 inst3(a[31:16],b[31:16],1'b1,sum3[15:0],0);
    always@(*)
        begin
            case(cout)
                 1'b1: sum = {sum3,sum1};
                1'b0: sum = {sum2,sum1};
            endcase
        end
              
endmodule
