.model small
.stack 100h
.data
.code

main proc
    
    mov ax, @data
    mov ds, ax 
    
    mov ax,0
    mov dx,0
    
    mov al,6
    mov bl,2
    
    mov cx,0
    
    Checking:
    
    cmp al,0
    je exit
    
    mov ah,0
    div bl
    
    rcr ah,1
    rcl dh,1
    
    inc cx
    
    jmp Checking 
    
    exit:    
    
    mov dl,0
    
    Rotate:
    
    rcr dh,1
    rcl dl,1
    loop Rotate
       
    
endp main
end main


