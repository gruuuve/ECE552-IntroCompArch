module ff16_en(in, en, clk, rst, out);
    
    input [15:0] in;
    input clk, rst, en;
    
    output [15:0] out;

    wire [15:0] dff_in;

    dff ffs[15:0](.d(dff_in), .clk(clk), .rst(rst), .q(out));

    mux2_1_16 mux(.InA(out), .InB(in), .S(en), .Out(dff_in));

endmodule
