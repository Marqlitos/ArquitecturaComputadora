; Practica 10
; Es I/O programada o por interrupciones

.ORG 100h

.CODE

    MOV BL,'H' ; Caracter que queremos imprimir ('H' de hola)
    
SONDEO_ESTADO:
    ;Paso 1: Leer el registro del estado
    ;Simulamos que puerto 64h nos da el estado del periferico
    IN AL, 64h 
    
    ;Paso 2: Verificar la bandera (BIT 7: BUSY)
    ;Si el bit 7 es el 1, es el periferico ocupado
    ;Si el bit 7 es el 0, el periferico esta listo
    TEST AL,80H ;Comprobar el bit mas significativo (10000000B)
    JNZ SONDEO_ESTADO ;Si nos es cero (Busy=1), Volver a preguntar (Polling)
    
    ;PAso 3: Transferencia de datos
    ;Solo se llega aqui si el bit 7 fue 0 (Listo)
    MOV AL, BL
    OUT 61h, AL
RET

;Reporte en word con el paso a paso que hace el programa y definir si es una entrada/Salida programada o por interrupciones
; y por que el documento debe de incluir portada, tabla de contenido, introduccion, desarrollo 
;(Contestar pregunta y el paso a  paso) imagenes con titulos y tablas
;Con titulos conclusiones y referencias