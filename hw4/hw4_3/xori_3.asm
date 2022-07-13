//xori test 3

lbi r1, 0xFF //r1 = 0xFF
//immediate should be zero extended
xori r3, r1, 31 // 0xFFFF xor 0x001F -> FFE0 expected
halt
