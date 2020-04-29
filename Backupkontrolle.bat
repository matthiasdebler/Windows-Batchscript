cd\
c:
cd programme
cd blat
dir \\192.168.20.x\pds_datensicherungen  >dir1.txt 
dir \\192.168.20.x\backup   >dir2.txt
dir \\172.16.100.x\backup >dir4.txt
dir \\172.16.100.x\kfm_backup   >dir5.txt
copy dir*.txt log99.txt


blat.exe bodypds.txt -server 192.168.20.x -to empfaenger@server.de -f PDS.Backup.Kontrolle@server.de -s "Uebersicht Backups aller PDS Server vom %Date%" -attach "log99.txt" -debug

