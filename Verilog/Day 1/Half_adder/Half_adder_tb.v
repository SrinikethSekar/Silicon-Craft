`timescale 1ns / 1ps

module Half_Adder_tb();
reg a,b;          //Input of the half adder circuit, since we are going to store the value, we are using "reg"
wire sum,carry;   //Half adder output 

  Half_Adder uut(.a(a),.b(b),.sum(sum),.carry(carry)); //calling the input to the test bench through instantiation(represent in ".a(a)")
 initial
   begin 
 $dumpfile("Half_Adder.vcd");
 $dumpvars(0,Half_Adder_tb);
 end
initial
    begin   
      a=0; b=0; #10
      a=0; b=1; #10
      a=1; b=0; #10
      a=1; b=1; #10
      $finish;            //the simulation is finished here
      end
endmodule
