include 'emu8086.inc'
.model small
.stack 100h
.data
    celsius dw ?
    fahrenheit dw ?
    temp dw ?  
    
.code
    main proc
        mov ax, @data
        mov ds, ax
      
        print 'Enter Temperature in Celsius: '
        call scan_num    
        
        mov ax, cx
        mov celsius, ax
        printn ''    
        
        call convert_fahrenheit
        mov ah, 4ch
        int 21h
    main endp     
    
    convert_fahrenheit proc
        mov ax, celsius
        mov bx, 9
        mul bx
        mov temp, ax
        mov ax, temp
        mov bx, 5
        idiv bx
        add ax, 32
        mov fahrenheit, ax
        print 'Temperature in Fahrenheit: '
        mov cx, fahrenheit
        call print_num
        printn ''
        ret
    convert_fahrenheit endp       
    
define_scan_num
define_print_num
define_print_num_uns
define_print_string

end main