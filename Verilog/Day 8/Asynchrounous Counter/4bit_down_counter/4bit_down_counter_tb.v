module fourbit_down_counterA_tb();
  reg rst,clk;
  wire out;
  
  fourbit_down_counterA uut(rst,clk,out);
  initial 
    begin
      clk=0;
      forever #5 clk=~clk;
  
    end
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
  
  initial
    begin
      $monitor(" rst=%b clk=%b  out=%d",rst,clk,out);
      
      rst=1; #20;
      rst=0; #100;
      rst=1; #20;
      rst=0; #100;
      
      $finish;
    end
endmodule
