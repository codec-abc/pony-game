pushd %~dp0
@ECHO OFF

ECHO Compiling pony-game...
REM Link to Windows Kits and native libraries.
REM http://tutorial.ponylang.org/appendices/compiler-args.html

COPY /Y "Bin\PonyGameNative\x64\Debug\PonyGameNative.lib" "Source\PonyGameNative.lib"
ponyc -p "Bin\x64" -p "Source" -o Bin\PonyGameExample Source\PonyGameExample

ECHO Copying native libs...
COPY /Y "Bin\x64\Debug\PonyGameNative.dll" "Bin\PonyGameExample"

ECHO Copying resources...
COPY /Y "Source\PonyGame\*.ini" "Bin\PonyGameExample"
COPY /Y "Source\PonyGameExample\*.png" "Bin\PonyGameExample"
COPY /Y "Source\PonyGameExample\*.ini" "Bin\PonyGameExample"

PAUSE
popd