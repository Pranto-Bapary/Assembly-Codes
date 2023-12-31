.model small
.stack 100h
.data
    text1 db 'Enter First Number: $'
    text2 db 'Enter Second Number: $'
    text3 db 'Result: $'
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,text1
        int 21h
        
        mov ah,1
        int 21h
        mov bl,al  
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov ah,9
        lea dx,text2
        int 21h
        
        mov ah,1
        int 21h
        mov bh,al 
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov ah,9
        lea dx,text3
        int 21h
        
        add bl,bh
        sub bl,48
        mov ah,2
        mov dl,bl
        int 21h
        
        exit:
        mov ah,4ch
        int 21h
    main endp
end main