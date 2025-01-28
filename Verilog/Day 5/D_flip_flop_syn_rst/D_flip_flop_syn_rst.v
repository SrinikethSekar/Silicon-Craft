module dff_syn(
  input clk, rst_n,
  input d,
  output reg q ,qb
  );
  
  always@(posedge clk) 
    begin
      if(rst_n) 
      q <= 1'b0;
     
    else      
      q <= d;
    
  end
  assign qb=~q;
endmodule
