.model
.stack 100h
.data

arr db 3,2,5,5,1,3,7
len = $-arr

freq db 11 dup(?)

.code

main proc
    
    mov ax, @data
    mov ds,ax
    
    lea si, arr
    mov cx, len
    
    mov bh, 0
    
    traverse:
    
    mov bl, [si]
    inc si
    
    inc [freq+bx]
    
    loop traverse
    
endp main
end main