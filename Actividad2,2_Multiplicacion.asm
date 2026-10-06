; Practica 2
; Multiplicacion de 4 entradas
ORG 100h

.CODE

MAIN:     

    MOV AX, 005h
    MOV BX, 003h
    MOV CX, 004h
    MOV SI, 006h

    MUL BX        ; 5 * 3 = 15
    MUL CX        ; 15 * 4 = 60
    MUL BX        ; 60 * 3 = 180
    MUL SI        ; 180 * 6 = 1080

    INT 21h

RET