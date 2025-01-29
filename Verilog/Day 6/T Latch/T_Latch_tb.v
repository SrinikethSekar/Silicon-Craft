module t_latch_tb;
  reg en,t;
  wire q;
  
  t_latch uut(
    .en(en),
    .t(t),
    .q(q));
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
  
  initial 
    begin
      $monitor("time=0%t t=%b en=%b q=%b",$time,t,en,q);
      
      en=0;t=0;#10;
      en=1;t=1;#10;
      en=1;t=1;#10;
      en=1;t=0;#10;
      en=1;t=1;#10;
     $finish;
    end
endmodule
