@echo off
::if %1 == m goto market
::if %1 == a goto alliance
::if %1 == p goto package

c:
cd "C:\\Program Files\Android\android-sdk\platform-tools"

:package
aapt.exe d badging %2 > C:\Users\xhua\Desktop\.temp.txt
set /p packageString=<C:\Users\xhua\Desktop\.temp.txt
echo %packageString%
::goto end

:market
echo market:
aapt.exe d xmltree %2 res/layout/main.xml
::goto end

:alliance

echo allance
aapt.exe d xmltree %2 res/layout/main.xml
::goto end

:end
echo.