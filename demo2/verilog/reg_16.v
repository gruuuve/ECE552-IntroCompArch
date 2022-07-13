module reg_16(q, d, wr, clk, rst);
    //wr enabled N bit register (16 bit default)
    parameter N = 16;
    
    input [N-1:0] d;
    input clk, rst, wr;

    output [N-1:0] q;

    wire [N-1:0] new_in;

    //instantiate 16 dff
    dff ff0[N-1:0] (.d(new_in), .q(q), .clk(clk), .rst(rst));
    mux2_1 mux[N-1:0](.InA(q), .InB(d), .S(wr), .Out(new_in));

endmodule
