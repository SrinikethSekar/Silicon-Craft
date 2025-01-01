module Nor(
  input a,b
  output c
);
  assign c= a ~| b;
endmodule
