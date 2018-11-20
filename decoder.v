module decoder(W,F);
 input [3:0]W;
 output [0:15]F;
 wire [3:0]X;
 
 assign X[2:0] = W[2:0];
 assign X[3] = ~W[3];
 decoder38 a(W[2:0],F[0:7],X[3]);
 decoder38 b(W[2:0],F[8:15],W[3]);

 
endmodule



module decoder38(W,X,En);
 input [2:0]W;
 input En;
 output reg [0:7]X;
 
 always@(W)
 begin
 if(En==1)
    case(W)
    0:X=8'b10000000;
    1:X=8'b01000000;
    2:X=8'b00100000;
    3:X=8'b00010000;
    4:X=8'b00001000;
    5:X=8'b00000100;
    6:X=8'b00000010;
    7:X=8'b00000001;
    endcase
  else
  X=0;
   end
endmodule
 