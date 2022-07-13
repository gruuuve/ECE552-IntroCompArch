module ff_en(in, en, clk, rst, out);
    
    parameter WIDTH = 1;
    
    input [WIDTH-1:0] in;
    input clk, rst, en;
    
    output [WIDTH-1:0] out;

    wire [WIDTH-1:0] dff_in;

    dff ffs[WIDTH-1:0](.d(dff_in), .clk(clk), .rst(rst), .q(out));

    mux2_1 mux[WIDTH-1:0](.InA(out), .InB(in), .S(en), .Out(dff_in));

endmodule
