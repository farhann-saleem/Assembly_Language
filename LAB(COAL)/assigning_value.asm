.model small
.stack 100h 


.data
    var1 db 5
    var2 db ?


.code
main proc      
    
    mov ax, @data
    mov ds, ax


    mov al , var1
    mov var2 , al
    
    add al , '0'
     mov dl , al
     mov ah , 02h
     int 21h
     


    mov ah, 4Ch
    int 21h
               
               
main endp
end main
