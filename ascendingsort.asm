.model small

.data
STRING1 DB 25H,11H,56H,00H,96H

.code 
    MOV AX,@data
    MOV DS,AX
    MOV CH,04H

    LOOP1:
        MOV CL,04H
        LEA SI,STRING1

    LOOP2:
        MOV AL,[SI]
        MOV BL,[SI+1]
        CMP AL,BL
        JC DOWN
        MOV DL,[SI+1]
        XCHG [SI],DL
        MOV [SI+1],DL

    DOWN:
        INC SI
        DEC CL
        JNZ LOOP2
        DEC CH
        JNZ LOOP1

INT 3
END