@echo off
color 04
title %random%%random%
setlocal enableextensions enabledelayedexpansion
::------------------------------------------------------------------------



:main
cls

echo  Creator: mortza 
echo For GuairdIran 
echo --------------=================-----------------
echo                Spammer-Discord
echo =============-------------------=============== 
echo 1. Spam webhook
echo 2. Delete webhook 
echo 3.exit  
echo ================================================
echo ------------------------------------------------
set /p f=
if "%f%" == "1"  goto :spamWeb
if "%f%" == "2"  goto :DelWeb
if "%f%" == "3"  goto exit



::------------------------------------------------------------------------



:spamWeb
echo Enter Webhook:
set /p webhook=" "
echo Enter Username of acc:
set /p username=" "
echo Enter a Massage spaming:
set /p message=" "
echo -----------------------------------------------------------------------------------
set /p amount="che tedadi mikhay spam bedi?" & "age mikhay namahdod bashe n ro bezan..."
cls

if "%amount%"=="n" (
:spaMn
curl -d "content=%message%" -d "username=%username%" -X POST %webhook%
goto :spaMn
)
for /l %%a in (1, 1, %amount%) do (
curl -d "content=%message%" -d "username=%username%" -X POST %webhook%
cls
echo Message sent %%a times
)
goto :main


::------------------------------------------------------------------------



:DelWeb
echo ---------------------------------------------------------
echo Baraye ezafeh kardan chandin webhook baraye del:
echo kafiye space bezani va bahd webhook bahdi ro vared koni.
echo ---------------------------------------------------------
set /p input="Enter webhook: "
CURL -X "DELETE" %input%
echo Successfull
pause
goto :main


::------------------------------------------------------------------------

