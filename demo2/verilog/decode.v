module decode(instr, wr_data, reg_wr_in, reg_wr_sel, clk, rst, alu_src, mem_wr, memToReg, 
	      invA, invB, Cin, A, B, imm, dump, reg_wr_out, reg_dst, ab, err);
    
    input clk, rst, reg_wr_in;
    input [2:0] reg_wr_sel;
    input [15:0] instr, wr_data;

    output [15:0] A, B;//alu inputs
    output [4:0] ab;
    output [2:0] alu_src; //control signals out of decode
    output [1:0] reg_dst;
    output mem_wr, memToReg, invA, invB, Cin, imm, dump, reg_wr_out, err; 
    //dump used as halt signal

    wire err_1, err_2;

    //control module
    control control(.opcode(instr[15:11]), .instr1_0(instr[1:0]), .alu_src(alu_src), 
	            .reg_dst(reg_dst), .mem_wr(mem_wr), .reg_wr(reg_wr_out), .memToReg(memToReg), 
		    .invA(invA), .invB(invB), .Cin(Cin), .imm(imm), .dump(dump), .ab(ab), 
		    .err(err_1));

    //hazard detection moved to proc
   // hazard_det hd(.instr(instr), .id_ex_wr(reg_wr_sel), .ex_mem_wr(reg_wr_sel_exmem),
	          //.mem_wb_wr(reg_wr_sel_memwb), .if_id_rd1(instr[10:8]), .if_id_rd2(instr[7:5]),
		 // .id_ex_regwr(reg_wr_idex), .ex_mem_regw

    //register file
    rf rf(.clk(clk), .rst(rst), .read1regsel(instr[10:8]), .read2regsel(instr[7:5]), 
	  .writeregsel(reg_wr_sel), .writedata(wr_data), .write(reg_wr_in), .read1data(A), 
	  .read2data(B), .err(err_2)); 

    assign err = err_1 | err_2;

endmodule

