module fourbit_up_counterA(
  input rst,clk,
  output reg [3:0]out);
  
  always@(posedge clk or posedge rst)
   begin
    if(rst)
      out<=4'b0000;
  else
     out<=out-1;
   end
endmodule
