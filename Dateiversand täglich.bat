 set tag=%date:~0,2%
 set monat=%date:~3,2%
 set jahr=%date:~6,4%

set heute=%tag%-%monat%-%jahr%


rem

blat.exe body.txt -server 192.168.20.179 -to Anuser@gmail.com -f vonUser@frohe-zukunft.de -s "MZ von heute %Date%" -attach "\\Daten1\Ordner\MZ online\%heute%-Saalekurier Halle_Saalekreis.pdf" -debug


