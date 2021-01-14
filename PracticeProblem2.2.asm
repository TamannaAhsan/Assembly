
.model small
.stack 100h
.data 
.code

main proc
    
    mov ax, @data
    mov ds,ax
    
    mov al, 11101111b
    mov cx,8
    mov dl,0
    
    back:
    
    Label: 
    
    shr al,1
    jc addition
     
    loop Label
    hlt 
     
    addition:
    
    add dl,1
    jmp back
    
    
endp main
end main


