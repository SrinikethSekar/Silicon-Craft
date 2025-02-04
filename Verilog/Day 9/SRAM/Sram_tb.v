module memory_address_tb;
  reg clk,rst,we;
  reg [1:0]addr;
  reg [3:0]data_in;
  wire [3:0]data_out;
  
  memory_address uut(.clk(clk),
                     .rst(rst),
                     .we(we),
                     .addr(addr),
                     .data_in(data_in),
                     .data_out(data_out));
  
   always #5 clk=~clk;
  
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
  
  initial 
    begin
      clk=0; rst=0; we=0; addr=0; data_in=0;
      #10 rst=1;
      
      #10;we=1; addr=2'b00; data_in=4'b1010;
      #10;addr=2'b01; data_in=4'b1110;
      #10;addr=2'b10; data_in=4'b1011;
      #10;addr=2'b11; data_in=4'b1111;
      
      #10; we=0; addr=2'b00;
      #10 addr=2'b01;
      #10 addr=2'b10;
      #10 addr=2'b11;
      
      #50 $finish;
    end
endmodule

