 include 'emu8086.inc'
.model small
.stack 100h
.data

arr1 db 4,1,3,4,1
len = $-arr1
arr2 db 5,4,3,2,1

sumArr db 5 dup (?)

.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    lea si, arr1
    lea di, arr2
    lea bx, sumArr
    mov cx, len
    
    traverse:
    mov ax, [si]
    mov dx, [di]
    add ax, dx
    mov [bx],ax
    inc si
    inc di 
    inc bx
    
    loop traverse
   
    
    lea si,sumArr
    mov ah,0
    mov cx,len
    
    Print:
    
   mov al,[si] 
   
   call print_num
   inc si 
    
   DEFINE_PRINT_NUM      
   DEFINE_PRINT_NUM_UNS 
   loop Print
   
    
endp main
end main

