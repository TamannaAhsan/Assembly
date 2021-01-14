.model small
.stack 100h
.data

matrix db 9,3,2  
       db 6,1,5
       db 7,4,0
transpose db 4 dup (?)
          db 4 dup (?)
          db 4 dup (?)
          
.code 

makingTranspose proc
    lea si, matrix
    lea di, transpose
    
    mov cx, 3
    Outer_Loop:
    
    mov bx,0
    Inner_Loop:
    cmp bx, 12
    jge break
    
    mov al,[si+bx]
    mov [di],al
    add bx,3
    inc di
    jmp Inner_Loop
    
    break:
    inc si
    loop Outer_Loop
    ret
endp makingTranspose

main proc 
    mov ax, @data
    mov ds, ax
    
    call makingTranspose
    
endp main 
end main