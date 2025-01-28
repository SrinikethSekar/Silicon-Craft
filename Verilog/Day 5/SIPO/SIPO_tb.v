module sipo_tb;
  reg clk, rst, data_in;
  wire [3:0]data_out;

  
  sipo  uut (.clk(clk),
             .rst(rst), 
             .data_in(data_in),
             .data_out(data_out)
            );

  initial begin
    clk = 0;
    forever #10 clk = ~clk; 
  end
  
   
  
 
  initial begin
    $dumpfile("sipo.vcd");
    $dumpvars(0, sipo_tb);

    rst = 1; data_in=0; #10; 
    rst = 0;      

 	data_in=1;#10;
    data_in=0;#10;
    data_in=1;#10;
    data_in=1;#10;

    #50 $finish; 
  end
endmodule
