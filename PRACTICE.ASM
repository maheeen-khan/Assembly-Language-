DOSSEG
.MODEL SMALL
.STACK 100H
.DATA

;declared variables for input
NUM1 DB ?
NUM2 DB ?
MSG1 DB 'Enter a number : $'
MSG2 DB 'Enter second number : $'
R DB 'RESULT IS : $'

.CODE
MAIN  PROC

MOV AX, @DATA
MOV DS, AX

MOV DX, OFFSET MSG1
MOV AH,9
INT 21H

MOV AH,1
INT 21H

MOV NUM1,AL

MOV DX, 10
MOV AH,2
INT 21H

MOV DX, 13
MOV AH,2
INT 21H

;second no. input
MOV DX, OFFSET MSG2
MOV AH,9
INT 21H

MOV AH,1
INT 21H

MOV NUM2, AL

;LINE CHANGE
MOV DX, 10
MOV AH,2
INT 21H

MOV DX, 13
MOV AH,2
INT 21H

;display data
MOV DL, NUM1
MOV AH,2
INT 21H

MOV DL, NUM2
MOV AH,2
INT 21H

;line break

MOV DX, 10
MOV AH, 2
INT 21H

MOV DX, 13
MOV AH,2
INT 21H

;print result
MOV DX, OFFSET R
MOV AH, 9
INT 21H

MOV BL, NUM1
ADD BL, NUM2

SUB BL, 48

MOV DL, BL

MOV AH,2
INT 21H

MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN




