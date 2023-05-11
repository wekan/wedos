@ECHO OFF

:START
CLS
ECHO WeKan Open Source Kanban
ECHO 1. New Board
ECHO 2. Edit
ECHO 3. Find
ECHO 4. One Board
ECHO 5. Many Boards
ECHO 6. Import/Export/Sync
ECHO 7. Settings
ECHO 8. About
ECHO 9. Exit

@choice /B /C:123456789 /N /S Select number:
if errorlevel 9 goto EXIT
if errorlevel 8 goto ABOUT
if errorlevel 7 goto SETTINGS
if errorlevel 6 goto IMPORT
if errorlevel 5 goto MANYBOARDS
if errorlevel 4 goto ONEBOARD
if errorlevel 3 goto FIND
if errorlevel 2 goto EDIT
if errorlevel 1 goto NEWBOARD

:NEWBOARD
CLS
ECHO Creating new board...
PAUSE
goto START

:EDIT
CLS
ECHO Editing...
PAUSE
goto START

:FIND
CLS
ECHO Finding...
PAUSE
goto START

:ONEBOARD
CLS
ECHO WeKan
ECHO _____________________________________________________________________
ECHO  Taulu 1                                                           
ECHO  * Julkinen Vaimennettu Suodata S„„nn”t Etsi Uimaradat Monivalinta
ECHO ___________________________________________________________________
ECHO                     Uimarata 1                                     
ECHO _________ ________ _______ _______ ________________________________
ECHO Lista 1    Todo     Doing   Done    [Lis„„ lista]                  
ECHO _________ ________ _______ _______ ________________________________
ECHO Kortti 2   Jotain   Mutta   Kun                                    
ECHO _________ ________ _______ _______ ________________________________
ECHO.
PAUSE
goto START

:MANYBOARDS
CLS
ECHO Boards:
ECHO SELECT COUNT(*) FROM boards; > BCOUNT.SQL
sqlite3 WEKAN.DB ".read BCOUNT.SQL"
ECHO Lists:
ECHO SELECT COUNT(*) FROM lists; > LCOUNT.SQL
sqlite3 WEKAN.DB ".read LCOUNT.SQL"
ECHO Swimlanes:
ECHO SELECT COUNT(*) FROM swimlanes; > SCOUNT.SQL
sqlite3 WEKAN.DB ".read SCOUNT.SQL"
ECHO Cards:
ECHO SELECT COUNT(*) FROM cards; > CCOUNT.SQL
sqlite3 WEKAN.DB ".read CCOUNT.SQL"
PAUSE
goto START

:IMPORT
CLS
ECHO 1 Import from previous JSON Export
ECHO 2 Import from Trello
ECHO 3 Import from CSV
ECHO 4 Export to JSON
ECHO 5 Export to CSV
ECHO 6 Export to Excel
ECHO 7 Export to HTML
PAUSE
goto START

:SETTINGS
CLS
ECHO Settings menu...
PAUSE
goto START

:ABOUT
CLS
ECHO About WeKan...
PAUSE
goto START

:EXIT

