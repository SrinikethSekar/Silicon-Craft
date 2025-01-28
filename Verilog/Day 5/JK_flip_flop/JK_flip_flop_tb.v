
module jk_ff_tb();
  reg clk, rst, j, k;
  wire q, qb;

  // Instantiate the SR flip-flop
  jk_ff jkff(
    .clk(clk),
    .rst(rst),
    .j(j),
    .k(k),
    .q(q),
    .qb(qb)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // Toggle clock every 5 time units
  end

  // Test sequence
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, jk_ff_tb);

    $monitor("Time=%0t | clk=%b | rst=%b | j=%b | k=%b | q=%b | qb=%b",
             $time, clk, rst, j, k, q, qb);

    // Test Cases
    rst = 1; j = 0; k = 0; #10;  // Apply reset
    rst = 0; j = 0; k = 0; #10;  // Hold state
    rst = 0; j = 0; k = 1; #10;  // Reset
    rst = 0; j = 1; k = 0; #10;  // Set
    rst = 0; j = 1; k = 1; #10;  // toggle state

    $finish;
  end
endmodule
