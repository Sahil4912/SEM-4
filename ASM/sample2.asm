section .data

m1 db 10, 13, "I am a citizen of India", 10
m1len equ $-m1

m2 db 10, 13, "I study in MESCOE,Pune", 10
m2len equ $-m2

m3 db 10, 13, "I live in Pune", 10
m3len equ $-m3

section .bss
section .txt

global  _start:
_start:

%macro uni 4
mov rax,%1
mov rdi,%2
mov rsi,%3
mov rdx,%4
syscall
%endmacro

uni 1,1,m1,m1len
uni 1,1,m2,m2len
uni 1,1,m3,m3len

mov rax,60
syscall
