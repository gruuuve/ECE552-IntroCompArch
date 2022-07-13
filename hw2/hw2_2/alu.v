module alu (A, B, Cin, Op, invA, invB, sign, Out, Ofl, Z);
   
        input [15:0] A;
        input [15:0] B;
        input Cin;
        input [2:0] Op;
        input invA;
        input invB;
        input sign;
        output [15:0] Out;
        output Ofl;
        output Z;

	//declare internal wires here
	wire [15:0] inA, inB;
        wire [15:0] f_or, f_xor, f_and, logic_op0, logic_op1;
	wire [15:0] cla_sum, shifted;
	wire s_ofl, c_cla;
	
	//module instantiation
        shifter shift(.In(inA), .Cnt(inB[3:0]), .Op(Op[1:0]), .Out(shifted));
        cla_16 cla(.A(inA), .B(inB), .Cin(Cin), .S(cla_sum), .Cout(c_cla));

	//inversion if selected
	assign inA = invA ? ~A : A;
	assign inB = invB ? ~B : B;

	//logical operators
	assign f_or = inA | inB;
	assign f_xor = inA ^ inB;
	assign f_and = inA & inB;

	//logic select in 2 stages
	assign logic_op0 = Op[0] ? f_and : f_xor;
	assign logic_op1 = Op[1] ? logic_op0 : f_or;

	//overflow arith
	assign s_ofl = (inA[15] & inB[15]) ? ~cla_sum[15] : cla_sum[15];
        
	//output logic
        //output is all zeros
	assign Z = (Out == 4'h0000) ? 1 : 0;
	
	//output has overflow
	assign Ofl = sign ? s_ofl : c_cla;

	//actual output of alu
	assign Out = Op[2] ? Op[1] | Op[0] ? logic_op1 : cla_sum : shifted;

endmodule
