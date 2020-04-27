
rem ********************************************************************************************************
rem Kopiere Programm-Daten auf Clients

@echo 
rem Variablen setzen
set %WERT=1100
set %ADDWERT=1

:ANFANG

rem Copyjob
xcopy "\\Quelle\" "\\win%wert%\c$\Program Files (x86)\Zielverzeichnis\" /Y/O/K/R/C/V/E

rem Variable um eins erhoehen
set /a WERT = %WERT% + %ADDWERT%
rem aktuellen Wert anzeigen
echo %WERT%

echo Abgleich Variablenwert
if %Wert%==2500 (goto :ENDE) else (goto :ANFANG)

:ENDE



pause

