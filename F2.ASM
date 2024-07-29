.model small               
.stack 100h
.data
.code
main proc
mov dl, 'M'
mov ah, 2
INT 21h

mov dl, 'A'
mov ah, 2
INT 21h

mov dl, 'H'
mov ah, 2
INT 21h

mov dl, 'E'
mov ah, 2
INT 21h
                                                                           
mov dl, 'E'
mov ah, 2
INT 21h

mov dl, 'N'
mov ah, 2
INT 21h
`
mov ah, 4ch
INT 21h
main endp
End main

