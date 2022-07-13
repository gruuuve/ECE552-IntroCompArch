module br_ctrl (p_flag, n_flag, z_flag, opcode, br_en);
    input p_flag, n_flag, z_flag;
    input[4:0] opcode;
    
    output reg br_en;
    
    wire bnez, bgez;
  
    assign bnez = p_flag | n_flag;
    assign bgez = p_flag | z_flag;

    always @ (*) begin
	  case (opcode)
		5'b01100: begin //beqz
	   	  br_en = (z_flag) ? 1'b1 : 1'b0;
	        end
		5'b01101: begin //bnez
		  br_en = (bnez) ? 1'b1 : 1'b0;
		end
		5'b01110: begin //bltz
		  br_en = (n_flag) ? 1'b1 : 1'b0;
	        end
		5'b01111: begin //bgez
		  br_en = (bgez) ? 1'b1 : 1'b0;
		end
		default: begin
		  br_en = 1'b0;
		end
      	  endcase
        end
  
endmodule
