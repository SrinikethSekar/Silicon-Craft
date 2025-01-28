module piso_tb;
  reg clk, rst,load;
  reg [3:0]data_in;
  wire data_out;

  
  piso  uut (.clk(clk),
             .rst(rst),
             .load(load),
             .data_in(data_in),
             .data_out(data_out)
            );

  initial begin
    clk = 0;
    forever #10 clk = ~clk; 
  end
  

 
  initial begin
    $dumpfile("piso.vcd");
    $dumpvars(0, piso_tb);

    rst = 1; load=0; data_in=4'b0000;#10;
    
    rst = 0; load=1; data_in=4'b1010; #10;
    
    load=0;#40;
    
    $finish;
    

    #50 $finish; 
  end
endmodule
