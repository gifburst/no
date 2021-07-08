@echo off
:Jeb
cls
color f
title Jebbidan the  Intelegent UI
echo. 
echo Jebbidan: hello i'm Jebbidan and how can i help you :)
echo. 
echo.
echo what Jebbidan can do:
echo .
echo open website
echo search website
echo. 
cmdMenuSel "a" "search website" "open website"
if %errorlevel%== 1 goto web1
if %errorlevel%== 2 goto screen
goto Jeb

:web1
cls
color f
title Jebbidan the Intelegent UI
echo opening a search engine
start https://www.google.com/
goto Jeb

:screen
cls
color f
title _====_how to use_====_
echo Jebbidan: type ANY website name that you like
echo Jebbidan: after that to go back into the main screen type B/Back/b
echo Jebbidan: Ya know what i mean :)
pause
goto opener

:opener
cls
color f
title website opener
echo Jebbidan: Open any website by just typing a name 
echo Jebbidan: type the name of your website that you like to open :)
echo Jebbidan: to go back press any random number then press B or b or Back or back to go back into the main screen
set /p a=Website:
start www.%a%.com
set /p exit=Go Back? press B or b to  go back :
if %exit%== b goto Jeb
if %exit%== B goto Jeb
goto opener



