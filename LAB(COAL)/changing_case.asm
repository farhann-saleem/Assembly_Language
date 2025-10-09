.model small
.stack 100h

.data
     msg1 db "Enter any character: $"
     msg2 db 0Dh , 0Ah , "You entered: $"

.code

    main proc
                
       mov ax , @data  
       mov ds , ax  
       
        
        mov dx, offset msg1
        mov ah, 09h
        int 21h
    
       
        mov ah, 01h
        int 21h
        mov bl, al     
        
        mov dx, offset msg2
        mov ah, 09h
        int 21h
    
        
                
         mov dl, bl
        mov ah, 02h
        int 21h
    
           
       
       
       
       mov ah , 4CH
       int 21h       
                
                
                
    main endp
    
end main