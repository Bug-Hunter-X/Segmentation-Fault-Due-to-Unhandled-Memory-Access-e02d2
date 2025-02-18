section .data
; Reserve space for variables if needed

section .bss
; Reserve uninitialized data if needed

section .text
  global _start

_start:
  ; Check pointer validity before access
  cmp esi, 0  ; Check if esi is NULL
je error_handler ; handle error if esi is invalid
  cmp edi, 0 ; Check if edi is NULL
je error_handler ; handle error if edi is invalid
  cmp ebx, 0 ; Check if ebx is NULL
je error_handler ; handle error if ebx is invalid

  mov eax, [esi+4] ; Access memory only if pointers are valid
  mov ecx, [edi+8] ; Access memory only if pointers are valid
  add eax, ecx
  mov [ebx], eax

  ; Exit program gracefully
  mov eax, 1      ; sys_exit
  xor ebx, ebx   ; exit code 0
  int 0x80

error_handler:
  ; Handle invalid memory access; for example, exit with an error code
  mov eax, 1
  mov ebx, 1 ; exit code 1 indicating an error
  int 0x80