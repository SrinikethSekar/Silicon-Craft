module Nand_tb();
  reg a,b;
  wire c;

  Nand nand1(.x(x),.y(y),.z(z));

  initial 
    begin
      a=0; b=0; #10;
      a=0; b=1; #10;
      a=1; b=0; #10;
      a=1; b=1; #10;
    end
endmodule