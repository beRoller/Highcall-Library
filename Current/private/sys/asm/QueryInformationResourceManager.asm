; Hc/NtQueryInformationResourceManager
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciQueryInformationResourceManager:DWORD

.DATA
.CODE

HcQueryInformationResourceManager PROC
	mov r10, rcx
	mov eax, sciQueryInformationResourceManager
	syscall
	ret
HcQueryInformationResourceManager ENDP

ELSE
; 32bit

EXTERNDEF C sciQueryInformationResourceManager:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcQueryInformationResourceManager PROC
	mov eax, sciQueryInformationResourceManager
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
HcQueryInformationResourceManager ENDP

ENDIF

END