@ECHO OFF
@SET DOS4G=quiet
@playintw.exe /SB >error.txt
:startWCE
@AnstWCE.exe      544  7 >>error.txt

if errorlevel 210 goto editorWCE
goto ende
:editorWCE
ed.exe >>error.txt
goto startWCE

:ende
