include 'emu8086.inc'
.model small
.stack 100h
.data
    a db 'Convert upper case to lower case $'
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,a
        int 21h
        
        printn ' '
        print 'Enter a uppercase character: '
        mov ah,1
        int 21h
        mov bl,al
        
        mov ah,2
        printn ' '
        print 'The lowercase character: '
        add bl,32
        mov dl,bl
        int 21h
        
        exit:
        mov ah,4ch
        int 21h
        
    main endp
end main