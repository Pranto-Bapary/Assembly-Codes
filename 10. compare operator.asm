include 'emu8086.inc'
.model small
.stack 100h
.data   
    a db 'Enter first number: $'
    b db 'Enter second number: $'
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,a
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
        lea dx,b
        int 21h
        
        mov ah,1
        int 21h
        mov bh,al
        
        compare:
        cmp bl,bh
            jg label1
        jmp label2
        
        label1:
            printn ''
            print 'Largest number is: '
            mov ah,2
            mov dl,bl
            int 21h
            jmp exit 
        
        label2:
            printn ''
            print 'Largest number is: '
            mov ah,2
            mov dl,bh
            int 21h
            jmp exit
            
        exit: 
            mov ah,4ch
            int 21h
    main endp
end main