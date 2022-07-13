module ff3_en(in, en, clk, rst, out);
    
    input [2:0] in;
    input clk, rst, en;
    
    output [2:0] out;

    wire [2:0] dff_in;

    dff ffs[2:0](.d(dff_in), .clk(clk), .rst(rst), .q(out));

    mux2_1 mux[2:0](.InA(out), .InB(in), .S(en), .Out(dff_in));

endmodule
