module mux(input x,y,s, output f);
and(a,~s,x);
and(b,s,y);
or(f,a,b);
endmodule
