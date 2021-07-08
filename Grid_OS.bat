@echo off
:Grid_OS
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL
mode 1000
echo.
echo \Tron\: ==================================================         
echo \Tron\:  8     8 8!!!! 8     8      8!!!!!8 8!!8!!8 8!!!!
echo \Tron\:  8     8 8     8     8      8     8 8  8  8 8      
echo \Tron\:  8  8  8 8!!!! 8     8      8     8 8  8  8 8!!
echo \Tron\:  8  8  8 8     8     8      8     8 8     8 8
echo \Tron\:  8!!!!!8 8!!!! 8!!!! 8!!!!  8!!!!!8 8     8 8!!!!
echo \Tron\: ==================================================
echo \Tron\: Users :)
echo.
echo \Tron\: Choose...
cmdmenusel "a" "Sign-In" "Log-In" "Exit"
if %errorlevel%== 1 goto signin
if %errorlevel%== 2 goto login
if %errorlevel%== 3 goto exit
goto Grid_OS

:signin
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Grid OS Sign-in
echo ***************************************************************
echo *                                                             *                
echo *       One Grid OS account for the whole wide world :)       *
echo *                                                             *
echo ***************************************************************
echo.
echo. 
set /p USERNAME= \Username\:
echo %USERNAME% > Your_Username.txt
set /p PASSWORD= \Password\:
echo %PASSWORD% > Your_Password.txt
echo Your account has successfuly created...
pause
goto Grid_OS

:login
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Grid OS Log-in screen
mode 1000
echo type your password! to sign in.
set /p PASSWORD1= \Password\: 

for /f "Delims=" %%a in (Your_Password.txt) do (

set TEXT=%%a

)

if %PASSWORD1%==%TEXT% goto correct
echo wrong password access denied!...
echo.
echo \Grid\: maybe you haven't made your account yet if you don't... make one :)
pause
goto Grid_OS

:correct
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Signed with Success
mode 1000
echo  **************************************
echo  * You've entered the right password  *
echo  **************************************
echo  welcome 
type Your_Username.txt  
echo        **********************
echo        *   access granted   *
echo        *8**8***8*88**8**8**8*
echo         *  *   * **  *  *  *
echo         *  *     **  *  *  *
echo            *      *  *     *
echo            *      *  *  
echo            *         *  
echo            *
echo            *
echo            *
echo. 
echo =========================================================
echo *   press any key to continue to your Grid Desktop :)   *
echo =========================================================
pause >nul
goto grid

:grid
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop
mode 1000
cmdmenusel "a" "Storage" "=================================" "File Explorer" "================================="  "Remote Desktop viewer" "=================================" "Internet" "=================================" "Game" "=================================" "Info" "=================================" "Help" "=================================" "Shutdown"
if %ERRORLEVEL%== 1 goto storage
if %ERRORLEVEL%== 2 goto gate1
if %ERRORLEVEL%== 3 goto explorer
if %ERRORLEVEL%== 4 goto gate2
if %ERRORLEVEL%== 5 goto viewer
if %ERRORLEVEL%== 6 goto gate3
if %ERRORLEVEL%== 7 goto Internet
if %ERRORLEVEL%== 8 goto gate4
if %ERRORLEVEL%== 9 goto game
if %ERRORLEVEL%== 10 goto gate5
if %ERRORLEVEL%== 11 goto info
if %ERRORLEVEL%== 12 goto gate6
if %ERRORLEVEL%== 13 goto help
if %ERRORLEVEL%== 14 goto gate7
if %ERRORLEVEL%== 15 goto shutdown

:storage
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\Storage
mode 1000
echo =========================================================================================================
echo.
echo     you have nothing in your storage yet unless you move an Ms-DOS content by inserting a Floppy Disk
echo.
echo =========================================================================================================
cmdmenusel "a" "Go back to your Desktop"
if %errorlevel%= 1 goto grid

:gate1
goto grid

:explorer
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\file explorer.bat
mode 1000
echo choose...
echo.
cmdmenusel "a" "Original windows explorer" "Explorer Grid version" "Go to Desktop"
if %ERRORLEVEL%== 1 goto explo
if %ERRORLEVEL%== 2 goto grid_explo
if %ERRORLEVEL%== 3 goto Grid

:explo
explorer
goto explorer

:grid_explo
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\file explorer.bat\Grid_File_Explorer.exe
tree
echo.
echo press any key to go back into Grid Desktop
pause >nul
mode 1000

:gate2
goto grid

:viewer
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\Remote Desktop viewer
mode 1000
echo \Tron\: hello :)
echo \Tron\: it's me... again X) :)
echo \Tron\: don't mind me just choose
cmdmenusel "a" "Your Desktop" "Grid Desktop" "Remote Desktop view (Internet needed)"
if %ERRORLEVEL%== 1 goto YoDesk
if %ERRORLEVEL%== 2 goto GDesk
if %ERRORLEVEL%== 3 goto RDesk

:YoDesk
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\Remote Desktop viewer\Your Desktop
mode 1000
echo =======================================
echo +     here is your Desktop file's     +
echo =======================================
echo Loading...
timeout /t 0 /nobreak >nul
tree
echo.
echo press any key to go back to desktop
pause >nul
goto Grid

:GDesk
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\Remote Desktop viewer\Grid Desktop
mode 1000
echo *******************************
echo *   you've nothing here yet   *
echo *******************************
echo.
echo press any key to go back to your Desktop...
pause >nul
goto Grid

:RDesk
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\Remote Desktop viewer\Remote Desktop view
mode 1000
echo choose your connection
cmdmenusel "a" "Dial-up Modem" "Ethernet Conection (Local Area Network)" "Wireless (Wireless Local Area Network)"
if %ERRORLEVEL%== 1 goto Dial
if %ERRORLEVEL%== 2 goto Enet
if %ERRORLEVEL%== 3 goto Wnet

:Dial
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\Remote Desktop viewer\Remote Desktop view\Desktop view - Dial-up mode
mode 1000
echo Checking Dial-up Modem...
timeout /t /nobreak 1 >nul
echo Dial-up was Undetected. make sure you already conect your computer with a Dial-up Modem

echo press any key to go back to the Grid Desktop
pause >nul
goto Grid_OS

:Enet
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\Remote Desktop viewer\Remote Desktop view\Desktop view - Ethernet mode
echo Scanning your Wireless Local Area Network (Wlan)...
timeout /t 1 /nobreak >nul
cls
echo Results\:
cmdmenusel "a" "User - 30954"
if %errorlevel%== 1 goto DOTAVI

:DOTAVI
cls
color f
cd C:\Users\30954
tree
echo.
echo here is your list of programs
echo.
echo press any key to go back into the Grid Desktop (Main Screen)...
pause >nul
goto Grid

:Wnet
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\Remote Desktop viewer\Remote Desktop view\Desktop view - Wirless conection mode
echo this feature will be coming soon on future updates
echo.
echo press any key to go back to the Grid Desktop
pause >nul

:gate3
goto Grid

:Internet
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\Internet
mode 1000
echo choose...
echo.
cmdmenusel "a" "Your PC's search engine" "Grid Direct Web opener" "Go back"
if %errorlevel%== 1 goto al
if %errorlevel%== 2 goto ai
if %errorlevel%== 3 goto Grid

:al
start https://www.google.com/
goto Internet

:ai
cls
color f
echo Welcome to Grid Direct web opener
echo.
echo go back? press b / B
echo.
set /p web= Website:
set /p back= Exit to Grid Desktop:
start www.%web%.com
if %back%== b goto Grid
if %back%== B goto Grid
goto ai

:gate4
goto Grid

:a
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\game\Batch Quiz.bat
mode 1000
echo Welcome :)
cmdMenuSel "a" "start" "quit"
if %ERRORLEVEL%== 1 goto lvl1
if %ERRORLEVEL%== 2 goto Grid

:lvl1
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\game\Batch Quiz.bat
echo what is 16 + 80 = ?
cmdMenuSel "a" "it's 96" "it's 32" "it's 84" "it's 100"
if %errorlevel%== 1 goto correct
if %errorlevel%== 2 goto false
if %errorlevel%== 3 goto false
if %errorlevel%== 4 goto false

:correct
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\game\Batch Quiz.bat
echo congrats you have choosen the correct answer :)
echo.
echo but sadly you only get to finished one level :(
echo.
cmdmenusel "a" "Exit to MS-DOS" "go back into the main screen" "Repeat the question"
if %errorlevel%== 1 goto Grid
if %errorlevel%== 2 goto a
if %errorlevel%== 3 goto lvl1 

:false
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\game\Batch Quiz.bat
echo that was an Incorrect answer :(
echo.
echo try again
pause
goto lvl1

:gate5
goto grid

:info
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\Info.txt
mode 1000
echo =====================================
echo *  made by yours truly... Jebbidam  *
echo ======================================================
echo *   made in the date: 9-Septembet/29-Saturday/2018   *
echo ======================================================
echo                *************************
echo ======================================================
echo *      made possible with CMD lying arround :)       *
echo ======================================================

echo press any key to go back into the Grid Desktop...
pause >nul

:gate6
goto Grid

:help
cls
color f
title C:\WINDOWS\system32\cmd.exe\Grid.DLL\Desktop\help.exe
mode 1000
echo \Tron\: hello there :)
timeout /t 0 /nobreak >nul
echo \Tron\: I'm Tron
timeout /t 0 /nobreak >nul
echo \Tron\: Basicaly you can already see my name...
timeout /t 0 /nobreak >nul
echo \Tron\: but anyways
timeout /t 0 /nobreak >nul
echo \Tron\: I'm here to help
timeout /t 0 /nobreak >nul
echo.
echo This mode is still on alpha future update will be released soon sorry for the inconvinience :( 
echo.
echo press any key to go back into the Grid Desktop
pause >nul
goto Grid

:gate7
goto Grid

:shutdown
cls
color f
title Shuting down
echo Goodbye :) 
echo.
echo. 
echo.
echo.
echo.
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo GoodBye :)
echo. 
echo.
echo.
echo.
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo Goodbye :) 
echo.
echo.
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo Goodbye :) 
echo.
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo Goodbye :) 
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo Goodbye :) 
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.  S
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.  Se
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.  See
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.  See 
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.  See y
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.  See yo
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.  See you
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.  See you 
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.  See you next
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.  See you next time :D :) 
echo.     
echo.
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul

:shutdown
cls
color f
title Shuting down
echo. 
echo.
echo. 
echo. 
echo. 
echo. 
echo.
echo Goodbye :)  
echo.  See you next time :D :) 
echo.                         =)     
echo.
echo.
echo.
echo.
echo.
timeout /t 2 /nobreak >nul