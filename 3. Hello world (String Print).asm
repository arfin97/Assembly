.model small
.stack 100h
.data
H db 'hello world$'
A db 10,13,'I am arfin$'
.code
main proc
    ;initializing data segment
    mov ax, @data ;ax e @data rahklam
    mov ds, ax ;ds e ax theke @data niye ashlam cuz ds e dircet @data rakha jay na
    
    ;display message
    lea dx, H ;dx e H load effective address korlam
    mov ah, 9 ;ah e string print function 9 dhukalam
    int 21h ;string print function execute korlam
    
    ;display message
    lea dx, A ;dx e A load effective address korlam
    mov ah, 9 ;ah e string print function 9 dhukalam
    int 21h ;string print function execute korlam
    
    ;return control to the dos
    mov ah, 4ch ;control return function ah e rakhlam
    int 21h ;control return function execute korlam
    main endp
end main
    
