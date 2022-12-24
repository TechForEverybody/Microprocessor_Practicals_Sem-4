.model small
.stack 100h
.data
    ms1 db "sum = $"
    ms2 db "difference = $"
    ms3 db "multiplication = $"
    ms4 db "division = $"
    a db ?
    b db ?
    sum db ?
    difference db ?
    multiplication db ?
    division db ?
.code
    mov ax,@data
    mov ds,ax

        mov ah,1
        int 21h
        mov a,al

        mov ah,1
        int 21h
        mov b,al

        mov dl,10
        mov ah,2
        int 21h

        mov dl,bh
        mov ah,2
        int 21h

        mov dl,10
        mov ah,2
        int 21h

        mov dl,bl
        mov ah,2
        int 21h

        mov bl,a
        add bl,b
        mov sum,bl

        mov bl,a
        sub bl,b
        mov difference,bl

        mov bl,a
        mul bl,b
        mov multiplication,bl

        mov bl,a
        div bl,b
        mov division,bl

        mov dl,10
        mov ah,2
        int 21h

        mov dl,sum
        mov ah,2
        int 21h

        mov dl,10
        mov ah,2
        int 21h

        mov dl,difference
        mov ah,2
        int 21h

        mov dl,10
        mov ah,2
        int 21h

        mov dl,multiplication
        mov ah,2
        int 21h

        mov dl,10
        mov ah,2
        int 21h

        mov dl,division
        mov ah,2
        int 21h


        
    mov ah,4ch
    int 21h
end