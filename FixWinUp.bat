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
echo 3. Run both commands (DISM and sfc)
echo 4. Close Script
set /p option=Select an option:
if %option%==1 call :Option_1
if %option%==2 call :Option_2
if %option%==3 call :Option_3
if %option%==4 exit
goto menu

:: Define Functions for Each Option
:Option_1
echo Running DISM command...
@REM cmd /c "DISM /Online /Cleanup-Image /RestoreHealth"
cmd /c "dism /online /cleanup-image /restorehealth /LimitAccess"
if %errorlevel% equ 0 (echo DISM command completed successfully.) else (echo An error occurred running the DISM command.)
goto menu_after_option

:Option_2
echo Running sfc command...
cmd /c "sfc /scannow"
if %errorlevel% equ 0 (echo sfc command completed successfully.) else (echo An error occurred running the sfc command.)
goto menu_after_option

:Option_3
echo Running both commands (DISM and sfc)...
call :Option_1
call :Option_2
goto menu_after_option

:menu_after_option
timeout /t 5 >nul
cls
goto menu