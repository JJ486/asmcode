  addi t0, zero, 10
  jal t0, jump1
  addi t1, t0, 20
  addi t2, t0, 30
  addi t3, t0, 40
jump1:
  addi t0, zero, 10
  addi t1, t0, 20
  addi t2, t0, 30
  addi t3, t0, 40
  jal t2, jump2
  addi t0, zero, 10
  add t6, t4, t5
  lui a0, 0x80000
jump2:
  lui a0, 0x80000
  sw t0, 0x100(a0)
  lw a1, 0x100(a0)
  jal a1, jump3
  add a2, a1, t0
  add a3, a1, t1
  add a4, a1, t2
jump3:
  add a5, t0, t1
