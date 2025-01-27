module cla_tb();
  reg [3:0]a,b;
  reg cin;
  wire [5:0]sum;
  wire cout;
  
  cla cla1(a,b,cin,sum,cout);
  
  initial begin
	$dumpfile("waves.vcd");
	$dumpvars;
end

initial 
begin
  $monitor(" a=%d b=%d | cin=%d | sum=%d cout=%b",a,b,cin,sum,cout);
  
  a=4'b0001; b=4'b0001; cin=0; #10;
  a=4'b0000; b=4'b0101; cin=1; #10;
  a=4'b0001; b=4'b1111; cin=0; #10;
  a=4'b0001; b=4'b1111; cin=1; #10;
  
  $finish;
  
end
  
endmodule
