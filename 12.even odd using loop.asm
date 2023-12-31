include 'emu8086.inc'
.model small
.stack 100h
.data
    range dw ?
    evenSum dw 0
    div_var dw 2 
    zero dw 0 
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        print 'Enter a Range: '
        call scan_num
        
        mov range,cx
        
        call sumOfEven
        
        printn ''
        print 'Sum of Even Numbers: '  
        mov ax,evenSum 
        call print_num
        
        exit:
        mov ah,4ch
        int 21h
    main endp
    
    sumOfEven proc
        mov cx,range 
        mov ax,cx 
        
        even:
        div div_var
        cmp dx,zero
        je evesum 
        loop even
          
        evesum:   
            printn ''
            mov ax,cx
            add evenSum,ax
        ret
        
    sumOfEven endp
    
    define_scan_num
    define_print_num
    define_print_num_uns
end main