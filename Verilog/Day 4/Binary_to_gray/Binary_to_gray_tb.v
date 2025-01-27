module binary_to_gray_tb();
  reg [3:0] binary;
  wire [3:0]gray;

  
  binary_to_gray btg(binary,gray);
  
initial begin
	$dumpfile("waves.vcd");
	$dumpvars;
end

initial 
begin
  $monitor("Binary=%b   Gray=%b",binary,gray);
  
  binary=1001; #10;
  binary=1011; #10;
  binary=1010; #10;
  binary=1111; #10;
  binary=1110; #10;
  
end
endmodule
    
  
