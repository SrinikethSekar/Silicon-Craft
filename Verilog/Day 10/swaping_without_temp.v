module swap;
int a=15;
  int b=20;

  initial begin
    a<=b;
    b<=a;
$monitor(" Values of a=%0d b=%0d",a,b);
  end
endmodule
