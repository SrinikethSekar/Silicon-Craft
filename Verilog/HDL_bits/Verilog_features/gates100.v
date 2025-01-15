module top_module( 
    input [99:0] in,
    output out_and,
    output out_or,
    output out_xor 
);
    assign out_and =(&in[99:0]); //and gate for 99 input 
    assign out_or =(|in[99:0]); //or gate
    assign out_xor =(^in[99:0]);
    
endmodule
