include "emu8086.inc"
.model small
.stack 100h  
.data
    nm db 'Pranto Bapary $'
    id db 'My ID is 221002113 $'
    text db 'This is Pranto Bapary $'
    result db 'Final Output: $'
.code
    main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,nm
    int 21h
    
    mov si,0
    mov text[si],'0' 
    
    mov si,1
    mov text[si],'1'
    
    mov si,2
    mov text[si],'2'
    
    mov si,5
    mov text[si],'2'
    
    mov ah,9
    printn ''
    
    lea dx,id
    int 21h
    printn ''
    
    lea dx,result
    int 21h
    
    lea dx,text
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h  
    
    main endp
end main