Echo Off
:AGAIN
Cls
Type PeIntro
PeReply
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
  PeRead Peg.Doc
  Goto Again
:F2
  Cls
  Type PePrt
  PeReply
  If Errorlevel 14 Goto Again
  Type Peg.Doc>Prn
  Goto Again
:F3
  Cls
  Type PeHd
  PeReply
  If Errorlevel 14 Goto Again
  Md C:\Games
  C:
  Cd \Games
  Copy A:Peg.Exe
  Copy A:Peg*.Dat
  Goto End
:F4
  Cls
  Type PePrt
  PeReply
  If Errorlevel 14 Goto Again
  Type PeReg>Prn
  Goto Again
:F5
  Cls
  Peg
  Goto Again
:End
Cls