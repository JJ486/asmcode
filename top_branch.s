  addi t0, zero, 10
  bne t0, zero, jump1
  addi t1, t0, 20
  addi t2, t0, 30
  addi t3, t0, 40
jump1:
  addi t0, zero, 10
  addi t1, t0, 20
  addi t2, t0, 30
  addi t3, t0, 30
  beq t2, t3, jump2
  addi t0, zero, 10
  add t6, t4, t5
  lui a0, 0x80000
jump2:
  lui a0, 0x80000
  sw t0, 0x100(a0)
  lw a1, 0x100(a0)
  beq a1, t0, jump3
  add a2, a1, t0
  add a3, a1, t1
  add a4, a1, t2
jump3:
  add a5, t0, t1
  lw a2, 0x100(a0)
  lw a3, 0x100(a0)
  beq a2, a3, jump4
  add a2, a1, t0
  add a3, a1, t1
  add a4, a1, t2
jump4:
  add a5, t0, t1
