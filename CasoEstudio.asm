ORG 100h

.DATA
DATOS_BUFFER DB 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'
PUERTO_ES EQU 0E0h

.CODE
MAIN:         
MOV AX, @DATA
MOV DS, AX

MOV SI, OFFSET DATOS_BUFFER
MOV CX, 8

CICLO_BUS_LENTO:
MOV AL, [SI] ; Carga byte por byte
OUT PUERTO_ES, AL ; Operación de E/S individual (satura el bus)
INC SI ; Incremento individual
LOOP CICLO_BUS_LENTO ; Sobrecarga adicional por control de bucle

RET
END MAIN