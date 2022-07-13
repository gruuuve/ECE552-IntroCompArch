module reg_16(in, wr, clk, rst, out);
    //wr enabled N bit register (16 bit default)
    parameter N_Bits = 16;
    
    input [N_Bits-1:0] in;
    input clk, rst, wr;

    output [N_Bits-1:0] out;

    wire [N_Bits-1:0] new_in;

    //instantiate 16 dff
    dff ff0[N_Bits-1:0] (.d(new_in), .q(out), .clk(clk), .rst(rst));
    
    //write enable
    assign new_in = wr ? in : out;

endmodule
