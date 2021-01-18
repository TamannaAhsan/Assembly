.model small
.stack 100h
.data

str1 db 'Abbc,rte'
len = $-str1

str2 db 70 dup (?)
str db ','

.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    lea bx, str1
    lea si, str2
    
    mov cx, len
    
    traverse: 
   
    mov al, [bx]
    mov [si], al
    inc si 
    cmp al, ','
    je Space
    back:
    inc bx
    
    loop traverse
    hlt
    
    Space:
    mov dl, str
    mov [si],dl
    inc si
    jmp back
    
endp main
end main
    