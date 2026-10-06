ORG 100h 
                                            
MOV AL,5
ADD AL,3
ADD AL, '0'
MOV DL, AL
MOV AH, 02H
INT 21H

RET        
