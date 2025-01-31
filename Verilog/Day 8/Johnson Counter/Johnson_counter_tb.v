module Johnsoncounter_tb();
  reg clk,rst;
  wire q;
  
  Johnsoncounter uut(clk,rst,q);
  
  initial
    begin
     clk=0;
  forever#5 clk=~clk;
    end
  
  initial
    begin
      $dumpfile("waves.vcd");
      $dumpvars;
    end
  
  initial
    begin
      $monitor(" clk=%b rst=%b q=%b",clk,rst,q);
      
      rst=1; #20
      rst=0; #100;
      rst=1; #20;
      rst=0; #100;
      #10;
      $finish;
    end
endmodule      
      
      
