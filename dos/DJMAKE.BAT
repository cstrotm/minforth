@echo off
rem Usage: djmake metacomp/decomp/mf

rem ----------------------------------------
rem Edit path to djgpp here
rem ----------------------------------------
set DJPATH=h:\c\djgpp

set FILE=%1%
set OPATH=%PATH%
set PATH=%DJPATH%\bin;%PATH%
set DJGPP=%DJPATH%\djgpp.env
SET DJDIR=%DJPATH%\bin

echo Making %FILE%.exe

%DJPATH%\bin\gcc -Os -Wall -o %FILE%.exe %FILE%.c

if errorlevel 1 goto L2

%DJPATH%\bin\cwsdpmi

:L1
%DJPATH%\bin\strip %FILE%.exe

:L2
set DJGPP=
set PATH=%OPATH%
set OPATH=
set DJPATH=
set DJGPP=
set DJDIR=
set FILE=

pause

