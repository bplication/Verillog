module h_adder(a,b,c_out,s);
input a,b;
output c_out,s;
xor(s,a,b);
and(c_out,a,b);
endmodule
