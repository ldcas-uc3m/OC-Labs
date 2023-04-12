    .data
index:  .word 80
lowerIndex: .word 16
scalar: .double 2

    
    .text
main:

    lw r1,index(R0)     ; Cargar index
    l.d f12,scalar(R0)  ; Cargar escalar C en f12
    lw r2, lowerIndex(R0)

    ; Prólogo
    l.d f0,0(r1)
    add.d f4,f0,f12
    l.d f0,-8(r1)

Loop:
    ; Patrón
    s.d f4,0(r1)    ; Guardar en x[i]
    add.d f4,f0,f12 ; x[i] + c

    daddi r1,r1,-8  ; i--
    l.d f0,-8(r1)    ; Cargar x[i]
    bne r1,r2,Loop    ; Jump

    ; Epílogo
    s.d f4,0(r1)
    add.d f4,f0,f12
    s.d f4,-8(r1)

Finish:
    halt

; 1.440 CPI, 72 cycles, 50 inst, 19 stalls