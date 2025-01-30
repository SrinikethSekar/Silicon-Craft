module fsm_seq(
  input clk,
  input rst,
  input in,
  output reg out);
  //parameter the given input conditions 
  parameter[1:0] s0=2'b00,
  				 s1=2'b01,
  				 s2=2'b10,
  				 s3=2'b11;
    
  reg [1:0] state,next; //storing the data in register 
  
  always@(posedge clk or negedge rst)//base condition for the fsm
  	begin
      if(!rst)
      state <= s0;
  	else
      state <= next;
    end
    
  always@(state or in)
    begin
      case(state)
        s0: if(in)
          	 next=s1;
        else
          next=s0;
        
        s1: if(!in)
          next=s2;
        else 
          next=s1;
        
        s2: if(in)
          next=s3;
        else
          next=s0;
        
        s3: if(!in)
          next=s0;
        else
          next=s1;
        
        
      endcase
      
    end
  
  assign out=(state==s3) &&(in==0);
  //output is obtained when the sequence is generated 
 
  
 endmodule
