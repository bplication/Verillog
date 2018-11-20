module mux4(x,y,z,f);
 input x,y,z;
 output reg f;
 
 always @(x,y,z)
  if(x==0&&y==0)
   f = ~z;
  else
   f=z;

	
endmodule
