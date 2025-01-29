module jk_latch_tb;
  reg j,k;
  wire q;
  
  jk_latch uut(
    .j(j),
    .k(k),
    .q(q));
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
  
  initial 
    begin
      $monitor("time=0%t j=%b k=%b  q=%b",$time,j,k,q);
      
       j=0;k=0;#10
       j=0;k=1;#10
       j=1;k=0;#10
       j=1;k=1;#10
  
     $finish;
    end
endmodule
