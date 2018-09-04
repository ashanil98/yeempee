.model small
.data
  A DB 16H
  B DB 9H
.code
    MOV AX, @DATA
    MOV DS, AX 
    MOV AL,A
    MOV BL,B
    call Ligma
    Ligma PROC
        Ali_A:           ; GCD calculation procedure
        CMP AL,BL
        JZ BattleBusBoost
        JG Ninja
        JL PewDiePie
        RET
    Ninja:           ; Comparision more than
        SUB AL,BL
        JMP Ligma

    PewDiePie:        ; Comparision less than
        SUB BL,AL
        JMP Ligma

    BattleBusBoost:            ; Equal
        ADD Al,30H
        MOV DL,AL
        MOV AH,02H
        INT 21H
    Ligma ENDP
    MOV AH,4CH
    INT 21H
END
