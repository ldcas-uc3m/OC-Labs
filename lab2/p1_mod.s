	.data
ONE: .word 1
TWO: .word 2
THREE: .word 3
	.text
main:
	l.d f1, ONE(R0)
	l.d f2, TWO(R0)
	l.d f3, THREE(R0)
	cvt.d.l f7,f1
	cvt.d.l f8,f2
	cvt.d.l f9,f3
	div.d f1,f8,f7
	mul.d f4,f8,f7
	add.d f10,f8,f9
	sub.d f11,f8,f9
	mul.d f5,f9,f7
	div.d f2,f9,f7
	add.d f6,f4,f5
	add.d f3,f1,f2
	add.d f13,f6,f11
	add.d f12,f3,f10
	div.d f14,f12,f13
	mul.d f14,f14,f14
Finish:
	halt