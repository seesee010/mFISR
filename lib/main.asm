; main lib file
section .data
    half:       dd 0.5
    threehalfs: dd 1.5

section .text
global mFISR_calc


; args:
    ; 1. xmm0 is the value to use
    ; 2. xmm1 is the hash

; return: returns the value
mFISR_calc:

    mulss xmm0, [half]
    mulss xmm0, xmm1
    mulss xmm0, xmm1

    movss xmm2, [threehalfs]
    subss xmm2, xmm0

    mulss xmm1, xmm2
    movss xmm0, xmm1
    ret