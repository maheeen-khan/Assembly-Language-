;grade system

DOSSEG
.MODEL SMALL
.STACK 100H
.DATA

MSG DB 'Enter your GPA : $'
P DB 'PASS! Good Job.$'
E DB 'PASS! EXECELLENT$'
F DB 'FAIL! You need hard work.$'

.CODE
MAIN PROC

MOV AX, @DATA
MOV DS, AX

MOV DX, OFFSET MSG
MOV AH, 9
INT 21H


MOV DL, '2'
MOV AH, 1
INT 21H



CMP AL, DL
JE L2
JLE L1


;first line break and then print remarks
MOV DX, 10
MOV AH, 2
INT 21H

MOV DX, 13
MOV AH, 2
INT 21H

MOV DX, OFFSET P
MOV AH, 9
INT 21H

MOV AH, 4CH
INT 21H


L1:

;first line break and then print remarks
MOV DX, 10
MOV AH, 2
INT 21H

MOV DX, 13
MOV AH, 2
INT 21H


MOV DX, OFFSET F
MOV AH, 9
INT 21H

MOV AH, 4CH
INT 21H

L2:

;first line break and then print remarks
MOV DX, 10
MOV AH, 2
INT 21H

MOV DX, 13
MOV AH, 2
INT 21H


MOV DX, OFFSET E
MOV AH, 9
INT 21H

MOV AH, 4CH
INT 21H


MAIN ENDP
END MAIN
