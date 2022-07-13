module shifter (In, shft_cnt, Op, op1_0, imm, Out);

    input [15:0] In;
    input [3:0]  shft_cnt;
    input [2:0]  Op;
    input [1:0] op1_0; //lower two of opcode
    input imm; //set when rori, roli, slli, srli
    output reg [15:0] Out;

    wire [15:0] bit_rot, shftr_out, shftl_out, rotr_out, rotl_out;
    wire [2:0] sel;

    assign sel = imm ? {Op[2], op1_0} : Op;

    //shift ops
    shift_right shftr(.In(In), .shft_cnt(shft_cnt), .Out(shftr_out));
    shift_left  shftl(.In(In), .shft_cnt(shft_cnt), .Out(shftl_out));
    
    //rotate ops
    rotate_right rotr(.In(In), .shft_cnt(shft_cnt), .Out(rotr_out));
    rotate_left rotl(.In(In), .shft_cnt(shft_cnt), .Out(rotl_out));

    //bit rotate
    assign bit_rot[15] = In[0];
    assign bit_rot[14] = In[1];
    assign bit_rot[13] = In[2];
    assign bit_rot[12] = In[3];
    assign bit_rot[11] = In[4];
    assign bit_rot[10] = In[5];
    assign bit_rot[9] = In[6];
    assign bit_rot[8] = In[7];
    assign bit_rot[7] = In[8];
    assign bit_rot[6] = In[9];
    assign bit_rot[5] = In[10];
    assign bit_rot[4] = In[11];
    assign bit_rot[3] = In[12];
    assign bit_rot[2] = In[13];
    assign bit_rot[1] = In[14];
    assign bit_rot[0] = In[15];
    
    //output case
    always @(*) begin
        case(sel)
             3'b000: begin //rol
                 Out = rotl_out;
             end
             3'b001: begin //sll
                 Out = shftl_out;
	     end
             3'b010: begin //rotr
                 Out = rotr_out;
	     end
	     3'b011: begin //srl
                 Out = shftr_out;
	     end
	     3'b100: begin //bit_rot
                 Out = bit_rot;
             end
	     3'b101: begin
		 Out = bit_rot;
             end
	     3'b110: begin
		 Out = bit_rot;
             end
	     3'b111: begin
		 Out = bit_rot;
             end
             default: begin
                 Out = 16'hXXXX;
	     end
	 endcase
    end

endmodule

