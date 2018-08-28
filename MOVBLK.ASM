.model small
.data
    a db 7h,3h,5h,1h
    b db 70h
.code
    mov ax,@data
    mov ds,ax
    lea si,a
    lea di,b
    mov cx,4
    repeat1:
           mov al,[si]
           mov [di],al
           inc si 
           inc di
           dec cx  
           jnz repeat1

    lea di,b
    mov cx,4
    displ:
        mov al,[di]
        add al,30h
        mov dl,al
        mov ah, 02h
        int 21h
        inc di
        dec cx
        jnz displ

    mov ah,4ch
    int 21h
end
	
