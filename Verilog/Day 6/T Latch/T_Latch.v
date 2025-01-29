module t_latch(
  input en,t,
  output reg q
);
initial q=0;
  always@(*)
    begin
      if(en)
        q=t?~q:q;
     
    end
endmodule
