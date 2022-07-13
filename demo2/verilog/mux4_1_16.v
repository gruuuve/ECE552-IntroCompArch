module mux4_1_16(InA, InB, InC, InD, S, Out);

   input [15:0] InA, InB, InC, InD;
   input [1:0] S;
   
   output [15:0] Out;

   quadmux4_1 m0(.InA(InA[15:12]), .InB(InB[15:12]), .InC(InC[15:12]), .InD(InD[15:12]), .S(S), .Out(Out[15:12]));
   quadmux4_1 m1(.InA(InA[11:8]), .InB(InB[11:8]), .InC(InC[11:8]), .InD(InD[11:8]), .S(S), .Out(Out[11:8]));
   quadmux4_1 m2(.InA(InA[7:4]), .InB(InB[7:4]), .InC(InC[7:4]), .InD(InD[7:4]), .S(S), .Out(Out[7:4]));
   quadmux4_1 m3(.InA(InA[3:0]), .InB(InB[3:0]), .InC(InC[3:0]), .InD(InD[3:0]), .S(S), .Out(Out[3:0]));

endmodule
