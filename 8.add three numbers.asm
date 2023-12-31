.model small
.stack 100h
.data
    text1 db 'Enter first number: $'
    text2 db 'Enter second number: $'
    text3 db 'Enter third number: $'
    text4 db 'Result: $'
    var1 db ?
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9         
        lea dx,text1
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
        lea dx,text2
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
        lea dx,text3
        int 21h
        
        mov ah,1
        int 21h
        mov cl,al
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        add bh,bl
        sub bh,48 
        mov ch,cl
        add ch,bh
        sub ch,48
        mov var1,ch  
        
        mov ah,9         
        lea dx,text4
        int 21h
        
        mov ah,2
        mov dl,var1
        int 21h
        
        exit:
        mov ah,4ch
        int 21h
    main endp
end main