module Half_subtractor_tb();
reg a,b;
wire d,b0;
    
    Half_subtractor uut(.a(a),.b(b),.d(d),.b0(b0));
 /*   
initial begin
$dumpfile("waves.vcd");
$dumpfile();
end*/
initial begin
$monitor("Time=%0t | a=%b, b=%b | d=%b, b0=%b", $time, a, b, d, b0); 
a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;
$finish;
end
endmodule
