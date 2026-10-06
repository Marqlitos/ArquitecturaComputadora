; Ejercicio n1: 
; Suma de dos numeros y observacion de los registros
 
 ORG 100h ;Inicio del programa (Formato .COM)
                                            
;Sumar 5 + 2 = 7

MOV AX,00016h ;Cargar el valor 5 en el registro acumulador AX
MOV BX, 00024h ;Cargar el valor 2 en el registro base BX  
ADD AX,BX ;Sumar el contenido de BX a AX (AX = AX + BX)

RET ;Finaliza el programa   