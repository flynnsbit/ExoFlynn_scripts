echo off
echo                   Thank You for purchasing Final Orbit!
echo To start the game...
echo Enter: go v     For VGA   graphics and IBM   sound
echo Enter: go e     For EGA   graphics and IBM   sound
echo Enter: go t     For TANDY graphics and IBM   sound
echo Enter: go c     For CGA   graphics and IBM   sound
echo Enter: go va    For VGA   graphics and AdLib sound
echo Enter: go ea    For EGA   graphics and AdLib sound
echo Enter: go ta    For TANDY graphics and AdLib sound
echo Enter: go ca    For CGA   graphics and AdLib sound
echo Don't worry about any syntax error's you may see below...
echo Press any key to load the game...
pause
if %1 == v  pcsnd.exe
if %1 == v  xxxv.exe
if %1 == e  pcsnd.exe
if %1 == e  xxxe.exe
if %1 == t  pcsnd.exe
if %1 == t  xxxt.exe
if %1 == c  pcsnd.exe
if %1 == c  xxxc.exe
if %1 == va adlibsnd.exe
if %1 == va xxxv.exe
if %1 == ea adlibsnd.exe
if %1 == ea xxxe.exe
if %1 == ta adlibsnd.exe
if %1 == ta xxxt.exe
if %1 == ca adlibsnd.exe
if %1 == ca xxxc.exe
if %1 == V  pcsnd.exe
if %1 == V  xxxv.exe
if %1 == E  pcsnd.exe
if %1 == E  xxxe.exe
if %1 == T  pcsnd.exe
if %1 == T  xxxt.exe
if %1 == C  pcsnd.exe
if %1 == C  xxxc.exe
if %1 == VA adlibsnd.exe
if %1 == VA xxxv.exe
if %1 == EA adlibsnd.exe
if %1 == EA xxxe.exe
if %1 == TA adlibsnd.exe
if %1 == TA xxxt.exe
if %1 == CA adlibsnd.exe
if %1 == CA xxxc.exe
