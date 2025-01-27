module cla(
  input[3:0]a,b,
  input cin,
  output [5:0] sum,
  output cout
);
  
  wire [4:0]g,p,c;
  
  assign g=a&b;
  assign p=a^b;
  
  
  assign c[0]=cin;
  assign c[1]=g[0]|(p[0]&c[0]);
  assign c[2]=g[1]|(p[1]&c[1]);
  assign c[3]=g[2]|(p[2]&c[2]);
  assign c[4]=g[3]|(p[3]&c[3]);
  assign cout=g[4]|(p[4]&c[4]);
  
  assign sum=p^c;
  
  
endmodule
