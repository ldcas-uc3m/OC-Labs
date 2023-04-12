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

    ; i = i + 1
    daddi r1, r1, 1  
    sw r1, i(r0)

    ; j = i + 1
    daddi r2, r1, -1  
    sw r2, j(r0)

    ; x = x + (i * j)
    dmul r4, r1, r2
    dadd r3, r3, r4
    sw r2, x(r0)

    ; branch
    daddi r1, r1, 1  ; i++

    slt r7, r1, r10
    bnez r7, loop
    

finish:
    halt

; 88 cycles, 55 inst, 1.600 CPI
; 20 RAW stalls, 5 structural stalls, 4 Branch Taken stalls
; Mult latency = 5 cycles, forwarding
