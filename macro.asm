.model small
.data
msg2 db 'SCIENCE','$'
display macro msg1
    push ax
    push dx
    lea dx,msg1
    mov ah, 09h
    int 21h
    pop dx
    pop ax
endm

.code
	mov ax, @data
	mov ds,ax
	display msg2
mov ah, 4ch
int 21h
end