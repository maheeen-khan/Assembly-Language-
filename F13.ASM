;compare 2 strings

dosseg
.model small
.stack 100h
.data

msg1 db 'String 1 is : $'
msg2 db 'String 1 is : $'

str1 db 'Hello I am Girl$', 0
str2 db 'Hello I am Boy$', 0
equalMsg db 'Strings are equal$', 0
notEqualMsg db 'Strings are not equal$', 0

.code
main proc
    mov ax, @data
    mov ds, ax
	
    mov dx, offset msg1
    mov ah,9
    int 21h

    mov dx, offset str1
    mov ah,9
    int 21h


    mov dx,10
    mov ah,2
    int 21h
  
    mov dx,13
    mov ah,2
    int 21h

    mov dx, offset msg2
    mov ah,9
    int 21h

    mov dx, offset str2
    mov ah,9
    int 21h



    mov dx,10
    mov ah,2
    int 21h
  
    mov dx,13
    mov ah,2
    int 21h

    
    mov si, offset str1
    mov di, offset str2

compareLoop:
    mov al, [si]
    mov bl, [di]
    cmp al, bl
    jne notEqual
    cmp al, '$'
    je equal
    inc si
    inc di
    jmp compareLoop

equal:
    mov dx, offset equalMsg
    mov ah, 9
    int 21h
    jmp endProgram

notEqual:
    mov dx, offset notEqualMsg
    mov ah, 9
    int 21h

endProgram:
    mov ah, 4Ch
    int 21h

main endp
end main

