module onetotwo_demux_tb;
  reg sel;
  reg i;
  wire a,b;
  
  onetotwo_demux mux(sel,i,a,b);
  
  initial begin
	$dumpfile("waves.vcd");
	$dumpvars;
end

initial 
begin
  
  $monitor(" sel=%b i=%b a=%b b=%b ",sel,i,a,b);
  
  sel=0; i=0; #5;
  sel=0; i=1; #5;
  sel=1; i=0; #5;
  sel=1; i=1; #5;
  
  $finish;
  
end
endmodule
