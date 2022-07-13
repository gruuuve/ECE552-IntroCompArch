module id_ex_mod(instr, A, B, alu_src, stall, mem_wr, memToReg, invA, invB, Cin, dump, reg_dst, imm,
	         reg_wr, ab, pc_next, en, clk, rst, instr_out, A_out, B_out, alu_src_out, imm_out, 
		 mem_wr_out, memToReg_out, invA_out, invB_out, Cin_out, dump_out, reg_dst_out,
		 reg_wr_out, ab_out, pc_next_out);

    input [15:0] A, B, instr, pc_next;
    input [4:0] ab;
    input [2:0] alu_src;
    input [1:0] reg_dst;
    input mem_wr, memToReg, invA, invB, Cin, dump, stall, reg_wr, imm;
    input en, clk, rst;

    output [15:0] A_out, B_out, instr_out, pc_next_out;
    output [4:0] ab_out;
    output [2:0] alu_src_out;
    output [1:0] reg_dst_out;
    output mem_wr_out, memToReg_out, invA_out, invB_out, Cin_out, dump_out, reg_wr_out, imm_out;

    //stall signals
    wire [15:0] instr_other;
    wire mem_wr_sig, memToReg_sig, dump_sig, reg_wr_sig;

    ff_en #(16) ff1(.in(A), .en(en), .clk(clk), .rst(rst), .out(A_out));
    ff_en #(16) ff2(.in(B), .en(en), .clk(clk), .rst(rst), .out(B_out));
    ff_en #(16) ff3(.in(instr_other), .en(en), .clk(clk), .rst(rst), .out(instr_out));
    ff_en #(16) ff4(.in(pc_next), .en(en), .clk(clk), .rst(rst), .out(pc_next_out));
    
    ff_en #(5) ff5(.in(ab), .en(en), .clk(clk), .rst(rst), .out(ab_out));
    
    ff_en #(3) ff6(.in(alu_src), .en(en), .clk(clk), .rst(rst), .out(alu_src_out));

    ff_en #(2) ff7(.in(reg_dst), .en(en), .clk(clk), .rst(rst), .out(reg_dst_out));

    ff_en ff8(.in(mem_wr_sig), .en(en), .clk(clk), .rst(rst), .out(mem_wr_out));
    ff_en ff9(.in(memToReg_sig), .en(en), .clk(clk), .rst(rst), .out(memToReg_out));
    ff_en ff10(.in(invA), .en(en), .clk(clk), .rst(rst), .out(invA_out));
    ff_en ff11(.in(invB), .en(en), .clk(clk), .rst(rst), .out(invB_out));
    ff_en ff12(.in(Cin), .en(en), .clk(clk), .rst(rst), .out(Cin_out));
    ff_en ff13(.in(dump_sig), .en(en), .clk(clk), .rst(rst), .out(dump_out));
    ff_en ff14(.in(reg_wr_sig), .en(en), .clk(clk), .rst(rst), .out(reg_wr_out));
    ff_en ff15(.in(imm), .en(en), .clk(clk), .rst(rst), .out(imm_out));

    //stall control
    assign instr_other = stall ? 16'h0800 : instr;
    assign mem_wr_sig = stall ? 1'b0 : mem_wr;
    assign reg_wr_sig = stall ? 1'b0 : reg_wr;
    assign memToReg_sig = stall ? 1'b0 : memToReg;
    assign dump_sig = stall ? 1'b0 : dump;

endmodule

