module dpram_tb;
  
  reg clk;
  reg we_a,we_b;
  reg [2:0]addr_a,addr_b;
  reg [7:0]data_a,data_b;
  wire [7:0]out_a,out_b;
  
  dpram uut(.clk(clk),
            .we_a(we_a),
            .we_b(we_b),
            .addr_a(addr_a),
            .addr_b(addr_b),
            .data_a(data_a),
            .data_b(data_b),
            .out_a(out_a),
            .out_b(out_b)
           );
  
  always #5 clk=~clk;
  
  initial 
    begin
      $dumpfile("waves.vcd");
      $dumpvars;
    end
 
  initial
    begin
      
      clk = 0; we_a = 0; we_b = 0; addr_a = 0; addr_b = 0; data_a = 0; data_b = 0;

      
      #10; we_a=1; addr_a=3'b000; data_a=8'b10101001;
      #10; we_b=1; addr_b=3'b001; data_b=8'b10111111;
      
      
      #20; we_a=0; addr_a=3'b000;
      #20; we_b=0; addr_b=3'b001;

      #20;
      $finish;
      
    end
endmodule
