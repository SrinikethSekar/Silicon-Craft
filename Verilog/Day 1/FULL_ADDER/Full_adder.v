`timescale 1ns / 1ps

module Full_adder(
input a,b,            //input of the full adder
input c_in,            //carry is the main operations, because we are using two half adders
output sum,carry        //output of the full adder
    );
wire x,y,z;

xor a1(x,a,b);            //these gate is used for the first half adder circuit
xor a2(sum,x,c_in);

and b1(y,x,c_in);
and b2(z,a,b);            //these gates are used for the second half adder circuit
or c1(carry,y,z);

endmodule

