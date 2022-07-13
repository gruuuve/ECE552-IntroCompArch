module mux4_1(InA, InB, InC, InD, S, Out);

  input InA, InB, InC, InD;
  input [1:0] S;
  output Out;
  wire out1, out2;
  
  //s = 1, out1 = InB out2 = InD, s = 0, out1 = InA out2 = InC
  mux2_1 mux1 (.InA(InA), .InB(InB), .S(S[0]), .Out(out1));
  mux2_1 mux2 (.InA(InC), .InB(InD), .S(S[0]), .Out(out2));
  //choose lower or upper section based on s
  mux2_1 mux3 (.InA(out1), .InB(out2), .S(S[1]), .Out(Out));

endmodule
