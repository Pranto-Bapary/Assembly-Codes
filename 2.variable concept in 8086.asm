include "emu8086.inc"
.model small
.stack 100h

.data
    var1 db 3
    var2 db ?

.code
    main proc  
        
        mov ax,@data
        mov ds,ax
        
        print 'Printing Variable 1: '               
        mov ah,2
        add var1,48
        mov dl,var1
        int 21h 
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        print 'Enter a Integer Number: '
        mov ah,1
        int 21h
        mov var2,al 
        printn ''
        
        print 'Printing Variable 2: '
        mov ah,2
        mov dl,var2
        int 21h
        
        exit:
        mov ah,4ch
        int 21h
        
    main endp 
    
end main