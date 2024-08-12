.model small
.stack 100h
.data
    var1 db 5       
    var2 db 3       
    result1 db ?    
    result2 db ?    

.code
main proc
    mov ax, @data   
    mov ds, ax

    ; First Loop: AND operation between var1 and var2

    mov cx, 1       
    mov al, var1    
    mov bl, var2 
   
first_loop:
    and al, bl      
    mov result1, al ; Store the result of AND operation in result1
    loop first_loop 

    ; Second Loop: OR operation between var1 and var2

    mov cx, 1       
    mov al, var1    
    mov bl, var2    
second_loop:
    or al, bl       
    mov result2, al 
    loop second_loop 

   
    mov ah, 4Ch     
    int 21h

main endp
end main