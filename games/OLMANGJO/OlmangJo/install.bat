@echo off
md c:\game
md c:\game\para

copy *.* c:\game\para\*.*

c:
cd c:\game\para

setup.exe
