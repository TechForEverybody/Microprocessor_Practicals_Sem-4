.model small
.data
	a dw 0005H
	b dw 0010H
.code
	MOV AX,@data
	MOV DS,AX
	MOV BX,a
	ADD BX,b
MOV AH,4CH
int 21H
end