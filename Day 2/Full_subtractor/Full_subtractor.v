module Half_subtractor(
input a,b,
output diff,borrow);

assign diff=(a^b);
assign borrow=(~a&b);
endmodule

module Full_subtractor(
input a,b,c,
output diff,borrow
    );
    wire w1,w2,w3;
    
    Half_subtractor HB1(.a(a),.b(b),.diff(w1),.borrow(w2));
    Half_subtractor HB2(.a(w1),.b(c),.diff(diff),.borrow(w3));
  or OR1(borrow,w2,w3);
 
endmodule


