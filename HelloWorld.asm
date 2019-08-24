;; HelloWorld para Windows
;; Versao EXE com cabecalho Binario
;;Thanks for: http://www.linguagemassembly.com.br/praticando/hello-world-assembly-para-windows/

.386
.model flat, stdcall

option casemap :none

;; Definicoes Windows
;;
include \masm32\include\windows.inc
include \masm32\include\user32.inc
include \masm32\include\kernel32.inc
;; Bibliotecas API Windows
;;
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib

.code

inicio:

push MB_OK
push offset titulo
push offset mensagem
push 0
call MessageBox

push 0
call ExitProcess
titulo db “Mensagem”,0
mensagem db “Hello World”,0
end inicio