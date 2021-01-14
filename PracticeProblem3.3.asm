include 'emu8086.inc'

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
    
    traverse:
    cmp dl,len
    jz exit     
    
    cmp [si],bl 
    jge max
    
    
    back:
    inc si 
    inc dl
    jmp traverse
    hlt
    
    max:
    mov bl, [si]
    jmp back 
     
    
    exit:
    
    mov al,bl
    
    call print_num
      
    DEFINE_PRINT_NUM      
    DEFINE_PRINT_NUM_UNS 
    
    
    
endp proc
end main











