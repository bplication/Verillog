module RCA(x0,x1,x2,x3,y0,y1,y2,y3,c_i,c_o,s0,s1,s2,s3);
 input x0,x1,x2,x3,y0,y1,y2,y3,c_i;
 output c_o,s0,s1,s2,s3;
 FA st0(c_i,x0,y0,c1,s0);
 FA st1(c1,x1,y1,c2,s1);
 FA st2(c2,x2,y2,c3,s2);
 FA st3(c3,x3,y3,c_o,s3);
endmodule 


module FA(input c_i,x_i,y_i,output c_o,s_o);
 HA(x_i,y_i,c1,s1);
 HA(c_i,s1,c2,s_o);
 or(c_o,c1,c2);
endmodule
 

module HA(x,y,c,s);
 input x,y;
 output c,s;
 xor(s,x,y);
 and(c,x,y);
endmodule