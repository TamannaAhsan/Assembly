.model small
.stack 100h
.data
    str db 'abcdefg$'  
    
.code

main proc
    mov ax,@data
    mov ds,ax
    
    lea si,str
    mov dl,0
    
    
    traverse:
        cmp [si], '$'
        je exit
        
        inc si
        inc dl
        
    jmp traverse    
    exit:
    
endp main
end main

