module fetch(clk, rst, dump, nop, pc_wr_en, br_cond, br_cond_memwb, pc_br_memwb, instr, pc_next);

    //for demo 2 adjusted pc selects and i/o
    input clk, rst, dump, nop, pc_wr_en, br_cond, br_cond_memwb;
    input [15:0] pc_br_memwb;

    output [15:0] instr, pc_next;
    
    wire [15:0] pc_up, pc_inc, pc_curr, instr_mem; //used in mem instance
    wire p_cla, g_cla, Cout; //dummy wires

    //pc register, wr comes from hazard detection
    reg_16 pc_reg(.clk(clk), .rst(rst), .d(pc_up), .wr(pc_wr_en), .q(pc_curr));

    //instruction memory for pc to read, never write only read
    memory2c instrMem(.clk(clk), .rst(rst), .wr(1'b0), .enable(1'b1), .addr(pc_curr), .data_in(16'b0),
                       .createdump(dump), .data_out(instr_mem));

    //adder for calculated pc_next
    cla_16 cla(.A(pc_curr), .B(pc_inc), .Cin(1'b0), .Cout(Cout), .P(p_cla), .G(g_cla), .S(pc_next));

    //pc logic
    assign pc_inc = (nop | br_cond) ? 16'h0000 : 16'h2; //pc + 2 if not nop or br_cond

    assign pc_up = br_cond_memwb ? pc_br_memwb : pc_next; //take branch or proceed

    assign instr = br_cond ? 16'h0800 : instr_mem;

endmodule
