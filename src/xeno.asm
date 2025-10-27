extern data_table_init
extern data_table_deinit

section .text
global xeno_init
xeno_init:
  call data_table_init

  xor eax, eax
  ret

global xeno_fini
xeno_fini:
  call data_table_deinit

  xor eax, eax
  ret

