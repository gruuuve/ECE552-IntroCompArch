module cla_16(A, B, Cin, S, Cout, P, G);
    
    input [15:0] A, B;
    input Cin;
    output [15:0] S;
    output Cout, P, G;

    wire c1, c2, c3;
    wire p_0, p_1, p_2, p_3, g_0, g_1, g_2, g_3;

    cla_4 cla0 (.A(A[3:0]), .B(B[3:0]), .Cin(Cin), .sum(S[3:0]), .Cout(c1), .P(p_0), .G(g_0));
    cla_4 cla1 (.A(A[7:4]), .B(B[7:4]), .Cin(c1), .sum(S[7:4]), .Cout(c2), .P(p_1), .G(g_1));
    cla_4 cla2 (.A(A[11:8]), .B(B[11:8]), .Cin(c2), .sum(S[11:8]), .Cout(c3), .P(p_2), .G(g_2));
    cla_4 cla3 (.A(A[15:12]), .B(B[15:12]), .Cin(c3), .sum(S[15:12]), .Cout(Cout), .P(p_3), .G(g_3));

    //Propagate logic
    assign P = p_0 & p_1 & p_2 & p_3;

    //Generate logic
    assign G = g_3 | (p_3 & g_3) | (p_3 & p_2 & g_1) | (p_3 & p_2 & p_1 & g_0);

endmodule

