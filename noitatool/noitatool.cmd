:DDDD
echo off
mode con:cols=75 lines=30
setlocal EnableDelayedExpansion
setlocal enableextensions
set title=                º           noita tool release 1          º
set LAST=                º       build time %~t0       º
title noitatool
SET BOXTOP=		ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
SET MMSELECT=		º                [1;4mmain menu[0m                º
SET BKSELECT=		º              [1;4msave backup[0m                º
SET RESTSELECT=		º            [1;4msave restoration[0m             º
SET DELSELECT=		º              [1;4msave deletion[0m              º
SET SEEDSELECT=		º                [1;4mseed editor[0m              º
SET SELECT=		º         select an option below          º
SET BOXMID=		ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
SET LM=^
		º             5. play game                º                       ^
		º             6. main menu                º                       ^
		º             7. quit                     º                       ^
		º             8. force stop noita         º                       ^
		ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼                ^
[8mby unni and countless others, check readme.txt for details and attributions[31;1m
set MM=^
                º             1. backup a save            º                     ^
           º             2. restore a save           º                     ^
           º             3. delete saves             º                     ^
           º             4. seed editor              º
set BKM=^
                º             1. backup to slot 1         º                     ^
           º             2. backup to slot 2         º                     ^
           º             3. backup to slot 3         º                     ^
           º             4. Overwrite All            º      
set RESTM=^
                º             1. Restore From slot 1      º                     ^
           º             2. Restore From slot 2      º                     ^
           º             3. Restore From slot 3      º        
set DELM=^
                º             1. Delete save 001          º                     ^
           º             2. Delete save 002          º                     ^
           º             3. Delete save 003          º                     ^
           º             4. Delete All backups       º    
set SEEDM=^
                º             1. input a seed             º                     ^
           º             2. random seed              º
:MAINMENU
cls
type %~dp0logo.txt
echo.
ECHO [43;1mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m
echo.
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !MMSELECT!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !MM!
ECHO !LM!
echo [43;1mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m
choice /n /c:12345678 >nul
if errorlevel ==8 goto stopnoita
if errorlevel ==7 goto close
if errorlevel ==6 goto MAINMENU
if errorlevel ==5 goto startgame
if errorlevel ==4 goto seededit
if errorlevel ==3 goto DELMAIN
if errorlevel ==2 goto REST
if errorlevel ==1 goto BACKUP
goto MAINMENU
:BACKUP
cls
type %~dp0logo.txt
echo.
ECHO [43;1mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m
echo.
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !BKSELECT!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !BKM!
ECHO !LM!
echo [43;1mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m
CHOICE /N /C:12345678 >NUL
IF ERRORLEVEL ==8 GOTO stopnoita
IF ERRORLEVEL ==7 GOTO close
IF ERRORLEVEL ==6 GOTO MAINMENU
IF ERRORLEVEL ==5 GOTO playnoita
IF ERRORLEVEL ==4 GOTO BALL
IF ERRORLEVEL ==3 GOTO B003
IF ERRORLEVEL ==2 GOTO B002
IF ERRORLEVEL ==1 GOTO B001
GOTO BACKUP
:B001
cls
ECHO backing up save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00A\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00A\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00A" /e /xd "stats" "persistent" >NUL
ECHO backup complete - located in Folder save00A
pause
GOTO BACKUP
:B002
cls
ECHO backing up save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00B\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00B\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00B" /e /xd "stats" "persistent" >NUL
ECHO backup complete - located in Folder save00B
pause
GOTO BACKUP
:B003
cls
ECHO backing up save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00C\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00C\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00C" /e /xd "stats" "persistent" >NUL
ECHO backup complete - located in Folder save00C
pause
GOTO BACKUP
:BALL
cls
echo are you sure you wish to overwrite all slots with current game data?(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO BALL0
IF ERRORLEVEL 1 GOTO BACKUP
goto BACKUP
:BALL0
cls
ECHO overwriting all slots with current game save data
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00A\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00A\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00A" /e /xd "stats" "persistent" >NUL
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00B\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00B\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00B" /e /xd "stats" "persistent" >NUL
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00C\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00C\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00C" /e /xd "stats" "persistent" >NUL
ECHO overwrite complete - all slots now based on last game save
pause 
GOTO BACKUP
:REST
cls
type %~dp0logo.txt
echo.
ECHO [43;1mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m
echo.
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !RESTSELECT!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !RESTM!
ECHO !LM!
echo [43;1mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m
CHOICE /N /C:12345678 >NUL
IF ERRORLEVEL ==8 GOTO stopnoita
IF ERRORLEVEL ==7 GOTO close
IF ERRORLEVEL ==6 GOTO MAINMENU
IF ERRORLEVEL ==5 GOTO playnoita
IF ERRORLEVEL ==3 GOTO R003
IF ERRORLEVEL ==2 GOTO R002
IF ERRORLEVEL ==1 GOTO R001
:R001
cls
ECHO Restoring save From slot 1
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00A\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00 /e >NUL
ECHO backup 001 restored!
GOTO startgame
:R002
cls
ECHO Restoring save From slot 2
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00B\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00 /e >NUL
ECHO backup 002 restored!
GOTO startgame
:R003
cls
ECHO Restoring save From slot 3
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00C\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00 /e >NUL
ECHO backup 003 restored!
GOTO startgame
:DELMAIN
cls
type %~dp0logo.txt
echo.
ECHO [43;1mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m
echo.
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !DELSELECT!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !DELM!
ECHO !LM!
echo [43;1mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m
CHOICE /N /C:12345678 >NUL
IF ERRORLEVEL ==8 GOTO stopnoita
IF ERRORLEVEL ==7 GOTO close
IF ERRORLEVEL ==6 GOTO MAINMENU
IF ERRORLEVEL ==5 GOTO playnoita
IF ERRORLEVEL ==4 GOTO RMALL
IF ERRORLEVEL ==3 GOTO RM003
IF ERRORLEVEL ==2 GOTO RM002
IF ERRORLEVEL ==1 GOTO RM001
GOTO DELMAIN
:RM001
cls
ECHO clearing save slot 001
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00A"
ECHO save slot 001 empty!
goto DELMAIN
:RM002
cls
ECHO clearing save slot 002
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00B"
ECHO save slot 002 empty!
goto DELMAIN
:RM003
cls
ECHO clearing save slot 003
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00B"
ECHO save slot 003 empty!
goto DELMAIN

:RMALL
cls
ECHO clearing all backup saves (Current game is untouched)
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00A"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00B"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_noita\save00C"
ECHO All slots empty!
pause
goto DELMAIN
:seededit
cls
type %~dp0logo.txt
echo.
ECHO [43;1mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m
echo.
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !SEEDSELECT!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !SEEDM!
ECHO !LM!
echo [43;1mÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ[0m
CHOICE /N /C:12345678 >NUL
IF ERRORLEVEL ==8 GOTO stopnoita
IF ERRORLEVEL ==7 GOTO close
IF ERRORLEVEL ==6 GOTO MAINMENU
IF ERRORLEVEL ==5 GOTO playnoita
IF ERRORLEVEL ==2 GOTO noseed
IF ERRORLEVEL ==1 GOTO setseed
GOTO seededit
:setseed
START /d %~dp0 setseed.bat
GOTO MAINMENU
:startGame
echo start noita? (Y/N):
CHOICE /N /C YNM >NUL
IF ERRORLEVEL 3 GOTO MAINMENU
IF ERRORLEVEL 2 GOTO MAINMENU
IF ERRORLEVEL 1 GOTO playnoita
:playnoita
ECHO Launching noita 
start steam://rungameid/881100
goto MAINMENU
:close
cls
EXIT 
:stopnoita
echo close noita? (Y/N)
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO endgame
IF ERRORLEVEL 1 GOTO MAINMENU
:endgame
taskkill.exe /f /im noita.exe
goto MAINMENU
:noseed
START /d %~dp0 noseed.bat
GOTO MAINMENU
