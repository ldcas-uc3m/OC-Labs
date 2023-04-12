    .data
index:  .word 80
scalar: .double 2
    
    .text
main:

    lw r1,index(R0)     ; Cargar index
    l.d f12,scalar(R0)  ; Cargar escalar C en f12
Loop:
    l.d f0,0(r1)    ; Cargar x[i]
    add.d f4,f0,f12 ; x[i] + c
    s.d f4,0(r1)    ; Guardar en x[i]
    daddi r1,r1,-8  ; i--
    bnez r1,Loop    ; Jump

Finish:
    halt

; 1.811 CPI, 91 cycles, 53 inst, 49 stalls