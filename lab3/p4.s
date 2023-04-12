    .data
index:  .word 80
scalar: .double 2

    
    .text
main:

    lw r1,index(R0)     ; Cargar index
    l.d f12,scalar(R0)  ; Cargar escalar C en f12

    ; Prólogo
    l.d f0,0(r1)
    add.d f4,f0,f12
    l.d f0,-8(r1)

Loop:
    ; Patrón
    s.d f4,0(r1)    ; Guardar en x[i]
    add.d f4,f0,f12 ; x[i] + c
    l.d f0,-16(r1)    ; Cargar x[i]

    ; Jump
    daddi r1,r1,-8  ; i--
    bnez r1,Loop    ; Jump

    ; Epílogo
    s.d f4,-8(r1)
    add.d f4,f0,f12
    s.d f4,-16(r1)

Finish:
    halt

; 1.610 CPI, 95 cycles, 59 inst, 32 stalls