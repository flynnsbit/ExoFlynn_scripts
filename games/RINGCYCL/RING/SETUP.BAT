@ECHO OFF
testb ULTRASND
if NOT EXIST sb.tst goto noblast

drivers\ultramid /q
code /s 
drivers\ultramid /f

goto exit

:noblast

code /s

:exit
