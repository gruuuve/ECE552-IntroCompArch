module hazard_det(instr, id_ex_wr, ex_mem_wr, mem_wb_wr, if_id_rd1, if_id_rd2, id_ex_regwr,
	           ex_mem_regwr, mem_wb_regwr, ab, stage_wr_en, stall);

    input [15:0] instr;
    input [4:0] ab;
    input [2:0] id_ex_wr, ex_mem_wr, mem_wb_wr, if_id_rd1, if_id_rd2;
    input id_ex_regwr, ex_mem_regwr, mem_wb_regwr;

    output stage_wr_en, stall;

    wire [5:0] raw;
    wire c1, c2, c3; //conditions for hazards

    //raw hazards
    assign raw[0] = ((id_ex_wr == if_id_rd1) & ab[1]);
    assign raw[1] = ((id_ex_wr == if_id_rd2) & ab[0]);
    
    assign raw[2] = ((ex_mem_wr == if_id_rd1) & ab[1]);
    assign raw[3] = ((ex_mem_wr == if_id_rd2) & ab[0]);
    
    assign raw[4] = ((mem_wb_wr == if_id_rd1) & ab[1]);
    assign raw[5] = ((mem_wb_wr == if_id_rd2) & ab[0]);

    assign c1 = ((raw[0] | raw[1]) & id_ex_regwr);
    assign c2 = ((raw[2] | raw[3]) & ex_mem_regwr);
    assign c3 = ((raw[4] | raw[5]) & mem_wb_regwr);

    assign stall = c1 | c2 | c3;

    assign stage_wr_en = stall ? 1'b0 : 1'b1;

endmodule
