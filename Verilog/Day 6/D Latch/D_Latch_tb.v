module d_latch_tb;
  reg en,d;
  wire q;
  
  d_latch uut(
    .en(en),
    .d(d),
    .q(q));
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
  
  initial 
    begin
      $monitor("time=0%t d=%b en=%b q=%b",$time,d,en,q);
      
      en=0;d=0;#10;
      en=1;d=1;#10;
      en=0;d=0;#10;
      en=1;d=0;#10;
      en=1;d=1;#10;
     $finish;
    end
endmodule
