//4bit parallel adder
module rca(
	input a0,a1,a2,a3,b0,b1,b2,b3,
	input cin,
	output s0,s1,s2,s3,
	output c0
);
wire c1,c2,c3;

fa aa1(.a(a0),.b(b0),.cin(cin),.sum(s0),.carry(c1));//first carry to 2nd
fa aa2(.a(a1),.b(b1),.cin(c1),.sum(s1),.carry(c2));//second carry to third
fa aa3(.a(a2),.b(b2),.cin(c2),.sum(s2),.carry(c3));
fa aa4(.a(a3),.b(b3),.cin(c3),.sum(s3),.carry(c0));

endmodule

//full adder
module fa(
  input a,b,cin,
  output sum,carry
);

  assign sum = (a^b^cin);
  assign carry = (a&b) | (b&cin) | (cin&a);

endmodule
 
