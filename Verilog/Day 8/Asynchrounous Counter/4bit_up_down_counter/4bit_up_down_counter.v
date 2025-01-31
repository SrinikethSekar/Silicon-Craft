module fourbit_up_down_counterA(
  input rst,clk,
  input up_down, //mode signal 1 means up ,2 means down
  output reg [3:0]out);
  
  always@(posedge clk or posedge rst)
   begin
    if(rst)
      out<=4'b0000;
     else if(up_down)
       out<=out+1;
  else
     out<=out-1;
   end
endmodule
