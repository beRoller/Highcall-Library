; Hc/NtSetCompositionSurfaceOutOfFrameDirectFlipNotification
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciSetCompositionSurfaceOutOfFrameDirectFlipNotification:DWORD

.DATA
.CODE

HcSetCompositionSurfaceOutOfFrameDirectFlipNotification PROC
	mov r10, rcx
	mov eax, sciSetCompositionSurfaceOutOfFrameDirectFlipNotification
	syscall
	ret
HcSetCompositionSurfaceOutOfFrameDirectFlipNotification ENDP

ELSE
; 32bit

EXTERNDEF C sciSetCompositionSurfaceOutOfFrameDirectFlipNotification:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcSetCompositionSurfaceOutOfFrameDirectFlipNotification PROC
	mov eax, sciSetCompositionSurfaceOutOfFrameDirectFlipNotification
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
HcSetCompositionSurfaceOutOfFrameDirectFlipNotification ENDP

ENDIF

END