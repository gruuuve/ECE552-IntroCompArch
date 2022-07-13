module writeBack(mem_data, alu_out, pc_next, jal_en, memToReg, wr_data);

   input [15:0] mem_data, alu_out, pc_next;
   input jal_en, memToReg;

   output [15:0] wr_data;

   //S = 00 out = InA, S = 01 out = InB, S = 10 out = InC, S = 11 out = X
   mux4_1_16 wr_b_mux(.InA(alu_out), .InB(mem_data), .InC(pc_next), 
	              .InD(16'bx), .S({jal_en, memToReg}), .Out(wr_data));

endmodule
