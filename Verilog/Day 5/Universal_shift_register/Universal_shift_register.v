module shift_reg #(parameter WIDTH=4) (
  input clk, rst,
  input [1:0]mode,
  input [WIDTH-1:0]data_in,
  input shift_left,
  input shift_right,
  output reg [WIDTH-1:0] data_out
);
 

  always @(posedge clk or posedge rst) begin
    if (rst)
      data_out <= 0; // Clear the shift register on reset.
    else 
      case(mode)
    2'b00:data_out<=data_out;
    2'b01: data_out <= {data_out[WIDTH-2:0],shift_left};
    2'b10:data_out<={shift_right,data_out[WIDTH-1:1]};
    2'b11:data_out<=data_in;
    default:data_out<=data_out;
      endcase
  end
endmodule
