module siso_tb;
  reg clk, rst, data_in;
  wire data_out;

  
  siso  uut (.clk(clk),
             .rst(rst), 
             .data_in(data_in),
             .data_out(data_out)
            );



  initial begin
    clk = 0;
    forever #5 clk = ~clk; 
  end
  
   
  task apply_input;
    input bi;
    begin
      data_in = bi;
      #10; // Wait for one clock cycle
    end
  endtask

 
  initial begin
    $dumpfile("siso.vcd");
    $dumpvars(0, siso_tb);

    rst = 1; #10; 
    rst = 0;      

 
    apply_input(1);
    apply_input(0);
    apply_input(1);
    apply_input(1);
    apply_input(0);

    #50 $finish; 
  end
endmodule
