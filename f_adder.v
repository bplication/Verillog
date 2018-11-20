module f_adder(x,y,z,c,s);
input x,y,z;
output c,s;
assign c = (x&y)|(y&z)|(z&x);
assign s = (~x&~y&z)|(~x&y&~z)|(x&~y&~z)|(x&y&z);
endmodule
