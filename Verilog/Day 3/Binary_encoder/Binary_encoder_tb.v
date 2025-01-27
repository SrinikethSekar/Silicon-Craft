module encoder_tb();
  reg [7:0]d;
  wire[3:0]y;

  encoder encoder1(d,y);
  
  initial 
    begin
      $dumpfile("waves.vcd");
      $dumpvars;
    end
  
  integer i;
  initial
    begin
      d=8'b1;#1;
      for(i=0;i<8;i=i+1)begin
        d=d<<1;#1;
      end
    end
