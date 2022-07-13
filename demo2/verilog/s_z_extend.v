module s_z_extend(instr, se4_0, se7_0, se10_0, ze4_0, ze7_0);

    input [10:0] instr;

    output [15:0] se4_0, se7_0, se10_0, ze4_0, ze7_0;

    wire [10:0] instr4_0;
    wire [7:0] instr7_0;
    wire [4:0] instr10_0;

    //sign extend
    assign instr4_0 = {11{instr[4]}};
    assign instr7_0 = {8{instr[7]}};
    assign instr10_0 = {5{instr[10]}};

    //sign extend concatenation
    assign se4_0 = {instr4_0, instr[4:0]};
    assign se7_0 = {instr7_0, instr[7:0]};
    assign se10_0 = {instr10_0, instr[10:0]};

    //zero extend
    assign ze4_0 = {11'b0, instr[4:0]};
    assign ze7_0 = {8'h00, instr[7:0]};

endmodule

