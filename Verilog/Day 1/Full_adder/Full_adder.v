`timescale 1ns / 1ps

module Full_adder(
input a,b,
input c_in,
output sum,carry
    );
wire x,y,z;

xor a1(x,a,b);
xor a2(sum,x,c_in);

and b1(y,x,c_in);
and b2(z,a,b);
or c1(carry,y,z);

endmodule

