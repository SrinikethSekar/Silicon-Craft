

module TB_moore;
  reg clk, rst, in;
  wire out;
  
  fsm_seq_moore sd(clk, rst, in, out);
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    in = 0;
    #1 rst = 0;
    #2 rst = 1;
    
    #3 in = 1;
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 1;
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 0;
    #10;
    $finish;
  end
  
  initial begin
    // Dump waves
    $monitor("clk=%b rst=%b in=%b out=%b",clk,rst,in,out);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule
