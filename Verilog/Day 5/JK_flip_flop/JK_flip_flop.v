module jk_ff(
  input j,k,
  input clk,rst,
  output reg q,
  output qb);
  
  always@(posedge clk)begin
    if(rst)
      q<=0;
    else
      case({j,k})
        2'b00:q<=q;
        2'b01:q<=1'b0;
        2'b10:q<=1'b1;
        2'b11:q<=~q;
      endcase
  end
  assign qb=~q;
endmodule



