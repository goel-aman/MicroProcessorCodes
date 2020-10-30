.model small

.data


.code

main proc
    mov ax,data
    mov ds,ax
    
    mov bx, 5000h
    mov [bx], 9h
    inc bx
    mov [bx], 8h
    inc bx
    mov [bx], 7h
    inc bx
    mov [bx], 6h
    inc bx
    mov [bx], 5h
    inc bx
    mov [bx], 4h
    inc bx
    mov [bx], 3h
    inc bx
    mov [bx], 2h
    inc bx
    mov [bx], 1h
    inc bx
    mov [bx], 9h
    
    mov cl,0Ah
    
    l1:
    mov bx, 5000h
    mov ch, 09h
    
    l2:
    mov al, [bx]
    inc bx
    mov ah, [bx]
    cmp al,ah
    jc skip
    jz skip
    mov [bx], al
    dec bx
    mov [bx], ah
    inc bx
    
    skip:
    dec ch
    jnz l2
    dec cl
    jnz l1
    
    mov cx,000Ah
    mov bx,5000h
    l3:
    mov al,[bx]
    inc bx
    loop l3
    
    
endp
end main