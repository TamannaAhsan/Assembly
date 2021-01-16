include 'emu8086.inc'
.model small
.stack 100h
.data
matrix db 3 dup (?)
       db 3 dup (?)
       db 3 dup (?) 

.code  

identicalMatrix macro  ;[using macro approches]
    
    lea si, matrix
    mov al, [si]
    mov al, 1
    mov [si], al
    
    mov al, [si+4]
    mov al,1
    mov [si+4],al  
    
    mov al, [si+8]
    mov al,1
    mov [si+8],al
    
endm 

main proc
    mov ax,@data
    mov ds, ax
    
    identicalMatrix
      
endp main
end main

