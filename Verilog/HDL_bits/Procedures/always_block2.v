module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
    
    assign out_assign=a^b;  //create a or gate using assignment statement 
    always@(*) out_always_comb = a^b;//same using always statement 
    always@(posedge clk) //use clock for the statement 
        out_always_ff<=a^b;

endmodule
 