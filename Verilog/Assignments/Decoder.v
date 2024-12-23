module 8mul(s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7);
input s0,s1,s2;
output i0,i1,i2,i3,i4,i5,i6,i7;
wire s0out,s1out,s2out;
not(s0out,s0);
not(s1out,s1);
not(s2out,s2);
and(i0,s0out,s1out,s2out);
and(i1,s0out,s1out,s2);
and(i2,s0out,s1,s2out);
and(i3,s0out,s1,s2);
and(i4,s0,s1out,s2out);
and(i5,s0,s1out,s2);
and(i6,s0,s1,s2out);
and(i7,s0,s1,s2);
endmodule
