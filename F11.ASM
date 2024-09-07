;input string and reverse it

dosseg
.model small
.stack 100h
.data

var1 db 50 dup('$')
msg1 db 'Enter a string : $'
msg2 db 'String is : $'
msg3 db 'Reverse string is : $'

.code
main proc

mov ax, @data
mov ds, ax

mov dx, offset msg1
mov ah,9
int 21h

mov si, offset var1

l1:
mov ah,1
int 21h

cmp al,13
je programEnd

mov [si], al
push [si] ;push
inc si
jmp l1

programEnd:
mov dx, offset msg2
mov ah,9
int 21h

mov dx, offset var1
mov ah,9
int 21h

mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h

mov dx, offset msg3
mov ah,9
int 21h

mov cx, 8
l2:
pop dx
mov ah,2
int 21h
loop l2

mov dx, 10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h

mov ah,4ch
int 21h


main endp
end main


