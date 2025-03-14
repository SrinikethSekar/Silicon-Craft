module gray_to_binary #(parameter WIDTH=4)(
  input[WIDTH-1:0]gray,
  output[WIDTH-1:0]binary
);
  
  genvar i;
  generate
    for(i=0;i<WIDTH;i++)begin
      assign binary[i]=^(gray>>i); //iterative xor logic
       end
  endgenerate
  endmodule

