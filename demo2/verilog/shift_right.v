module shift_right(In, shft_cnt, Out);

    input [15:0] In;
    input [3:0] shft_cnt;

    output [15:0] Out;

    wire [15:0] shftr_1, shftr_2, shftr_4, shftr_8;
    wire [15:0] shftr_1_out, shftr_2_out, shftr_4_out;

    //4 stages of shifting
    assign shftr_1 = In >> 1;
    assign shftr_1_out = shft_cnt[0] ? shftr_1 : In;

    assign shftr_2 = shftr_1_out >> 2;
    assign shftr_2_out = shft_cnt[1] ? shftr_2 : shftr_1_out;

    assign shftr_4 = shftr_2_out >> 4;
    assign shftr_4_out = shft_cnt[2] ? shftr_4 : shftr_2_out;

    assign shftr_8 = shftr_4_out >> 8;
    assign Out = shft_cnt[3] ? shftr_8 : shftr_4_out;

endmodule   
