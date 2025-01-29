module dff_tb();
  reg clk,rst_n,d;
  wire q,qb;
  
  
  dff dff1(clk,rst_n,d,q,qb);
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
    $monitor("Time=%0t | clk=%b | rst_n=%b | d=%b | q=%b | qb=%b",$time,clk,rst_n,d,q,qb);
    
    //initial signals
    
    rst_n=1; d=0; #10;
    rst_n=0; d=1; #10;
   	rst_n=0; d=0; #10;
    $finish;
  end
endmodule
    
    
  
