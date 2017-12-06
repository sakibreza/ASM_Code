org 100h
  
  
  MOV BX,0FFSET ARR
  DEC BX 
  MOV CX,5
  
  NEX: INC BX 
       
       MOV NUM,[BX]
  
       CALL FUNC 
  
  CMP [BX],0FFH
  
  LOOPNE NEX
  
  
  JMP LAST
            
  FUNC PROC NEAR
  
     MOV SI,000FH
     MOV DI,0001H
     MOV AX,NUM
     AND AX,SI
     CALL BTH
  
     MOV SI,00F0H
     MOV DI,000AH
     MOV AX,NUM
     AND AX,SI
     ROR AX,4
     CALL BTH
  
     MOV SI,0F00H
     MOV DI,0064H
     MOV AX,NUM
     AND AX,SI
     ROR AX,8
     CALL BTH
  
     MOV SI,0F000H
     MOV DI,03E8H
     MOV AX,NUM
     AND AX,SI
     ROR AX,12
     CALL BTH 
 
  
          
     JMP LAST
     BTH PROC NEAR 

       MUL DI
      ADD SUM,AX
      
     RET
     BTH ENDP 
  RET
  FUNC ENDP

LAST:
ret 

NUM DW DUP(0)
ARR DW 4596H,
NN DW 0H,1H,2H,3H
SUM DW DUP(0)
TEMP DW DUP(0) 