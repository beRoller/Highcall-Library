; Hc/NtGdiDdCreateSurfaceObject
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdCreateSurfaceObject:DWORD

.DATA
.CODE

HcGdiDdCreateSurfaceObject PROC
	mov r10, rcx
	mov eax, sciGdiDdCreateSurfaceObject
	syscall
	ret
HcGdiDdCreateSurfaceObject ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdCreateSurfaceObject:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdCreateSurfaceObject PROC
	mov eax, sciGdiDdCreateSurfaceObject
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
HcGdiDdCreateSurfaceObject ENDP

ENDIF

END