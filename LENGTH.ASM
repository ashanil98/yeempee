.model small
.data
     mes1 db 'hello$'
.code
    mov ax,@data
    mov ds,ax
    lea di,mes1
    mov cl,00

   ab: mov al, [di] 
       cmp al,'$'
       jz l1
       inc cl
       inc di
       jmp ab

  l1: mov al,cl
      add al,30h
      mov dl,al

mov ah, 02h
int 21h
mov ah,4ch
int 21h
end
               
