.model small
.stack 100h
.code
main proc
    mov ah, 1  ;input fucntion ah e nilam
    int 21h    ;input function execute korlam
    
    mov bl, al ;input eshe al e dhukbe, setake bl e mov korlam
    int 21h    ;abar input function execute korlam second num er jonno
    mov cl, al ;input eshe al e dhukbe, setake cl e mov korlam
    
    add cl, bl ;bl ebong cl e thaka input jog korlam
    sub cl, 48 ;cl theke 48 minus korlam karon acii valu align korte hobe tai
    
    mov ah, 2  ;output function ah e nilam
    mov dl, 0dh;dl e new line charakter  nilam
    int 21h    ;output function execute korlam
    mov dl, 0ah;dl e carrage charecter  nilam
    int 21h    ;output function execute korlam
    
    
    mov dl, cl ;jog fol cl theke dl e nilam
    int 21h    ;output function execute korlam
    
    mov ah, 4ch;return control function ah e nilam
    int 21h    ;return control function execute korlam
    main endp  ;program end korlam
end main       ;shb sesh korlam
