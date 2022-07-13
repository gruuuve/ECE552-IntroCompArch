// Write your assembly program for Problem 2 (a) here.
// Assuming the branch is not taken
lbi r0, 0
beqz r0, 4 //br should be taken
lbi r1, 2
lbi r1, 4
slt r2, r1, r0 // r1 < r0? 1 : 0
beqz r2, -6 //br not taken
halt
