.model small
.stack 100h
.data 
str db 'FinalAssignment'
len equ $-str
upperStr db 16 dup(?)  
lowerStr db 16 dup(?)
.code 


main proc
    
    mov ax,@data
    mov ds, ax
    
    lea si, str
    lea di, lowerStr
    lea bx, upperStr
 
    mov cx,len
    traverse:
    back:
        cmp [si],5AH  
        jle upper
       
           mov al,[si]
           sub al,20h
           mov [bx],al 
           inc si
           inc bx
             
    loop traverse
    mov cx,len
    jmp back1
    hlt
        
        upper:
            mov al,[si]
            mov [bx],al
            inc si
            inc bx
            dec cx 
             
       jmp back
      
    back1:
        cmp [si],5AH
        jge lower
           mov al,[si]
           add al,20h
           mov [di],al 
           inc si
           inc di
    loop back1
    jmp exit  
        lower:
            mov al,[si]
            mov [di],al
            inc si
            inc di
            dec cx
        jmp back1 
        
        exit:
        
        
endp main
end main