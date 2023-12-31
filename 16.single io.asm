.model small
.stack 100h
.data
    msg1 db 3
    msg2 db ?
    msg3 db 'Value of the variable: $' 
    msg4 db 'Enter a value: $'
.code
    main proc
        mov ax,@data
        mov ds,ax 
        
        lea dx, msg3
        mov ah,9 
        int 21h
        
        mov ah,2
        add msg1,48
        mov dl,msg1
        int 21h  
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h 
        
        lea dx,msg4
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        mov msg2,al
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        lea dx,msg3
        mov ah,9
        int 21h
        
        mov ah,2
        mov dl,msg2
        int 21h
        
        exit:
        mov ah,4ch
        int 21h
    main endp
end main