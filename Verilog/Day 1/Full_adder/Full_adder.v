module(
  input a,b,cin,
  output sum,carry
);

  assign sum = (a^b^c);
  assign carry = (a&b | b&c | c&a);

endmodule
