module onetofour_demux_tb;
  reg [1:0]sel;
  reg i;
  wire a,b,c,d;
  
  onetofour_demux demux(sel,i,a,b,c,d);
  
  initial begin
	$dumpfile("waves.vcd");
	$dumpvars;
end

initial 
begin
  $monitor("sel=%b i=%b a=%b b=%b c=%b d=%b",sel,i,a,b,c,d);
  
  sel=2'b00; i=0; #10;
  sel=2'b00; i=1; #10;
  sel=2'b01; i=0; #10;
  sel=2'b01; i=1; #10;

  sel=2'b10; i=0; #10;
  sel=2'b10; i=1; #10;
  sel=2'b11; i=0; #10;
  sel=2'b11; i=1; #10;

  #10;$finish;
end
endmodule
