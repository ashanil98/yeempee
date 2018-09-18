#include<stdio.h>
#include<iostream>
int main()
{
int a;
printf("\n Enterzzzz the numberzzzz \n");
scanf("%d", &a);

asm {
mov ax, a
rol ax, 1
mov a, ax
}
printf("Binary rotation in Tarzan is %d \n",a);
return 0;
}
