@echo off
cd .\aliens
i.exe
if NOT EXIST c:\azsdef goto aaa

aliensp2.exe p
setup.exe

:aaa

cd ..
