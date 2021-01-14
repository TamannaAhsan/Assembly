
.model small
.stack 100h
.data

result dw ?
.code

fibo proc
     
    mov ax,1
    mov bx,1
    
    mov cx,23
    
    fibonacci:
    add ax,bx
    mov dx,ax
    mov ax,bx
    mov bx,dx
    loop fibonacci
    mov result,bx 
    
    ret
    
 endp fibo

main proc
    
    mov ax, @data
    mov ds, ax 
               
    call fibo
    
endp main
end main
    
    
    



