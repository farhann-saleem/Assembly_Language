.model small
.stack 100h
.data
    MSG DB ? 
    MSG2 DB ?
   
  
  
.code
main proc
     MOV AX,@DATA
     MOV DS,AX 
     
     MOV AH,1
     INT 21H
     
     MOV MSG,AL
     
     MOV DL,MSG
     
     MOV AH,2
     INT 21H  
     
     MOV AH,1
     INT 21H
     
     MOV MSG2,AL
     
     MOV DL,MSG2
     
     MOV AH,2
     INT 21H 
     
main endp
end main