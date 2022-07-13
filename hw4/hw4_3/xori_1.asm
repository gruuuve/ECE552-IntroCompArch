//xori test 1

lbi r1, 0 //r1 = 0
xori r1, r1, 31 //0 oxor 31 (1F) should result in r1 = 0x001f
halt 
