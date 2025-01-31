module fsm_seq_moore(
  input clk,
  input rst,
  input in,
  output reg out);
  
  parameter[2:0] s0=3'b000,
  				 s1=3'b001,
  				 s2=3'b010,
  				 s3=3'b011,
  				 s4=3'b100;
    
  reg [2:0] state,next;
  
  always@(posedge clk or negedge rst)
  	begin
      if(!rst)
      state <= s0;
  	else
      state <= next;
    end
    
  always@(state or in)
    begin
      case(state)
        
        s0: begin
          out=0;
          if(in)
          	 next=s1;
        else
          next=s0;
        end
        
        
        s1:
          begin
            out=0;
            if(!in)
          next=s2;
        else 
          next=s1;
          end
        
        s2: begin
          out=0;
          if(in)
          next=s3;
        else
          next=s0;
        end
        
        s3:begin 
          out=0;
          if(!in)
          next=s4;
        else
          next=s1;
        end
          
        s4:begin
          out=1;
          if(!in)
            next=s0;
          else
            next=s1;
        end
        
        
        
      endcase
      
    end
 
  
 endmodule
