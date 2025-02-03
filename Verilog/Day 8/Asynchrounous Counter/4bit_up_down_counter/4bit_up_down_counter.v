module JK_FF (
  input clk, rst_n,
  input j, k,
  output reg q, q_bar
);
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) 
      q <= 0;
    else begin
      case ({j, k})
        2'b00: q <= q;   // No change
        2'b01: q <= 1'b0; // Reset
        2'b10: q <= 1'b1; // Set
        2'b11: q <= ~q;  // Toggle
      endcase
    end
  end
  assign q_bar = ~q;
endmodule

module UpDown_Selector (
  input q, q_bar, up,
  output nclk
);
  assign nclk = up ? q_bar : q;
endmodule

module Async_UpDown_Counter (
  input clk, rst_n,
  input j, k, up,
  output [3:0] q, q_bar
);
  wire [2:0] nclk; 

 
  JK_FF FF0 (clk, rst_n, j, k, q[0], q_bar[0]);

  UpDown_Selector UDS0 (q[0], q_bar[0], up, nclk[0]);
  JK_FF FF1 (nclk[0], rst_n, j, k, q[1], q_bar[1]);
  
  UpDown_Selector UDS1 (q[1], q_bar[1], up, nclk[1]);
  JK_FF FF2 (nclk[1], rst_n, j, k, q[2], q_bar[2]);

  UpDown_Selector UDS2 (q[2], q_bar[2], up, nclk[2]);
  JK_FF FF3 (nclk[2], rst_n, j, k, q[3], q_bar[3]);
endmodule
