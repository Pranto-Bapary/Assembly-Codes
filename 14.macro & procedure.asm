include 'emu8086.inc'
.model small
.stack 100h
.data
    d dw 0
.code
    
    test_macro macro a, b  
        printn ''
        print 'We are in Macro'
        printn ''
        
        mov ax, a
        add ax, b  
        
        printn ''
        print 'Received Number: '
        call print_num
    endm
 
    main proc  
        mov ax,@data
        mov ds,ax
        
        printn ''
        print 'We are in Main Procedure'
        printn ''
        
        print 'Enter a Number: '
        call scan_num
        
        test_macro cx 30
        call test_proc
        
        printn ''
        print 'Printing Number in Main Procedure: '
        mov ax,cx
        call print_num
        
        Exit:
        mov ah,4ch
        int 21h
       
        
    main endp
    
    test_proc proc   
        printn ''
        print 'We are in Test Proc'
        printn ''
        ret
    test_proc endp  
    
    define_scan_num
    define_print_num
    define_print_num_uns
end main