
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA

MSG DB 'Print name using an Array : $'
ARR DB 'M','A','H','E','E','N',' ','K','H','A','N','$'

.CODE
MAIN PROC

MOV AX, @DATA
MOV DS, AX

MOV DX, 10
MOV AH, 2
INT 21H

MOV DX, 13
MOV AH, 2
INT 21H

MOV DX, OFFSET MSG
MOV AH, 9
INT 21H

MOV CX, 11
MOV SI, OFFSET ARR

L1:
    MOV AL, [SI]
    CMP AL, ' '
    JE SPACEPRINT

    MOV DL, AL
    MOV AH, 2
    INT 21H

    INC SI
    LOOP L1
    JMP EXIT

SPACEPRINT:
    MOV DL, '_'
    MOV AH, 2
    INT 21H
    INC SI
    LOOP L1

EXIT:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
