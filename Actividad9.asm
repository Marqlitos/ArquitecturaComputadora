ORG 100h
.CODE

ESPERA_TECLADO:
    ; 1- Lectura del estado
    IN AL, 64h ;Leemos el puerto de estado del controlador del estado
    
    ;Paso 2 --Verificamos la bandera (Bit 0: Data Ready)
    TEST AL, 01h ; Comprobar si el bit 0 esta en 1
    JZ ESPERA_TECLADO ;Si es 0, seguimos esperando (Efecto polling)
    
    ;Paso 3: --Leer datos
    IN AL, 60h ;Solo vamos a llegar aqui si el teclado puso un dato
    
    ;Procesar el dato (Ejemplo: Mostrarlo en pantalla)
    MOV AH, 0Eh
    INT 10h
    JMP ESPERA_TECLADO
RET