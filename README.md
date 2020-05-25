Quelle: https://www.script-example.com/topic/windows-batch
# windows_batchscript
Windows Bachtscriptsammlung


Mit Batch Dateien können einfache Abläufe in Microsoft Windows automatisiert werden. Batch Dateien verwenden die Befehle der Eingabeaufforderung, im einfachsten Fall können diese cmd-Befehle in einer einfachen Testdatei Zeile für Zeile eingetragen werden, es wird dann ein Befehl nach dem anderen ausgeführt.
Windows Batch stammen aus dem MS-DOS Zeitalter. Zu dieser Zeit hatten Batch Dateien die Dateiendung .bat. Seit Windows 2000 wird die Endung .cmd verwendet. Zusätzlich gibt es die Möglichkeit Sprungmarken oder Variablen zu verwenden, bis hin zu komplexeren Abläufen. Ab einer gewissen Komplexität sind Batchdateien nicht mehr die erste Wahl. Als Nachfolger von Windows Batch gilt die Microsoft Power Shell.


Hier einige Befehle und eine kurze Beschreibung dazu:

Befehl 	Beschreibung 	Betriebssysteme

assoc 	Zeigt Dateierweitungszuordnungen an bzw. ändert sie 	XP/Vista/7/8/10

at 	

Mit AT können Befehle oder Programme zu einem bestimmten Termin gestartet werden. Diese werden dann in "Geplante Tasks" eingetragen

(in Windows 8 sollte anstelle von AT schtasks verwendet werden)
	XP/Vista/7

attrib 	Zeigt Dateiattribute an bzw. ändert sie 	XP/Vista/7/8/10

break 	Schaltet die erweiterte Überprüfung für STRG+C ein bzw. aus 	8/10

cacls 	ändert Datei ACLs (Access Control List) oder zeigt sie an 	XP/Vista/7/8/10

call 	ruft eine Batchdatei von einer anderen aus auf 	XP/Vista/7/8/10

cd 	in ein anderes Verzeichnis wechseln; cd \ wechselt in das root Verzeichnis 	XP/Vista/7/8/10

chcp 	wechselt die aktuelle Codepage oder zeigt deren Nummer an 	XP/Vista/7/8/10

chdir 	wechselt das Verzeichnis oder zeigt dessen Namen an 	XP/Vista/7/8/10

chkdsk 	Datenträger überprüfen 	XP/Vista/7/8/10

chkntfs 	Überprüfung des Laufwerks beim Start anzeigen, ändern 	XP/Vista/7/8/10

choice 	Benutzer können Elemente aus einer Auswahlliste auswählen 	7/8/10

cipher 	Verschlüsselung von Verzeichnissen (NTFS-Partition) anzeigen oder ermöglichen 	XP/Vista/7/8/10

cls 	Bildschirminhalt löschen 	XP/Vista/7/8/10

cmd 	startet die Eingabeaufforderung 	XP/Vista/7/8/10

cmstp 	Profilinstallation für den Verbindungs-Manager 	XP/Vista/7/8/10

color 	Farben der Konsole ändern 	XP/Vista/7/8/10

comp 	vergleicht den Inhalt von Dateien 	XP/Vista/7/8/10

compact 	anzeigen oder ändern der Komprimierung von Dateien (ntfs) 	XP/Vista/7/8/10

convert 	konvertiert fat Laufwerke in NTFS 	XP/Vista/7/8/10

copy 	kopieren von Dateien besser geeignet für Kopiervorgänge ist der Befehl:xcopy 	XP/Vista/7/8/10

cscript 	startet den Scripting Host: z.B. um die Ausgabe einer .vbs Datei in der Konsole anzuzeigen (nicht in 
einzelnen Fenstern) 	XP/Vista/7/8/10

date 	zeigt das aktuelle Datum und fragt nach einem neuen 	XP/Vista/7/8/10

defrag 	defragmentieren von Laufwerken 	XP/Vista/7/8/10

del 	Löschen von Dateien (keine Ordner!) 	XP/Vista/7/8/10

dir 	zeigt den Verzeichnisinhalt 	XP/Vista/7/8/10

diskcomp 	vergleicht den Inhalt 2er Disketten 	XP/Vista/7/8

diskcopy 	kopiert eine Diskette auf eine andere 	XP/Vista/7/8

diskpart 	Datenträgerverwaltung aus der Konsole 	XP/Vista/7/8/10

dism 	DISM dient zum Aufzählen, Installieren, Deinstallieren, Konfigurieren

und Aktualisieren von Features und Paketen in Windows-Images.

Welche Befehle verfügbar sind, hängt davon ab, welches Image gewartet

wird und ob es sich bei dem Image um ein Offlineimage oder um ein

Onlineimage handelt. 	7/8/10

doskey 	ist verantwortlich für das Merken von bereits eingegebenen Befehle in der Konsole diese können mit der Pfeil nach 
oben Taste erneut aufgerufen werden 	XP/Vista/7/8/10

driverquery 	kann installierte Geräte und ihre Eigenschaften anzeigen 	XP/Vista/7/8/10

echo 	zeigt Meldungen in der Konsole an bzw. schaltet die Befehlsanzeige ein oder aus 	XP/Vista/7/8/10

endlocal 	beendet eine mit setlocal gestartete Sitzung (Änderungen in einer Batchdatei werden mit setlocal nur in der 
Batchdatei angewandt) 	XP/Vista/7/8/10

erase 	Löscht eine oder mehrere Dateien 	XP/Vista/7/8/10

errorlevel 	Rückgabewert eines Befehls (ob dieser erfolgreich war: 0 oder nicht: 1) 	XP/Vista/7/8

eventcreate 	kann Meldungen in das Ereignisprotokoll (Eventlog) schreiben 	XP/Vista/7/8/10

eventquery 	listet Ereignis oder Ereigniseigenschaften aus dem Eventlog (Ereignisprotokoll) (muss mit cscript ausgeführt 
werden) 	XP

eventtriggers 	Ereignisauslöser (Eventlog) anzeigen und konfigurieren 	XP

exist 	prüft ob eine Datei existiert 	XP/Vista/7/8/10

exit 	beendet cmd.exe oder eine Batchdatei 	XP/Vista/7/8/10

expand 	kompriemierte Dateien entpacken 	XP/Vista/7/8/10

fc 	vergleicht Dateien und zeigt die Unterschiede an 	XP/Vista/7/8/10

find 	sucht in einer oder mehreren Dateien nach einer Zeichenfolge 	XP/Vista/7/8/10

findstr 	sucht nach Zeichenfolgen in Dateien 	XP/Vista/7/8/10

finger 	zeigt welcher Benutzer angemeldet ist; ziemlich alter Dienst funktioniert aus Sicherheitsgründen normalerweise nicht 
mehr 	XP/Vista/7/8/10

for 	for schleife, Befehle anhand von Sätzen (Listen) mehrfach auführen 	XP/Vista/7/8/10

format 	formatiert einen Datenträger 	XP/Vista/7/8/10

fsutil 	Filesystem tunen 	XP/Vista/7/8/10

ftp 	File Transfer Protokal über Command Line files up und downloaden 	XP/Vista/7/8/10

ftype 	zeigt Dateitypen und deren Zuordnung an 	XP/Vista/7/8/10

getmac 	zeigt die Mac-Adressen des Computers an 	XP/Vista/7/8/10

goto 	springt zu einer Marke in einer Batch Datei 	XP/Vista/7/8/10

gpresult 	zeigt aktuell angewandte Gruppenrichtlinien an 	XP/Vista/7/8/10

gpupdate 	aktualisiert Gruppenrichtlinien 	XP/Vista/7/8/10

graftabl 	ermöglicht Windows, Sonderzeichen im Grafikmodus anzuzeigen 	XP/Vista/7/8/10

help 	zeigt einen Überblick über die Windows CMD-Befehle 	XP/Vista/7/8/10

hostname 	zeigt den Computernamen an 	XP/Vista/7/8/10

icacls 	Anzeigen, Ändern, Sichern oder Wiederherstellen von ACLs für Dateien und Verzeichnisse 	7/8/10

If 	Bedingungen in Batch Dateien 	XP/Vista/7/8/10

ipconfig 	Zeigt IP-Netzwerkeinstellungen an 	XP/Vista/7/8/10

ipxroute 	NWLink IPX-Routing und Quellrouting Steuerprogramm 	XP

irftp 	sendet Dateien an die Infarotschnittstelle 	XP/Vista/7/8/10

label 	Datenträgerbezeichnung ändern 	XP/Vista/7/8/10

lodctr 	Aktualisiert Namen und Erklärungen für erweiterbare Leistungsindikatoren 	XP/Vista/7/8/10

logman 	verwaltet den Dienst "Leistungsprotokolle und Warnungen" 	XP/Vista/7/8/10

lpq 	zeigt den Status einer Remote-LPQ-Warteschlange an 	XP

lpr 	sendet einen Druckauftrag an einen Netzwerkdrucker 	XP

mkdir (md) 	Verzeichnis erstellen 	XP/Vista/7/8/10

mmc 	startet die Management Console 	XP/Vista/7/8/10

mklink 	erstellt symbolische und feste Links. 	8/10

mode 	konfiguriert Schnittstellen/Geräte (Geschwindigkeit, Parity, ..) im system 	XP/Vista/7/8/10

more 	zeigt Daten seitenweise auf dem Bildschirm an 	XP/Vista/7/8/10

mountvol 	Zuweisung oder löschen von Laufwerksbuchstaben / Mountpunkten 	XP/Vista/7/8/10

move 	verschieben und umbennen von Dateien und Ordner 	XP/Vista/7/8/10

openfiles 	Zeigt Dateien, di von Remotebenutzern zur Dateifreigabe geöffnet wurden an 	7/8/10

msiexec 	msi-Packete installieren 	XP/Vista/7/8/10

nbtstat 	Zeigt TCP/IP Verbindungen an, die NBT (NetBIOS über TCP/IP) verwenden 	XP/Vista/7/8/10

net 	Netzwerkservices verwalten, anzeigen z.B. net use zeigt aktuell verbundene Laufwerke 	XP/Vista/7/8/10

netsh 	Netzwerkkomponenten über cmd konfigurieren steuern anzeigen 	XP/Vista/7/8/10

netstat 	zeigt TCP IP Verbindungen und deren Status an 	XP/Vista/7/8/10

nslookup 	DNS Server abfragen 	XP/Vista/7/8/10

ntbackup 	NTBackup über CommandLine / Silent starten 	XP

ntsd 	Application Debugger 	XP

pagefileconfig 	Auslagerungsdatei konfigurieren (mit cscript auführen) 	XP

path 	legt den Suchpfad für cmd-Befehle fest, bzw. zeigt diese an 	XP/Vista/7/8/10

pPathping 	testet die Verbindung zu einer bestimmten IP-Adresse und zeigt die einzelnen Hops bis zur Zieladresse 
(ähnlich tracert) 	XP/Vista/7/8/10

pause 	stop die Ausführung einer Batch-Datei und schreibt: Drücken Sie eine beliebige Taste ... 	XP/Vista/7/8/10

pentnt 	zeigt ob der Computer den Intel(tm) Pentium Floating Point Devision error hat bzw. deaktiviert die Gleitkommahardware 
und aktiviert die Gleitkommaemulation 	XP

perfmon 	startet den Performence Monitor (Programm: Leistung) 	XP/Vista/7/8/10

ping 	testet eine Verbindung zu einem anderen Rechner / Gerät 	XP/Vista/7/8/10

popd 	wechselt zu dem Verzeichnis dass mit Phusd gespeichert wurde 	XP/Vista/7/8/10

print 	druckt eine Textdatei 	XP/Vista/7/8/10

prncnfg 	konfiguriert Konfigurationsinformationen zu einem Drucker oder zeigt sie an. (starten mit cscript) 	XP

prndrvr 	Druckertreiber hinzufügen, löschen, anzeigen (starten mit cscript) 	XP

prnjobs 	PrintJobs anhalten, anzeigen, wiederholen (starten mit cscript) 	XP

prnmngr 	Drucker oder Druckerverbindungen hinzufügen, Standarddrucker festlegen (starten mit cscript) 	XP
prnport 	Druckjobs erstellen, löschen oder auflisten (starten mit cscript) 	XP

prnqctl 	druckt eine Testseite pausiert oder setzt einen Druckjob fort löscht die Druckerwarteschlange 	XP

prompt 	ändert die Eingabeaufforderung 	XP/Vista/7/8/10

pushd 	sichert das aktuelle Verzeichnis für die Verwendung mit popd 	XP/Vista/7/8/10

rasdial 	Einwahlverbindungen über die Command Line aufbauen 	XP/Vista/7/8/10

rcp 	kopiert Dateien auf Computer bzw. von Comptern, die den RCP-Dienst ausführen 	XP

rd 	Entfernt ein Verzeichnis 	8/10

recover 	stelt lesbare Daten von einem beschädigten Datenträger wieder her 	XP/Vista/7/8/10

reg 	Registrierungseinträge hinzufügen lesen importieren eXPortieren 	XP/Vista/7/8/10

regsvr32 	dlls registrieren 	XP/Vista/7/8/10

relog 	Leistungsindikatorenprotokolle neu erstellen 	XP/Vista/7/8/10

rem 	nach rem stehende Befehle in einer Batchdatei werden als Kommentare angesehen und werden nicht verarbeitet 	XP/Vista/7/8/10

rename (ren) 	benennt Dateien um 	XP/Vista/7/8/10

replace 	ersetzt Dateien 	XP/Vista/7/8/10

reset 	offene Terminal Sitzungen trennen 	XP/Vista/7/8/10

rexec 	fürht Befehle auf Remote Computern aus, auf denen der RESEC-Dienst aktiv ist 	XP

rmdir 	löscht ein Verzeichnis 	XP/Vista/7/8/10

rd 	löscht ein Verzeichnis 	XP/Vista/7/8/10

route 	anzeigen der Netzwerk-Routingtabelle, hinzufügen von statischen Routen 	XP/Vista/7/8/10

Robocopy 	Erweitertes Kopieren von Dateien und Verzeichnissen 	7/8/10

rsh 	Führt Befehle auf Remotehosts aus, auf denen der RSH-Dienst aktiv ist 	XP

rsm 	verwalten und steuern von Wechselmedien 	XP

runas 	Programme als ein anderer Benutzer starten 	XP/Vista/7/8/10

sc 	Command Line Programm das mit dem NT Service Controller und Services kommuniziert 	XP/Vista/7/8/10

schtasks 	geplante Tasks auf einem lokalen oder Remotecomputer erstellen, ändern, löschen, ausführen, beenden ersetzt 
at.exe 	XP/Vista/7/8/10

secedit 	MS eigener Security Editor: ermöglicht Berechtigungen zu überprüfen anhand Vorlagen zu vergleichen bzw. die 
Vorlagen anzuwenden 	XP/Vista/7/8/10

set 	setzt oder löscht Umgebungsvariablen für die CMD.exe 	XP/Vista/7/8/10

setlocal 	Änderungen der Umgebung sind nach dem "Setlocal" Befehl nur auf die Batchdatei bezogen. um die ursprünglichen 
Einstellungen zurückzusezten wird der Befehl Endlocal verwendet oder die Batchdatei wird beendet 	XP/Vista/7/8/10

shift 	verändert die Position ersetzbarer Parameter in einem Batchprogramm 	XP/Vista/7/8/10

shutdown 	Computer abmelden, neustarten, ausschalten 	XP/Vista/7/8/10

sort 	sortiert die Bildschirmausgabe 	XP/Vista/7/8/10

start 	startet ein eigenes Fenster um ein bestimmtes Programm oder einen Befehl auszuführen 	XP/Vista/7/8/10

subst 	weist einem Pfad eine Laufwerksbezeichnung zu 	XP/Vista/7/8/10

systeminfo 	allgemeine Informationen über die Systemkonfiguraton abfragen: z.b. Anmeldeserver, installierte Hotfixes 
Netzwerkeinstellungen 	XP/Vista/7/8/10

sfc 	überprüft alle geschützten Systemdateien und ersetzt falsche Versionen mit Microsoft-Originalversionen 	XP/Vista
/7/8/10

taskkill 	kann Prozesse beenden 	XP/Vista/7/8/10

tasklist 	zeigt Anwendungen und zugehörige Tasks bzw. Prozesse (PID) 	XP/Vista/7/8/10

tcmsetup 	Richtet den Telefonieclient ein 	XP/Vista/7/8/10

telnet 	Telnetverbindungen aufbauen 	XP

tftp 	mittels TFTP Dateien zu einem TFTP Server übertragen 	XP

time 	stellt die Systemzeit oder zeigt sie an 	XP/Vista/7/8/10

timeout 	wartet eine beliebige Zeit 	Vista/7/10

title 	legt den Fenstertitel für das Eingabeaufforderungsfenster fest 	XP/Vista/7/8/10

tracerpt 	aus einer binären Ablaufverfolungsdatei (etl) eine lesbare Reportdatei erzeugen.  Die etl-Datei kann mit 
Protokollen der Ablaufverfolgung des Windows-Performance-Monitors generiert werden. 	XP/Vista/7/8

tracert 	Routenverfolgung ähnlich pathping 	XP/Vista/7/8/10

tree 	zeigt die Ordnerstruktur grafisch an 	XP/Vista/7/8/10

type 	zeigt den Inhalt von Textdateien an 	XP/Vista/7/8/10

typeperf 	schreibt Leistungsindikatorendaten in die Befehlszeile oder Protokolldatei 	XP/Vista/7/8/10

unlodctr 	löscht Namen und Erklärungen für erweiterbare Leistungsindikatoren 	XP/Vista/7/8/10

ver 	zeigt die Betriebssystem Version an 	XP/Vista/7/8/10

verify 	legt die Überwachung, ob Dateien korrekt auf den Datenträger geschrieben werden, fest 	XP/Vista/7/8/10

vol 	zeigt die Bezeichnung und Seriennummer eines Datenträgers an 	XP/Vista/7/8/10

vssadmin 	Befehlszeilenprogramm des Volumeschattenkopie-Dienstes (Volume Shadow Copy Service) 	XP/Vista/7/8/10

w32tm 	Zeitsyncronisation, Zeitserver, Zeitzone einstellen 	XP/Vista/7/8/10

wmic 	(Windows Management Instrumentation Commandline) Tool mit dem die Klassen der WMI-Bibliothek ohne 
Programmierkenntnisse einfach in der Command Line ausgenützt werden können. 	XP/Vista/7/8/10

xcopy 	verbessertes copy 	XP/Vista/7/8/10

