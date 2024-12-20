module FourBitAdder (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
    assign {Cout, Sum} = A + B + Cin;
endmodule

module Testbench;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    // Instantiate the 4-bit adder
    FourBitAdder adder (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $dumpfile("dumpfile.vcd");
        $dumpvars(0, Testbench);

        A = 4'b0001; B = 4'b0011; Cin = 0;
        #10;
        A = 4'b1100; B = 4'b1010; Cin = 1;
        #10;
        A = 4'b1111; B = 4'b1111; Cin = 1;
        #10;
        $stop;
    end
endmodule

