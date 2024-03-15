@echo off

:: Display License Header and Pause for 5 Seconds
echo ###################################################################
echo ## COSLA- Corespace Open Source License Agreement ##
echo ## Feburary 02, 2024 - #202402021013 ##
echo ## By Corespace ##
echo ###################################################################
timeout /t 3 >nul
cls

:menu
:: Display Options
echo 1. DISM /Online /Cleanup-Image /RestoreHealth
echo 2. sfc /scannow
echo 3. DISM and sfc "DISABLED"
echo 4. Close Script
set /p option=Select an option:
if %option%==1 call :Option_1
if %option%==2 call :Option_2
::if %option%==3 call :Option_3
if %option%==4 exit
goto menu

goto menu

:: Define Functions for Each Option
:Option_1
echo Running DISM command...
@REM cmd /c "DISM /Online /Cleanup-Image /RestoreHealth"
cmd /c "dism /online /cleanup-image /restorehealth /LimitAccess"
if %errorlevel% equ 0 (echo DISM command completed successfully.) else (echo An error occurred running the DISM command.)
timeout /t 5 >nul
goto menu

:Option_2
echo Running sfc command...
cmd /c "sfc /scannow"
if %errorlevel% equ 0 (echo sfc command completed successfully.) else (echo An error occurred running the sfc command.)
timeout /t 5 >nul
goto menu

:Option_3
echo Running DISM command...
call :Option_1
echo Running sfc command...
call :Option_2
if %errorlevel% equ 0 (echo Both commands completed successfully.) else (echo An error occurred running one or both of the commands.)
timeout /t 5 >nul
goto menu