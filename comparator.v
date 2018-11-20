module comparator(
 input [1:0]a,
 input [1:0]b, 
 output GT,EQ);
 reg y,n;
 always@(y,n)
 begin
  y = 1; n=0;
  if(a==b)
 begin 
  assign GT = n;
  assign EQ = y;
 end
  else
 begin 
  assign GT = y;
  assign EQ = n;
 end
 end
 
 endmodule
 