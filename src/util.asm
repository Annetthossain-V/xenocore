

section .text
global xno_readfile
; uint8* xno_readfile(char* fname)
xno_readfile:
  ret

global xno_filesize
; uint xno_filesize(char* fname)
xno_filesize:
  xor eax, eax
  ret
