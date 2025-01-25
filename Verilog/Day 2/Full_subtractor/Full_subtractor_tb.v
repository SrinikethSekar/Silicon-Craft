// Code your testbench here
// or browse Examples
module Full_subtractor_tb();
reg a,b,c;
wire diff,borrow;
    
  Full_subtractor uut(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
    
initial begin
$dumpfile("waves.vcd");
$dumpvars(0,Full_subtractor_tb);
end
initial begin
  $monitor("Time=%0t | a=%b, b=%b c=%b | diff=%b, borrow=%b", $time, a, b,c, diff, borrow); //below table follows the logic of subtractor
a=0; b=0; c=0; #10;
a=0; b=0; c=1; #10;
a=0; b=1; c=0; #10;
a=0; b=1; c=1; #10;
a=1; b=0; c=0; #10;
a=1; b=0; c=1; #10;
a=1; b=1; c=0; #10;
a=1; b=1; c=1; #10;

$finish;
end
endmodule

