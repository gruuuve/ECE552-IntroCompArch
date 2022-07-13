module seqdec_42(InA, Clk, Reset, Out);

    //ID number is 9076575597
    input InA, Clk, Reset;
    output Out;

    wire [7:0] next_state, curr_state;

    reg8 state (.q(curr_state), .d(next_state), .clk(Clk), .rst(Reset));

    assign Out = (curr_state == 8'b01000010) ? 1'b1 : 1'b0;
    assign next_state = {curr_state[6:0], InA};

endmodule
