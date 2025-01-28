module siso #(parameter WIDTH=4) (
  input clk, rst, data_in,
  output reg data_out
);
  reg [WIDTH-1:0] shift_reg; 

  always @(posedge clk or posedge rst) begin
    if (rst)
      shift_reg <= 0; // Clear the shift register on reset.
    else begin
      shift_reg <= {shift_reg[WIDTH-2:0], data_in}; 
      data_out <= shift_reg[WIDTH-1]; 
    end
  end
endmodule
