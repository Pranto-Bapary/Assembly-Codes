.model small
.stack 100h 
.data
    text1 db 'Jmp concept $' 
    text2 db 'in Assembly $' 
    text3 db 'Programming Language $'    
    
.code
    main proc     
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,text1
        int 21h  
        
        m: 
        mov ah,9
        lea dx,text2
        int 21h
        jmp n
        
        n:
        mov ah,9
        lea dx,text3
        int 21h
        jmp exit
        
        exit:
        mov ah,4ch
        int 21h
    main endp
end main