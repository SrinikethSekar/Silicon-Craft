module adder_subtractor(
  input [3:0]a,
  input [3:0]b,
  input mode,
  output reg[3:0]result,
  output reg carry_borrow);
  
  always@(*)
    begin
      if(mode==0)begin
      {carry_borrow,result}=a+b;
      end
      else
        begin
          {carry_borrow,result}=a-b;
        end
    end
endmodule
