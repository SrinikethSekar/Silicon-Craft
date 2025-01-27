module onetofour_demux(
  input [1:0]sel,
  input i,
  output reg a,b,c,d);
  
  always@(*)begin
    case(sel)
      
      2'h0:{a,b,c,d}={i,3'b0};
      2'h1:{a,b,c,d}={1'b0,i,2'b0};
      2'h2:{a,b,c,d}={2'b0,i,1'b0};
      2'h3:{a,b,c,d}={3'b0,i};
      default: $display("Invalid sel input");
    endcase
  end
endmodule
  
  
