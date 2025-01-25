module parallel_adder_tb();
reg a0,a1,a2,a3,b0,b1,b2,b3;
reg cin;
wire s0,s1,s2,s3;
wire c0;


rca uut (.a0(a0),.a1(a1),.a2(a2),.a3(a3),.b0(b0),.b1(b1),.b2(b2),.b3(b3),.cin(cin),.s0(s0),.s1(s1),.s2(s2),.s3(s3),.c0(c0));

initial begin
	$dumpfile("waves.vcd");
	$dumpvars;
end

initial
begin//random samples for input 
	a0=$random%16;
	a1=$random%16;
	a2=$random%16;
	a3=$random%16;
	b1=$random%16;
	b2=$random%16;
	b3=$random%16;
	b0=$random%16;
	cin=$random;
	#15;

	$display("time=%d a0=%d a1=%d a2=%d a3=%d b0=%d b1=%d b2=%d b3=%d  cin=%d s0=%d s1=%d s2=%d s3=%d c0=%d",$time,a0,a1,a2,a3,b0,b1,b2,b3,cin,s0,s1,s2,s3,c0);

	a0=1;a1=0;a2=0;a3=0; b0=1;b1=0;b2=1;b3=1;cin=$random;#4
  
 $display("time=%d a0=%d a1=%d a2=%d a3=%d b0=%d b1=%d b2=%d b3=%d  cin=%d s0=%d s1=%d s2=%d s3=%d c0=%d",$time,a0,a1,a2,a3,b0,b1,b2,b3,cin,s0,s1,s2,s3,c0);
	

	end
endmodule
