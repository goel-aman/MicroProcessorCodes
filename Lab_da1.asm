.model small

.data
    var1 DW 0h
    mean DW 0h
    sum DW 0h
    cxx DW 0h
.code

main proc
    mov ax,data
    mov ds,ax
    mov bx, 1000h
    mov [bx] , 00h
    inc bx
    mov [bx] , 3h ; 1st time
    inc bx
    mov [bx] , 4h ; 2nd time
    inc bx
    mov [bx] , 3h ; 3rd time
    inc bx
    mov [bx] , 5h ; 4th time
    inc bx 
    mov [bx] , 2h ; 5th time
    inc bx
    mov [bx] , 2h ; 6th time
    inc bx 
    mov [bx] , 5h ; 7th time
    inc bx 
    mov [bx] , 7h ; 8th time
    inc bx
    mov [bx] , 3h ; 9th time
    inc bx
    mov [bx] , 10h ; 10th time
    
    mov cx, 0Ah
    mov ax, 0000h
    l1:
    add ax,[bx]
    dec bx 
    loop l1
    
    mov ah,00h
    mov var1,ax
    mov dx,000Ah
    div dl
    mov mean,ax
    
    ;;;;;;;;;;;;;;;;;;;;;;
    inc bx
    mov cx,0Ah
    mov ax,0000h
    mov dx,0000h
    l2:
    mov cxx, cx
    mov cx,mean
    sub [bx],cx
    mov ax,[bx]
    mul [bx]
    add dx,ax
    inc bx
    mov cx,cxx
    loop l2
    mov dh,00h
    mov ax, dx
    mov ah,00h
    mov cx, 000Ah
    
    div cl
    
    
endp
end main