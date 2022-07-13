module jmp_ctrl(opcode, jmp_disp_en, jr_en, jal_en);

    input [4:0] opcode;
    output reg jmp_disp_en, jr_en, jal_en;

    always @(*) begin
	jmp_disp_en = 1'b0;
	jr_en = 1'b0;
	jal_en = 1'b0;
	case(opcode)
		5'b00100: begin //jdisp
		    jmp_disp_en = 1'b1;
		end
		5'b00110: begin //jaldisp
		    jmp_disp_en = 1'b1;
		    jal_en = 1'b1;
		end
		5'b00101: begin //jr
		    jr_en = 1'b1;
		end
		5'b00111: begin //jalr
		    jr_en = 1'b1;
		    jal_en = 1'b1;
		end
		default: begin
		end
	endcase
    end

endmodule

