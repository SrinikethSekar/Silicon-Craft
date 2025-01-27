module onetotwo_demux(
  input sel,
  input i,
  output a,b
);
  
  assign {a,b}=sel?{1'b0,i}:{i,1'b1};
endmodule
