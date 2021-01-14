.model small
.stack 100h
.data

fibo db 23 dup (?) 
v1 db 1
v2 db 1 

.code

fibonacci proc
     
    lea si, fibo
    
    mov al, v1
    mov [si], al
    
    mov bl, v2
    inc si
    mov [si],bl
    
    mov cx,21
    
    
    LabelFibo:
    
    inc si
    mov al,[si-1]
    mov bl,[si-2]
    
    add al, bl
    mov [si],al
    
    loop LabelFibo 
    
    
    
 endp fibonacci
    


main proc 

    mov ax, @data
    mov ds, ax
    
    
    call fibonacci


endp main
end main


