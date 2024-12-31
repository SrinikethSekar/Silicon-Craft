`timescale 1ns / 1ps

module Full_adder_tb();
reg a,b,c_in;          //Input of the half adder circuit, since we are going to store the value, we are using "reg"
wire sum,carry;   //Half adder output 

    Full_adder uut(.a(a),.b(b),.c_in(c_in),.sum(sum),.carry(carry)); //calling the input to the test bench through instantiation

initial
    begin
    $monitor("Time=%0t | a=%b b=%b cin=%b | sum=%b carry=%b", $time, a, b, cin, sum, carry);
      a=0; b=0; c_in=0; #10;
      a=0; b=0; c_in=1; #10;
      a=0; b=1; c_in=0; #10;
      a=0; b=1; c_in=1; #10;
      a=1; b=0; c_in=0; #10;
      a=1; b=0; c_in=1; #10;
      a=1; b=1; c_in=0; #10;
      a=1; b=1; c_in=1; #10;
      $finish;            //the simulation is finished here
      end
endmodule

