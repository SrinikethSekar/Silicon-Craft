module lfsr_tb;
  reg clk, rst;
  wire [3:0]lfsr_out;

  
  lfsr  uut (.clk(clk),
             .rst(rst), 
             .lfsr_out(lfsr_out)
            );

  initial begin
    clk = 0;
    forever #10 clk = ~clk; 
  end

  initial begin
    $dumpfile("lfsr.vcd");
    $dumpvars;
    
    $monitor("time=0%t lfsr_out=%b",$time,lfsr_out);
    rst = 1; #10; 
    rst = 0; #100;
    #200;
     $finish; 
  end
endmodule
