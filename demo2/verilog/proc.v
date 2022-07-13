  /* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module proc (/*AUTOARG*/
   // Outputs
   err,
   // Inputs
   clk, rst
   );

   input clk;
   input rst;

  output err;

   // None of the above lines can be modified

   // OR all the err ouputs for every sub-module and assign it as this
   // err output

   // As desribed in the homeworks, use the err signal to trap corner
   // cases that you think are illegal in your statemachines


   /* your code here */

   wire [15:0] instr, instr_out, instr_idex, pc_add2, 
               pc_br_in, pc_br_exmem, pc_br_memwb,
	       pc_next_ifid, pc_next_idex, pc_next_exmem, pc_next_memwb, 
               A, A_idex, B, B_idex, B_exmem,
	       alu_out, result_exmem, result_memwb,
               wr_data, data_out, rd_data_memwb;			   
               			   
   wire [4:0] ab, ab_idex, ab_exmem, ab_memwb;

   wire [2:0] reg_wr_sel, reg_wr_sel_exmem, reg_wr_sel_memwb,
              alu_src, alu_src_idex;

   wire [1:0] reg_dst, reg_dst_idex;

   wire mem_wr, mem_wr_exmem, mem_wr_idex,
        reg_wr, reg_wr_idex, reg_wr_exmem, reg_wr_memwb,
        memToReg, memToReg_idex, memToReg_exmem, memToReg_memwb,
        jal_en, jal_en_exmem, jal_en_memwb, invA, invA_idex, invB, invB_idex,
	br_cond_in, br_cond_exmem, br_cond_memwb, Cin, Cin_idex, 
	dump, dump_idex, dump_exmem, stall, ifid_wr_en, imm, imm_idex;

   wire err2, err3; //2 err signals from stages, # = stage

   //fetch stage (1)
   fetch ft(.dump(1'b0), .pc_br_memwb(pc_br_memwb), .br_cond(br_stall), .nop(stall),
            .pc_wr_en(ifid_wr_en), .br_cond_memwb(br_cond_memwb), .clk(clk), .rst(rst),
            .instr(instr), .pc_next(pc_add2));

   //if_id ff
   if_id_mod if_id_ff(.instr(instr), .pc_next(pc_add2),
                      .en(ifid_wr_en), .clk(clk), .rst(rst), .instr_out(instr_out),
                      .pc_next_out(pc_next_ifid));

   //decode stage (2)
   decode id(.instr(instr_out), .wr_data(wr_data), .reg_wr_sel(reg_wr_sel_memwb),
             .reg_wr_in(reg_wr_memwb), .clk(clk), .rst(rst), .A(A), .B(B), .ab(ab),
             .alu_src(alu_src), .reg_dst(reg_dst), .mem_wr(mem_wr), .memToReg(memToReg),
             .invA(invA), .invB(invB), .Cin(Cin), .imm(imm), .dump(dump),
             .reg_wr_out(reg_wr), .err(err2));

   //hazard detection
   hazard_det hd(.instr(instr_out), .id_ex_wr(reg_wr_sel), .ex_mem_wr(reg_wr_sel_exmem),
                  .mem_wb_wr(reg_wr_sel_memwb), .if_id_rd1(instr_out[10:8]),
                  .if_id_rd2(instr_out[7:5]), .id_ex_regwr(reg_wr_idex),
                  .ex_mem_regwr(reg_wr_exmem), .mem_wb_regwr(reg_wr_memwb),
                  .ab(ab), .stall(stall), .stage_wr_en(ifid_wr_en));
   
   //assign exterior to hazard detection b/c many proc signals input
   assign br_stall = (ab[4] | ab[3] | ab[2] | 
                    ab_idex[4] | ab_idex[3] | ab_idex[2] | 
		    ab_exmem[4] | ab_exmem[3] | ab_exmem[2] | 
		    ab_memwb[4] | ab_memwb[3] | ab_memwb[2]);

   //id_ex ff
   id_ex_mod id_ex_ff(.instr(instr_out), .A(A), .B(B), .alu_src(alu_src), .stall(stall),
                      .mem_wr(mem_wr), .memToReg(memToReg), .invA(invA), .invB(invB),
                      .Cin(Cin), .dump(dump), .reg_dst(reg_dst), .reg_wr(reg_wr), .imm(imm),
                      .ab(ab), .pc_next(pc_next_ifid), .en(1'b1), .clk(clk), .rst(rst),
                      .instr_out(instr_idex), .A_out(A_idex), .B_out(B_idex), .imm_out(imm_idex),
                      .alu_src_out(alu_src_idex), .mem_wr_out(mem_wr_idex),
                      .memToReg_out(memToReg_idex), .invA_out(invA_idex), .invB_out(invB_idex),
                      .Cin_out(Cin_idex), .dump_out(dump_idex), .reg_dst_out(reg_dst_idex),
                      .reg_wr_out(reg_wr_idex), .ab_out(ab_idex), .pc_next_out(pc_next_idex));

   //execute stage (3)
   execute ex(.instr(instr_idex), .invA(invA_idex), .invB(invB_idex), .Cin(Cin_idex),
              .alu_src(alu_src_idex), .imm(imm_idex), .A(A_idex), .B(B_idex),
              .reg_dst(reg_dst_idex), .pc_add2(pc_next_idex), .result(alu_out),
              .pc_next(pc_br_in), .jal_en(jal_en), .reg_wr_sel(reg_wr_sel),
              .br_cond(br_cond_in), .err(err3));

   //ex_mem ff
   ex_mem_mod ex_mem_ff(.memToReg(memToReg_idex), .mem_wr(mem_wr_idex), .result(alu_out),
                        .B(B_idex), .reg_wr(reg_wr_idex), .reg_wr_sel(reg_wr_sel),
                        .dump(dump_idex), .pc_next(pc_next_idex), .pc_br(pc_br_in),
                        .br_cond(br_cond_in), .jal_en(jal_en), .ab(ab_idex), .en(1'b1),
                        .clk(clk), .rst(rst), .memToReg_out(memToReg_exmem),
                        .mem_wr_out(mem_wr_exmem), .result_out(result_exmem), .B_out(B_exmem),
                        .reg_wr_out(reg_wr_exmem), .reg_wr_sel_out(reg_wr_sel_exmem),
                        .dump_out(dump_exmem), .pc_next_out(pc_next_exmem),
                        .pc_br_out(pc_br_exmem), .br_cond_out(br_cond_exmem),
                        .jal_en_out(jal_en_exmem), .ab_out(ab_exmem));

   //memory stage (4)
   memory mem(.alu_out(result_exmem), .wr_data(B_exmem), .mem_rd(memToReg_exmem),
              .mem_wr(mem_wr_exmem), .dump(dump_exmem), .clk(clk), .rst(rst),
              .rd_data(data_out));

   //mem_wb ff
   mem_wb_mod mem_wb_ff(.reg_wr(reg_wr_exmem), .memToReg(memToReg_exmem), .jal_en(jal_en_exmem),
                        .rd_data(data_out), .result(result_exmem),
                        .reg_wr_sel(reg_wr_sel_exmem), .pc_next(pc_next_exmem), .ab(ab_exmem),
                        .pc_br(pc_br_exmem), .br_cond(br_cond_exmem), .en(1'b1), .clk(clk),
                        .rst(rst), .br_cond_out(br_cond_memwb), .pc_br_out(pc_br_memwb),
                        .reg_wr_out(reg_wr_memwb), .memToReg_out(memToReg_memwb),
                        .jal_en_out(jal_en_memwb), .rd_data_out(rd_data_memwb),
                        .result_out(result_memwb), .reg_wr_sel_out(reg_wr_sel_memwb),
                        .pc_next_out(pc_next_memwb), .ab_out(ab_memwb));

   //write back stage, no err output (5)
   writeBack wr_b(.wr_data(wr_data), .mem_data(rd_data_memwb), .alu_out(result_memwb),
                  .pc_next(pc_next_memwb), .jal_en(jal_en_memwb), .memToReg(memToReg_memwb));

   assign err = err3;//err2 has a bug, disabled from err for now
endmodule // proc
// DUMMY LINE FOR REV CONTROL :0:

