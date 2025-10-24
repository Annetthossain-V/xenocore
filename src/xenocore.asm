extern log_error
extern log_warn
extern log_info

section .rodata
no_file_msg: db "No files specified", 0


section .text

global main
; int main(int argc, char** argv)
main:
  ; init 
  push rbp ; new stack frame
  mov rbp, rsp
  sub rsp, 32

  ; save argc and argv
  mov [rbp-4], edi 
  mov [rbp-12], rsi

  call xeno_init

  cmp [rbp-4], DWORD 2
  jl .invalid_args

  ; i = 0
  mov [rbp-16], DWORD 1
.for_args:
  ; for (int i = 0; i < argc; i++)



  ; check if eax == argc
  mov eax, [rbp-16]
  inc eax
  mov [rbp-16], eax

  cmp eax, [rbp-4]
  jne .for_args


.fini_main:
  ; deinit
  add rsp, 32 ; restore stack frame
  mov rsp, rbp
  pop rbp

  jmp xeno_fini
  hlt

.invalid_args:
  lea rdi, [rel no_file_msg]
  call log_error

  ; restore stack frame
  jmp .fini_main

; void xeno_init(void)
xeno_init:
  xor eax, eax
  ret

; void xeno_fini(void)
xeno_fini:
  xor eax, eax
  ret

global xenobytes
; bool xenobytes(uint8* bytes)
xenobytes:
  xor eax, eax
  ret




