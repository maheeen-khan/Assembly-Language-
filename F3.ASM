.model small
.stack 100h
.data
.code

main proc

;add two numbers

mov bl,2
mov cl,3
add bl,cl
mov dl,bl

add dl,48

mov ah,2
int 21h

main endp
end main
