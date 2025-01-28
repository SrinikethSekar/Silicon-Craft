module tff(
  input clk, rst,
  input t,
  output reg q ,qb
  );
  
  always@(posedge clk) 
    begin
      if(rst) 
      q <= 1'b0;
     
    else      
      q <= (t?~q:q);
  end
  assign qb=~q;
endmodule
