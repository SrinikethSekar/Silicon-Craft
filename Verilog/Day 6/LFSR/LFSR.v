module lfsr #(parameter WIDTH=4) (
  input clk, rst,
  output reg [WIDTH-1:0] lfsr_out
);
 

  always @(posedge clk or posedge rst) begin
    if (rst)
      lfsr_out <= 4'b0001; //initial value must be non zerp
    else 
      lfsr_out <={lfsr_out[WIDTH-2:0],lfsr_out[3]^lfsr_out[2]};  
   
  end
endmodule
