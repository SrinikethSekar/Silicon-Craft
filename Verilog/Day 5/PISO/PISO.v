module piso #(parameter WIDTH=4) (
  input clk, rst,load, 
  input [WIDTH-1:0]data_in,
  output reg data_out
);
  reg [WIDTH-1:0] shift_reg; 

  always @(posedge clk or posedge rst) begin
    if (rst)
      shift_reg <= 0; // Clear the shift register on reset.
    else if(load)
      shift_reg=data_in;
    else 
      shift_reg <= {shift_reg[WIDTH-2:0], 1'b0}; 
  end
  always@(*)
    begin
      data_out <= shift_reg[WIDTH-1];
    end
endmodule
