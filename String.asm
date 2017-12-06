ORG 100H 

    LEA SI,STRING1
    LEA DI,STRING2
    
    MOV CX,LEN
    CLD 
    
    REPE CMPSB
        JNE NEQ
    
    MOV RES,'Y'
    JMP LAST
    
    NEQ:
        MOV RES,'N'
    
    LAST:    

RET

STRING1 DB 'KUET CSE'
LEN EQU ($-STRING1)
STRING2 DB 'KUET CSE'
RES DB 00H


ORG 100H 
    
    MOV RES,'N'
    MOV AX,00H
    LEA SI,STRING1
    MOV BX,SI
    
    ABOVE:
    
    ADD AX,1H
    
    LEA DI,STRING2
    MOV CX,LEN2
    
    CLD 
    
    REPE CMPSB
        JNE NEQ
    
    MOV RES,'Y'
    ADD CNT,1
    JMP LAST
    
    NEQ:
    
    LAST:
        INC BX
        MOV SI,BX
    
    CMP AX,LEN1
        JNE ABOVE      
    
    FINISH:
RET

STRING1 DB 'KUET CSE CSE ECE CSE'
LEN1 EQU ($-STRING1)
STRING2 DB 'CSE'
LEN2 EQU ($-STRING2)
RES DB 00H
CNT DB 00H