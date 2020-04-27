Script Datei:

echo off

ftp -s:holen.ftp

rem cls

pause



holen.ftp:

open 192.168.1.100        
 
dakota  

password 
 
lcd c:\windows\dakota_s\pasdakota

cd pasdakota

prompt

mget *.*

delete bikk

quit
