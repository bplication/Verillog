module bcd(Clock, Clear, E, L,R, BCD1,BCD0);
	input Clock, Clear, E, L;
	input [3:0]R;
	output[3:0]BCD0;
	output reg [3:0]BCD1;
	
	upcount D0(.R(R),.Clock(Clock),.E(E),.L(L),.Q(BCD0));
	always@(posedge Clock)
			begin
			
			if(BCD0==4'b1001)
			begin
				BCD1<=BCD1+1;
				if(BCD1==4'b1001)
				begin
				BCD1<=0;
				end
			end
	end
endmodule

module upcount(R,Clock,E,L,Q);
	parameter n=4;
	input [(n-1):0]R;
	input Clock,L,E;
	output reg [(n-1):0]Q;
	
	always @(posedge Clock)
	 if(Q==4'b1001)
	  Q<=0;
	 else if(E)
	  Q<=Q+1;
	  
endmodule
