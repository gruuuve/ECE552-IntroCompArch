module shift_left(In, shft_cnt, Out);

    input [15:0] In;
    input [3:0] shft_cnt;

    output [15:0] Out;

    wire [15:0] shftl_1, shftl_2, shftl_4, shftl_8;
    wire [15:0] shftl_1_out, shftl_2_out, shftl_4_out;

    //4 stages of shifting
    assign shftl_1 = In << 1;
    assign shftl_1_out = shft_cnt[0] ? shftl_1 : In;

    assign shftl_2 = shftl_1_out << 2;
    assign shftl_2_out = shft_cnt[1] ? shftl_2 : shftl_1_out;

    assign shftl_4 = shftl_2_out << 4;
    assign shftl_4_out = shft_cnt[2] ? shftl_4 : shftl_2_out;

    assign shftl_8 = shftl_4_out << 8;
    assign Out = shft_cnt[3] ? shftl_8 : shftl_4_out;

endmodule    
