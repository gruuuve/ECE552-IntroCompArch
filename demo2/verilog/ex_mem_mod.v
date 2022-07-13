module ex_mem_mod(memToReg, mem_wr, result, B, reg_wr, reg_wr_sel, dump, pc_next, pc_br, br_cond, jal_en, ab, en, clk, rst,
	          memToReg_out, mem_wr_out, result_out, B_out, reg_wr_out, reg_wr_sel_out, dump_out, pc_next_out, pc_br_out, 
		  br_cond_out, jal_en_out, ab_out);

    input [15:0] pc_br, result, B, pc_next;
    input [4:0] ab;
    input [2:0] reg_wr_sel;
    input memToReg, mem_wr, dump, reg_wr, br_cond, jal_en;
    input en, clk, rst;

    output [15:0] pc_br_out, result_out, B_out, pc_next_out;
    output [4:0] ab_out;
    output [2:0] reg_wr_sel_out;
    output memToReg_out, mem_wr_out, dump_out, reg_wr_out, br_cond_out, jal_en_out;

    ff_en #(16) ff1(.in(pc_br), .en(en), .clk(clk), .rst(rst), .out(pc_br_out));
    ff_en #(16) ff2(.in(result), .en(en), .clk(clk), .rst(rst), .out(result_out));
    ff_en #(16) ff3(.in(B), .en(en), .clk(clk), .rst(rst), .out(B_out));
    ff_en #(16) ff4(.in(pc_next), .en(en), .clk(clk), .rst(rst), .out(pc_next_out));

    ff_en #(5) ff5(.in(ab), .en(en), .clk(clk), .rst(rst), .out(ab_out));
    
    ff_en #(3) ff6(.in(reg_wr_sel), .en(en), .clk(clk), .rst(rst), .out(reg_wr_sel_out));

    ff_en ff7(.in(memToReg), .en(en), .clk(clk), .rst(rst), .out(memToReg_out));
    ff_en ff8(.in(mem_wr), .en(en), .clk(clk), .rst(rst), .out(mem_wr_out));
    ff_en ff9(.in(dump), .en(en), .clk(clk), .rst(rst), .out(dump_out));
    ff_en ff10(.in(reg_wr), .en(en), .clk(clk), .rst(rst), .out(reg_wr_out));
    ff_en ff11(.in(br_cond), .en(en), .clk(clk), .rst(rst), .out(br_cond_out));
    ff_en ff12(.in(jal_en), .en(en), .clk(clk), .rst(rst), .out(jal_en_out));

endmodule

