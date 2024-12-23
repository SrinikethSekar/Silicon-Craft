module bitmul(
input [1:0]a,
input [1:0]b,
output reg [3:0] product);
always@(*)begin
product=a*b;
end
endmodule


module bitmul_tb();
reg [1:0]a;
reg [1:0]b;
wire [3:0]product;

    bitmul uut( .a(a),.b(b),.product(product));
 initial 
 begin
  $dumpfile("bitmul.vcd");
  $dumpvars(0,bitmul_tb); 
    for(a=0;a<4;a=a+1)begin
        for(b=0;b<4;b=b+1)begin
    		#5;
    		$display("a=%b,b=%b,product=%b",a,b,product);
        end
    end
   #5 $finish;
end
endmodule

