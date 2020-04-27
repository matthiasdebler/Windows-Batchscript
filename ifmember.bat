Je komplexer Ihre Organisation ist, desto mehr ifmember-Abfragen kommen im Anmeldeskript hinzu, umso l�nger dauert dann auch die Abarbeitung des Skripts. Es gibt viele M�glichkeiten, die Abarbeitung des Skripts wieder zu beschleunigen:

  Sie kopieren h�ufig verwendete Tools wie ifmember.exe in das Verzeichnis C:\Windows\System32 jedes Clients, damit diese Tools nicht bei jeder Abfrage �ber die LAN-Leitung vom Anmeldeserver in das RAM der Clients geladen werden. Danach �ndern Sie alle Zeilen �%LOGONSERVER\NETLOGON\util\ifmember.exe �� um in �ifmember.exe ��. 
  Sie verwenden eine m�glichst maschinennahe Skriptsprache, z.B. KiXtart. 
  Sie lassen Unterroutinen oder Tools �ber den Befehl start mit entsprechenden Parametern zeitgleich laufen. Der Befehl start /? listet alle Parameter auf. 
  Sie arbeiten mit Sprungmarken. 

Schauen Sie sich noch einmal das Anmeldeskript an, welches das Tool ifmember.exe verwendet, um in Abh�ngigkeit von der Mitgliedschaft in einer Unterabteilung das Laufwerk G: mit dem Gruppenverzeichnis der Unterabteilung zu verbinden. Dort finden Sie ifmember-Befehle, die f�r alle Anwender, die nicht zur betreffenden Gruppe geh�ren, die Abarbeitung des Skripts unn�tig verlangsamen. Wenn der Anwender, der sich anmeldet, zur Gruppe Gruppe A1 geh�rt, so geh�rt er in der Regel nicht gleichzeitig zur Gruppe Gruppe A2 oder Gruppe B1. Folglich w�re es sinnvoll, durch einen Sprungbefehl die Abarbeitung der zugeh�rigen ifmember-Abfragen zu �berspringen.

net use g: /d > NUL: 2>&1 ifmember.exe "company\Gruppe A1" if errorlevel 1 net use g: "\\s1\Gruppe A1" if exist g: goto GRUPPENENDE c:\windows\system32\ifmember.exe "company\Gruppe A2" if errorlevel 1 net use g: "\\s1\Groups\Gruppe A2"

    GRUPPENENDE

Wenn der sich anmeldende Benutzer ein Mitglied der Gruppe Gruppe A1 ist, wird mit dem nachfolgenden Befehl if errorlevel 1 net use g: �\\s1\Gruppe A1� das Laufwerk G: mit der Freigabe \\s1\Gruppe A1 verbunden. Ab sofort gibt es eine Netzwerkverbindung G: und die n�chste If-Abfrage if exist g: ist wahr. Der Sprungbefehl goto GRUPPENENDE wird ausgef�hrt und die dazwischen liegenden ifmember-Abfragen werden �bersprungen. 