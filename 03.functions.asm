include "emu8086.inc"
.model small
.stack 100h

.data
    var1 db "Hello, My name is Pranto! $"
    var2 db ? 
    var3 db "Exucution Successful $"  
    
.code   
    main proc   
        
        ;1->single character input
        ;2->single character output
        ;9->string character output
        
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,var1
        int 21h
        printn "" 
               
        print "Enter a Integer: "       
        mov ah,1
        int 21h
        mov var2,al
           
        printn ""
        print "Printing the value: "   
        mov ah,2
        mov dl,var2 
        int 21h
        printn ""
        
        mov ah,9     
        lea dx,var3
        int 21h 
        
        mov ah,2 
        int 21h
        mov dl,07
        int 21h
        
        exit:
        mov ah,4ch
        int 21h
    
    main endp
end main
    