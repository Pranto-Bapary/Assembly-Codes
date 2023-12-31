include 'emu8086.inc'
.model small
.stack 100h
.data
    dat dw ?
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        print 'We are in Main Procedure'
        printn ''
        printn ''
        
        call test_proc
        
        print 'Main-Enter a Number: '
        call scan_num
        printn '' 
        printn ''
        
        print 'Main-Printing Numbers: '
        
        mov ax,cx
        call print_num
        
        exit:
        mov ah,4ch
        int 21h
    main endp
    
    test_proc proc
        printn ''
        print 'We are in Test Procedure'
        printn '' 
        printn ''
        
        call test_proc1
        ret
    test_proc endp 
    
    test_proc1 proc
        printn ''
        print 'We are in Test Procedure 1'
        printn '' 
        printn ''
        ret
    test_proc1 endp
    
    
    
    define_scan_num
    define_print_num
    define_print_num_uns
    define_get_string
    define_print_string
end main