module sr_ff_tb();
  reg clk, rst, s, r;
  wire q, qb;

  // Instantiate the SR flip-flop
  sr_ff srff(
    .clk(clk),
    .rst(rst),
    .s(s),
    .r(r),
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
    $dumpvars(0, sr_ff_tb);

    $monitor("Time=%0t | clk=%b | rst=%b | s=%b | r=%b | q=%b | qb=%b",
             $time, clk, rst, s, r, q, qb);

    // Test Cases
    rst = 1; s = 0; r = 0; #10;  // Apply reset
    rst = 0; s = 0; r = 0; #10;  // Hold state
    rst = 0; s = 0; r = 1; #10;  // Reset
    rst = 0; s = 1; r = 0; #10;  // Set
    rst = 0; s = 1; r = 1; #10;  // Invalid state

    $finish;
  end
endmodule
