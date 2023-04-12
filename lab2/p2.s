    .data
index: .word 64
scalar: .word 5
    .text
main:
    lw r1,index(R0)
    l.d f9,scalar(R0)
loop: l.d f0,0(r1)
    add.d f4,f0,f2
    s.d f4,0(r1)
    daddi r1,r1,-8
    bnez r1,loop
Finish:
    halt