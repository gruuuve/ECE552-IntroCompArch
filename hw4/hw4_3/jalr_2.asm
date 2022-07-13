//jalr test 2

lbi r1, 0 //r1 = 0
jalr r1, 8 //jump to pc = 8(first jump)
nop
halt //second jump ends here
lbi r1, 2 //r1 = 2, first jump ends here
jalr r1, 4 //jump to pc = 6
