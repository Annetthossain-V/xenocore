default rel
extern printf

section .rodata
prnt_error_fmt: db "[", 0x1B, "[31mError", 0x1B, "[0m] %s", 10, 0
prnt_warn_fmt: db "[", 0x1B, "[33mWarn", 0x1B, "[0m] %s", 10, 0
prnt_info_fmt: db "[", 0x1B, "[34mInfo", 0x1B, "[0m] %s", 10, 0 

section .text
global log_warn
; void log_warn(char* s)
log_warn:
  push rbp

  mov rsi, rdi
  lea rdi, [rel prnt_warn_fmt]
  xor eax, eax
  call printf

  pop rbp
  xor eax, eax
  ret

global log_error
; void log_error(char* s)
log_error:
  push rbp

  mov rsi, rdi
  lea rdi, [rel prnt_error_fmt]
  xor eax, eax
  call printf

  pop rbp
  xor eax, eax
  ret

global log_info
; void log_info(char* s)
log_info:
  push rbp

  mov rsi, rdi
  lea rdi, [rel prnt_info_fmt]
  xor eax, eax
  call printf

  pop rbp
  xor eax, eax
  ret


