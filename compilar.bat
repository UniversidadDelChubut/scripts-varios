@echo off
title Compilando programa

IF EXIST "error.txt" (
  del error.txt
)

IF EXIST "error.txt" (
  del a.exe
)

gcc -Wall programa.c 2> error.txt

for /f %%i in ("error.txt") do set size=%%~zi
if %size% gtr 0 (
  echo Hay errores
  del a.exe
) else (
  echo Sin errores
  del error.txt
)

pause