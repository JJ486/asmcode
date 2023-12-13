    addi t0, zero, 0
    addi t1, zero, 100
    addi t2, zero, 0
loop:
    addi t0, t0, 1
    add t2, t0, t2
    beq t0, t1, next
    beq zero, zero, loop

next:   
    lui t0, 0x80000
    sw t2, 0x100(t0)

    lui t0, 0x10000
.TESTW1:
    lb t1, 5(t0)
    andi t1, t1, 0x20
    beq t1, zero, .TESTW1 

    addi a0, zero, 'd'
    sb a0, 0(t0)

.TESTW2:
    lb t1, 5(t0)
    andi t1, t1, 0x20
    beq t1, zero, .TESTW2

    addi a0, zero, 'o'
    sb a0, 0(t0)

.TESTW3:
    lb t1, 5(t0)
    andi t1, t1, 0x20
    beq t1, zero, .TESTW3

    addi a0, zero, 'n'
    sb a0, 0(t0)

.TESTW4:
    lb t1, 5(t0)
    andi t1, t1, 0x20
    beq t1, zero, .TESTW4

    addi a0, zero, 'e'
    sb a0, 0(t0)

.TESTW5:
    lb t1, 5(t0)
    andi t1, t1, 0x20
    beq t1, zero, .TESTW5

    addi a0, zero, '!'
    sb a0, 0(t0)

end:
    beq zero, zero, end 