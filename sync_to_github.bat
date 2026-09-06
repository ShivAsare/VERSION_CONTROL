@echo off
title Siemens TIA Portal VCI - Git Sync
echo ===================================================
echo   Siemens TIA Portal VCI - Auto Sync to GitHub
echo   Repository: ShivAsare/VERSION_CONTROL
echo ===================================================
echo.
cd /d "%~dp0"

echo [1/3] Checking Git Status...
git status -s
echo.

echo [2/3] Staging all files and blocks...
git add .

set /p msg="Enter commit message (Press Enter to use default timestamp): "
if "%msg%"=="" (
    set msg=TIA Portal VCI Auto-sync on %date% %time%
)

git commit -m "%msg%"

echo.
echo [3/3] Pushing to GitHub (main branch)...
git push origin main

echo.
echo ===================================================
echo   Sync completed successfully!
echo ===================================================
timeout /t 5
