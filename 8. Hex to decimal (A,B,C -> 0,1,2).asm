; Write· a program to read one of the hex digits A-F, and display it on the next line in decimal.
.model small
.stack 100h
.data
msg1 db 'enter a hex digit: $'
msg2 db 'the decimal is: $' 
var db ?
.code                   
main proc        
    ;initialization
    mov ax, @data
    mov ds, ax
    
    ;display msg 1
    lea dx, msg1
    mov ah, 9
    int 21h
    
    ;input hex char
    mov ah, 1
    int 21h   
    
    ;convert it to decimal
    mov var, al
    sub var, 17d
    
    ;print new line
    mov ah, 2
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h  
    
    ;display msg 2
    lea dx, msg2
    mov ah, 9
    int 21h
    
    ;display converted num
    mov ah, 2
    mov dl, var
    int 21h
    
    ;exit dos
    mov ah, 4ch
    int 21h
    
    main endp
end main
    
