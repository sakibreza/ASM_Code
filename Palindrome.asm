org 100h

    MOV SI,OFFSET S1
    MOV DI,OFFSET S2
    DEC SI
    DEC DI
    MOV CX,10 
    NEXT:
         INC SI
         LOOP NEXT
    
    MOV CX,10 
    INC SI
    NEX: DEC SI
         INC DI
         MOV AX,[SI]
         MOV [DI],AX  
         
         LOOP NEX 
         
         CALL PALIN 
         
    JMP END
    
    PALIN PROC NEAR
        MOV RES,'Y'
        
        LEA SI,S1
        LEA DI,S2
        MOV CX,10
        CLD 
        REPE CMPSB
            JNE NE
        
            JMP FINISH
       
        NE: MOV RES,'N'
        FINISH:
        RET
    PALIN ENDP
        
    END:

ret
          
S1 DB 'SAKIBBIKAX' 
LEN EQU ($-S1)
S2 DB 10 DUP(0)
RES DB DUP(0)  



