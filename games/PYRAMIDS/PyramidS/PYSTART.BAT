Echo Off
:AGAIN
Cls
Type PyIntro
PyReply
If Errorlevel 65 Goto Again
If Errorlevel 64 Goto End
If Errorlevel 63 Goto F5
If Errorlevel 62 Goto F4
If Errorlevel 61 Goto F3
If Errorlevel 60 Goto F2
If Errorlevel 59 Goto F1
Goto Again
:F1
  Cls
  PyRead Pyramid.Doc
  Goto Again
:F2
  Cls
  Type PyPrt
  PyReply
  If Errorlevel 14 Goto Again
  Type Pyramid.Doc>Prn
  Goto Again
:F3
  Cls
  Type PyHd
  PyReply
  If Errorlevel 14 Goto Again
  Md C:\Games
  C:
  Cd \Games
  Copy A:Pyramid.Exe
  Goto End
:F4
  Cls
  Type PyPrt
  PyReply
  If Errorlevel 14 Goto Again
  Type PyReg>Prn
  Goto Again
:F5
  Cls
  Pyramid
  Goto Again
:End
Cls
