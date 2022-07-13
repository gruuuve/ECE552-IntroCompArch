module if_id_mod(instr, pc_next, en, clk, rst, instr_out,pc_next_out);

    input [15:0] instr, pc_next;
    input en, clk, rst;

    output [15:0] instr_out, pc_next_out;
    
    wire [15:0] instr_sel;

    ff_en #(16) ff0(.in(pc_next), .en(en), .clk(clk), .rst(rst), .out(pc_next_out));
    ff_en #(16) ff2(.in(instr_sel), .en(en), .clk(clk), .rst(1'b0), .out(instr_out));

    assign instr_sel = rst ? 16'b00001xxxxxxxxxxx : instr;

endmodule
