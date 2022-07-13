module alu_B_ctrl(InA, InB, InC, InD, InE, S, Out);
 
    input [15:0] InA, InB, InC, InD, InE;
    input [2:0] S;

    output reg [15:0] Out;

    always @(*) begin
        case(S)
            3'b000: begin
                Out = InA;
            end
            3'b001: begin
                Out = InB;
            end
            3'b010: begin
                Out = InC;
            end
            3'b011: begin
                Out = InD;
            end
            3'b100: begin
                Out = InE;
            end
            3'b101: begin
                Out = 16'h0000;
            end
            3'b110: begin
                Out = 16'h0000;
            end
            3'b111: begin
                Out = 16'h0000;
            end
            default: begin
                Out = 16'hXXXX;
            end
        endcase
    end

endmodule  

