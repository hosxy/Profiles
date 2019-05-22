@echo off   

set MSYS2_HOME=D:\MSYS2
set Path=%Path%;%MSYS2_HOME%\usr\bin

set COMMAND=%MSYS2_HOME%\usr\bin\git.exe

set ARGV=
set str=%1

:param
if ""%str%""=="""" (
    goto end
)
set ARGV=%ARGV% %str%
shift /0
set str=%1
goto param

:end
%COMMAND% %ARGV%
