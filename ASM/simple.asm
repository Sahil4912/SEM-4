section .data

msg db 10, 13,"Welcome to MESCOE",10
msglen equ $-msg

msg1 db 13,"We are in SE Comp 1",10
l1 equ $-msg1


section .bss
section .txt
global _start:


_start:


mov rax,1
mov rdi,1
mov rsi,msg
mov rdx,msglen
syscall


mov rax,1
mov rdi,1
mov rsi,msg1
mov rdx,l1
syscall


mov rax,60
syscall


;OUTPUT commond
;(base) admin1@410-14:~$ nasm -f elf64 simple.asm
;(base) admin1@410-14:~$ ld -o h simple.o
;(base) admin1@410-14:~$ ./h


;OUTPUT
;Welcome to MESCOE
;We are in SE Comp 1

