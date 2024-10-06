dosseg 
.model small
.stack 100h
.data
.code
main proc

    ; Clear screen
    mov ah, 0  ; Function 0: Set video mode
    mov al, 3  ; Mode 3: 80x25 text mode, 16 colors
    int 10h

mov ah,06h

mov al, 6
mov bh, 01010101b
mov cl,6
mov ch,6
mov dl,18
mov dh,18

int 10h

mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h

;rectangle
mov ah,06h
mov al, 6
mov bh, 01010000b
mov cl,6
mov ch,6
mov dl,24
mov dh,24

int 10h


mov ah, 4ch
int 21h

main endp
end main