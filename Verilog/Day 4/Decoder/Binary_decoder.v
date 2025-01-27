module decoder(
  input [2:0]a,
  output reg [7:0]b
);
  
  always@(a)
    begin
	b=0;
      case(a)
      3'b000: b[0] = 1'b1;
      3'b001: b[1] = 1'b1;
      3'b010: b[2] = 1'b1;
      3'b011: b[3] = 1'b1;
      3'b100: b[4] = 1'b1;
      3'b101: b[5] = 1'b1;
      3'b110: b[6] = 1'b1;
      3'b111: b[7] = 1'b1;
      default: b = 0;
        
      endcase
    end
endmodule
