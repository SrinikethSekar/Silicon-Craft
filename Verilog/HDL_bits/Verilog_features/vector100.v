module top_module( 
    input [99:0] in,
    output [99:0] out
);
    reg[99:0]temp;//storage of 99input
    integer i;
    
    always@(*)begin
        for(i=0;i<100;i=i+1)begin // loop condition for count
            temp[i]=in[99-i];
        end
        out=temp;
    end

endmodule
