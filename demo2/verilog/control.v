module control (opcode, instr1_0, alu_src, mem_wr, reg_wr, memToReg, reg_dst, invA, invB, 
	        Cin, imm, dump, err, ab);

    input[4:0] opcode; //combinational input
    input[1:0] instr1_0;
    
    output reg mem_wr, reg_wr, memToReg, invA, invB;
    output reg Cin, imm, dump, err; //outputs are all control signals
    output reg [1:0] reg_dst; //except for branch and jump logic
    output reg [2:0] alu_src;
    output reg [4:0] ab;

    // reg_dst:
    // 0 - Ins[4:2]
    // 1 - Ins[7:5]
    // 2 - Ins[10:8]
    // 3 - R7 (reg_dst = 111)

    // ALU_SRC:
    // 0 - Reg 2
    // 1 - Imm[4:0] Sign extend
    // 2 - Imm[4:0] Zero extend
    // 3 - Imm[7:0] Sign extend
    // 4 - Imm[7:0] Zero extend
    // 5 - All zeros
    // 6 - X
    // 7 - X
   
    wire[1:0] op_11011; 

    // ADD, SUB, XOR, ANDN invB select
    assign op_11011[1] = (instr1_0 == 2'b11) ? 1'b1 : 1'b0;

    // ADD, SUB, XOR, ANDN Cin and invA select
    assign op_11011[0] = (instr1_0 == 2'b01) ? 1'b1 : 1'b0;

    always @(*) begin
        alu_src = 3'b111;
        mem_wr = 1'b0;
        reg_wr = 1'b0;
        memToReg = 1'b0;
        reg_dst = 2'b11;
        invA = 1'b0;
        invB = 1'b0;
        Cin = 1'b0;
	imm = 1'b0;
        dump = 1'b0;
	err = 1'b0;
	ab = 5'b00010;
	case(opcode)
            5'b00000: begin // HALT
                reg_dst = 2'b01;
		dump = 1'b1;
		ab = 5'b00000;
            end
            5'b00001: begin // NOP
                reg_dst = 2'b01;
		ab = 5'b00000;
            end
	    5'b01000: begin // ADDI
		alu_src = 3'b001;
		reg_wr = 1'b1;
		reg_dst = 2'b01;
	    end
            5'b01001: begin // SUBI
                alu_src = 3'b001;
                reg_wr = 1'b1;
                reg_dst = 2'b01;
		invA = 1'b1;
		Cin = 1'b1;
            end
            5'b01010: begin // XORI
                alu_src = 3'b010;
                reg_wr = 1'b1;
                reg_dst = 2'b01;
            end
            5'b01011: begin // ANDNI
                alu_src = 3'b010;
                reg_wr = 1'b1;
                reg_dst = 2'b01;
		invB = 1'b1;
            end
            5'b10100: begin // ROLI
                alu_src = 3'b010;
                reg_wr = 1'b1;
                reg_dst = 2'b01;
		imm = 1'b1;
            end
            5'b10101: begin // SLLI
                alu_src = 3'b010;
                reg_wr = 1'b1;
                reg_dst = 2'b01;
		imm = 1'b1;
            end
            5'b10110: begin // RORI
                alu_src = 3'b010;
                reg_wr = 1'b1;
                reg_dst = 2'b01;
		imm = 1'b1;
            end
            5'b10111: begin // SRLI
                alu_src = 3'b010;
                reg_wr = 1'b1;
                reg_dst = 2'b01;
		imm = 1'b1;
            end
            5'b10000: begin // ST
                alu_src = 3'b001;
                mem_wr = 1'b1;
		ab = 5'b00011;
            end
            5'b10001: begin // LD
                alu_src = 3'b001;
                reg_wr = 1'b1;
                memToReg = 1'b1;
                reg_dst = 2'b01;
            end
	    // Similar to ST
            5'b10011: begin // STU
                alu_src = 3'b001;
                mem_wr = 1'b1;
                reg_wr = 1'b1;
                reg_dst = 2'b10;
		ab = 5'b00011;
            end
            5'b11001: begin // BTR
                reg_wr = 1'b1;
		reg_dst = 2'b00;
            end
            5'b11011: begin // ADD, SUB, XOR, ANDN
                alu_src = 3'b000;
	        reg_wr = 1'b1;
		reg_dst = 2'b00;
                invA = op_11011[0];
                invB = op_11011[1];
                Cin = op_11011[0];
		ab = 5'b00011;
            end
            5'b11010: begin // ROL, SLL, ROR, SRL
                reg_wr = 1'b1;
		alu_src = 3'b000;
		reg_dst = 2'b00;
		ab = 5'b00011;
            end
            5'b11100: begin // SEQ
                reg_wr = 1'b1;
		alu_src = 3'b000;
		reg_dst = 2'b00;
                invB = 1'b1;
                Cin = 1'b1;
		ab = 5'b00011;
            end
            5'b11101: begin // SLT
                reg_wr = 1'b1;
		alu_src = 3'b000;
                invB = 1'b1;
                Cin = 1'b1;
		reg_dst = 2'b00;
		ab = 5'b00011;
            end
            5'b11110: begin // SLE
                reg_wr = 1'b1;
		alu_src = 3'b000;
                invB = 1'b1;
                Cin = 1'b1;
		reg_dst = 2'b00;
		ab = 5'b00011;
            end
            5'b11111: begin // SCO
                reg_wr = 1'b1;
		alu_src = 3'b000;
		reg_dst = 2'b00;
		ab = 5'b00011;
            end
            5'b01100: begin // BEQZ
                alu_src = 3'b101;
                invB = 1'b1;
                Cin = 1'b1;
		ab = 5'b10010;
            end
            5'b01101: begin // BNEZ
                alu_src = 3'b101;
                invB = 1'b1;
                Cin = 1'b1;
		ab = 5'b10010;
            end
            5'b01110: begin // BLTZ
                alu_src = 3'b101;
                invB = 1'b1;
                Cin = 1'b1;
		ab = 5'b10010;
            end
            5'b01111: begin // BGEZ
                alu_src = 3'b101;
                invB = 1'b1;
                Cin = 1'b1;
		ab = 5'b10010;
            end
            5'b11000: begin // LBI
                alu_src = 3'b011;
                reg_wr = 1'b1;
                reg_dst = 2'b10;
            end
            5'b10010: begin // SLBI
                alu_src = 3'b100;
                reg_wr = 1'b1;
                reg_dst = 2'b10;
            end
            //jump handled in seperate module
            5'b00100: begin // J disp
	        ab = 5'b01000;
            end
            5'b00101: begin // JR
	        ab = 5'b01010;
            end
            5'b00110: begin // JAL
                reg_wr = 1'b1;
                reg_dst = 2'b11; // R7
		ab = 5'b00100;
            end
            5'b00111: begin // JALR
	        reg_wr = 1'b1;
                reg_dst = 2'b11; // R7
		ab = 5'b00110;
            end
	    5'b00010: begin // siic (Do nothing)
	        reg_dst = 2'b11;
		ab = 5'b00000;
            end
            5'b00011: begin // nop/rti (Do nothing)
            end
	    default: begin
                err = 1'b1;
		ab = 5'b00000;
            end
	endcase
    end
endmodule

