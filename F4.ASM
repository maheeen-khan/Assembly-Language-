.model small
.stack 100h
.data
.code

main proc

;subtract two numbers

mov bl,6
sub bl,3
mov dl,bl
add dl,48

mov ah,2
int 21h


main endp
end main
