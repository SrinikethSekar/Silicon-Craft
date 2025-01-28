module pipo_tb;
  reg clk, rst;
  reg [3:0]data_in;
  wire [3:0]data_out;

  
  pipo  uut (.clk(clk),
             .rst(rst), 
             .data_in(data_in),
             .data_out(data_out)
            );

  initial begin
    clk = 0;
    forever #10 clk = ~clk; 
  end

 
  initial begin
    $dumpfile("pipo.vcd");
    $dumpvars(0, pipo_tb);

    rst = 1; data_in=4'b0000; #10; 
    rst = 0; data_in=4'b0001;#10;
    data_in=4'b0110;#10;
    data_in=4'b1111;#10;
      
    #50 $finish; 
  end
endmodule
