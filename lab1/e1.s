
	.data
	.text
main:
	ld R2,1(R0)
	ld R3, 0(R0)
	dadd R1,R2,R3
	ld	R4,0(R1)
	sd	R4,12(R1)
	nop
	nop
	nop
	nop
	ld R1,0(R2)
	dsub R4,R1,R5
	and R6,R1,R7
	or R8,R1,R9
Finish:
	halt