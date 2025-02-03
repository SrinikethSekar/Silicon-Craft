module TB_Async_UpDown_Counter;
  reg clk, rst_n, j, k, up;
  wire [3:0] q, q_bar;

  Async_UpDown_Counter UUT (clk, rst_n, j, k, up, q, q_bar);

  always #2 clk = ~clk; 

  initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0, TB_Async_UpDown_Counter);

    clk = 0; rst_n = 0; up = 1; 
    #4 rst_n = 1; j = 1; k = 1; 

    #40 up = 0; 
    #40 rst_n = 0; 
    #4 rst_n = 1; up = 1; 

    #50 $finish;
  end
endmodule
