DOSSEG
.MODEL SMALL
.STACK 100H

.DATA
.CODE
MAIN PROC

     ; Clear screen
    mov ah, 06h
    mov al, 0
    mov bh, 0
    mov cx, 0
    mov dx, 184fh
    int 10h


    MOV AH, 06h
    MOV AL, 10
    MOV BH, 00011000b
    MOV CL, 0
    MOV CH, 0
    MOV DH, 12
    MOV DL, 20
    INT 10h

    MOV AH, 02h
    MOV BH, 0
    MOV DH, 6
    MOV DL, 8
    INT 10h

    MOV AH, 0Eh
    MOV AL, 'P'
    INT 10h
    MOV AL, 'A'
    INT 10h
    MOV AL, 'R'
    INT 10h
    MOV AL, 'L'
    INT 10h
    MOV AL, 'L'
    INT 10h
    MOV AL, 'O'
    INT 10h

    MOV AH, 06h
    MOV AL, 10
    MOV BH, 00100000b
    MOV CL, 25
    MOV CH, 0
    MOV DH, 12
    MOV DL, 45
    INT 10h

    MOV AH, 02h
    MOV BH, 0
    MOV DH, 6
    MOV DL, 33
    INT 10h

    MOV AH, 0Eh
    MOV AL, 'S'
    INT 10h
    MOV AL, 'Q'
    INT 10h
    MOV AL, 'U'
    INT 10h
    MOV AL, 'A'
    INT 10h
    MOV AL, 'R'
    INT 10h
    MOV AL, 'E'
    INT 10h

    MOV AH, 06h
    MOV AL, 6
    MOV BH, 00111100b
    MOV CL, 6
    MOV CH, 6
    MOV DH, 24
    MOV DL, 24
    INT 10h

    MOV AH, 02h
    MOV BH, 0
    MOV DH, 6
    MOV DL, 58
    INT 10h

    MOV AH, 0Eh
    MOV AL, 'R'
    INT 10h
    MOV AL, 'E'
    INT 10h
    MOV AL, 'T'
    INT 10h
    MOV AL, 'A'
    INT 10h
    MOV AL, 'N'
    INT 10h
    MOV AL, 'G'
    INT 10h
    MOV AL, 'L'
    INT 10h
    MOV AL, 'E'
    INT 10h

    MOV AH, 00h
    INT 16h

    MOV AH, 4Ch
    INT 21h

MAIN ENDP
END MAIN
