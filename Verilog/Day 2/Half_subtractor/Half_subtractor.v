module Half_subtractor(
input a,b,
output d,b0
    );

  assign d=(a^b);  //difference using xor gate
  assign b0=(~a&b);
endmodule
