.model small
.data
	a db 05H
	b db 10H
.code
	MOV AX,@data
	MOV DS,AX
	MOV AL,a
	ADD AL,b
MOV AH,4CH
int 21H
end