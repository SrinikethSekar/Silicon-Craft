module shift_reg_tb;
  reg clk, rst,shift_left,shift_right;
  reg [1:0] mode;
  reg[3:0]data_in;
  wire [3:0]data_out;

  
  shift_reg  uut (.clk(clk),
             .rst(rst),
             .shift_left(shift_left),
             .shift_right(shift_right),
             .mode(mode),
             .data_in(data_in),
             .data_out(data_out)
            );

  initial begin
    clk = 0;
    forever #10 clk = ~clk; 
  end
 
 
  initial begin
    $dumpfile("shift_reg_tb.vcd");
    $dumpvars;

	rst=1; mode=2'b00; data_in=4'b0000;#10;
    rst=0; mode=2'b11; data_in=4'b0101;#10;
    rst=0; mode=2'b01; shift_left=1; #10;
    rst=0; mode=2'b10; shift_right=1;#10;
    mode=2'b00;#10;
    
    
    
    
    #50 $finish; 
  end
endmodule
