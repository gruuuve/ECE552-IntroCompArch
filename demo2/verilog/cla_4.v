module cla_4(A, B, Cin, sum, Cout, P, G);

    input [3:0] A, B;
    input Cin;
    output Cout, P, G;
    output [3:0] sum;

    wire [3:0] p, g;
    wire c1, c2, c3;

    fulladder fa0 (.A(A[0]), .B(B[0]), .Cin(Cin), .S(sum[0]), .Cout());
    fulladder fa1 (.A(A[1]), .B(B[1]), .Cin(c1), .S(sum[1]), .Cout());
    fulladder fa2 (.A(A[2]), .B(B[2]), .Cin(c2), .S(sum[2]), .Cout());
    fulladder fa3 (.A(A[3]), .B(B[3]), .Cin(c3), .S(sum[3]), .Cout());

    //Carry calc
    assign c1 = (A[0] & B[0]) | ((A[0] ^ B[0]) & Cin);
    assign c2 = (A[1] & B[1]) | ((A[1] ^ B[1]) & c1);
    assign c3 = (A[2] & B[2]) | ((A[2] ^ B[2]) & c2);
    assign Cout = (A[3] & B[3]) | ((A[3] ^ B[3]) & c3);
    
    //Propagation calc
    assign p[3:0] = A[3:0] | B[3:0];

    assign P = p[3] & p[2] & p[1] & p[0];

    //Generation calc
    assign g[3:0] = A[3:0] & B[3:0];

    assign G = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);

    

endmodule
