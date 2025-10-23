

section .text
global parse_args
; bool parse_args(int argc, char** argv, struct *args{char** file, int* opts}, int* file_len, int* opts_len) 
parse_args:
  ; new stack frame 
  push rbp
  mov rbp, rsp
  sub rsp, 16

  ; restore stack frame
  add rsp, 16
  mov rsp, rbp
  pop rbp
  ret

global free_args
; void free_args(struct *args{char** file, int* opts}, int file_len, int opts_len)
free_args:
  ; new stack frame
  push rbp
  mov rbp, rsp
  sub rsp, 16

  ; restore stack frame
  add rsp, 16
  mov rsp, rbp
  pop rbp
  ret

