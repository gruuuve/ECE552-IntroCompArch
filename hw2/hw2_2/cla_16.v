module cla_16(A, B, Cin, S, Cout);
    
    input [15:0] A, B;
    input Cin;
    output [15:0] S;
    output Cout;

    wire c1, c2, c3;

    cla_4 cla0 (.A(A[3:0]), .B(B[3:0]), .Cin(Cin), .sum(S[3:0]), .Cout(c1));
    cla_4 cla1 (.A(A[7:4]), .B(B[7:4]), .Cin(c1), .sum(S[7:4]), .Cout(c2));
    cla_4 cla2 (.A(A[11:8]), .B(B[11:8]), .Cin(c2), .sum(S[11:8]), .Cout(c3));
    cla_4 cla3 (.A(A[15:12]), .B(B[15:12]), .Cin(c3), .sum(S[15:12]), .Cout(Cout));

endmodule
