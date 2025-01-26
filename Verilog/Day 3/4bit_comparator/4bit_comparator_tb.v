module four_bit_comparator_tb();
reg a,b;
wire lt,gt,et;


four_bit_comparator uut(.a(a),.b(b),.lt(lt),.(gt)gt,.et(et));

initial begin
	$dumpfile("waves.vcd");
	$dumpvars;
end

initial 
begin
	$monitor("time=%t a=%b b=%b lt=%b gt=%b et=%b",$time,a,b,lt,gt,et);

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;
$finish;
end
endmodule
