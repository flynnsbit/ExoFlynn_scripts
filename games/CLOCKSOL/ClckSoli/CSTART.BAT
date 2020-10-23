Echo Off
:AGAIN
Cls
Type CIntro
CReply
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
  CRead Clock.Doc
  Goto Again
:F2
  Cls
  Type CPrt
  CReply
  If Errorlevel 14 Goto Again
  Type Clock.Doc>Prn
  Goto Again
:F3
  Cls
  Type CHd
  CReply
  If Errorlevel 14 Goto Again
  CInstall
  Goto End
:F4
  Cls
  Type CPrt
  CReply
  If Errorlevel 14 Goto Again
  Type CReg>Prn
  Goto Again
:F5
  Cls
  Clock
  If Errorlevel 14 Goto Again
  Goto Again
:End
Cls
