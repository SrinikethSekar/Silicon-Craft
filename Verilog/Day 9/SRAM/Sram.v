module memory_address(
  input clk,rst,we,
  input [1:0]addr,
  input [3:0]data_in,
  output reg [3:0]data_out);
  
  reg [3:0]mem[3:0];
  
  
  always@(posedge clk or negedge rst)begin
    if(!rst)begin
      mem[0]=4'b0000;
      mem[1]=4'b0000;
      mem[2]=4'b0000;
      mem[3]=4'b0000;
    end
  else if(we)begin
    mem[addr]<=data_in;
  end
  end
 
  always@(posedge clk)
    begin
      data_out <= mem[addr];
    end
endmodule




