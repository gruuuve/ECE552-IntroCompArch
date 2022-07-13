module reg8(q, d, clk, rst);

    input [7:0] q, d;
    input clk;
    output rst;
    
    //8-bit register for holding the sequences
    dff ff0[7:0] (.q(q[7:0]), .d(d[7:0]), .clk(clk), .rst(rst));

endmodule
