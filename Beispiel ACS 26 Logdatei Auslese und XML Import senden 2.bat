cd\
rem 
rem path Variable eintragen in Systemsteuerung!
rem
rem
rem
C:\Programme\blat\Blat.exe -install backup  acs26@hoster.de
rem
rem
rem
rem XML Import
C:\XMLImport\XMLImportV2Neu\XMLImport.exe
rem versende Logdaten
C:\Programme\blat\Blat.exe "C:\XMLImport\XMLImportV2neu\%date%.log" -to exad@hoster.de  -server absendername -
subject "aktuelle ACS26-XML-Daten zum SQL-Server am %date% um %time% exportiert! 
rem 
rem
rem
rem NC verbrauch
C:\XMLImport\NC_Verbrauch\NC_Verbrauch.exe /silent
rem erzeuge smtp_Logdatei.txt und versende
copy /B c:\XMLImport\NC_Verbrauch\master.log + c:\XMLImport\NC_Verbrauch\nc_verbrauch_error.log +  
c:\XMLImport\NC_Verbrauch\nc_verbrauch_debug.log + c:\XMLImport\NC_Verbrauch\nc_verbrauch_historie.txt 
c:\XMLImport\NC_Verbrauch\smtp_Logdatei.txt
rem
C:\Programme\blat\Blat.exe "c:\XMLImport\NC_Verbrauch\smtp_Logdatei.txt" -to exad@hoster.de  -server absendername - 
subject "ACS 26 Zusammenfassung NC_Verbrauch vom :%date%"
rem
rem Bereinige Logdateien für neue befuellung
xcopy c:\XMLImport\NC_Verbrauch\schablonen\*.* c:\XMLImport\NC_Verbrauch\ /Y