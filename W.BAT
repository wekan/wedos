@ECHO OFF

:START
CLS
ECHO WeKan Open Source Kanban
ECHO.
ECHO 1) New Board
ECHO 2) Edit
ECHO 3) Find
ECHO 4) One Board
ECHO 5) Count Boards etc
ECHO 6) Import Export Sync
ECHO 7) Settings
ECHO 8) About
ECHO 9) Quit
ECHO.

@choice /B /C:123456789 /N /S Select number:
if errorlevel 9 goto QUIT
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
ECHO.
PAUSE
goto START

:EDIT
CLS
ECHO Editing...
ECHO.
PAUSE
goto START

:FIND
CLS
ECHO Finding...
ECHO.
PAUSE
goto START

:ONEBOARD
CLS
ECHO WeKan
ECHO _____________________________________________________________________
ECHO  Board 1                                                           
ECHO  * Public Muted Filter          Rules Find Swimlanes Multi-Selection
ECHO _____________________________________________________________________
ECHO                     Swimlane 1                                     
ECHO _________ ________ _______ _______ __________________________________
ECHO  List 1    Todo     Doing   Done    [Add List]                  
ECHO _________ ________ _______ _______ __________________________________
ECHO  Card 1    Some     But     Maybe                                   
ECHO _________ ________ _______ _______ __________________________________
ECHO.
PAUSE
goto START

:MANYBOARDS
CLS
ECHO Counting...
ECHO.
ECHO Boards:
ECHO SELECT COUNT(*) FROM boards; | sqlite3 WEKAN.DB
ECHO Lists:
ECHO SELECT COUNT(*) FROM lists; | sqlite3 WEKAN.DB
ECHO Swimlanes:
ECHO SELECT COUNT(*) FROM swimlanes; | sqlite3 WEKAN.DB
ECHO Cards:
ECHO SELECT COUNT(*) FROM cards; | sqlite3 WEKAN.DB
ECHO.
PAUSE
goto START

:IMPORT
CLS
ECHO Import Export Sync
ECHO.
ECHO 1) Import from previous JSON Export
ECHO 2) Import from Trello
ECHO 3) Import from CSV
ECHO 4) Export to JSON
ECHO 5) Export to CSV
ECHO 6) Export to Excel
ECHO 7) Export to HTML
ECHO.
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

:QUIT

