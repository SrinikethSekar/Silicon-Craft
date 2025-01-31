module top_module ( input clk, input d, output q );
    wire a,b;
    my_dff d1(clk,d,a);  //first shift
    my_dff d2(clk,a,b);  //second shift 
    my_dff d3(clk,b,q);  //third shift
endmodule
