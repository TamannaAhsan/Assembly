
include 'emu8086.inc'
.model small
.stack 100h
.data 
.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    mov ax, 070F3H
    mov ds, ax
    
    mov bx, 00004H
    mov al, -1h
    mov ds: [bx], al
    mov cl, ds:[bx]
    
    cmp cl,0
    jge positive
    jle negative
    
    positive:
    print 'positive'
    jmp exit
    
    negative:
    print 'negative'
    jmp exit
    
    exit:
     
    
endp proc
end main


