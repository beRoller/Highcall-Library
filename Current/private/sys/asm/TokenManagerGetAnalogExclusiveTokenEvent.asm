; Hc/NtTokenManagerGetAnalogExclusiveTokenEvent
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciTokenManagerGetAnalogExclusiveTokenEvent:DWORD

.DATA
.CODE

HcTokenManagerGetAnalogExclusiveTokenEvent PROC
	mov r10, rcx
	mov eax, sciTokenManagerGetAnalogExclusiveTokenEvent
	syscall
	ret
HcTokenManagerGetAnalogExclusiveTokenEvent ENDP

ELSE
; 32bit

EXTERNDEF C sciTokenManagerGetAnalogExclusiveTokenEvent:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcTokenManagerGetAnalogExclusiveTokenEvent PROC
	mov eax, sciTokenManagerGetAnalogExclusiveTokenEvent
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
HcTokenManagerGetAnalogExclusiveTokenEvent ENDP

ENDIF

END