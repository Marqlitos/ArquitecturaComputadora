; Codigo con conflicto de datos y riesgo de pila
MOV BX, 1000h    
MOV DX, 0005h
MOV AX, [BX]  ;carga desde memoria
ADD AX,CX    ;CONFLICTO: Dependencia inmediata de AX (Stall)
JNZ CULMINAR ;SALTO Ruptura de secuencia sin prediccion

CULMINAR:
    RET