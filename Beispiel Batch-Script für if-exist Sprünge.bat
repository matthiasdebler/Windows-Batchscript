CLS

REM -----------------------------------------------------------------------

REM Pruefen ob Dakota-Verzeichnis leer bzw. vorhanden

REM -----------------------------------------------------------------------

IF EXIST c:\dakotaag\daten\e*.* goto nicht

IF NOT EXIST c:\dakotaag\daten goto nicht2

call holen2.bat

copy c:\windows\dakota_s\pasdakota\vbks.vbks c:\dakotaag\daten\ebnz0007

IF NOT EXIST c:\dakotaag\daten\e*.* goto MELDUNG

IF EXIST c:\dakotaag\daten\e*.* goto HINWEIS

:MELDUNG
                     
 ECHO.                           
 
 ECHO   ----------------------------------------------------------------------
 
 ECHO              keine Dateien aus  PASDAKOTA  Åbertragen !
 
 ECHO   ----------------------------------------------------------------------
 
 ECHO.                                    
                                        
 PAUSE
 
 goto ende

  :HINWEIS
  
  ECHO.

  ECHO   ----------------------------------------------------------------------
  
  ECHO   folgende Dateien wurden erfolgreich Åbertragen und gesichert:

  ECHO   ----------------------------------------------------------------------

  ECHO.

  dir c:\dakotaag\daten\e*.*                                      

  PAUSE

  goto ende
  

  :nicht
   
   ECHO.     
   
   ECHO.
   
   ECHO   -----------------------------------------------------------------------
   
   ECHO   Vorgang wurde abgebrochen, weil Dakotaag noch folgende Dateien enthÑlt:
   
   ECHO   -----------------------------------------------------------------------
   
   ECHO.
   
   dir c:\dakotaag\daten\e*.*
   
   PAUSE
   
   goto ende
   

    :nicht2
 
    ECHO.
    
    ECHO   -----------------------------------------------------------------------
    
    ECHO   Verzeichnis c:\dakotaag\daten ist nicht vorhanden!!

    ECHO   -----------------------------------------------------------------------
    
    ECHO.
    
    PAUSE

:ende


