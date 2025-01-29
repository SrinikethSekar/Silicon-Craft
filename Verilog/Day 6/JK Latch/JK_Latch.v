module jk_latch(
  input j,k,
  output reg q);
  
  always@(*)
    begin
      if(j&k)
        q=~q;
      else if(j)
        q=1;
      else if(k)
        q=0;
    end
endmodule
