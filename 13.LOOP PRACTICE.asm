INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
    SUM DW 0
    VAL DW 1
    
.CODE
    MAIN PROC 
        MOV AX, @DATA
        MOV DS, AX
        
        PRINT 'ENTER A RANGE: '
        CALL SCAN_NUM
        
        PRINTN ''
        PRINT 'SUM OF: '
        
        ADDITION:
            MOV AX, CX
            ADD SUM, AX
            CALL PRINT_NUM
            CMP CX, VAL
                JE PRINTVAL 
            PRINT ' + '
        LOOP ADDITION
        
        PRINTVAL:
            PRINT ' = '
            MOV AX, SUM
            CALL PRINT_NUM
        
    MAIN ENDP
    
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    
END MAIN