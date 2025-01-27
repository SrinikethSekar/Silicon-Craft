
module	four_bit_comparator(
  input [3:0]a,b,
output  reg lt,gt,et
);

  always@(*)
    begin
      lt=0; gt=0; et=0;
      if(a<b)
        lt=1'b1;
      else if(a>b)
        gt=1'b1;
      else
        et=1'b1;
    end
endmodule
