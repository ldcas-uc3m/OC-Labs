    .data
index: .word 64
scalar: .word 5
    .text
main:
    lw r1,index(R0)
    l.d f9,scalar(R0)
loop: l.d f0,0(r1)
    l.d f1,-8(r1)
    l.d f2,-16(r1)
    l.d f3,-24(r1)
    add.d f4,f0,f9
    add.d f5,f1,f9
    add.d f6,f2,f9
    add.d f7,f3,f9
    s.d f4,0(r1)
    s.d f5,-8(r1)
    s.d f6,-16(r1)
    s.d f7,-24(r1)
    daddi r1,r1,-32
    bnez r1,loop
Finish:
    halt