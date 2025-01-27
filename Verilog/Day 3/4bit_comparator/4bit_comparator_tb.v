module four_bit_comparator_tb();
  reg [3:0]a,b;
wire lt,gt,et;


  four_bit_comparator comp(.a(a),.b(b),.lt(lt),.gt(gt),.et(et));

initial begin
	$dumpfile("waves.vcd");
	$dumpvars;
end

initial 
begin
	$monitor("time=%t a=%b b=%b lt=%b gt=%b et=%b",$time,a,b,lt,gt,et);

  repeat(5)begin
    a=$random; b=$random ;#10;
  end
  
end 
endmodule
 
