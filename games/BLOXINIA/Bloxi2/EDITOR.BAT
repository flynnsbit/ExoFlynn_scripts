@ECHO OFF
CLS
BLOXEDIT.EXE %1 %2 %3
:ReRunEditor
if exist appbatch.bat call appbatch.bat
if exist appbatch.bat del appbatch.bat
if exist retbatch.bat call retbatch.bat
if exist retbatch.bat del retbatch.bat
if exist appbatch.bat goto ReRunEditor
cls
echo Thank you for using the Bloxinies II Editor.