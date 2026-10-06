; Practica #2
; Suma de un arreglo y manejo de memoria

ORG 100h ;Inicio estandar para programar

.DATA
    ARREGLO DB 10, 20, 30, 40 ;Deiniendo 4 valores de 1byte c/u
    RESULTADO DB 0 ;Espacio para guardar el total

.CODE ;Empieza la logica de codigo 
    MOV SI, OFFSET ARREGLO ;SI apunta a la direccion de memoria del arreglo
    MOV CX, 4 ;CX es el contador para el loop (4vueltas)
    MOV AL, 0 ;Limpiamos AL para usarlo como acumulador

SUMAR_ELEMENTO: 
    ADD AL, [SI] ;Suma el valor de la memoria apuntada por SI a AL
    INC SI ;Incrementa SI para apuntar al siguiente numero
    LOOP SUMAR_ELEMENTO ;CX = CX - 1, Si CX no es 0, salta la etiqueta
    MOV RESULTADO, AL ;Guarda la suma final en la variable "RESULTADO"
    
RET ;Fin del programa