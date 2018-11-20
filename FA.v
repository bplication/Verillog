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
