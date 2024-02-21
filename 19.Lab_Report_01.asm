.model small  

.stack 100h

.data 

 ;input strings
 myname db 10,13,"Name: $"
 myid db 10,13,"ID: $"
 myphone db 10,13,"Phone: $"
 myemail db 10,13,"Email: $"  
 
 ;input variables
 
 ;name
 n1 db ?
 n2 db ?
 n3 db ?
 n4 db ?
 n5 db ?
 n6 db ? 
 
 ;id
 i1 db ?
 i2 db ?
 i3 db ?
 i4 db ?
 i5 db ?
 i6 db ?
 i7 db ?
 i8 db ?
 i9 db ?
 
 ;phone
 p1 db ?
 p2 db ?
 p3 db ?
 p4 db ?
 p5 db ?
 p6 db ?
 p7 db ?
 p8 db ?
 p9 db ?
 p10 db ?
 p11 db ?
 
 ;email
 e1 db ?
 e2 db ?
 e3 db ?
 e4 db ?
 e5 db ?
 e6 db ?
 e7 db ?
 e8 db ?
 e9 db ?
 e10 db ?
 e11 db ?
 e12 db ?
 e13 db ?
 e14 db ?
 e15 db ? 
 e16 db ?
 
 ;output strings
 msg1 db 10,13,"Hello $"
 msg2 db 10,13,"Your ID is $"
 msg3 db 10,13,"Your Phone No is $"
 msg4 db 10,13,"Your Email Address is $"
 msg5 db 10,13,",Thanks for the info. $"
 
.code
    main proc
     
     mov ax, @data
     mov ds, ax
     ;displaying input string for name
     lea dx, myname
     mov ah, 09h
     int 21h
     
     ;------------------------------
     ; Inputs
     ;-------------------------------
     ;taking name as an input
     mov ah, 01h
     int 21h
     mov n1, al
     int 21h
     mov n2, al
     int 21h
     mov n3, al
     int 21h
     mov n4, al
     int 21h
     mov n5, al
     int 21h
     mov n6, al
     
     ;displaying input string for id
     lea dx, myid
     mov ah, 09h
     int 21h
     
     ;taking id as an input
     mov ah, 01h
     
     int 21h
     mov i1, al
     
     int 21h
     mov i2, al
     
     int 21h
     mov i3, al
     
     int 21h
     mov i4, al
     
     int 21h
     mov i5, al
     
     int 21h
     mov i6, al
     
     int 21h
     mov i7, al
     
     int 21h
     mov i8, al
     
     int 21h
     mov i9, al
     
     ;displaying input string for phone number
     lea dx, myphone
     mov ah, 09h
     int 21h
     
     ;taking phone number as an input
     mov ah, 01h
     
     int 21h
     mov p1, al
     
     int 21h
     mov p2, al
     
     int 21h
     mov p3, al
     
     int 21h
     mov p4, al
     
     int 21h
     mov p5, al
     
     int 21h
     mov p6, al
     
     int 21h
     mov p7, al
     
     int 21h
     mov p8, al
     
     int 21h
     mov p9, al
     
     int 21h
     mov p10, al
     
     int 21h
     mov p11, al
     
     ;displaying input string for email
     lea dx, myemail
     mov ah, 09h
     int 21h
     
     ;taking email as an input string
     mov ah, 01h
     
     int 21h
     mov e1, al
     
     int 21h
     mov e2, al
     
     int 21h
     mov e3, al
     
     int 21h
     mov e4, al
     
     int 21h
     mov e5, al
     
     int 21h
     mov e6, al
     
     int 21h
     mov e7, al
     
     int 21h
     mov e8, al
     
     int 21h
     mov e9, al
     
     int 21h
     mov e10, al
     
     int 21h
     mov e11, al
     
     int 21h
     mov e12, al
     
     int 21h
     mov e13, al
     
     int 21h
     mov e14, al
     
     int 21h
     mov e15, al
     
     int 21h
     mov e16, al
     
     
     ;------------------------------
     ; Outputs
     ;-------------------------------
     ;displaying outputs
     
     ;printing new lines
     mov ah, 02h
     mov dl, 10
     int 21h
     
     mov dl, 13
     int 21h
     
     ;name
     lea dx, msg1
     mov ah, 09h
     int 21h
     mov ah, 02h
     mov dl, n1
     int 21h
     mov dl, n2
     int 21h
     mov dl, n3
     int 21h
     mov dl, n4
     int 21h
     mov dl, n5
     int 21h
     mov dl, n6
     int 21h
     
     ;id
     lea dx, msg2
     mov ah, 09h
     int 21h
     
     mov ah, 02h
     
     mov dl, i1
     int 21h
     
     mov dl, i2
     int 21h
     
     mov dl, i3
     int 21h
     
     mov dl, i4
     int 21h
     
     mov dl, i5
     int 21h
     
     mov dl, i6
     int 21h
     
     mov dl, i7
     int 21h
     
     mov dl, i8
     int 21h
     
     mov dl, i9
     int 21h
     
     ;phone number
     lea dx, msg3
     mov ah, 09h
     int 21h
     
     mov ah, 02h
     
     mov dl, p1
     int 21h
     
     mov dl, p2
     int 21h
     
     mov dl, p3
     int 21h
     
     mov dl, p4
     int 21h
     
     mov dl, p5
     int 21h
     
     mov dl, p6
     int 21h
     
     mov dl, p7
     int 21h
     
     mov dl, p8
     int 21h
     
     mov dl, p9
     int 21h
     
     mov dl, p10
     int 21h
     
     mov dl, p11
     int 21h
     
     ;email
     lea dx, msg4
     mov ah, 09h
     int 21h
     
     mov ah, 02h
     
     mov dl, e1
     int 21h
     
     mov dl, e2
     int 21h
     
     mov dl, e3
     int 21h
     
     mov dl, e4
     int 21h
     
     mov dl, e5
     int 21h
     
     mov dl, e6
     int 21h
     
     mov dl, e7
     int 21h
     
     mov dl, e8
     int 21h
     
     mov dl, e9
     int 21h
     
     mov dl, e10
     int 21h
     
     mov dl, e11
     int 21h
     
     mov dl, e12
     int 21h
     
     mov dl, e13
     int 21h
     
     mov dl, e14
     int 21h
     
     mov dl, e15
     int 21h
     
     mov dl, e16
     int 21h
     
     ;exit
     mov ah, 4ch
     int 21h
     
    main endp
end main