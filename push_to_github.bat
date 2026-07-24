@echo off
title Push to GitHub (RGM)
echo =========================================
echo       Pushing changes to GitHub...
echo =========================================
echo.

cd /d "%~dp0"

set /p commit_msg="Enter commit message (or press ENTER for default): "
if "%commit_msg%"=="" set commit_msg=Update website content

echo.
echo Adding files...
git add .

echo Committing changes...
git commit -m "%commit_msg%"

echo Pushing to GitHub...
git push origin master

echo.
echo =========================================
echo       Done! Site updated successfully.
echo =========================================
echo.
set /p dummy="Press ENTER to close..."

