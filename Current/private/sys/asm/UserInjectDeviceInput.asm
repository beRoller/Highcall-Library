; Hc/NtUserInjectDeviceInput
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserInjectDeviceInput:DWORD

.DATA
.CODE

HcUserInjectDeviceInput PROC
	mov r10, rcx
	mov eax, sciUserInjectDeviceInput
	syscall
	ret
HcUserInjectDeviceInput ENDP

ELSE
; 32bit

EXTERNDEF C sciUserInjectDeviceInput:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserInjectDeviceInput PROC
	mov eax, sciUserInjectDeviceInput
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
HcUserInjectDeviceInput ENDP

ENDIF

END