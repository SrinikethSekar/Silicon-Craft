module TB_moore;
  reg clk, rst, in;
  wire out;
  
  fsm_seq_moore uut(clk, rst, in, out);

  // Clock generation
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    $monitor("time=%0t | clk=%b rst=%b in=%b out=%b", $time, clk, rst, in, out);

    // Reset sequence
    in = 0;
    #1 rst = 0;
    #2 rst = 1;

    // Apply sequence: 1010
    #3 in = 1;
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 0;  // Output should be 1 here in Moore FSM (state s4)
    
    // Apply another sequence to check non-overlapping detection
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 0;  // Output should be 1 again

    #10;
    $finish;
  end

  initial begin
    $dumpfile("moore_fsm.vcd");
    $dumpvars(0);
  end
endmodule
