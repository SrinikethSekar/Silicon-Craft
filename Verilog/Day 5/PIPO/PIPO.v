module pipo #(parameter WIDTH=4) (
  input clk, rst,
  input [WIDTH-1:0]data_in,
  output reg [WIDTH-1:0] data_out
);
 

  always @(posedge clk or posedge rst) begin
    if (rst)
      data_out <= 0; // Clear the shift register on reset.
    else 
      data_out <= data_in;  
   
  end
endmodule
