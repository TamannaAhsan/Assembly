include 'emu8086.inc'
.model small
.stack 100h
.data

highestValue db -1
lowestValue db 10
averageValue db ?

.code

math proc
    
    mov cx, 31
    mov dl, 0
    
    Label:
    
    mov ah, 01h
    int 21h 
    
    cmp al, 20h
    je skip 
    
    sub al, 30h
    
    add dl, al
    
    mov dh,highestValue
    cmp al, dh
    jg highLabel 
    
    mov dh,lowestValue
    cmp al, dh
    jl lowLabel 
    
    skip:
    back:
    
    loop Label
    
    mov cl, dl
    
    mov ax,0
    mov dx,0
    
    mov al,cl
    mov bl,16
    
    mov averageValue, al
    hlt 
    
    highLabel:
    
    mov highestValue, al
    jmp back
    
    lowLabel:
    
    mov lowestValue, al
    jmp back
    
endp math 

main proc
    
    mov ax, @data
    mov ds, ax 
    
    call math
     
endp main
end main
