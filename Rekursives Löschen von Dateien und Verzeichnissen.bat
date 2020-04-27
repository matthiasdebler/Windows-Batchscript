atch-Script zum rekursiven Löschen von Dateien und Verzeichnissen

Batchscript , mit dem man Dateien und Verzeichnisse unterhalb eines anzugebenden Pfades löschen kann. Viele nutzen hierfür einfach den DOS-Befehl "RD". Dieser löscht jedoch das angegebene Verzeichnis selbst mit. Mir war es jedoch wichtig, dass das angegebene Verzeichnis bestehen bleibt. Zu Beginn wird das entsprechende Verzeichnis in eine Variable geschrieben, um das Script schnell für andere Arbeiten anzupassen. Alternativ kann natürlich mit der Übergabe von Parametern gearbeitet werden. Als nächstes wird eine FOR-Schleife abgearbeitet, bei der zuerst alle Unterverzeichnisse aufgelistet und diese dann mitttels RD rekursiv gelöscht werden. Damit sind die Verzeichnisse bereits erledigt. Danach werden mit dem Befehl DEL noch die im Verzeichnis selbst enthaltenen Dateien gelöscht und der Ordner ist leer.


Hier das Script:


set deldir=C:\xxx\yyy\zzz for /F "Tokens=*" %%i IN ('Dir /AD /B "%DELDIR%"') DO RD /Q /S "%DELDIR%\%%i" del /F /S /Q "%DELDIR%\*.*"



Beispiel 2 (wird Freitags zur Leerung des Transferverzeichnisses genutzt):

FOR /D %%I IN (G:\home\Transfer*) DO @for /d %%J in ("%%I\*") do RMDIR /S /Q "%%J" 