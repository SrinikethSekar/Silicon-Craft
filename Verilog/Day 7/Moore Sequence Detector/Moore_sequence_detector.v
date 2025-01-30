module fsm_seq_moore(
  input clk,
  input rst,
  input in,
  output reg out
);

  // State Encoding
  parameter [2:0] s0 = 3'b000,
                  s1 = 3'b001,
                  s2 = 3'b010,
                  s3 = 3'b011,
                  s4 = 3'b100; // Final state for output

  reg [2:0] state, next;

  // **Sequential always block for state update**
  always @(posedge clk or negedge rst) begin
      if (!rst)
          state <= s0;
      else
          state <= next;
  end

  // **Combinational always block for next state logic**
  always @(*) begin
      case (state)
          s0: next = (in) ? s1 : s0;
          s1: next = (in) ? s1 : s2;
          s2: next = (in) ? s3 : s0;
          s3: next = (in) ? s1 : s4; // Move to final output state when sequence 1010 is detected
          s4: next = s0;  // Return to initial state
          default: next = s0;
      endcase
  end

  // **Combinational always block for output logic (Moore)**
  always @(*) begin
      out = (state == s4); // Output is 1 only in s4
  end

endmodule
