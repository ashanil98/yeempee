.model small
.data
a db 05,06,08,02
msg db "Sorted array is: $"
msg1 db "$"
.code
        mov ax,@data
        mov ds,ax                                                                                                       
        mov ch,03h
                                                                                                                                                                                       
        l3:     lea si,a
                mov cl,03h

        l2:     mov al,[si]
                mov bl,[si+1]
                cmp al,bl
                jl l1
                mov dl,[si+1]
                xchg [si],dl
                mov [si+1],dl

        l1:     inc si
                dec cl
                jnz l2
                dec ch
                jnz l3
        lea dx,msg
        mov ah,09h
        int 21h
        mov cl,04h
        lea si,a

        l:      mov dl,[si]
                add dl,30h
                mov ah,02h
                int 21h
                lea dx,msg1
                mov ah,09h
                int 21h
                inc si
                loop l

        mov ah,4ch
        int 21h
        end

                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                        
                                                                                                                                                                                
