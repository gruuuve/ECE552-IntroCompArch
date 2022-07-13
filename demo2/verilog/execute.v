module execute (instr, invA, invB, Cin, imm, alu_src, reg_dst, A, B, pc_add2, result, 
	        pc_next, jal_en, reg_wr_sel, br_cond, err);

    // A = Rs, B = Rt
    input[15:0] A, B, instr, pc_add2;
    input[2:0] alu_src;
    input [1:0] reg_dst;
    input invA, invB, Cin, imm;

    output[15:0] result, pc_next;
    output [2:0] reg_wr_sel;
    output err, jal_en, br_cond;

    wire[15:0] se4_0, ze4_0, se7_0, ze7_0, se10_0, alu_B, pc_br, sum1, sum2;
    wire [3:0] mux_out;
    wire p_flag, n_flag, z_flag, branch, jump_disp, jr;
    //wire err1, err2;
    wire cout1, cout2, p1, p2, g1, g2; //dummy wires

    // Extend to 16 bits
    s_z_extend sz_ext(.instr(instr[10:0]), .se4_0(se4_0), .se7_0(se7_0), .se10_0(se10_0), 
	              .ze4_0(ze4_0), .ze7_0(ze7_0));

    // Select alu input 2
    alu_B_ctrl B_ctrl(.InA(B), .InB(se4_0), .InC(ze4_0), .InD(se7_0), .InE(ze7_0), .S(alu_src), 
	              .Out(alu_B));

    // Do alu operation
    alu alu(.Out(result), .Z(z_flag), .P(p_flag), .N(n_flag), .A(A), .B(alu_B), .imm(imm), 
	     .Op(instr[15:11]), .invA(invA), .invB(invB), .Cin(Cin), .instr1_0(instr[1:0]), 
	     .err(err));

    //secondary control module for branches
    br_ctrl bctl(.p_flag(p_flag), .n_flag(n_flag), .z_flag(z_flag), .opcode(instr[15:11]), 
	         .br_en(branch));

    //secondary control for jumps
    jmp_ctrl jumpctl(.opcode(instr[15:11]), .jmp_disp_en(jump_disp), .jr_en(jr), 
	             .jal_en(jal_en)); 
	
    //se branch options
    mux4_1_16 br_mux(.InA(16'h0000), .InB(se10_0), .InC(se7_0), .InD(16'h0000), 
	             .S({branch, jump_disp}), .Out(pc_br));

    //reg_wr_sel logic
    quadmux4_1 wr_reg_mux(.InA({1'b0, instr[4:2]}), .InB({1'b0, instr[7:5]}),
                          .InC({1'b0, instr[10:8]}), .InD(4'hF), .S(reg_dst), .Out(mux_out));

    //branch clcs
    cla_16 add1(.A(pc_add2), .B(pc_br), .Cin(1'b0), .Cout(cout1), .P(p1), .G(g1), .S(sum1));
    cla_16 add2(.A(A), .B(se7_0), .Cin(1'b0), .Cout(cout2), .P(p2), .G(g2), .S(sum2)); 

    // Update PC
    mux2_1_16 mux4(.InA(sum1), .InB(sum2), .S(jr), .Out(pc_next));

    assign br_cond = branch | jr | jump_disp;

    assign reg_wr_sel = mux_out[2:0];

endmodule
