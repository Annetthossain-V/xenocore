extern printf

section .rodata

section .text
global log_warn
; void log_warn(char* s)
log_warn:
  xor eax, eax
  ret

global log_error
; void log_error(char* s)
log_error:
  xor eax, eax
  ret

global log_info
; void log_info(char* s)
log_info:
  xor eax, eax
  ret
