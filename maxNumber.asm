
.data
STRING1 DB 08h,14h,05h,03h,09h
res db ?

.code
	mov ax,@data
	mov ds, ax
	mov cx, 05h

	mov bl, 00h
	LEA SI, STRING1
	up:
		mov al, [SI]
		cmp al, bl
		jl next
		mov bl, al
	next:
		inc si
		dec cx
		jnz up
	 
	mov res,bl
	int 3

end start

