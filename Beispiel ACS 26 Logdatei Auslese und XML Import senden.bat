rem 
rem path Variable eintragen in Systemsteuerung!
rem erzeuge kopie zum versand nach c:\ mittels blat.exe
rem
xcopy "C:\Programme\Siemeca\Acs26 2.2\acs26_scheduler.log"   "C:\" /Y
rem
Blat -install backup.host  exad@mailhost.de
rem
rem
blat "C:\acs26_scheduler.log" -to exad@mailhost.de  -server absendername -subject "ACS 26 Logdatei taegliche Auslese  Gateways"
rem
del C:\acs26_scheduler.log
del "C:\Programme\Siemeca\Acs26 2.2\acs26_scheduler.log"
rem loesche alte Logdatei und kopiere neue Vorlage ins Verzeichnis 
xcopy "c:\Programme\Siemeca\scheduler_datei_leer\acs26_scheduler.log" "C:\Programme\Siemeca\Acs26 2.2\"
rem
