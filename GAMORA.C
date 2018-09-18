#include<stdio.h>
#include<conio.h>
void main()
{
clrscr();
asm{
mov ah,2h
mov dl, 27h
mov dh,0ch
int 10h
}
printf(" Why is Gamora?  ");
getch();
}