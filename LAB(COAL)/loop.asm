.model small
.stack 100h
.data
    star db '*', 0Dh, 0Ah    ; '*' followed by newline (CR LF)
.code

main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5          ; repeat 5 times

print_loop:
    mov dx, offset star
    mov ah, 09h        ; DOS print string function
    int 21h

    loop print_loop    ; loop 5 times

    mov ah, 4Ch
    int 21h
main endp
end main
