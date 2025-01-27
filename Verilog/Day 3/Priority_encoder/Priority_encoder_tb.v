module priority_encoder_tb();
  reg [7:0] d;
  wire [2:0]y;
  
  priority_encoder enc(d,y);
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
  
  initial
    begin
      $monitor("d=%b --> y=%b",d,y);
      repeat(5)begin
        d=$random; #5;
      end
    end
endmodule
