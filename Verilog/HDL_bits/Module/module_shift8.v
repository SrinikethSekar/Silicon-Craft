module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire[7:0]x,y,z;
    my_dff8 m1(clk,d,x);
    my_dff8 m2(clk,x,y);
    my_dff8 m3(clk,y,z);
    always@(*)
        begin
            case(sel)
                2'b00:q=d;
                2'b01:q=x;
                2'b10:q=y;
                2'b11:q=z;
            endcase
        end
endmodule
