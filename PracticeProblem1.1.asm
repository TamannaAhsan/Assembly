.model small
.stack 100h
.data
.code


multiplication proc 
    
    mov al,05h
    mov bl,06h
    mul bl
    
    mov cx,07256h
    mov ds,cx
    mov bx, 00232h
    mov ds:[bx],ax
    
endp multiplication 

division proc
    
    mov ax, 0
    mov dx,0 
    
    mov al,0Ah
    mov bl,05h 
    
    mov cx,05432h
    mov ds,cx
    mov bx, 00672h
    mov ds:[bx],ax
    
endp division
       

main proc
    mov ax, @data
    mov ds, ax
    
    call multiplication
    call division
      
    
endp main
end main




