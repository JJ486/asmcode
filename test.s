.section .text
.globl _start
_start:
    li t0, 0xfeed0000
    li s1, 0x184
    li a2, 0x986c5e0b
    or t0, t0, s1
    xor t0, t0, a2
    xor t0, t0, a2