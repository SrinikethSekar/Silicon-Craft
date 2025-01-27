module adder_subtractor_tb();
  reg [3:0]a;
  reg [3:0]b;
  reg mode;
  wire[3:0]result;
  wire carry_borrow;
  
  adder_subtractor addsub(a,b,mode,result,carry_borrow);
  
  initial begin
	$dumpfile("waves.vcd");
	$dumpvars;
end

initial 
begin
  $monitor(" a=%b b=%b mode=%b result=%b carry_borrow=%b",a,b,mode,result,carry_borrow);
end
  
  
  initial
    begin
      
      a=4'b1111;
      b=4'b1111;
      mode=0;#15
      
      a=4'b0111;
      b=4'b1011;
      mode=1;#15
      $finish;
    end
endmodule
