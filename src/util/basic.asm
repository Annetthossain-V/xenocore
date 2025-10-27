default rel
extern fopen
extern fseek
extern ftell
extern fclose

section .rodata
file_opts: db "rb", 0

section .text
global fsize
fsize: ; long fsize(const char* filename)
  push r12
  push r13

  lea rsi, [rel file_opts]
  call fopen
  test rax, rax
  je .invalid_file

  mov r12, rax

  mov rdi, r12
  mov rsi, 0
  mov rdx, 2
  call fseek

  mov rdi, r12
  call ftell
  mov r13, rax

  mov rdi, r12
  call fclose

  mov rax, r13
  pop r13
  pop r12
  ret
.invalid_file:
  pop r13
  pop r12
  mov rax, -1
  ret
