
	.data
	.text
main:
	dadd R1,R2,R3
	dsub R4,R1,R5
	and R6,R1,R7
	or R8,R1,R9
	xor R10,R1,R11
	nop
	nop
	nop
	nop
	dadd R1, R2, R3
	dsub R4,R1,R5
	and R6, R4, R7
	or R8,R6,R9
	xor R10,R8,R11
Finish:
	halt