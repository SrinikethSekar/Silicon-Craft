module twotoone_tb();
reg in1,in2;
reg sel;
wire out;

twotoone uut(.in1(in1),.in2(in2),.sel(sel),.out(out));

initial begin
	$dumpfile("waves.vcd");
	$dumpvars;
end

initial 
begin
	$monitor("time=%d in1=%b in2=%b sel=%b out=%b",$time,in1,in2,sel,out);
//using the truth table we can able to create the testbench
	sel=0;in1=0;in2=0;#10;
	sel=0;in1=0;in2=1;#10;
	sel=0;in1=1;in2=0;#10;
	sel=0;in1=1;in2=1;#10;
	sel=1;in1=0;in2=0;#10;
	sel=1;in1=0;in2=1;#10;
	sel=1;in1=1;in2=0;#10;
	sel=1;in1=1;in2=1;#10;
$finish;
end
endmodule
