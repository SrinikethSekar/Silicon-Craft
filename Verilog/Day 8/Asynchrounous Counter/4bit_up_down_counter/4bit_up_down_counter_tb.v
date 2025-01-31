module fourbit_up_down_counterA_tb();
  reg rst,clk,up_down;
  wire out;
  
  fourbit_up_down_counterA uut(rst,clk,up_down,out);
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
      $monitor(" rst=%b clk=%b up_down=%b out=%d",rst,clk,up_down,out);
      
      rst=1; #20;
      rst=0;up_down=1; #100;
      up_down=0; #100;
      rst=1; #20;
      rst=0; up_down=1;#100;
      
      $finish;
    end
endmodule
