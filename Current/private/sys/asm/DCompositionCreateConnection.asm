; Hc/NtDCompositionCreateConnection
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionCreateConnection:DWORD

.DATA
.CODE

HcDCompositionCreateConnection PROC
	mov r10, rcx
	mov eax, sciDCompositionCreateConnection
	syscall
	ret
HcDCompositionCreateConnection ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionCreateConnection:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionCreateConnection PROC
	mov eax, sciDCompositionCreateConnection
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
HcDCompositionCreateConnection ENDP

ENDIF

END