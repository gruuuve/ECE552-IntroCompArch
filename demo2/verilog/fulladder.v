module fulladder(A, B, Cin, S, Cout);

  input A, B, Cin;
  output S, Cout;

  //needed wires to connect gate outputs together
  wire w1, w2, w3;

  //summation part of adder
  //xor2 x1(.in1(A), .in2(B), .out(w1));
  //xor2 x2(.in1(w1), .in2(Cin), .out(S));
  //switched to use built in artith ops
  assign w1 = A ^ B;
  assign S = w1 ^ Cin;

  //Cout gates
  //nand2 na1(.in1(A), .in2(B), .out(w2));
  //nand2 na2(.in1(Cin), .in2(w1), .out(w3));
  //nand2 na3(.in1(w3), .in2(w2), .out(Cout));
  assign w2 = A & B;
  assign w3 = Cin & w1;
  assign Cout = w3 | w2;

endmodule
