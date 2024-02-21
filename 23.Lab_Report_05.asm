include 'emu8086.inc'
.model small
.stack 100h 
.data
    fahrenheit dw ?
    celsius dw ?
    temp dw ? 
    
.code
    main proc
        mov ax, @data
        mov ds, ax  
        
        print "Enter Temperature in Fahrenheit: "
        call scan_num 
        
        mov ax, cx
        mov fahrenheit, ax
        printn ''  
        
        call convert_celsius
        mov ah, 4ch
        int 21h   
        
    main endp 
    
    convert_celsius proc
        mov ax, fahrenheit
        sub ax, 32
        mov bx, 5
        mov temp, bx
        mul temp
        mov bx, 9
        mov temp, bx
        div temp
        mov celsius, ax
        print 'Temperature in Celsius: '
        mov cx, celsius
        call print_num
        printn ''
        ret
    convert_celsius endp 
    
define_scan_num
define_print_num
define_print_num_uns
define_print_string
    
end main