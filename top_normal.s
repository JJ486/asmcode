  addi t0, zero, 10
  addi t1, zero, 20
  lui a0, 0x80000
  lui a1, 0x80000
  add t2, t0, t1
  xor t3, t0, t1
  or t4, t0, t1
  and t5, t0, t1
  ori t6, t0, 15
  andi t2, t0, 8
  slli t3, t0, 2
  srli t4, t0, 2
  add t5, zero, t0
  add t6, t0, t1
  sb t0, 0(a0)
  sw t1, 0x100(a0)
  beq t6, t0, jump1
  jal a7, 0x8
  slli a5, t0, 2
  srli a6, t0, 2
  lb t2, 0(a0)
  sb t3, 0x100(a0)
  beq t5, t0, jump1
  and a3, t0, t1
jump1:
  bne t6, t0, jump2
  and a4, t0, t1
jump2:
  auipc a2, 0x4
  jalr a7, a0, 0x74
  slli a5, t0, 2
  srli a6, t0, 2
  add t2, t0, t1