; Hc/NtGdiCreateRoundRectRgn
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiCreateRoundRectRgn:DWORD

.DATA
.CODE

HcGdiCreateRoundRectRgn PROC
	mov r10, rcx
	mov eax, sciGdiCreateRoundRectRgn
	syscall
	ret
HcGdiCreateRoundRectRgn ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiCreateRoundRectRgn:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiCreateRoundRectRgn PROC
	mov eax, sciGdiCreateRoundRectRgn
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcGdiCreateRoundRectRgn ENDP

ENDIF

END