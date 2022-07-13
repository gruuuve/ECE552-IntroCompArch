//jalr test 0

lbi r1, 0x00 //r1 = 4'h0000 (sign extended)
jalr r1, 6 //jump to pc = 0x06
nop
halt //end jump here
