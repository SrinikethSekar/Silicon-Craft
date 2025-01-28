// Code your testbench here
// or browse Examples
module tff_tb();
  reg clk,rst,t;
  wire q,qb;
  
  
  tff tff1(clk,rst,t,q,qb);
  //test sequence
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
  end
  //clock generation
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
    
  initial begin
    $monitor("Time=%0t | clk=%b | rst=%b | t=%b | q=%b | qb=%b",$time,clk,rst,t,q,qb);
    
    //initial signals
    
    rst=1; t=0; #10;
    rst=0; t=0; #10;
   	rst=0; t=1; #10;
    
    $finish;
  end
endmodule
    
    
  
