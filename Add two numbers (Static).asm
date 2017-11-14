.model small
.stack 100h
.code
main proc

    
    mov cl, 1
    mov bl, 2
    add cl, b 
    add cl, 48h
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    mov dl, cl
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main
