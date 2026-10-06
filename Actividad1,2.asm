; Practica 1
; Ciclo Busqueda -> Decodificacion -> Ejecucion

ORG 100h

.CODE
MAIN:
    MOV AX,005h ;Fetch: Lee instruccion -> IP incrementa -> AX = 5
    MOV BX,003h ;Fetch Lee instruccion -> IP incrementa -> BX = 3
    
    ADD AX,BX   ;Fetch: instruccion -> IP incrementa -> AX = 8 (5 + 3) y FLAGS Cambian
    
    INT 21h     ;Simulacion de interrupcion de software

RET
