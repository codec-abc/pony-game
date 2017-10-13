pushd %~dp0
@ECHO OFF

CD Bin\PonyGameExample
DEL *.log
PonyGameExample.exe
ponygame.log
popd