@echo off
:rem -- to echo a blank line, use the alt-255 character

echo ÿ
echo ÿ          
echo ÿ          

if .%1. == .e. goto english
if .%1. == .E. goto english
if .%1. == .f. goto french
if .%1. == .F. goto french
if .%1. == .d. goto german
if .%1. == .D. goto german 
goto default

:english
type readme.eng | more
goto end

:french
type readme.frn | more
goto end

:german
type readme.ger | more
goto end

:default
echo If you wish to see the readme file in English, type "README E"
echo ÿ
echo Pour voir le fichier Readme en fran‡ais, tapez "README F"
echo ÿ          
echo Wenn Sie die README Datei lesen m”chten, geben Sie "README D" ein.

echo ÿ
echo ÿ
echo ÿ

:end
