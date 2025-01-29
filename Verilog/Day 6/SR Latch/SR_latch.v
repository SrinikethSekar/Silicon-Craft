module sr_latch(
  input s,r,
  output reg q);
  
  always@(*)
    begin
      if(s&r)
      q=1'bx;
      else if(s)
        q=1;
      else if(r)
        q=0;
    end
endmodule
