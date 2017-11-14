.model small
.stack 100h
.data
msg1 db 'enter a lowercase letter: $'
msg2 db 10,13,'in uppercase it is: '
char db ?,'$'
.code        
main proc    
    ;intialization
    mov ax, @data
    mov ds, ax   
    
    ;display message 1
    lea dx, msg1
    mov ah, 9
    int 21h          
    
    ;input a character
    mov ah, 1
    int 21h        
    
    ;convert to uppercase
    sub al, 32
    mov char, al    
    
    ;display uppcase
    lea dx, msg2
    mov ah, 9
    int 21h     
    
    ;Dos exit
    mov ah, 4ch
    int 21h
    main endp
end main
