.model small

.data
	array DB 38h,24h,09h,63h,19h

.code
	mov ax,@data
	mov ds, ax
	mov cx, 05h

	mov bl, 00h
	LEA SI, array
	up:
		mov al, [SI]
		cmp al, bl
		jl next
		mov bl, al
	next:
		inc si
		dec cx
		jnz up
	 
int 3
end

