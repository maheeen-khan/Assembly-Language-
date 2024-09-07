;swapping 2 strings

dosseg
.model small
.stack 100h
.data

msg1 db 'Karachi$', 0  
msg2 db 'University$', 0

.code
main proc

mov ax, @data
mov ds, ax

mov dx, offset msg1
mov ah, 9
int 21h

mov dx, offset msg2
mov ah, 9
int 21h

mov si, offset msg1
mov di, offset msg2
mov cx, 6

swapLoop:
    mov al, [si]
    mov bl, [di]

    mov [si], bl
    mov [di], al

    inc si
    inc di
    loop swapLoop

mov dx, offset msg1
mov ah, 9
int 21h

mov dx, offset msg2
mov ah, 9
int 21h

mov ah, 4ch
int 21h

main endp
end main

