echo off
echo Skapar kataloger...
md c:\MER
md c:\MER\graphix
md c:\MER\sound
echo Kopierar filer...
copy a:\HJÄLP.txt c:\MER 
copy a:\data\climbing.dat c:\MER\climbing.exe
copy a:\graphix\*.* c:\MER\graphix
copy a:\sound\*.* c:\MER\sound
c:
cd \MER
cls
echo F”r att starta spelet, skriv: CLIMBING
