ECHO OFF
ECHO Trwa instalacja programu IQ MASTER
%2
cd\
md iqmaster >NUL
cd iqmaster >NUL
copy %1*.*  >NUL
echo Aby uruchomic program prosze wprowadzic "IQ"
ECHO ON