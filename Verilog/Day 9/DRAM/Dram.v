module dpram(
  input clk,
  input we_a,we_b,
  input [2:0]addr_a,addr_b,
  input [7:0]data_a,data_b,
  output reg [7:0]out_a,out_b
);
  
  reg [7:0] ram[0:7	];
  
  always@(posedge clk)
   begin
     if(we_a)
       ram[addr_a]<=data_a;

   end
 
    always@(posedge clk)
   begin
     if(we_b)
       ram[addr_b]<=data_b; 
     
   end
	assign out_a =ram[addr_a];
     assign out_b =ram[addr_b];
endmodule
  
