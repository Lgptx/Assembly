@echo off

\masm32\bin\ml /c /coff /nologo hellowin.asm
\masm32\bin\Link /SUBSYSTEM:WINDOWS /MERGE:.rdata=.text hellowin.obj > nul

dir hellowin.*

pause