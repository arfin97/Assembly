;Write a program to (a) display a "?", (b) read two decimal digits who.se sum "is less than 10, (c) display them and their sum on the next line, with an appropriate message.

.model small
.stack 100h
.data
msg1 db 'the num of $'
msg2 db ' and $'
msg3 db ' is $'
.code          
main proc
    ;output ?
    mov ah, 2  
    mov dl, '?'
    int 21h
    
    ;intialization for string 
    mov ax, @data
    mov ds, ds
    
    
    ;input first num
    mov ah, 1
    int 21h
    mov bl, al
    
    ;input second num
    mov ah, 1
    int 21h
    mov cl, al
    
    ;display msg1
    lea dx, msg1
    mov ah, 9
    int 21h
    
    ;display num 1
    mov ah, 2
    mov dl, bl
    int 21h
    
    ;display msg2
    lea dx, msg2
    mov ah, 9
    int 21h
    
    ;display num 2
    mov ah, 2
    mov dl, cl
    int 21h
    
    ;display msg3
    lea dx, msg3
    mov ah, 9
    int 21h 
    
    ;sum 
    add cl, bl
    sub cl, 48
    
    ;display sum
    mov ah, 2
    mov dl, cl
    int 21h
    
    ;Dos exit
    mov ah, 4ch
    int 21h
    main endp
end main
