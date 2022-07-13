module reg_16(q, d, wr, clk, rst);
    //wr enabled N bit register (16 bit default)
    parameter N = 16;
    
    input [N-1:0] d;
    input clk, rst, wr;

    output [N-1:0] q;

    wire en_clk;

    assign en_clk = (wr | rst) & ~clk;

    //instantiate 16 dff
    dff ff0[N-1:0] (.d(d), .q(q), .clk(en_clk), .rst(rst));

endmodule
