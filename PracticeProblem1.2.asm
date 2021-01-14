
.model small
.stack 100h
.data
.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    mov bl, 4h
    sub bl,1 
    mov al,bl
    mul bl 
    mov dx, ax  ; multiplication result stored in ax
     
    
    mov cl,2h
    sub cl,1
    mov al,cl
    mul cl
    
    add dx,ax
    
endp main
end main



