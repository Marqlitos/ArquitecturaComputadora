; practica 7
; funcionemiento de la CPU

ORG 100h ; inicio del segmento de codigo

.CODE


; -- Fase de carga (registros) -- 

MOV AL, 0Ah ;Cargar 1010b en AL (Acumulador)
MOV BL, 05h ;Cargar 0101 en BL (Registro Base)

; -- Fase de procesamiento ALU --
; La ALU realize un AND logico bit a bit
; Como 1010 AN 0101 es 0000, el resultado es CERO

AND AL, BL ; AL = AL AND BL

; -- Fase de control (Banderas e IP) --
; La unidad de control revisa la bandera de CERO (ZF)
; Si ZF = (Resultado de CERO), IP saltara a la etiqueta ES_CERO

JZ ES_CERO ;Salto condicional si es CERO
;Este bloque se va a activar si el resultado NO fue CERO

MOV DL, 'N' ;Cargar caracter 'N' (No cero)
JMP FIN ; Salto incondicional

ES_CERO:
;Este bloque se ejecuta porque la ALU detecto un resultado CERO
MOV DL, 'Z' ; Cargar caracter 'Z' (Cero)
FIN:
    RET ;Retorna al sistema1 ++++++++++++++++++++++++++++++++++++++++ссссссссссссссссссссссс+.knhi