module	four_bit_comparator(
input a,b,
output lt,gt,et
);

assign lt=(a<b);
assign gt=(a>b);
assign et=(a==b);

endmodule
