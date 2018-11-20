module f_xor(x,y,f);
input x,y;
output f;
assign f = (x&~y)|(~x&y);
endmodule
