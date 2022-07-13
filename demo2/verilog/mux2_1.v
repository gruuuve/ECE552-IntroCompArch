module mux2_1(InA, InB, S, Out);

  input InA, InB, S;
  output Out;
  wire w1, w2, wNS;
  
  // mux implementation
  // S = 0 will choose InA, S = 1 will choose InB
  nand2 na1 (.in1(InB), .in2(S), .out(w1));
  not1 n1 (.in1(S), .out(wNS));
  nand2 na2 (.in1(InA), .in2(wNS), .out(w2));
  nand2 na3(.in1(w1), .in2(w2), .out(Out));

endmodule

