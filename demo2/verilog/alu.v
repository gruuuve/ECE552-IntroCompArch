module alu(A, B, Cin, Op, instr1_0, invA, invB, imm, Out, Z, P, N, err);

    input [15:0] A, B;
    input [4:0] Op;
    input [1:0] instr1_0;
    input Cin, invA, invB, imm;

    output reg [15:0] Out;
    output Z, P, N;
    output reg err;

    //declare internal wires here
    wire [15:0] inA, inB;
    wire [15:0] f_or, f_xor, f_and;
    wire [15:0] cla_sum, shifted, alu_arith;
    wire p_cla, g_cla, cout_cla;
    reg bit_rot;

    //module instantiation

    //shift and rotate logic
    shifter shift(.In(A), .shft_cnt(B[3:0]), .Op({bit_rot, instr1_0}), .op1_0(Op[1:0]),
	          .imm(imm), .Out(shifted));

    //Addition logic
    cla_16 cla(.A(inA), .B(inB), .Cin(Cin), .S(cla_sum), .Cout(cout_cla), .P(p_cla), .G(g_cla));

    //inversion if selected
    assign inA = invA ? ~A : A;
    assign inB = invB ? ~B : B;

    //logical operators
    assign f_or = inA | inB;
    assign f_xor = inA ^ inB;
    assign f_and = inA & inB;

    // ADD, SUB, XOR and ANDN
    mux4_1_16 mux1(.InA(cla_sum), .InB(cla_sum), .InC(f_xor), .InD(f_and), .S(instr1_0), .Out(alu_arith));

    //flag logic

    //output is all zeros
    assign Z = (cla_sum == 4'h0) ? 1 : 0;
    assign N = cla_sum[15] & ~Z;
    assign P = ~(cla_sum[15] | Z);

    always @(*) begin
        bit_rot = 1'b0; //only set on BTR
	err = 1'b0; //set in default case
        case(Op)
                5'b00000: begin // HALT
                  Out = 16'hxxxx;                 
                end
                5'b00001: begin // NOP
                  Out = 16'hxxxx;                 
                end
                5'b01000: begin // ADDI
                  Out = cla_sum;		  
                end
                5'b01001: begin // SUBI
                  Out = cla_sum;		  
                end
                5'b01010: begin // XORI
                  Out = f_xor;		  
   		end
    		5'b01011: begin // ANDNI
                  Out = f_and;		  
    		end
    		5'b10100: begin // ROLI
                  Out = shifted;		  
    		end
    		5'b10101: begin // SLLI
                  Out = shifted;		  
    		end
    		5'b10110: begin // RORI
                  Out = shifted;		  
    		end
    		5'b10111: begin // SRLI
                  Out = shifted;		  
    		end
		5'b10000: begin // ST
		  Out = cla_sum;		  
		end
		5'b10001: begin // LD
		  Out = cla_sum;		  
		end
		5'b10011: begin // STU
		  Out = cla_sum;		  
		end
		5'b11001: begin // BTR
                  bit_rot = 1'b1; //bit_rotate
		  Out = shifted;		  
		end
		5'b11011: begin // ADD, SUB, XOR and ANDN
		  Out = alu_arith;		  
		end
		5'b11010: begin // ROL, SLL, ROR and SRL
		  Out = shifted;		  
		end
		5'b11100: begin // SEQ
		  Out = (Z) ? 16'h1 : 16'h0;		  
		end
		5'b11101: begin // SLT
		  Out =  ((N & ~(A[15] ^ B[15])) | (A[15] & ~B[15])) ? 16'h1: 16'h0;
		  //Out = cla_sum;		  
		end
		5'b11110: begin // SLE
		  Out = ((N & ~(A[15] ^ B[15])) | (A[15] & ~B[15]) | Z) ? 16'h1 : 16'h0;		  
		end
		5'b11111: begin // SCO
		  Out = (g_cla) ? 16'h1 : 16'h0;		  
		end
		5'b11000: begin // LBI
		  Out = B;		  
		end
		5'b10010: begin // SLBI
		  Out = ((A << 8) | B);		  
		end
                5'b01100: begin // BEQZ
                  Out = cla_sum;              
                end
                5'b01101: begin // BNEZ
                  Out = cla_sum;                  
                end
                5'b01110: begin // BLTZ
                  Out = cla_sum;                 
                end
                5'b01111: begin // BGEZ
                  Out = cla_sum;                  
                end
                5'b00100: begin // J disp
                  Out = cla_sum;                  
                end
                5'b00101: begin // JR
                  Out = cla_sum;                  
                end
                5'b00110: begin // JAL
                  Out = cla_sum;                 
                end
                5'b00111: begin // JALR
                  Out = cla_sum;                  
                end
                5'b00010: begin // siic
                  Out = 16'hXXXX;                  
                end
                5'b00011: begin // NOP/RTI
                  Out = 16'hXXXX;                
                end
    		default: begin
		  Out = 16'hXXXX;
		  err = 1'b1;
    		end
    	endcase
    end        

endmodule

