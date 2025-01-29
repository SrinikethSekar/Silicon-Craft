module sr_latch_tb;
  reg s,r;
  wire q;
  
  sr_latch uut(
    .s(s),
    .r(r),
    .q(q));
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
  
  initial 
    begin
      $monitor("time=0%t s=%b r=%b  q=%b",$time,s,r,q);
      
       s=0;r=0;#10
       s=0;r=1;#10
       s=1;r=0;#10
       s=1;r=1;#10
  
     $finish;
    end
endmodule
