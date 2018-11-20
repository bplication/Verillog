module mux16(w,s,f);
 input [0:15]w;
 input [3:0]s;
 output f;
 wire[0:3] m;
  
  mux4 a(w[0:3],s[1:0],m[0]);
  mux4 b(w[4:7],s[1:0],m[1]);
  mux4 c(w[8:11],s[1:0],m[2]);
  mux4 d(w[12:15],s[1:0],m[3]);
  mux4 e(m[0:3],s[3:2],f);
 
endmodule


module mux4(w,s,f);
 input [0:3]w;
 input [1:0]s;
 output reg f;
 
 always @(w,s)
  if(s==0)
   f=w[0];
  else if(s==1)
   f=w[1];
  else if(s==2)
   f=w[2];
  else if(s==3)
   f=w[3];
	
endmodule
