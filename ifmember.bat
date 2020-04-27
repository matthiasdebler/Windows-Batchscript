Je komplexer Ihre Organisation ist, desto mehr ifmember-Abfragen kommen im Anmeldeskript hinzu, umso länger dauert dann auch die Abarbeitung des Skripts. Es gibt viele Möglichkeiten, die Abarbeitung des Skripts wieder zu beschleunigen:

  Sie kopieren häufig verwendete Tools wie ifmember.exe in das Verzeichnis C:\Windows\System32 jedes Clients, damit diese Tools nicht bei jeder Abfrage über die LAN-Leitung vom Anmeldeserver in das RAM der Clients geladen werden. Danach ändern Sie alle Zeilen »%LOGONSERVER\NETLOGON\util\ifmember.exe …« um in »ifmember.exe …«. 
  Sie verwenden eine möglichst maschinennahe Skriptsprache, z.B. KiXtart. 
  Sie lassen Unterroutinen oder Tools über den Befehl start mit entsprechenden Parametern zeitgleich laufen. Der Befehl start /? listet alle Parameter auf. 
  Sie arbeiten mit Sprungmarken. 

Schauen Sie sich noch einmal das Anmeldeskript an, welches das Tool ifmember.exe verwendet, um in Abhängigkeit von der Mitgliedschaft in einer Unterabteilung das Laufwerk G: mit dem Gruppenverzeichnis der Unterabteilung zu verbinden. Dort finden Sie ifmember-Befehle, die für alle Anwender, die nicht zur betreffenden Gruppe gehören, die Abarbeitung des Skripts unnötig verlangsamen. Wenn der Anwender, der sich anmeldet, zur Gruppe Gruppe A1 gehört, so gehört er in der Regel nicht gleichzeitig zur Gruppe Gruppe A2 oder Gruppe B1. Folglich wäre es sinnvoll, durch einen Sprungbefehl die Abarbeitung der zugehörigen ifmember-Abfragen zu überspringen.

net use g: /d > NUL: 2>&1 ifmember.exe "company\Gruppe A1" if errorlevel 1 net use g: "\\s1\Gruppe A1" if exist g: goto GRUPPENENDE c:\windows\system32\ifmember.exe "company\Gruppe A2" if errorlevel 1 net use g: "\\s1\Groups\Gruppe A2"

    GRUPPENENDE

Wenn der sich anmeldende Benutzer ein Mitglied der Gruppe Gruppe A1 ist, wird mit dem nachfolgenden Befehl if errorlevel 1 net use g: »\\s1\Gruppe A1« das Laufwerk G: mit der Freigabe \\s1\Gruppe A1 verbunden. Ab sofort gibt es eine Netzwerkverbindung G: und die nächste If-Abfrage if exist g: ist wahr. Der Sprungbefehl goto GRUPPENENDE wird ausgeführt und die dazwischen liegenden ifmember-Abfragen werden übersprungen. 