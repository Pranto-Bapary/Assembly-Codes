.model small
.stack 100h
.data

    msg1 db 10,13,"Enter a first number  : $"
    msg2 db 10,13,"Enter a second number : $"
    msg3 db 10,13,"Multiplication : $"
    msg4 db 10,14,"Multiplication of 4 * 2 : $" 
     
    num1 db ?
    num2 db ? 
    result db ? 
    
.code 
    main proc 
        
    mov ax, @data 
    mov ds, ax 
    mov ah, 09h 
    lea dx, msg1 
    int 21h   
          
    ;input 1     
    mov ah, 1 
    int 21h
    sub al, 30h
     
    mov num1, al 
    mov ah, 9 
    
    lea dx, msg2 
    int 21h
    
    ;input 2
    mov ah, 1 
    int 21h 
    
    sub al, 30h 
    mov num2, al
     
    mov al, num1 
    mul num2 
    
    add al, 30h
    mov result, al
    
    ;output
    ;print newline & space
    mov ah, 2
    mov dl, 10 
    int 21h  
    mov dl, 13 
    int 21h
     
    mov ah, 9 
    lea dx, msg3
 
    int 21h 
    mov ah, 2
    
    mov dl, result 
    int 21h
    
    ;print space & newline
    mov ah, 2
    mov dl, 10 
    int 21h  
    mov dl, 13 
    int 21h 
    
    ; print 2 * 4 = 8 
    mov ah, 9 
    lea dx, msg4 
    int 21h 
    
    mov al, 2
    mov bl, 4  
    
    mul bl 
    add al,30h 
    mov bl,al 
    mov ah, 2
     
    mov dl, bl 
    int 21h
     
    ;print space and newline
    mov ah, 2
    mov dl, 10 
    int 21h
    mov dl, 13 
    int 21h
     
    exit: 
    mov ah, 4ch 
    int 21h
    main endp
    
end main
 
