Code:

rem Programm wartet 45 Sekunden
ping 1.1.1.1 -n 1 -w 45000 > nul 
-w 45000 --> Programm wartet 45 Sekunden > nul        --> Ausgabe auf Bildschirm vom Ping wird unterdrückt.....


alternativ:

sleep 10
net start dienstname


oder

ping -n [Zeit/sec] localhost >nul
