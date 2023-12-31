.model small
.stack 100h
.data 
    txt1 db 'Enter First Number: $'
    txt2 db 'Enter Second Number: $'
    txt3 db 'Result: $'
    a db ?
    b db ?
    c db ?
.code
    main proc 
        mov ax,@data
        mov ds,ax 
        
        lea dx,txt1
        mov ah,9
        int 21h
        
        mov ah,1 ;User input 1
        int 21h
        sub al, 48 
        mov a,al
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        lea dx,txt2 
        mov ah,9
        int 21h
        
        mov ah,1    ;User input 2
        int 21h
        sub al,48
        mov b,al
        
        mov al,a   ;Multiplication
        mul b
        add al,48
        mov c,al
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        lea dx,txt3
        mov ah,9
        int 21h
        
        mov ah,2 ;Result
        mov dl,c
        int 21h
        
        exit:
        mov ah,4ch
        int 21h
    main endp
end main