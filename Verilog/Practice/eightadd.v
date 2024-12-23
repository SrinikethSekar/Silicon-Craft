// 8-bit Adder in Verilog
module eight_bit_adder(
    input [7:0] A,    // 8-bit input A
    input [7:0] B,    // 8-bit input B
    output [7:0] Sum, // 8-bit output Sum
    output Carry      // Carry out
);
    assign {Carry, Sum} = A + B;
endmodule

module Testbench;
    reg [7:0] A, B; // Test inputs
    wire [7:0] Sum;
    wire Carry;
    
    // Instantiate the 8-bit adder module
    eight_bit_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );
    
    initial begin
        $dumpfile("8add.vcd");
        $dumpvars(0, Testbench);
        
        // Test vectors
        A = 8'b00011001; B = 8'b00010101; #10; // Test case 1
        A = 8'b11111111; B = 8'b00000001; #10; // Test case 2
        A = 8'b10101010; B = 8'b01010101; #10; // Test case 3
        $finish;
    end
endmodule

