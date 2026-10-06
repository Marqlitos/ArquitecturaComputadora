;Practica 3 
;Simular el pipeling
 
ORG 100h

MOV AX, 0 ; Acumulador
MOV BX, 1 ;Contador / valor a sumar
MOV CX, 5 ;Numero de iteraciones

SALTO_PIPELINE:
    ADD AX, BX  ;Suma BX a AX
    INC BX  ;Incremetar BX
    DEC CX  ;Decrementa el contador
    JNZ SALTO_PIPELINE  ;saltar mientras el contador no sea 0

MOV CX,AX   ;Ahora si se ejecuta al terminar el bucle
RET    
