  addi t0, zero, 10
  addi t1, t0, 20
  addi t2, t0, 30
  addi t3, t0, 40
  add t4, t0, t3
  add t5, t1, t3
  add t6, t4, t5
  lui a0, 0x80000
  sw t0, 0x100(a0)
  lw a1, 0x100(a0)
