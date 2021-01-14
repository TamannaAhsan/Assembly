include 'emu8086.inc'
.model small
.stack 100h
.data
str db 31 dup (?)
len = $-str

.code

main proc
     
    mov ax, @data
    mov ds, ax
    
    lea di, str
    mov dx, len
    call get_string
    
    mov ah,01h
    int 21h
    
    mov cx, len
    mov dx,0
    
    traverse:
    
    cmp [di], 0DH
    je exit
    cmp [di], al
    je exit
    
    inc di
    inc dx
    
    loop traverse
    
    exit:
    
    mov ax, dx
    
    call print_num
    
    DEFINE_GET_STRING
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    
endp main
end main



