    .data
i: .word 0
j: .word 0
x: .word 0
count: .word 10



    .text
main:

    lw r1, i(r0)  ; i
    lw r2, j(r0)  ; j
    lw r3, x(r0)  ; x
    lw r10, count(r0)  ; counter


loop:

    daddi r1, r1, 1  
    daddi r2, r1, -1

    dmul r4, r1, r2

    sw r1, i(r0)
    sw r2, j(r0)

    daddi r1, r1, 1  ; i++
    slt r7, r1, r10

    dadd r3, r3, r4
    sw r2, x(r0)

    bnez r7, loop
    

finish:
    halt

; 68 cycles, 55 inst, 1.236 CPI
; 5 structural stalls, 4 Branch Taken stalls
; Mult latency = 5 cycles, forwarding
