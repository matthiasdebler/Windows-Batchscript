REM -----------------------------------------------------------------------

REM  Beispiel Textdatei:
REM -----------------------------------------------------------------------
REM Zeile 1
REM Zeile 2
REM Zeile 3
REM Zeile 4
REM Zeile 5
REM Zeile 6
REM Zeile 7
REM Zeile 8
REM Zeile 9
REM Zeile 10



@echo off & setlocal enabledelayedexpansion
set /a num=0
rem
for /F "delims=" %%a in (Beispieltextdatei.txt) do call :ausgabe "%%a"
echo.
echo Anzeige der erzeugten Variablen:
set v
pause
goto :eof
rem
 :ausgabe
 set /a num=%num%+1
 echo Textzeile ist %1
 echo Zeilennummer=%num%
 set var%num%=%1
 echo Variableninhalt=!var%num%!
pause
