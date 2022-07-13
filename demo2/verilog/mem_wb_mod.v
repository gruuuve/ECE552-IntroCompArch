module mem_wb_mod(reg_wr, memToReg, jal_en, rd_data, result, reg_wr_sel, pc_next, reg_wr_out, 
	          memToReg_out, jal_en_out, rd_data_out, result_out, reg_wr_sel_out, 
		  pc_next_out, en, rst, clk, ab, ab_out, pc_br, pc_br_out, br_cond, br_cond_out);

    input[15:0] pc_next, result, rd_data, pc_br;
    input[4:0] ab;
    input[2:0] reg_wr_sel;
    input reg_wr, memToReg, jal_en, en, rst, clk, br_cond;

    output[15:0] pc_next_out, result_out, rd_data_out, pc_br_out;
    output[4:0] ab_out;
    output[2:0] reg_wr_sel_out;
    output reg_wr_out, memToReg_out, jal_en_out, br_cond_out;

    ff_en #(16) ff1(.out(pc_next_out), .in(pc_next), .en(en), .rst(rst), .clk(clk));
    ff_en #(16) ff2(.out(result_out), .in(result), .en(en), .rst(rst), .clk(clk));
    ff_en #(16) ff3(.out(rd_data_out), .in(rd_data), .en(en), .rst(rst), .clk(clk));
    ff_en #(16) ff4(.out(pc_br_out), .in(pc_br), .en(en), .rst(rst), .clk(clk));

    ff_en #(3) ff5(.out(reg_wr_sel_out), .in(reg_wr_sel), .en(en), .rst(rst), .clk(clk));

    ff_en ff6(.out(reg_wr_out), .in(reg_wr), .en(en), .rst(rst), .clk(clk));
    ff_en ff7(.out(memToReg_out), .in(memToReg), .en(en), .rst(rst), .clk(clk));
    ff_en ff8(.out(jal_en_out), .in(jal_en), .en(en), .rst(rst), .clk(clk));
    ff_en ff9(.out(br_cond_out), .in(br_cond), .en(en), .rst(rst), .clk(clk));
    
    ff_en #(5) ff10(.out(ab_out), .in(ab), .en(en), .rst(rst), .clk(clk));

endmodule
