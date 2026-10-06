; Practica 8
; funcionamiento de E/S

ORG 100h
.CODE

MAIN:             
; -- Fase de entrada (Buffer de los 3 estados)n --
MOV DX, 00h ; Definimos la direccion de puerto de entrada (Interruptores)
IN AL, DX ;El bufer va a abrir la compuerta y mete el dato en el acumulador AL

; -- Fase de procesamiento --
NOT AL ; Invertimos los bits (Solo para ver los cambios fisicos)
   
; -- Fase de salida -- 
MOV DX, 01H ; Definimos la direccion de puerto de salida (Leds)
OUT DX, AL ; El latch captura el dato de AL y lo mantiene encendido

JMP MAIN ; Ciclo infinito para monitorear 24/7 tiempo real   
   
RET ; Fin del programa