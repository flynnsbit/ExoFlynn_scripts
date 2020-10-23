@echo off
cls

text
  
  Please select the language to display the help file in.

   1 : English
 
   2 : German

   3 : Italian

   4 : Spanish


endtext

choice /C:1234 /N Enter your choice... : 

if ERRORLEVEL = 1 goto English
if ERRORLEVEL = 2 goto German
if ERRORLEVEL = 3 goto Spanish
if ERRORLEVEL = 4 goto Italian

:English

copy /Q enhelp.txt readme.txt

goto End

:German

copy /Q grhelp.txt readme.txt

goto End

:Italian

copy /Q ithelp.txt readme.txt

goto End

:Spanish

copy /Q sphelp.txt readme.txt

:End

cls
type /P readme.txt
