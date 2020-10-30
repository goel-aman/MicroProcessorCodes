;First Program

;.model tiny
;.code 
;org 100h 

;main proc near

;mov ah,09h ; function to display a string
;mov dx,offset message  ; offset of message string terminating with $
;int 21h

;mov ah,4ch ; function to terminate
;mov al,00 ; 
;int 21h     ; Dos Interrupt

;endp
;message db "Hello World $" 
;end main

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;.model small
;.data
;.code


;mov ah,1h ; code to read character (character is going to be saved in al)
;int 21h

;mov dl,al ; copy character to dl

;mov ah,2h      ; code for write character
;int 21h    ; display character in dl                
;end

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;.model small
;.data 
;.code
;main proc  
    
;    mov dl,2h
;    add dl,30h
    
;    mov ah, 2h ; code for print char
;    int 21h
    
;endp
;end main
  
  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;.model small
;.data
;.code
;main proc
;    mov dl,2    
;    add dl,2
    
    
    
;    add dl,48
;    mov ah,2h ;code for print char
;    int 21h   ;prints value of "dl"
    
;endp
;end main

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;.model small
;.data
;.code
;main proc
;    mov dl,2
;    sub dl,1
    
;    add dl,48
;    mov ah,2h
;    int 21h
    
;endp
;end main

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;.model small
;.data
; count1 db 2
; 
;.code 

;main proc
;    mov dl, count1
;    add dl,48
;    
;    mov ah,2h  ; code for print char
;    int 21h    ; print value of dl
;endp
;end main  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; db is a 8 bit value
; whereas dw is a 16 bit value
;.model small
;.data

;    var1 db 1
;.code

;main proc
;    mov ax, 0
;    mov al , var1
;endp
;end main 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;.model small
;.data

;.code
;main proc
;    mov dl,3
;    dec dl
;    add dl,48
    
;    mov ah, 2h ; code for print a char
;    int 21h
;endp
;end main   

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;.model small
;.data
;.code
;main proc 
;    mov cl, 5        
;    sub cl, 2  
;    mov cl,1
;endp 
;end main   

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;.model small
;.data
;.code

;main proc
;    mov cl, 5   
;    neg cl
;endp
;end main
 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; In this program the carry flag will be set to one.     
;.model small 
;.data
;.code
;main proc
;    mov cl, 255
;    add cl, 1       
;endp
;end main

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; priority flag will be set to one if even number of set bits are there.

;.model small
;.data
;.code
;main proc
;    mov cl, 2
;    add cl, 1 
;    add cl, 1
    
;endp
;end main

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 

; Auxillary flag; it will be one when carry bit goes from lower bits to higher bits.

;.model small 
;.data
;.code
;    main proc
;        mov cl, 8
;        add cl, 8    
;    endp
;    end main
    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Zero flag : it will be set to zero if result is zero.

;.model small
;.data
;.code
;main proc
;    mov cl, 0
;    add cl, 0    
;endp
;end main
 
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      
 
 ; Sign Flag (Sf) will be set to one if the result is negative
 
;.model small
;.data
;.code 
;main proc
;    mov cl, 5
;    neg cl
;endp
;end main 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; OverFlow Flag (OF);  if answer is smaller than -32768 then overflow will be set

;.model small
;.data
;.code
;main proc
;    mov cx,-32768
;    add cx, -1
;endp
;end main


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;.model small
;.data
;.code
;main proc
;    
    
;    top:
;    mov dl,5
;    add dl,48
;    mov ah,2h
;    int 21h    
;    jmp top
    
    
;endp
;end main

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;.model small
;.data
;.code
;main proc
    
;    top:
;    mov dl, 5
;    add dl, 48
    
;    mov ah, 2h
;    int 21h
    
;    jmp green
    
;    mov dl, 6
;    add dl, 48
;    mov ah, 2h
;    int 21h 
    
;    green:
;    mov dl,7
;    add dl,48
;    mov ah,2h
;    int 21h
    
;endp
;end main



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;.model small
;.data
;.code

;main proc
    
;    mov cx, 5     
    
;    top:
;        mov dl,5
;        add dl,48
 ;       
;        mov ah,2h
;        int 21h
;        
;    loop top     
;         
;endp
;end main
   


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;.model small
;.data
 ;count1 db 5
 
;.code 

;main proc  
;    mov ax,data
;    mov ds,ax
;    mov dl, count1
;    add dl,48
;    
;    mov ah,2h  ; code for print char
;    int 21h    ; print value of dl
;endp
;end main


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;.model small
;.data

;.code

;main proc
    
;    mov cx, 5
;    mov bx, 5
    
;    l1:
;    mov bx,cx
;    mov dl, 1
;    add dl, 48
;    mov ah,2h
;    int 21h
;    mov cx,5
;    l2:
;        mov dl, 5
;        add dl, 48
;        
;        mov ah,2h
;        int 21h
;     
;    loop l2
;        mov cx,bx 
    
;    loop l1
;endp
;end main                 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;.model small
;.data
;.code


;main proc
    
;    mov ax, 1
    
;    push ax
                                                                        
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;.model small

;.data

;    saveflag dw ?

;.code
                                                              
;main proc
    
;    pushf     ; save the status of your flag
    
;    pop saveflag ;
    
;    push saveflags
    
;    popf
     
    
;endp
;end main



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;.model small
;.data

;.code

;main proc
    
;    mov ax, 1
;    mov bx, 1
;    mov cx, 1
    
;    pusha
    
;    mov ax, 5
;    mov bx, 5
;    mov cx, 5
    
;    popa
;    
    
;endp
;end main


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


.model small

.data

.code
    main proc
    
    
    
    
            
    endp
    
    
    blue proc
end main
    

































    
    