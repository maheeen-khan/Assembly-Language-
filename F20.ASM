dosseg
.model small
.stack 100h
.data
.code
main proc

    ; Set video mode to 13h (320x200, 256 colors)
    mov ax, 13h
    int 10h

    ; Set color for the triangle
    mov al, 15h        ; White color
    mov ah, 0Ch        ; BIOS function to plot pixel

    ; Starting coordinates for the right triangle
    mov cx, 50         ; Base of the triangle on x-axis
    mov dx, 150        ; Height of the triangle on y-axis

    ; Draw the right triangle by plotting pixels row by row
    mov si, 0          ; Horizontal pixel counter (x-axis)
    mov di, 0          ; Vertical pixel counter (y-axis)
    
draw_triangle:
    mov bx, si         ; Current length of the row

draw_row:
    ; Plot pixel for each row
    mov cx, bx         ; X-coordinate
    mov dx, di         ; Y-coordinate
    mov al, 15         ; Set pixel color
    int 10h            ; Plot the pixel
    dec bx             ; Move left along the row
    cmp bx, 0          ; Stop when reaching the left end
    jge draw_row

    ; Move down to the next row
    inc di             ; Increase Y-coordinate (go down)
    inc si             ; Increase the row length (extend rightward)
    cmp di, 100        ; Compare with triangle height
    jl draw_triangle

    ; Wait for a key press
    mov ah, 0
    int 16h

    ; Return to text mode (Mode 03h)
    mov ax, 03h
    int 10h

    ; Exit program
    mov ah, 4Ch
    int 21h

main endp
end main