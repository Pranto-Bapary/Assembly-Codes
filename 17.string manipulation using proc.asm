INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
    A DB 50 DUP(?)
    B DB 50 DUP(?)
    
.CODE
    MAIN PROC 
        MOV AX,@DATA
        MOV DS,AX
                 
        CALL NAME_PROC
                 
        EXIT:
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    
    NAME_PROC PROC
        PRINT 'ENTER FIRST NAME: '
        MOV DX,50
        LEA DI,A
        CALL GET_STRING
        
        PRINTN ''
        PRINT 'ENTER LAST NAME: '
        MOV DX,50
        LEA DI,B
        CALL GET_STRING
        
        PRINTN ''
        PRINTN ''
        
        PRINT 'FULL NAME: '
        LEA SI,A
        CALL PRINT_STRING 
        PRINT '_'
        LEA SI,B
        CALL PRINT_STRING
        RET
    NAME_PROC ENDP
    
    DEFINE_GET_STRING
    DEFINE_PRINT_STRING
END MAIN