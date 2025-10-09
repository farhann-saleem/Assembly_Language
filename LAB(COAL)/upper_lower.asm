.model small
.stack 100h
.data
    msg1 db "Enter a Capital Letter: $"
    msg2 db 0Dh,0Ah,"Small letter is: $"
    msg3 db 0Dh,0Ah,0Dh,0Ah,"Enter a small letter: $"
    msg4 db 0Dh,0Ah,"Capital letter is: $"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; --- Part 1: Upper -> lower ---
    mov dx, offset msg1
    mov ah, 09h
    int 21h

    mov ah, 01h       
    int 21h
    mov bl, al
    add bl, 32        

    mov dx, offset msg2
    mov ah, 09h
    int 21h

    mov dl, bl        
    mov ah, 02h
    int 21h

    ; --- Part 2: lower -> Upper ---
    mov dx, offset msg3
    mov ah, 09h
    int 21h

    mov ah, 01h       
    int 21h
    mov bl, al
    sub bl, 32        
    mov dx, offset msg4
    mov ah, 09h
    int 21h

    mov dl, bl        
    mov ah, 02h
    int 21h

    ; exit
    mov ah, 4Ch
    int 21h
main endp
end main
