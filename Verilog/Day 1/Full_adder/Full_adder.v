module fa(
  input a,b,cin,
  output sum,carry
);

  assign sum = (a^b^c); //sum 
  assign carry = (a&b | b&c | c&a); //carry

endmodule
