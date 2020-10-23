echo off
rename %1.voc bugger.voc
voc2wav bugger.voc bugger.wav /R44 /C1
rename bugger.wav %1.wav
rename bugger.voc %1.voc
move %1.wav ..
