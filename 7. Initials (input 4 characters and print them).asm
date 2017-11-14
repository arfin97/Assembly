.model small
.stack 100h
.data
msg1 db 'Enter initials: $'
msg2 db 'The intial is: $'
.code
main proc
    ;initialization
    mov ax, @data
    mov ds, ax
    
    ;display msg1
    lea dx, msg1
    mov ah, 9
    int 21h
    
    ;input char 1
    mov ah, 1
    int 21h
    mov bl, al
    
    ;input char 2 
    mov ah, 1
    int 21h
    mov cl, al
    
    ;input char 3
    mov ah, 1
    int 21h
    mov bh, al
    
    ;input char 4
    mov ah, 1
    int 21h
    mov ch, al
    
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
    
    ;display intial 
    mov ah, 2
    mov dl, bl
    int 21h
    mov dl, cl
    int 21h
    mov dl, bh
    int 21h
    mov dl, ch
    int 21h
    
    ;exit dos
    mov ah, 4ch
    int 21h
    
    main endp
end main
    
    
    
    
