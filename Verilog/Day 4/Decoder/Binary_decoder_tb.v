module decoder_tb();
  reg [2:0]a;
  wire [7:0]b;
  
  decoder dec(a,b);
  
  initial begin
	$dumpfile("waves.vcd");
	$dumpvars;
end

initial 
begin
  $monitor("a=%b b=%0b",a,b);
  repeat(5)begin
    a=$random;#10;
  end
end
endmodule

  
