%macro return 1
  %if %1 == 0
    xor eax, eax
  %else
    mov eax, %1
  %endif
  ret
%endmacro

section .text

global main
; int main(int argc, char** argv)
main:
  ; init 
  push rbp ; new stack frame
  mov rbp, rsp
  sub rsp, 16

  call xeno_init

  ; rsp-16 = args struct
  ; rsp-16 = char** files
  ; rsp-8 = int* opts
  ; rsp-4 = int file_len
  ; rsp = int opts_len



  ; deinit
  add rsp, 16 ; restore stack frame
  mov rsp, rbp
  pop rbp

  jmp xeno_fini
  hlt

; void xeno_init(void)
xeno_init:
  ret

; void xeno_fini(void)
xeno_fini:
  return 0

