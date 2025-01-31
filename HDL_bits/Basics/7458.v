
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
wire a,b,c,d,e,f;
    and(a,p2a,p2b);
    and(b,p2c,p2d);
    or(e,a,b);
    
    and(c,p1a,p1c,p1b);
    and(d,p1f,p1e,p1d);
    or(f,c,d);
    
    assign p2y=e;
    assign p1y=f;

endmodule
