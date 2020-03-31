@echo off
REM This is my attempt at a batch file
REM 3/30/2020 SudoZeus
REM Will try to add a functionality to end the task as well
goto :main


:main
  cls
  echo -----------------------------------------------------------
  echo  _____         _     ______ _           _            
  echo ^|_   _^|       ^| ^|    ^| ___ \ ^|         ^| ^|           
  echo   ^| ^| __ _ ___^| ^| __ ^| ^|_/ / ^| __ _ ___^| ^|_ ___ _ __ 
  echo   ^| ^|/ _^` / __^| ^|/ / ^| ___ \ ^|/ _^` / __^| __/ _ \ '__^|
  echo   ^| ^| ^(_^| \__ \   ^<  ^| ^|_/ / ^| ^(_^| \__ \ ^|^|  __/ ^|   
  echo   ^\_^/\__,_^|___/_^|\_\ \____/^|_^|\__,_^|___/\__\___^|_^|   
  echo.     
  echo           https://github.com/SudoZeus-Code                                             
  echo -----------------------------------------------------------
  echo.
  echo 1 - Search
  echo 2 - Help?
  echo 3 - Exit
  echo.

set /p L=Enter Command:

if %L%==1 goto taskblaster
if %L%==2 goto help
if %L%==3 goto quit

:taskblaster
  cls
  echo.
  echo -----------------------------------------------------------------
  echo  _____         _     ______ _           _            
  echo ^|_   _^|       ^| ^|    ^| ___ \ ^|         ^| ^|           
  echo   ^| ^| __ _ ___^| ^| __ ^| ^|_/ / ^| __ _ ___^| ^|_ ___ _ __ 
  echo   ^| ^|/ _^` / __^| ^|/ / ^| ___ \ ^|/ _^` / __^| __/ _ \ '__^|
  echo   ^| ^| ^(_^| \__ \   ^<  ^| ^|_/ / ^| ^(_^| \__ \ ^|^|  __/ ^|   
  echo   ^\_^/\__,_^|___/_^|\_\ \____/^|_^|\__,_^|___/\__\___^|_^|   
  echo.     
  echo -----------------------------------------------------------------
  echo Enter MB of memory 
  echo usage to search for.
  set /p /a M=:
  set /a K = %M% * 1000
  echo Searching for programs
  echo with %K% kilobites
  echo.
  pause>nul|set/p =Lick any key to continue...
  cls
  echo -----------------------------------------------------------------
  echo  _____         _     ______ _           _            
  echo ^|_   _^|       ^| ^|    ^| ___ \ ^|         ^| ^|           
  echo   ^| ^| __ _ ___^| ^| __ ^| ^|_/ / ^| __ _ ___^| ^|_ ___ _ __ 
  echo   ^| ^|/ _^` / __^| ^|/ / ^| ___ \ ^|/ _^` / __^| __/ _ \ '__^|
  echo   ^| ^| ^(_^| \__ \   ^<  ^| ^|_/ / ^| ^(_^| \__ \ ^|^|  __/ ^|   
  echo   ^\_^/\__,_^|___/_^|\_\ \____/^|_^|\__,_^|___/\__\___^|_^|   
  echo.     
  echo -----------------------------------------------------------------
  echo.
  tasklist /fi "memusage gt %K%"
  pause>nul|set/p =Lick any key to continue...
  goto :quit

:help
  cls
  echo This batch script will display all tasks that
  echo are using more then your desired input. The
  echo program takes the value of MB(megabytes), converts
  echo it to K kilobites, and returns the list. 
  echo.
  pause>nul|set/p =Lick any key to return to the main screen...
  goto :main


:quit