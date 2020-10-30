.model small 

.data
    
    ncr DW 0h
    n DW 5h
    r DW 3h
    nfact DW 0h
    rfact DW 0h
    nrfact DW 0h
.code
    mov ax,data
    mov ds,ax
    mov ax,0001h
    
    mov cx,n
    
    l1:
       mul cx
    loop l1  
    
    mov nfact,ax
    
    mov ax,0001h
    mov cx,r
    
    l2:
        mul cx
    loop l2
    
    mov rfact,ax
    
    mov ax,n
    mov bx,r
    sub ax,bx
    mov cx,ax
    
    mov ax, 0001h
    l3:
       mul cx
    
    loop l3
    
    mov nrfact,ax
    
    mov ax,nfact
    mov bx,rfact
    div bl
    mov bx,nrfact
    div bl
    
    
      
             
    







