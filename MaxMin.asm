.model small
.stack 100h
.data
array db 5,9,2,3,1
len = $-arr 
.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    lea si, array
    mov dl,0 
    mov bl,[si] 
    mov cl,[si] 
    
    traverse:
    cmp dl,len
    
    cmp [si],bl 
    jge max
    
    cmp [si],cl 
    jle min
    
    back:
    inc si 
    inc dl
    jmp traverse
    hlt
    
    max:
    mov bl, [si]
    jmp back
             
    min:
    mov dl, [si]
    jmp back
   
     
    
endp proc
end main




